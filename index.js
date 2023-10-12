const { Client, GatewayIntentBits, SlashCommandBuilder, ButtonBuilder, ButtonStyle, ComponentType, ActionRowBuilder, EmbedBuilder } = require('discord.js');
const { Schema, connect, model } = require('mongoose');
const express = require("express");
const app = express();

app.get('/', function(req, res) {
	res.send('Hello World')
});

app.listen(3000);

const intents = [
	GatewayIntentBits.Guilds,
	GatewayIntentBits.GuildMembers,
	GatewayIntentBits.GuildMessages,
	GatewayIntentBits.GuildMessages,
	GatewayIntentBits.GuildVoiceStates,
	GatewayIntentBits.GuildMessageReactions,
	GatewayIntentBits.DirectMessages,
	GatewayIntentBits.DirectMessages,
	GatewayIntentBits.DirectMessageReactions
];

const client = new Client({ intents });
const mainColor = '#906FED';
const greenColor = '#50C790';
const redColor = '#FA5757';

client.on('ready', () => {
	console.log(`Logged in as ${client.user.tag}!`);
	// connect mongoose
	connect(process.env.MONGO_URI, {
		useNewUrlParser: true,
		useUnifiedTopology: true,
	}).then(() => {
		console.log('Connected to MongoDB');
	});
	client.application.commands.set([
		new SlashCommandBuilder()
			.setName('verify')
			.setDescription('Connect your Roblox account into Discord!')
			.addStringOption(option => {
				option.setName("roblox_username")
					.setDescription("Your Roblox username.")
					.setRequired(true)
				return option;
			}),
	]);
});

const UserSchema = new Schema({
	robloxId: {
		type: Number,
		required: true,
		unique: true
	},
	discordId: {
		type: String,
		required: true,
		unique: true
	}
});

const User = model('accountInfo', UserSchema);

client.on('interactionCreate', async interaction => {
	if (!interaction.isChatInputCommand()) return;
	if (interaction.commandName === 'verify') {
		const robloxUsername = interaction.options.getString("roblox_username");
		getRobloxId(robloxUsername).then(async (userId) => {
			if (["Failed to fetch Roblox ID", "An error occured."].includes(userId)) return interaction.reply({
				content: "Invalid Roblox username.",
				ephemeral: true
			});

			const discordUserId = interaction.user.id;
			const info = await User.findOne({ discordId: discordUserId });

			if (info) {
				return interaction.reply({
					content: "You are already verified.",
					ephemeral: true
				})
			} else {
				const emojiVerification = randomEmoji();

				const done = new ButtonBuilder({
					custom_id: 'done',
					style: ButtonStyle.Secondary,
					label: 'Done',
				});
				const yes = new ButtonBuilder({
					custom_id: 'yes',
					style: ButtonStyle.Success,
					label: 'Yes',
				});
				const no = new ButtonBuilder({
					custom_id: 'no',
					style: ButtonStyle.Danger,
					label: 'No',
				});

				const embed = new EmbedBuilder()
					.setAuthor({ name: 'Verification' });

				fetch(`https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=${userId}&size=100x100&format=Png&isCircular=false`)
					.then(res => res.json())
					.then(async res => {

						const msg = await interaction.reply({
							embeds: [embed.setDescription(`Is this you? [Profile Link](https://www.roblox.com/users/${userId}/profile)`).setColor(mainColor).setThumbnail(res.data[0].imageUrl)],
							components: [new ActionRowBuilder().addComponents(yes, no)]
						});
						const collctor = msg.createMessageComponentCollector({ componentType: ComponentType.Button });

						collctor.on('collect', async (i) => {
							i.channel.send({ content: "_ _" }).then(a => a.delete());
							if (i.user.id === interaction.user.id) {
								if (i.customId === 'yes') {
									const message = await interaction.editReply({
										embeds: [embed.setDescription(`Please copy this and put this in your account description! \`${emojiVerification}\` you have 5 minutes to complete it.`).setColor(mainColor)],
										components: [new ActionRowBuilder().addComponents(done)]
									});

									const collector = message.createMessageComponentCollector({ componentType: ComponentType.Button, time: 300000 });

									collector.on('collect', (i) => {
										if (i.user.id === interaction.user.id) {
											if (i.customId === 'done') {
												i.channel.send({ content: "_ _" }).then((msg) => msg.delete());
												fetch(`https://users.roblox.com/v1/users/${userId}`)
													.then(res => res.json())
													.then(async res => {
														if (res.description.includes(emojiVerification)) {
															await User.create({
																robloxId: userId,
																discordId: discordUserId
															});
															done.setDisabled(true);
															interaction.editReply({
																embeds: [embed.setDescription(`You have been verified as ${res.name}!`).setColor(greenColor)],
																components: [new ActionRowBuilder().addComponents(done)]
															});
														} else {
															done.setDisabled(true);
															interaction.editReply({
																embeds: [embed.setDescription("Invalid emoji verification.").setColor(redColor)],
																components: [new ActionRowBuilder().addComponents(done)]
															});
														}
													});
											}
										} else {
											i.reply({ content: `These buttons aren't for you!`, ephemeral: true });
										}
									});
									collector.on('end', (collected, reason) => {
										if (reason === 'time') {
											buttom.setDisabled(true);
											interaction.editReply({
												embeds: [embed.setDescription("You took too long to respond..").setColor(redColor)],
												components: [new ActionRowBuilder().addComponents(done)]
											});
										}
									});
								} else if (i.customId === 'no') {
									yes.setDisabled(true);
									no.setDisabled(true);
									interaction.editReply({
										embeds: [embed.setDescription("You have been cancelled the Verification.").setColor(redColor)],
										components: [new ActionRowBuilder().addComponents(yes, no)]
									});
								}
							} else {
								i.reply({ content: `These buttons aren't for you!`, ephemeral: true });
							}
						});
					});
			}
		})
	} else if (interaction.commandName === 'update') {
		
	}
})

client.login(process.env.DISCORD_TOKEN);

function getRobloxId(username) {
	return new Promise((resolve) => {
		let id;
		fetch(`https://users.roblox.com/v1/usernames/users`, {
			method: "POST",
			headers: {
				"Content-Type": "application/json"
			},
			body: JSON.stringify({
				"usernames": [username],
				"excludeBannedUsers": true
			})
		})
			.then((res) => res.json())
			.then((res) => {
				id = res.data[0] ? res.data[0].id : "Failed to fetch Roblox ID";
				resolve(id);
			})
			.catch(() => {
				resolve("An error occured.");
			});
	});
}

// getRobloxId("Oji0721").then(userId => {
//   if (["Failed to fetch Roblox ID", "An error occured."].includes(userId)) return console.log("I can't find the user make sure the username is right.");

//   // rank checker
//   fetch(`https://groups.roblox.com/v2/users/${userId}/groups/roles`)
//     .then(res => res.json())
//     .then((res) => {
//       const group = res.data.find((item) => item.group.id === 127081);
//       if (!group) return console.log("The User is not in the group!");
//       console.log(group.role.rank);
//     });

//   //description
//   fetch(`https://users.roblox.com/v1/users/${userId}`)
//     .then(res => res.json())
//     .then(res => console.log(res.description));

//   // avatar head-shot
//   fetch(`https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds=${userId}&size=48x48&format=Png&isCircular=false`)
//   .then(res => res.json())
//   .then(res => console.log(res.data[0].imageUrl));
// });

// // make a random emoji generator
function randomEmoji() {
	const emojis = ['😀', '😁', '😂', '🤣', '😃', '😄', '😅', '😆', '😉', '😲', '😝', '🤑', '🤯', '😭', '😑', '😶', '😋', '🙆', '👉', '👇', '🧠', '💼', '👮🏻', '👍', '👎', '🐵', '🌨', '☁️', '💧', '🎬', '🎧', '🎮', '🎲', '🏅', '🥇', '🥈', '🥉', '🏆', '🏒', '🍎', '🍫', '🍿', '🍪', '🥛', '🍽', '🍴', '🐑', '🦀', '🐔', '🐭', '🦊', '🐧', '🐞', '🌍', '🌏', '🌕', '🌖', '🌚', '🌝', '🌵', '🎄', '🌲', '☀️', '⛅️', '☔️', '🍋'];
	const emojisArray = [];
	for (let i = 0; i < 6; i++) {
		const randomIndex = Math.floor(Math.random() * emojis.length);
		emojisArray.push(emojis[randomIndex]);
		emojis.splice(randomIndex, 1);
	}
	return emojisArray.join('');
}
