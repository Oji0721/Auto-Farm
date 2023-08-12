--Mango Man--

local ScreenGui = Instance.new("ScreenGui")

local ImageButton = Instance.new("ImageButton")

local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui

ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

ImageButton.BorderSizePixel = 0

ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)

ImageButton.Size = UDim2.new(0, 50, 0, 50)

ImageButton.Draggable = true

ImageButton.Image = "http://www.roblox.com/asset/?id=13858899085"

ImageButton.MouseButton1Down:connect(function()

game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)

game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)

end)

UICorner.Parent = ImageButton

_G.WindowBackgroundColor = Color3.fromRGB(12,12,12)

_G.BackgroundItemColor = Color3.fromRGB(20, 20, 20)

_G.TabWindowColor = Color3.fromRGB(30, 30, 30)

_G.ContainerColor = Color3.fromRGB(30, 30, 30)

_G.TitleTextColor = Color3.fromRGB(150, 150, 150)

_G.ImageColor = Color3.fromRGB(150, 150, 150)

_G.LineThemeColor = Color3.fromRGB(150, 150, 150)

_G.TabTextColor = Color3.fromRGB(150, 150, 150)

_G.TabImageColor = Color3.fromRGB(150, 150, 150)

_G.TabThemeColor = Color3.fromRGB(250, 0, 0)

_G.SectionColor = Color3.fromRGB(50, 255, 255)

_G.SectionImageColor = Color3.fromRGB(150, 150, 150)

_G.SectionTextColor = Color3.fromRGB(50, 255, 255)

_G.SectionOn = Color3.fromRGB(0, 250, 0)

_G.Color1 = Color3.fromRGB(150, 150, 150)

do local GUI = game.CoreGui:FindFirstChild("1xliiUI");if GUI then GUI:Destroy();end;if _G.Color == nil then

_G.Color = Color3.fromRGB(255,255,255)

end

end

local tween = game:GetService("TweenService")

local tweeninfo = TweenInfo.new

local input = game:GetService("UserInputService")

local run = game:GetService("RunService")

local plr = game.Players.LocalPlayer

local mouse = plr:GetMouse()

local UserInputService = game:GetService("UserInputService")

local TweenService = game:GetService("TweenService")

local function MakeDraggable(topbarobject, object)

local Dragging = nil

local DragInput = nil

local DragStart = nil

local StartPosition = nil

local function Update(input)

local Delta = input.Position - DragStart

local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)

local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})

Tween:Play()

end

topbarobject.InputBegan:Connect(

function(input)

if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then

Dragging = true

DragStart = input.Position

StartPosition = object.Position

input.Changed:Connect(

function()

if input.UserInputState == Enum.UserInputState.End then

Dragging = false

end

end

)

end

end

)

topbarobject.InputChanged:Connect(

function(input)

if

input.UserInputType == Enum.UserInputType.MouseMovement or

input.UserInputType == Enum.UserInputType.Touch

then

DragInput = input

end

end

)

UserInputService.InputChanged:Connect(

function(input)

if input == DragInput and Dragging then

Update(input)

end

end

)

end

local Update = {}

function Update:Window(name,logo,keybind)

local uihide = false

local abc = false

local logo = logo or 0

local currentpage = ""

local keybind = keybind or Enum.KeyCode.RightControl

local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")

local SOMEXHUB = Instance.new("ScreenGui")

SOMEXHUB.Name = "1xliiUI"

SOMEXHUB.Parent = game.CoreGui

SOMEXHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

local osfunc = {}

local osfunc2 = {}

local Main = Instance.new("Frame")

local WindowStrokemain = Instance.new("UIStroke")

Main.Name = "Main"

Main.Parent = SOMEXHUB

Main.ClipsDescendants = true

Main.AnchorPoint = Vector2.new(0.5,0.5)

Main.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Main.Position = UDim2.new(0.5, 0, 0.5, 0)

Main.Size = UDim2.new(0, 0, 0, 0)

WindowStrokemain.Name = "WindowStroke"

WindowStrokemain.Parent = Main

WindowStrokemain.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

WindowStrokemain.Color = Color3.fromRGB(255,0,0)

WindowStrokemain.LineJoinMode = Enum.LineJoinMode.Round

WindowStrokemain.Thickness = 1

WindowStrokemain.Transparency = 0

WindowStrokemain.Enabled = true

WindowStrokemain.Archivable = true

Main:TweenSize(UDim2.new(0, 560, 0, 350),"Out","Quad",0.4,true)

local MCNR = Instance.new("UICorner")

MCNR.Name = "MCNR"

MCNR.Parent = Main

local Top = Instance.new("Frame")

Top.Name = "Top"

Top.Position = UDim2.new(0,0,0,4)

Top.Parent = Main

Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Top.Size = UDim2.new(0, 560, 0, 27)

local TCNR = Instance.new("UICorner")

TCNR.Name = "TCNR"

TCNR.Parent = Top

local Logo = Instance.new("ImageLabel")

Logo.Name = "Logo"

Logo.Parent = Top

Logo.BackgroundColor3 = Color3.fromRGB(0,0,0)

Logo.BackgroundTransparency = 1.000

Logo.Position = UDim2.new(0, 13, 0, 1)

Logo.Size = UDim2.new(0, 25, 0, 25)

Logo.Image = "rbxassetid://13858899085"

local Name = Instance.new("TextLabel")

Name.Name = "Name"

Name.Parent = Top

Name.BackgroundColor3 = Color3.fromRGB(0,0,0)

Name.BackgroundTransparency = 1.000

Name.Position = UDim2.new(0.1, 0, 0, 0)

Name.Size = UDim2.new(0, 10, 0, 27)

Name.Font = Enum.Font.Code

Name.RichText = true;

Name.Text = name

Name.TextColor3 = Color3.fromRGB(225, 225, 225)

Name.TextSize = 15.000

local ServerTime = Instance.new("TextButton")

local ServerDate = Instance.new("TextButton")

ServerTime.Name = "ServerTime"

ServerTime.Parent = Top

ServerTime.BackgroundColor3 = _G.WindowBackgroundColor

ServerTime.AutoButtonColor = false

ServerTime.BackgroundTransparency = 1.000

ServerTime.Position = UDim2.new(0, 159, 0, 0)

ServerTime.Size = UDim2.new(0, 225, 0, 25)

ServerTime.Font = Enum.Font.Code

ServerTime.Text = ""

ServerTime.TextSize = 13.000

ServerTime.TextColor3 = Color3.fromRGB(0, 250, 0)

ServerTime.TextXAlignment = Enum.TextXAlignment.Center

ServerDate.Name = "ServerDate"

ServerDate.Parent = Top

ServerDate.BackgroundColor3 = _G.WindowBackgroundColor

ServerDate.AutoButtonColor = false

ServerDate.BackgroundTransparency = 1.000

ServerDate.Position = UDim2.new(0, 300, 0, 0)

ServerDate.Size = UDim2.new(0, 250, 0, 25)

ServerDate.Font = Enum.Font.Code

ServerDate.Text = ""

ServerDate.TextSize = 13.000

ServerDate.TextColor3 = Color3.fromRGB(250, 0, 0)

ServerDate.TextXAlignment = Enum.TextXAlignment.Center

local LocalizationService = game:GetService("LocalizationService")

local Players = game:GetService("Players")

local player = Players.LocalPlayer

local name = player.Name

local result, code = pcall(function()

return LocalizationService:GetCountryRegionForPlayerAsync(player)

end)

spawn(function()

while true do

UpdateOS()

game:GetService("RunService").RenderStepped:Wait()

end

end)

local ListNof = Instance.new("Frame")

local NofList = Instance.new("UIListLayout")

ListNof.Name = "ListNof"

ListNof.Parent = SOMEXHUB

ListNof.BackgroundColor3 = Color3.fromRGB(0,0,0)

ListNof.BackgroundTransparency = 1.000

ListNof.Position = UDim2.new(0.778017223, 0, -0.00217864919, 0)

ListNof.Size = UDim2.new(0, 206, 0, 460)

NofList.Name = "NofList"

NofList.Parent = ListNof

NofList.SortOrder = Enum.SortOrder.LayoutOrder

NofList.VerticalAlignment = Enum.VerticalAlignment.Top

function Update:Nof(txt,tine)

spawn(function()

local Nof1 = Instance.new("Frame")

local Nof2 = Instance.new("Frame")

local Nof3 = Instance.new("Frame")

local NofLabel = Instance.new("TextLabel")

local slidenof = Instance.new("Frame")

local Slide2 = Instance.new("Frame")

Nof1.Name = "Nof1"

Nof1.Parent = ListNof

Nof1.BackgroundColor3 = Color3.fromRGB(0,0,0)

Nof1.BackgroundTransparency = 1.000

Nof1.BorderSizePixel = 0

Nof1.Size = UDim2.new(0, 206, 0, 83)

Nof2.Name = "Nof2"

Nof2.Parent = Nof1

Nof2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Nof2.BorderColor3 = Color3.fromRGB(0, 0, 0)

Nof2.Position = UDim2.new(0, 0, 0.0120481923, 0)

Nof2.Size = UDim2.new(0, 189, 0, 65)

Instance.new("UICorner",Nof2)

Instance.new("UICorner",slidenof)

Instance.new("UICorner",Slide2)

Nof3.Name = "Nof3"

Nof3.Parent = Nof1

Nof3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Nof3.BackgroundTransparency = 1

Nof3.BorderSizePixel = 0

Nof3.Position = UDim2.new(0, 0, 0.638554215, 0)

Nof3.Size = UDim2.new(0, 189, 0, 7)

NofLabel.Name = "NofLabel"

NofLabel.Parent = Nof1

NofLabel.BackgroundColor3 = Color3.fromRGB(0,0,0)

NofLabel.BackgroundTransparency = 1.000

NofLabel.BorderSizePixel = 0

NofLabel.Position = UDim2.new(0, 0, 0.00463949936, 0)

NofLabel.Size = UDim2.new(0, 188, 0, 52)

NofLabel.ZIndex = 4

NofLabel.Font = Enum.Font.Code

NofLabel.TextColor3 = main_color or Color3.fromRGB(255,0,0)

NofLabel.TextScaled = false

NofLabel.TextSize = 18.000

NofLabel.TextStrokeTransparency = 0.100

NofLabel.TextTransparency = 0.100

NofLabel.TextWrapped = true

NofLabel.Text = txt or ""

slidenof.Name = "slidenof"

slidenof.Parent = Nof1

slidenof.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

slidenof.BorderSizePixel = 0

slidenof.Position = UDim2.new(0, 0, 0.638554215, 0)

slidenof.Size = UDim2.new(0, 189, 0, 7)

Slide2.Name = "Slide2"

Slide2.Parent = Nof1

Slide2.BorderSizePixel = 0

Slide2.BackgroundColor3 = main_color or Color3.fromRGB(0,0,0)

Slide2.BorderColor3 = Color3.fromRGB(0, 0, 0)

Slide2.Position = UDim2.new(0, 0, 0.0120481923, 0)

Slide2.Size = UDim2.new(0, 0, 0, 65)

Slide2.ZIndex = 15

Slide2.Visible = false

tween:Create(slidenof,tweeninfo(tine or 2),{Size = UDim2.new(0, 0, 0, 7)}):Play()

wait(tine or 2)

Slide2.Visible = true

tween:Create(Slide2,tweeninfo(0.2),{Size = UDim2.new(0, 190, 0, 65)}):Play()

wait(0.2)

tween:Create(Slide2,tweeninfo(0.2),{Size = UDim2.new(0, 0, 0, 65)}):Play()

tween:Create(Nof3,tweeninfo(0.2),{Size = UDim2.new(0, 0, 0, 7)}):Play()

tween:Create(NofLabel,tweeninfo(0.2),{Size = UDim2.new(0, 0, 0, 52)}):Play()

tween:Create(Nof2,tweeninfo(0.2),{Size = UDim2.new(0, 0, 0, 65)}):Play()

wait(0.2)

Nof2.Visible = false

game.Debris:AddItem(Nof1,0)

end)

end

function Update:Notification(textdesc)

local NotificationHold = Instance.new("TextButton")

local NotificationFrame = Instance.new("Frame")

local OkayBtn = Instance.new("TextButton")

local OkayBtnCorner = Instance.new("UICorner")

local OkayBtnTitle = Instance.new("TextLabel")

local NotificationTitle = Instance.new("TextLabel")

local NotificationDesc = Instance.new("TextLabel")

local NotifCorner = Instance.new("UICorner")

local NotifHolderUIStroke = Instance.new("UIStroke")

local Line = Instance.new("Frame")

NotificationHold.Name = "NotificationHold"

NotificationHold.Parent = Main

NotificationHold.BackgroundColor3 = _G.WindowBackgroundColor

NotificationHold.BackgroundTransparency = 0.4

NotificationHold.BorderSizePixel = 0

NotificationHold.Size = UDim2.new(0, 589, 0, 378)

NotificationHold.AutoButtonColor = false

NotificationHold.Font = Enum.Font.SourceSans

NotificationHold.Text = ""

NotificationHold.TextColor3 = _G.SectionTextColor

NotificationHold.TextSize = 13.000

TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 0.4}):Play()

wait(0.4)

NotificationFrame.Name = "NotificationFrame"

NotificationFrame.Parent = NotificationHold

NotificationFrame.AnchorPoint = Vector2.new(0.5, 0.5)

NotificationFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

NotificationFrame.BorderColor3 = _G.SectionColor

NotificationFrame.BorderSizePixel = 0

NotificationFrame.ClipsDescendants = true

NotificationFrame.Position = UDim2.new(0, 295, 0, 190)

NotificationFrame.Size = UDim2.new(0, 0, 0, 0)

NotificationFrame:TweenSize(UDim2.new(0, 400, 0, 250), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

NotifCorner.Name = "NotifCorner"

NotifCorner.Parent = NotificationFrame

NotifCorner.CornerRadius = UDim.new(0, 5)

NotifHolderUIStroke.Name = "NotifHolderUIStroke"

NotifHolderUIStroke.Parent = NotificationFrame

NotifHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

NotifHolderUIStroke.Color = _G.SectionColor

NotifHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round

NotifHolderUIStroke.Thickness = 1

NotifHolderUIStroke.Transparency = 0

NotifHolderUIStroke.Enabled = true

NotifHolderUIStroke.Archivable = true

OkayBtn.Name = "OkayBtn"

OkayBtn.Parent = NotificationFrame

OkayBtn.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

OkayBtn.BorderSizePixel = 1

OkayBtn.BorderColor3 = _G.SectionColor

OkayBtn.Position = UDim2.new(0, 125, 0, 190)

OkayBtn.Size = UDim2.new(0, 150, 0, 30)

OkayBtn.AutoButtonColor = true

OkayBtn.Font = Enum.Font.SourceSans

OkayBtn.Text = ""

OkayBtn.TextColor3 = _G.SectionTextColor

OkayBtn.TextSize = 13.000

OkayBtnCorner.CornerRadius = UDim.new(0, 5)

OkayBtnCorner.Name = "OkayBtnCorner"

OkayBtnCorner.Parent = OkayBtn

OkayBtnTitle.Name = "OkayBtnTitle"

OkayBtnTitle.Parent = OkayBtn

OkayBtnTitle.BackgroundColor3 = _G.SectionColor

OkayBtnTitle.BackgroundTransparency = 1.000

OkayBtnTitle.Size = UDim2.new(0, 150, 0, 30)

OkayBtnTitle.Text = "OK"

OkayBtnTitle.Font = Enum.Font.Code

OkayBtnTitle.TextColor3 = Color3.fromRGB(0, 0, 0)

OkayBtnTitle.TextSize = 22.000

NotificationTitle.Name = "NotificationTitle"

NotificationTitle.Parent = NotificationFrame

NotificationTitle.BackgroundColor3 = _G.SectionColor

NotificationTitle.BackgroundTransparency = 1.000

NotificationTitle.Position = UDim2.new(0, 0, 0, 10)

NotificationTitle.Size = UDim2.new(0, 400, 0, 25)

NotificationTitle.ZIndex = 3

NotificationTitle.Font = Enum.Font.Code

NotificationTitle.Text = "Notification"

NotificationTitle.TextColor3 = Color3.fromRGB(50, 255, 255)

NotificationTitle.TextSize = 22.000

Line.Name = "Line"

Line.Parent = NotificationFrame

Line.BackgroundColor3 = _G.SectionColor

Line.BorderSizePixel = 0

Line.Position = UDim2.new(0, 10, 0, 40)

Line.Size = UDim2.new(0, 380, 0, 1)

NotificationDesc.Name = "NotificationDesc"

NotificationDesc.Parent = NotificationFrame

NotificationDesc.BackgroundColor3 = _G.SectionColor

NotificationDesc.BackgroundTransparency = 1.000

NotificationDesc.Position = UDim2.new(0, 10, 0, 80)

NotificationDesc.Size = UDim2.new(0, 380, 0, 200)

NotificationDesc.Font = Enum.Font.Code

NotificationDesc.Text = textdesc

NotificationDesc.TextScaled = false

NotificationDesc.TextColor3 = _G.SectionTextColor

NotificationDesc.TextSize = 16.000

NotificationDesc.TextWrapped = true

NotificationDesc.TextXAlignment = Enum.TextXAlignment.Center

NotificationDesc.TextYAlignment = Enum.TextYAlignment.Top

OkayBtn.MouseEnter:Connect(function()

TweenService:Create(OkayBtn, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()

end)

OkayBtn.MouseLeave:Connect(function()

TweenService:Create(OkayBtn, TweenInfo.new(.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundColor3 = Color3.fromRGB(0, 0, 0)}):Play()

end)

OkayBtn.MouseButton1Click:Connect(function()

NotificationFrame:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)

wait(0.4)

TweenService:Create(NotificationHold, TweenInfo.new(.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {BackgroundTransparency = 1}):Play()

wait(.3)

NotificationHold:Destroy()

end)

end

local Hub = Instance.new("TextLabel")

Hub.Name = "Hub"

Hub.Parent = Top

Hub.BackgroundColor3 = Color3.fromRGB(0,0,0)

Hub.BackgroundTransparency = 1.000

Hub.Position = UDim2.new(0, 80, 0, 0)

Hub.Size = UDim2.new(0, 50, 0, 27)

Hub.Font = Enum.Font.Code

Hub.Text = ""

Hub.TextColor3 = Color3.fromRGB(50, 255, 255)

Hub.TextSize = 15.000

Hub.TextXAlignment = Enum.TextXAlignment.Left

local Hub1 = Instance.new("TextLabel")

Hub1.Name = "Hub"

Hub1.Parent = Top

Hub1.BackgroundColor3 = Color3.fromRGB(0,0,0)

Hub1.BackgroundTransparency = 1.000

Hub1.Position = UDim2.new(0, 130, 0, 0)

Hub1.Size = UDim2.new(0, 50, 0, 27)

Hub1.Font = Enum.Font.Code

Hub1.Text = "YT isnahamzah"

Hub1.TextColor3 = Color3.fromRGB(255,255,255)

Hub1.TextSize = 15.000

local BindButton = Instance.new("TextButton")

BindButton.Name = "BindButton"

BindButton.Parent = Top

BindButton.BackgroundColor3 = Color3.fromRGB(0,0,0)

BindButton.BackgroundTransparency = 1.000

BindButton.Position = UDim2.new(0.85, 0, 0, 0)

BindButton.Size = UDim2.new(0, 55, 0, 27)

BindButton.Font = Enum.Font.Code

BindButton.Text = "[RightControl]"

BindButton.TextColor3 = Color3.fromRGB(255,255,255)

BindButton.TextSize = 13.000

BindButton.Visible = true

local Tab = Instance.new("ImageLabel")

local WindowStrokelol = Instance.new("UIStroke")

Tab.Name = "Tab"

Tab.Parent = Main

Tab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Tab.ImageTransparency = 1

Tab.Position = UDim2.new(0, 5, 0, 35)

Tab.Size = UDim2.new(0, 160, 0, 310)

Tab.Image = "rbxassetid://12204201088"

WindowStrokelol.Name = "WindowStroke"

WindowStrokelol.Parent = Tab

WindowStrokelol.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

WindowStrokelol.Color = Color3.fromRGB(255,0,0)

WindowStrokelol.LineJoinMode = Enum.LineJoinMode.Round

WindowStrokelol.Thickness = 1

WindowStrokelol.Transparency = 0

WindowStrokelol.Enabled = true

WindowStrokelol.Archivable = true

local TCNR = Instance.new("UICorner")

TCNR.Name = "TCNR"

TCNR.Parent = Tab

local ScrollTab = Instance.new("ScrollingFrame")

ScrollTab.Name = "ScrollTab"

ScrollTab.Parent = Tab

ScrollTab.Active = true

ScrollTab.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

ScrollTab.BackgroundTransparency = 1

ScrollTab.Size = UDim2.new(0, 170, 0, 300)

ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)

ScrollTab.ScrollBarThickness = 0

local PLL = Instance.new("UIListLayout")

PLL.Name = "PLL"

PLL.Parent = ScrollTab

PLL.SortOrder = Enum.SortOrder.LayoutOrder

PLL.Padding = UDim.new(0, 14)

local PPD = Instance.new("UIPadding")

PPD.Name = "PPD"

PPD.Parent = ScrollTab

PPD.PaddingLeft = UDim.new(0, 10)

PPD.PaddingTop = UDim.new(0, 10)

local Page = Instance.new("Frame")

local WindowStrokeshit = Instance.new("UIStroke")

Page.Name = "Page"

Page.Parent = Main

Page.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Page.BackgroundTransparency = 0.1

Page.Position = UDim2.new(0.305426834, 0, 0.100000003, 0)

Page.Size = UDim2.new(0, 380, 0, 310)

WindowStrokeshit.Name = "WindowStroke"

WindowStrokeshit.Parent = Page

WindowStrokeshit.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

WindowStrokeshit.Color = Color3.fromRGB(255,0,0)

WindowStrokeshit.LineJoinMode = Enum.LineJoinMode.Round

WindowStrokeshit.Thickness = 1

WindowStrokeshit.Transparency = 0

WindowStrokeshit.Archivable = false

WindowStrokeshit.Enabled = true

local lolshit = Instance.new("UICorner")

lolshit.Parent = Top1

local PCNR = Instance.new("UICorner")

PCNR.Name = "PCNR"

PCNR.Parent = Page

local MainPage = Instance.new("Frame")

MainPage.Name = "MainPage"

MainPage.Parent = Page

MainPage.ClipsDescendants = true

MainPage.BackgroundColor3 = Color3.fromRGB(0,0,0)

MainPage.BackgroundTransparency = 1.000

MainPage.Size = UDim2.new(0, 560, 0, 360)

local PageList = Instance.new("Folder")

PageList.Name = "PageList"

PageList.Parent = MainPage

local UIPageLayout = Instance.new("UIPageLayout")

UIPageLayout.Parent = PageList

UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder

UIPageLayout.EasingDirection = Enum.EasingDirection.InOut

UIPageLayout.EasingStyle = Enum.EasingStyle.Quad

UIPageLayout.FillDirection = Enum.FillDirection.Vertical

UIPageLayout.Padding = UDim.new(0, 15)

UIPageLayout.TweenTime = 0.400

UIPageLayout.GamepadInputEnabled = false

UIPageLayout.ScrollWheelInputEnabled = false

UIPageLayout.TouchInputEnabled = false

MakeDraggable(Top,Main)

UserInputService.InputBegan:Connect(function(input)

if input.KeyCode == Enum.KeyCode[yoo] then

if uihide == false then

uihide = true

Main:TweenSize(UDim2.new(0, 0, 0, 0),"In","Quad",0.4,true)

else

uihide = false

Main:TweenSize(UDim2.new(0, 560, 0, 350),"Out","Quad",0.4,true)

end

end

end)

local uitab = {}

function uitab:Tab(text, img)

local TabButton = Instance.new("TextButton")

local TabImage = Instance.new("ImageLabel")

local WindowStroke = Instance.new("UIStroke")

local Label3 = Instance.new("TextLabel")

local LabelTitle = Instance.new("TextLabel")

local LabelTitle = Instance.new("TextLabel")

TabButton.Parent = ScrollTab

TabButton.Name = text.."Server"

TabButton.Text = text

TabButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

TabButton.BackgroundTransparency = 0.1

TabButton.Size = UDim2.new(0, 138, 0, 30)

TabButton.Font = Enum.Font.Code

TabButton.TextColor3 = Color3.fromRGB(255, 225, 225)

TabButton.TextSize = 12.000

TabButton.TextTransparency = 0

Label3.Name = "Label"

Label3.Parent = TabButton

Label3.BackgroundColor3 = Color3.fromRGB(255,255,255)

Label3.BackgroundTransparency = 1.000

Label3.Position = UDim2.new(0, 27, 0, 7)

Label3.Size = UDim2.new(0, 20, 0, 20)

Label3.Font = Enum.Font.ArialBold

Label3.TextColor3 = Color3.fromRGB(225, 225, 225)

Label3.TextSize = 10.000

Label3.Text = ""

local MCNR1 = Instance.new("UICorner")

MCNR1.Name = "MCNR"

MCNR1.Parent = TabButton

WindowStroke.Name = "WindowStroke"

WindowStroke.Parent = TabButton

WindowStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

WindowStroke.Color = Color3.fromRGB(255,255,255)

WindowStroke.LineJoinMode = Enum.LineJoinMode.Round

WindowStroke.Thickness = 1

WindowStroke.Transparency = 0

WindowStroke.Enabled = true

WindowStroke.Archivable = true

TabImage.Name = text or "TabImage"

TabImage.Parent = TabButton

TabImage.BackgroundColor3 = Color3.fromRGB("255,0,0")

TabImage.BackgroundTransparency = 1.000

TabImage.Position = UDim2.new(0, 7, 0, 7)

TabImage.Size = UDim2.new(0, 20, 0, 20)

TabImage.Image = img or "rbxassetid://8666601749"

TabImage.ImageColor3 = Color3.fromRGB(255,255,255)

local MainFramePage = Instance.new("ScrollingFrame")

MainFramePage.Name = text.."_Page"

MainFramePage.Parent = PageList

MainFramePage.Active = true

MainFramePage.BackgroundColor3 = Color3.fromRGB(255,0,0)

MainFramePage.BackgroundTransparency = 1.000

MainFramePage.BorderSizePixel = 0

MainFramePage.Size = UDim2.new(0, 390, 0, 300)

MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)

MainFramePage.ScrollBarThickness = 0

local UIPadding = Instance.new("UIPadding")

local UIListLayout = Instance.new("UIListLayout")

UIPadding.Parent = MainFramePage

UIPadding.PaddingLeft = UDim.new(0, 10)

UIPadding.PaddingTop = UDim.new(0, 10)

UIListLayout.Padding = UDim.new(0,15)

UIListLayout.Parent = MainFramePage

UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

TabButton.MouseButton1Click:Connect(function()

for i,v in next, ScrollTab:GetChildren() do

if v:IsA("TextButton") then

TweenService:Create(

v,

TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{TextTransparency = 0.5}

):Play()

end

TweenService:Create(

TabButton,

TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{TextTransparency = 0}

):Play()

end

for i,v in next, PageList:GetChildren() do

currentpage = string.gsub(TabButton.Name,"Server","").."_Page"

if v.Name == currentpage then

UIPageLayout:JumpTo(v)

end

end

end)

if abc == false then

for i,v in next, ScrollTab:GetChildren() do

if v:IsA("TextButton") then

TweenService:Create(

v,

TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{TextTransparency = 0.5}

):Play()

end

TweenService:Create(

TabButton,

TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{TextTransparency = 0}

):Play()

end

UIPageLayout:JumpToIndex(1)

abc = true

end

game:GetService("RunService").Stepped:Connect(function()

pcall(function()

MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)

ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)

end)

end)

coroutine.wrap(function()

while wait() do

end

end)()

coroutine.wrap(function()

while wait() do

end

end)()

local main = {}

function main:Button(text,callback)

local Button = Instance.new("Frame")

local UICorner = Instance.new("UICorner")

local TextBtn = Instance.new("TextButton")

local UICorner_2 = Instance.new("UICorner")

local Black = Instance.new("Frame")

local UICorner_3 = Instance.new("UICorner")

Button.Name = "Button"

Button.Parent = MainFramePage

Button.BackgroundColor3 = _G.Color

Button.Size = UDim2.new(0, 362, 0, 31)

UICorner.CornerRadius = UDim.new(0, 5)

UICorner.Parent = Button

TextBtn.Name = "TextBtn"

TextBtn.Parent = Button

TextBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

TextBtn.Position = UDim2.new(0, 1, 0, 1)

TextBtn.Size = UDim2.new(0, 360, 0, 29)

TextBtn.AutoButtonColor = false

TextBtn.Font = Enum.Font.Code

TextBtn.Text = text

TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)

TextBtn.TextSize = 15.000

UICorner_2.CornerRadius = UDim.new(0, 5)

UICorner_2.Parent = TextBtn

Black.Name = "Black"

Black.Parent = Button

Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

Black.BackgroundTransparency = 1.000

Black.BorderSizePixel = 0

Black.Position = UDim2.new(0, 1, 0, 1)

Black.Size = UDim2.new(0, 360, 0, 29)

UICorner_3.CornerRadius = UDim.new(0, 5)

UICorner_3.Parent = Black

TextBtn.MouseEnter:Connect(function()

TweenService:Create(

Black,

TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{BackgroundTransparency = 0.7}

):Play()

end)

TextBtn.MouseLeave:Connect(function()

TweenService:Create(

Black,

TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{BackgroundTransparency = 1}

):Play()

end)

TextBtn.MouseButton1Click:Connect(function()

TextBtn.TextSize = 0

TweenService:Create(

TextBtn,

TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{TextSize = 15}

):Play()

callback()

end)

end

function main:Toggle(text,config,callback)

config = config or false

local toggled = config

local Toggle = Instance.new("Frame")

local UICorner = Instance.new("UICorner")

local Button = Instance.new("TextButton")

local UICorner_2 = Instance.new("UICorner")

local Label = Instance.new("TextLabel")

local ToggleImage = Instance.new("Frame")

local UICorner_3 = Instance.new("UICorner")

local Circle = Instance.new("Frame")

local UICorner_4 = Instance.new("UICorner")

local ImageLabel = Instance.new("ImageLabel")

local Space = Instance.new("TextLabel")

Toggle.Name = "Toggle"

Toggle.Parent = MainFramePage

Toggle.BackgroundColor3 = _G.Color

Toggle.Size = UDim2.new(0, 362, 0, 31)

UICorner.CornerRadius = UDim.new(0, 5)

UICorner.Parent = Toggle

Button.Name = "Button"

Button.Parent = Toggle

Button.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

Button.Position = UDim2.new(0, 1, 0, 1)

Button.Size = UDim2.new(0, 360, 0, 29)

Button.AutoButtonColor = false

Button.Font = Enum.Font.SourceSans

Button.Text = ""

Button.TextColor3 = Color3.fromRGB(0, 0, 0)

Button.TextSize = 11.000

UICorner_2.CornerRadius = UDim.new(0, 5)

UICorner_2.Parent = Button

Label.Name = "Label"

Label.Parent = Toggle

Label.BackgroundColor3 = Color3.fromRGB(255,255,255)

Label.BackgroundTransparency = 1.000

Label.Position = UDim2.new(0, 1, 0, 1)

Label.Size = UDim2.new(0, 360, 0, 29)

Label.Font = Enum.Font.Code

Label.Text = text

Label.TextColor3 = Color3.fromRGB(225, 225, 225)

Label.TextSize = 15.000

ImageLabel.Name = "ImageLabel"

ImageLabel.Parent = Toggle

ImageLabel.BackgroundColor3 = Color3.fromRGB(255,255,255)

ImageLabel.BackgroundTransparency = 1.000

ImageLabel.BorderSizePixel = 0

ImageLabel.Position = UDim2.new(0, 10, 0, 6)

ImageLabel.Size = UDim2.new(0, 18, 0, 18)

ImageLabel.Image = "rbxassetid://8825010231"

ImageLabel.ImageColor3 = Color3.fromRGB(180,180,180)

Space.Name = "Space"

Space.Parent = Toggle

Space.BackgroundColor3 = _G.Color

Space.BackgroundTransparency = 1.000

Space.Position = UDim2.new(0, 30, 0, 0)

Space.Size = UDim2.new(0, 15, 0, 30)

Space.Font = Enum.Font.Code

Space.Text = "|"

Space.TextSize = 13.000

Space.TextColor3 = Color3.fromRGB(180,180,180)

Space.TextXAlignment = Enum.TextXAlignment.Center

ToggleImage.Name = "ToggleImage"

ToggleImage.Parent = Toggle

ToggleImage.BackgroundColor3 = Color3.fromRGB(225, 225, 225)

ToggleImage.Position = UDim2.new(0, 313, 0, 5)

ToggleImage.Size = UDim2.new(0, 45, 0, 20)

UICorner_3.CornerRadius = UDim.new(0, 10)

UICorner_3.Parent = ToggleImage

Circle.Name = "Circle"

Circle.Parent = ToggleImage

Circle.BackgroundColor3 = Color3.fromRGB(227, 60, 60)

Circle.Position = UDim2.new(0, 2, 0, 2)

Circle.Size = UDim2.new(0, 16, 0, 16)

UICorner_4.CornerRadius = UDim.new(0, 10)

UICorner_4.Parent = Circle

Button.MouseButton1Click:Connect(function()

if toggled == false then

toggled = true

Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.2,true)

TweenService:Create(

Circle,

TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{BackgroundColor3 = _G.Color1}

):Play()

else

toggled = false

Circle:TweenPosition(UDim2.new(0,2,0,2),"Out","Sine",0.2,true)

TweenService:Create(

Circle,

TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{BackgroundColor3 = Color3.fromRGB(255, 0, 0)}

):Play()

end

pcall(callback,toggled)

end)

if config == true then

toggled = true

Circle:TweenPosition(UDim2.new(0,27,0,2),"Out","Sine",0.4,true)

TweenService:Create(

Circle,

TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),

{BackgroundColor3 = _G.Color1}

):Play()

pcall(callback,toggled)

end

end

function main:Dropdown(droptitle, list, callback)

-- Local --

local dropfunc = {}

local list = list or {}

local DropToggled = false

local DropSizeFrame = Instance.new("Frame")

local Frame = Instance.new("Frame")

local UIStroke = Instance.new("UIStroke")

local DropCover = Instance.new("Frame")

local UICorner = Instance.new("UICorner")

local UICorner2 = Instance.new("UICorner")

local ImageLabel = Instance.new("ImageLabel")

local Space = Instance.new("TextLabel")

local Title = Instance.new("TextLabel")

local ImageButton = Instance.new("ImageButton")

local DropStrokeList = Instance.new("UIStroke")

local DropTextList = Instance.new("TextLabel")

-- Prop --

DropSizeFrame.Name = droptitle or "DropSizeFrame"

DropSizeFrame.Parent = MainFramePage

DropSizeFrame.BackgroundColor3 = _G.SectionColor

DropSizeFrame.BackgroundTransparency = 1.000

DropSizeFrame.Size = UDim2.new(0, 360, 0, 60)

Frame.Name = "Frame"

Frame.Parent = DropSizeFrame

Frame.BackgroundColor3 = Color3.fromRGB(30,30,30)

Frame.BorderSizePixel = 0

Frame.Position = UDim2.new(0, 3, 0, 0)

Frame.Size = UDim2.new(0, 360, 0, 60)

UIStroke.Name = "UIStroke"

UIStroke.Parent = Frame

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UIStroke.Color = Color3.fromRGB(255,255,255)

UIStroke.LineJoinMode = Enum.LineJoinMode.Round

UIStroke.Thickness = 0.5

UIStroke.Transparency = 0

UIStroke.Enabled = true

UIStroke.Archivable = true

UICorner.Parent = Frame

UICorner.CornerRadius = UDim.new(0, 3)

DropCover.Name = "DropCover"

DropCover.Parent = Frame

DropCover.BackgroundColor3 = _G.BackgroundItemColor

DropCover.BackgroundTransparency = 1.000

DropCover.BorderSizePixel = 0

DropCover.Position = UDim2.new(0, 0, 0, 0)

DropCover.Size = UDim2.new(0, 360, 0, 30)

ImageLabel.Name = "ImageLabel"

ImageLabel.Parent = DropCover

ImageLabel.BackgroundColor3 = _G.SectionColor

ImageLabel.BackgroundTransparency = 1.000

ImageLabel.BorderSizePixel = 0

ImageLabel.Position = UDim2.new(0, 5, 0, 6)

ImageLabel.Size = UDim2.new(0, 18, 0, 18)

ImageLabel.Image = "rbxassetid://8825010231"

ImageLabel.ImageColor3 = Color3.fromRGB(255,255,255)

Space.Name = "Space"

Space.Parent = DropCover

Space.BackgroundColor3 = _G.SectionColor

Space.BackgroundTransparency = 1.000

Space.Position = UDim2.new(0, 30, 0, 0)

Space.Size = UDim2.new(0, 15, 0, 30)

Space.Font = Enum.Font.Code

Space.Text = "|"

Space.TextSize = 13.000

Space.TextColor3 = Color3.fromRGB(255,255,255)

Space.TextXAlignment = Enum.TextXAlignment.Center

Title.Name = "Title"

Title.Parent = DropCover

Title.BackgroundColor3 = _G.SectionColor

Title.BackgroundTransparency = 1.000

Title.Position = UDim2.new(0, 50, 0, 0)

Title.Size = UDim2.new(0, 280, 0, 30)

Title.Font = Enum.Font.Code

Title.Text = droptitle or "drop Title"

Title.TextColor3 = Color3.fromRGB(255,255,255)

Title.TextSize = 12.000

Title.TextXAlignment = Enum.TextXAlignment.Left

ImageButton.Name = "ImageButton"

ImageButton.Parent = DropCover

ImageButton.BackgroundColor3 = _G.WindowBackgroundColor

ImageButton.BackgroundTransparency = 1.000

ImageButton.Position = UDim2.new(0, 330, 0, 7)

ImageButton.Size = UDim2.new(0, 23, 0, 18)

ImageButton.Image = "rbxassetid://8825010231"

ImageButton.ImageColor3 = Color3.fromRGB(255,255,255)

ImageButton.Rotation = 180

DropTextList.Name = "DropTextList"

DropTextList.Parent = Frame

DropTextList.BackgroundColor3 = _G.BackgroundItemColor

DropTextList.BackgroundTransparency = 1.000

DropTextList.Position = UDim2.new(0, 3, 0, 30)

DropTextList.Size = UDim2.new(0, 350, 0, 25)

DropTextList.Font = Enum.Font.Code

DropTextList.Text = v or "Select First"

DropTextList.TextColor3 = Color3.fromRGB(255,255,255)

DropTextList.TextSize = 12.000

DropTextList.TextXAlignment = Enum.TextXAlignment.Center

UICorner2.Parent = DropTextList

UICorner2.CornerRadius = UDim.new(0,3)

DropStrokeList.Name = "DropStrokeList"

DropStrokeList.Parent = DropTextList

DropStrokeList.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

DropStrokeList.Color = Color3.fromRGB(255,255,255)

DropStrokeList.LineJoinMode = Enum.LineJoinMode.Round

DropStrokeList.Thickness = 0.2

DropStrokeList.Transparency = 0

DropStrokeList.Enabled = true

DropStrokeList.Archivable = true

-- Adden Local --

local DropItemScroll = Instance.new("ScrollingFrame")

local DropItemLayout = Instance.new("UIListLayout")

local DropItemStroke = Instance.new("UIStroke")

-- Adden Prop --

DropItemScroll.Name = "DropItemScroll"

DropItemScroll.Parent = Frame

DropItemScroll.BackgroundColor3 = _G.SectionColor

DropItemScroll.BackgroundTransparency = 1.000

DropItemScroll.Position = UDim2.new(0, 3, 0, 60)

DropItemScroll.Size = UDim2.new(0, 330, 0, 0)

DropItemScroll.ScrollBarThickness = 0

DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, 0)

DropItemLayout.Name = "DropItemLayout"

DropItemLayout.Parent = DropItemScroll

DropItemLayout.SortOrder = Enum.SortOrder.LayoutOrder

DropItemLayout.Padding = UDim.new(0, 0)

DropItemStroke.Name = "DropItemStroke"

DropItemStroke.Parent = DropItemScroll

DropItemStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

DropItemStroke.Color = Color3.fromRGB(255,255,255)

DropItemStroke.LineJoinMode = Enum.LineJoinMode.Round

DropItemStroke.Thickness = 0

DropItemStroke.Transparency = 0

DropItemStroke.Enabled = true

DropItemStroke.Archivable = true

-- Dropdown Script--

local ItemCount = 0

local FrameSize = 0

ImageButton.MouseButton1Click:Connect(function()

if DropToggled then

DropToggled = false

DropSizeFrame:TweenSize(UDim2.new(0, 330, 0, 60), 'InOut', 'Linear', 0.08)

Frame:TweenSize(UDim2.new(0, 360, 0, 60), 'InOut', 'Linear', 0.08)

DropItemScroll:TweenSize(UDim2.new(0, 330, 0, 0), 'InOut', 'Linear', 0.08)

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{Rotation = 180}

):Play()

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{ImageColor3 = Color3.fromRGB(255,255,255)}

):Play()

else

DropToggled = true

DropSizeFrame:TweenSize(UDim2.new(0, 387, 0, 65 + FrameSize), 'InOut', 'Linear', 0.08)

Frame:TweenSize(UDim2.new(0, 360, 0, 65 + FrameSize), 'InOut', 'Linear', 0.08)

DropItemScroll:TweenSize(UDim2.new(0, 375, 0, FrameSize), 'InOut', 'Linear', 0.08)

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{Rotation = 0}

):Play()

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{ImageColor3 = Color3.fromRGB(255,255,255)}

):Play()

end

end)

for i,v in next, list do

ItemCount = ItemCount + 1

if ItemCount == 1 then

FrameSize = 30

elseif ItemCount == 2 then

FrameSize = 60

elseif ItemCount == 3 then

FrameSize = 90

elseif ItemCount >= 3 then

FrameSize = 120

end

local ItemList = Instance.new("TextButton")

ItemList.Name = "ItemList"

ItemList.Parent = DropItemScroll

ItemList.BackgroundColor3 = Color3.fromRGB(255,0,0)

ItemList.BackgroundTransparency = 1.000

ItemList.Size = UDim2.new(0, 350, 0, 30)

ItemList.AutoButtonColor = false

ItemList.Font = Enum.Font.Code

ItemList.TextColor3 = Color3.fromRGB(255,255,255)

ItemList.TextSize = 12.000

ItemList.Text = v or "None..."

ItemList.TextXAlignment = Enum.TextXAlignment.Center

ItemList.MouseEnter:Connect(function()

game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{BackgroundTransparency = 0.8}

):Play()

end)

ItemList.MouseLeave:Connect(function()

game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{BackgroundTransparency = 1}

):Play()

end)

ItemList.MouseButton1Click:Connect(function()

DropTextList.Text = v or "None..."

pcall(callback, v)

DropToggled = false

DropSizeFrame:TweenSize(UDim2.new(0, 387, 0, 60), 'InOut', 'Linear', 0.08)

Frame:TweenSize(UDim2.new(0, 360, 0, 60), 'InOut', 'Linear', 0.08)

DropItemScroll:TweenSize(UDim2.new(0, 375, 0), 'InOut', 'Linear', 0.08)

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{Rotation = 180}

):Play()

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{ImageColor3 = Color3.fromRGB(255,255,255)}

):Play()

end)

DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)

end

function dropfunc:Clear()

for _,v in next, DropItemScroll:GetChildren() do

if v:IsA("TextButton") then

v:Destroy()

FrameSize = 0

ItemCount = 0

end

end

DropTextList.Text = "Reset Succesfully..."

DropToggled = false

DropSizeFrame:TweenSize(UDim2.new(0, 330, 0, 60), 'InOut', 'Linear', 0.08)

Frame:TweenSize(UDim2.new(0, 360, 0, 60), 'InOut', 'Linear', 0.08)

DropItemScroll:TweenSize(UDim2.new(0, 330, 0), 'InOut', 'Linear', 0.08)

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{Rotation = 180}

):Play()

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{ImageColor3 = Color3.fromRGB(255,255,255)}

):Play()

end

function dropfunc:Add(newadd)

newadd = newadd or {}

ItemCount = ItemCount + 1

if ItemCount == 1 then

FrameSize = 30

elseif ItemCount == 2 then

FrameSize = 60

elseif ItemCount == 3 then

FrameSize = 90

elseif ItemCount >= 3 then

FrameSize = 120

end

local ItemList = Instance.new("TextButton")

ItemList.Name = "ItemList"

ItemList.Parent = DropItemScroll

ItemList.BackgroundColor3 = Color3.fromRGB(255,0,0)

ItemList.BackgroundTransparency = 1.000

ItemList.Size = UDim2.new(0, 330, 0, 30)

ItemList.AutoButtonColor = false

ItemList.Font = Enum.Font.Code

ItemList.TextColor3 = Color3.fromRGB(255,255,255)

ItemList.TextSize = 12.000

ItemList.Text = newadd or "None..."

ItemList.TextXAlignment = Enum.TextXAlignment.Center

ItemList.MouseEnter:Connect(function()

game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{BackgroundTransparency = 0.8}

):Play()

end)

ItemList.MouseLeave:Connect(function()

game.TweenService:Create(ItemList, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{BackgroundTransparency = 1}

):Play()

end)

ItemList.MouseButton1Click:Connect(function()

DropTextList.Text = newadd or "None..."

pcall(callback, newadd)

DropToggled = false

DropSizeFrame:TweenSize(UDim2.new(0, 330, 0, 60), 'InOut', 'Linear', 0.08)

Frame:TweenSize(UDim2.new(0, 360, 0, 60), 'InOut', 'Linear', 0.08)

DropItemScroll:TweenSize(UDim2.new(0, 330, 0), 'InOut', 'Linear', 0.08)

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{Rotation = 180}

):Play()

game.TweenService:Create(ImageButton, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut),

{ImageColor3 = Color3.fromRGB(255,0,0)}

):Play()

end)

DropItemScroll.CanvasSize = UDim2.new(0, 0, 0, DropItemLayout.AbsoluteContentSize.Y)

end

return dropfunc

end

function main:Slider(slidertitle, min, max, start, callback)

local sliderfunc = {}

local SliderFrame = Instance.new("Frame")

local SliderFrame_2 = Instance.new("Frame")

local UIStroke = Instance.new("UIStroke")

local UICorner = Instance.new("UICorner")

local ImageLabel = Instance.new("ImageLabel")

local Space = Instance.new("TextLabel")

local Title = Instance.new("TextLabel")

local SliderInput = Instance.new("Frame")

local SliderButton = Instance.new("Frame")

local SliderCount = Instance.new("Frame")

local SliderCorner = Instance.new("UICorner")

local SliderCorner2 = Instance.new("UICorner")

local BoxFrame = Instance.new("Frame")

local SliderBox = Instance.new("TextBox")

local SliderStroke = Instance.new("UIStroke")

local Title_2 = Instance.new("TextButton")

local UICorner_2 = Instance.new("UICorner")

local UICorner_3 = Instance.new("UICorner")

-- Prop --

SliderFrame.Name = slidertitle or "SliderFrame"

SliderFrame.Parent = MainFramePage

SliderFrame.BackgroundColor3 = Color3.fromRGB(255,0,0)

SliderFrame.BackgroundTransparency = 1

SliderFrame.BorderSizePixel = 0

SliderFrame.Size = UDim2.new(0, 362, 0, 55)

SliderFrame_2.Name = "SliderFrame_2"

SliderFrame_2.Parent = SliderFrame

SliderFrame_2.BackgroundColor3 = Color3.fromRGB(30,30,30)

SliderFrame_2.BackgroundTransparency = 0

SliderFrame_2.BorderSizePixel = 0

SliderFrame_2.Position = UDim2.new(0, 0.5, 0, 0)

SliderFrame_2.Size = UDim2.new(0, 362, 0, 55)

UIStroke.Name = "UIStroke"

UIStroke.Parent = SliderFrame_2

UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

UIStroke.Color = Color3.fromRGB(255,255,255)

UIStroke.LineJoinMode = Enum.LineJoinMode.Round

UIStroke.Thickness = 1

UIStroke.Transparency = 0

UIStroke.Enabled = true

UIStroke.Archivable = true

UICorner.Parent = SliderFrame_2

UICorner.CornerRadius = UDim.new(0, 3)

ImageLabel.Name = "ImageLabel"

ImageLabel.Parent = SliderFrame_2

ImageLabel.BackgroundColor3 = Color3.fromRGB(255,255,255)

ImageLabel.BackgroundTransparency = 1.000

ImageLabel.BorderSizePixel = 0

ImageLabel.Position = UDim2.new(0, 5, 0, 5)

ImageLabel.Size = UDim2.new(0, 18, 0, 18)

ImageLabel.Image = "rbxassetid://8825010231"

ImageLabel.ImageColor3 = Color3.fromRGB(180,180,180)

Space.Name = "Space"

Space.Parent = SliderFrame_2

Space.BackgroundColor3 = Color3.fromRGB(255,255,255)

Space.BackgroundTransparency = 1.000

Space.Position = UDim2.new(0, 30, 0, 0)

Space.Size = UDim2.new(0, 15, 0, 30)

Space.Font = Enum.Font.Code

Space.Text = "|"

Space.TextSize = 13.000

Space.TextColor3 = Color3.fromRGB(180,180,180)

Space.TextXAlignment = Enum.TextXAlignment.Center

Title.Name = "Title"

Title.Parent = SliderFrame_2

Title.BackgroundColor3 = Color3.fromRGB(255,255,255)

Title.BackgroundTransparency = 1.000

Title.Position = UDim2.new(0, 50, 0, 0)

Title.Size = UDim2.new(0, 280, 0, 30)

Title.Font = Enum.Font.Code

Title.Text = slidertitle or "Slider Title"

Title.TextColor3 = Color3.fromRGB(180,180,180)

Title.TextSize = 12.000

Title.TextXAlignment = Enum.TextXAlignment.Left

SliderInput.Name = "SliderInput"

SliderInput.Parent = SliderFrame_2

SliderInput.BackgroundColor3 = Color3.fromRGB(255,255,255)

SliderInput.BackgroundTransparency = 0.7

SliderInput.BorderSizePixel = 0

SliderInput.Position = UDim2.new(0, 8, 0, 37)

SliderInput.Size = UDim2.new(0, 345, 0, 4)

SliderCorner2.CornerRadius = UDim.new(0, 100000)

SliderCorner2.Parent = SliderInput

SliderButton.Name = "SliderButton"

SliderButton.Parent = SliderInput

SliderButton.BackgroundColor3 = Color3.fromRGB(255,255,255)

SliderButton.BackgroundTransparency = 1.000

SliderButton.BorderSizePixel = 0

SliderButton.Position = UDim2.new(0, 0, 0, -7)

SliderButton.Size = UDim2.new(0, 341, 0, 25)

SliderCount.Name = "SliderCount"

SliderCount.Parent = SliderButton

SliderCount.BackgroundColor3 = Color3.fromRGB(255,255,255)

SliderCount.BackgroundTransparency = 0.3

SliderCount.BorderSizePixel = 0

SliderCount.Position = UDim2.new(0,start,0,0)

SliderCount.Size = UDim2.new(0, 18, 0, 18)

Title_2.Name = "Title_2"

Title_2.Parent = SliderButton

Title_2.AnchorPoint = Vector2.new(0, 0)

Title_2.BackgroundColor3 = Color3.fromRGB(255,0,0)

Title_2.AutoButtonColor = false

Title_2.BackgroundTransparency = 1.000

Title_2.Position = UDim2.new(0,start,0,0)

Title_2.Size = UDim2.new(0, 18, 0, 18)

Title_2.Font = Enum.Font.Code

Title_2.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)

Title_2.TextColor3 = Color3.fromRGB(255,255,255)

Title_2.TextSize = 8.000

Title_2.TextXAlignment = Enum.TextXAlignment.Center

UICorner_2.Parent = Title_2

UICorner_2.CornerRadius = UDim.new(0, 100000)

SliderCorner.CornerRadius = UDim.new(0, 100000)

SliderCorner.Parent = SliderCount

SliderStroke.Name = "SliderStroke"

SliderStroke.Parent = BoxFrame

SliderStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

SliderStroke.Color = Color3.fromRGB(180,180,180)

SliderStroke.LineJoinMode = Enum.LineJoinMode.Round

SliderStroke.Thickness = 1

SliderStroke.Transparency = 0.5

SliderStroke.Enabled = true

SliderStroke.Archivable = true

BoxFrame.Name = "BoxFrame"

BoxFrame.Parent = SliderFrame_2

BoxFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)

BoxFrame.BackgroundTransparency = 1.000

BoxFrame.Size = UDim2.new(0, 50, 0, 15)

BoxFrame.Position = UDim2.new(0, 298, 0, 8)

SliderBox.Name = "SliderBox"

SliderBox.Parent = BoxFrame

SliderBox.BackgroundColor3 = Color3.fromRGB(200, 0, 0)

SliderBox.BackgroundTransparency = 1.000

SliderBox.Position = UDim2.new(0, 0, 0, 1.80)

SliderBox.Size = UDim2.new(0, 50, 0, 15)

SliderBox.ClearTextOnFocus = false

SliderBox.Font = Enum.Font.Code

SliderBox.Text = tostring(start and math.floor((start / max) * (max - min) + min) or 0)

SliderBox.TextColor3 = Color3.fromRGB(200,200,200)

SliderBox.TextSize = 10.000

SliderBox.TextTransparency = 0

SliderBox.TextXAlignment = Enum.TextXAlignment.Center

SliderBox.TextEditable = true

UICorner_3.Parent = BoxFrame

UICorner_3.CornerRadius = UDim.new(0, 2)

-- Slider Script --

local dragging

local SliderButtonStart

local SliderButtonInput

local slide = SliderButton

local function slide(input)

local slidein = UDim2.new(math.clamp((input.Position.X - SliderButton.AbsolutePosition.X) / SliderButton.AbsoluteSize.X, 0, 1), 0, 0, 0)

SliderCount:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.08, true)

Title_2:TweenPosition(slidein, Enum.EasingDirection.InOut, Enum.EasingStyle.Linear, 0.12, true)

local Value = math.floor(((slidein.X.Scale * max) / max) * (max - min) + min)

SliderBox.Text = tostring(Value)

Title_2.Text = tostring(Value)

pcall(callback, Value, slidein)

end

SliderButton.InputBegan:Connect(function(input)

if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then

dragging = true

SliderButtonInput = input

SliderButtonStart = input.Position.X

slidein = SliderButton.AbsolutePosition.X

game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0, Size = UDim2.new(0, 14, 0, 14)}):Play()

game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0.22, 0.8), TextSize = 13.000, BackgroundTransparency = 0, Size = UDim2.new(0, 20, 0, 25)}):Play()

game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0}):Play()

game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.5}):Play()

game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0}):Play()

end

input.Changed:Connect(function(input)

if input.UserInputType == Enum.UserInputState.End then

dragging = false

end

end)

end)

SliderButton.InputEnded:Connect(function(input)

if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then

dragging = false

SliderButtonInput = input

game.TweenService:Create(SliderCount, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.3, Size = UDim2.new(0, 18, 0, 18)}):Play()

game.TweenService:Create(Title_2, TweenInfo.new(0.12, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {AnchorPoint = Vector2.new(0, 0), TextSize = 8.000, BackgroundTransparency = 1.000, Size = UDim2.new(0, 18, 0, 18)}):Play()

game.TweenService:Create(SliderBox, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextTransparency = 0.5}):Play()

game.TweenService:Create(SliderInput, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {BackgroundTransparency = 0.7}):Play()

game.TweenService:Create(SliderStroke, TweenInfo.new(0.08, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {Transparency = 0.5}):Play()

end

end)

UserInputService.InputChanged:Connect(function(input)

if input == SliderButtonInput and dragging then

slide(input)

end

end)

function set(property)

if property == "Text" then

if tonumber(SliderBox.Text) then

if tonumber(SliderBox.Text) max then

SliderBox.Text = max

Title_2.Text = max

Value = max

SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)

Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)

pcall(function()

callback(Value)

end)

end

if tonumber(SliderBox.Text) >= min then

Value = SliderBox.Text

Title_2.Text = SliderBox.Text

SliderCount:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)

Title_2:TweenPosition(UDim2.new(((tonumber(SliderBox.Text) or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)

pcall(function()

callback(Value)

end)

end

if tonumber(SliderBox.Text) tonumber(max) then

Value = max

SliderBox.Text = max

Title_2.Text = max

SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)

Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)

pcall(function()

callback(Value)

end)

else

Value = tonumber(SliderBox.Text)

end

if tonumber(SliderBox.Text) max then

SliderBox.Text = max

Title_2.Text = max

Value = max

SliderCount:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.08, true)

Title_2:TweenPosition(UDim2.new(((max or min) - min) / (max - min), 0, 0, 0), "InOut", "Linear", 0.12, true)

pcall(function()

callback(Value)

end)

else

Value = tonumber(SliderBox.Text)

end

if tonumber(SliderBox.Text) 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))

end

elseif MyLevel == 400 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))

end

elseif MyLevel == 450 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))

end

elseif MyLevel == 475 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))

end

elseif MyLevel == 525 or MyLevel = 650 then

Mon = "Galley Captain [Lv. 650]"

LevelQuest = 2

NameQuest = "FountainQuest"

NameMon = "Galley Captain"

CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)

CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)

end

elseif World2 then

if MyLevel == 700 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))

end

elseif MyLevel == 1275 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))

end

elseif MyLevel == 1300 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))

end

elseif MyLevel == 1325 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))

end

elseif MyLevel == 1350 or MyLevel 10000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))

end

elseif MyLevel == 1375 or MyLevel = 1450 then

Mon = "Water Fighter [Lv. 1450]"

LevelQuest = 2

NameQuest = "ForgottenQuest"

NameMon = "Water Fighter"

CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)

CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)

end

elseif World3 then

if MyLevel == 1500 or MyLevel tonumber(v.playing) then

for _,Existing in pairs(AllIDs) do

if num ~= 0 then

if ID == tostring(Existing) then

Possible = false

end

else

if tonumber(actualHour) ~= tonumber(Existing) then

local delFile = pcall(function()

AllIDs = {}

table.insert(AllIDs, actualHour)

end)

end

end

num = num + 1

end

if Possible == true then

table.insert(AllIDs, ID)

wait()

pcall(function()

wait()

game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)

end)

wait(4)

end

end

end

end

function Teleport()

while wait() do

pcall(function()

TPReturner()

if foundAnything ~= "" then

TPReturner()

end

end)

end

end

Teleport()

end

function UpdateIslandESP()

for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do

pcall(function()

if IslandESP then

if v.Name ~= "Sea" then

if not v:FindFirstChild('NameEsp') then

local bill = Instance.new('BillboardGui',v)

bill.Name = 'NameEsp'

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = "GothamBold"

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(80, 245, 245)

else

v['NameEsp'].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

end

else

if v:FindFirstChild('NameEsp') then

v:FindFirstChild('NameEsp'):Destroy()

end

end

end)

end

end

function isnil(thing)

return (thing == nil)

end

local function round(n)

return math.floor(tonumber(n) + 0.5)

end

Number = math.random(1, 1000000)

function UpdatePlayerChams()

for i,v in pairs(game:GetService'Players':GetChildren()) do

pcall(function()

if not isnil(v.Character) then

if ESPPlayer then

if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Character.Head)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Character.Head

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

if v.Team == game.Players.LocalPlayer.Team then

name.TextColor3 = Color3.new(0,255,0)

else

name.TextColor3 = Color3.new(255,0,0)

end

else

v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')

end

else

if v.Character.Head:FindFirstChild('NameEsp'..Number) then

v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end)

end

end

function UpdateChestChams()

for i,v in pairs(game.Workspace:GetChildren()) do

pcall(function()

if string.find(v.Name,"Chest") then

if ChestESP then

if string.find(v.Name,"Chest") then

if not v:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

if v.Name == "Chest1" then

name.TextColor3 = Color3.fromRGB(109, 109, 109)

name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

if v.Name == "Chest2" then

name.TextColor3 = Color3.fromRGB(173, 158, 21)

name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

if v.Name == "Chest3" then

name.TextColor3 = Color3.fromRGB(85, 255, 255)

name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

else

v['NameEsp'..Number].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

end

else

if v:FindFirstChild('NameEsp'..Number) then

v:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end)

end

end

function UpdateDevilChams()

for i,v in pairs(game.Workspace:GetChildren()) do

pcall(function()

if DevilFruitESP then

if string.find(v.Name, "Fruit") then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 0, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end)

end

end

function UpdateFlowerChams()

for i,v in pairs(game.Workspace:GetChildren()) do

pcall(function()

if v.Name == "Flower2" or v.Name == "Flower1" then

if FlowerESP then

if not v:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 0, 0)

if v.Name == "Flower1" then

name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

name.TextColor3 = Color3.fromRGB(0, 0, 255)

end

if v.Name == "Flower2" then

name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

name.TextColor3 = Color3.fromRGB(255, 0, 0)

end

else

v['NameEsp'..Number].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

else

if v:FindFirstChild('NameEsp'..Number) then

v:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end)

end

end

function UpdateRealFruitChams()

for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do

if v:IsA("Tool") then

if RealFruitESP then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 0, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end

for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do

if v:IsA("Tool") then

if RealFruitESP then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 174, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end

for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do

if v:IsA("Tool") then

if RealFruitESP then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(251, 255, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end

end

function UpdateIslandESP()

for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do

pcall(function()

if IslandESP then

if v.Name ~= "Sea" then

if not v:FindFirstChild('NameEsp') then

local bill = Instance.new('BillboardGui',v)

bill.Name = 'NameEsp'

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = "GothamBold"

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(80, 245, 245)

else

v['NameEsp'].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

end

else

if v:FindFirstChild('NameEsp') then

v:FindFirstChild('NameEsp'):Destroy()

end

end

end)

end

end

function isnil(thing)

return (thing == nil)

end

local function round(n)

return math.floor(tonumber(n) + 0.5)

end

Number = math.random(1, 1000000)

function UpdatePlayerChams()

for i,v in pairs(game:GetService'Players':GetChildren()) do

pcall(function()

if not isnil(v.Character) then

if ESPPlayer then

if not isnil(v.Character.Head) and not v.Character.Head:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Character.Head)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Character.Head

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M')

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

if v.Team == game.Players.LocalPlayer.Team then

name.TextColor3 = Color3.new(0,255,0)

else

name.TextColor3 = Color3.new(255,0,0)

end

else

v.Character.Head['NameEsp'..Number].TextLabel.Text = (v.Name ..' | '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Character.Head.Position).Magnitude/3) ..' M\nHealth : ' .. round(v.Character.Humanoid.Health*100/v.Character.Humanoid.MaxHealth) .. '%')

end

else

if v.Character.Head:FindFirstChild('NameEsp'..Number) then

v.Character.Head:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end)

end

end

function UpdateChestChams()

for i,v in pairs(game.Workspace:GetChildren()) do

pcall(function()

if string.find(v.Name,"Chest") then

if ChestESP then

if string.find(v.Name,"Chest") then

if not v:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

if v.Name == "Chest1" then

name.TextColor3 = Color3.fromRGB(109, 109, 109)

name.Text = ("Chest 1" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

if v.Name == "Chest2" then

name.TextColor3 = Color3.fromRGB(173, 158, 21)

name.Text = ("Chest 2" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

if v.Name == "Chest3" then

name.TextColor3 = Color3.fromRGB(85, 255, 255)

name.Text = ("Chest 3" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

else

v['NameEsp'..Number].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

end

else

if v:FindFirstChild('NameEsp'..Number) then

v:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end)

end

end

function UpdateDevilChams()

for i,v in pairs(game.Workspace:GetChildren()) do

pcall(function()

if DevilFruitESP then

if string.find(v.Name, "Fruit") then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 0, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end)

end

end

function UpdateFlowerChams()

for i,v in pairs(game.Workspace:GetChildren()) do

pcall(function()

if v.Name == "Flower2" or v.Name == "Flower1" then

if FlowerESP then

if not v:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 0, 0)

if v.Name == "Flower1" then

name.Text = ("Blue Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

name.TextColor3 = Color3.fromRGB(0, 0, 255)

end

if v.Name == "Flower2" then

name.Text = ("Red Flower" ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

name.TextColor3 = Color3.fromRGB(255, 0, 0)

end

else

v['NameEsp'..Number].TextLabel.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')

end

else

if v:FindFirstChild('NameEsp'..Number) then

v:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end)

end

end

function UpdateRealFruitChams()

for i,v in pairs(game.Workspace.AppleSpawner:GetChildren()) do

if v:IsA("Tool") then

if RealFruitESP then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 0, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end

for i,v in pairs(game.Workspace.PineappleSpawner:GetChildren()) do

if v:IsA("Tool") then

if RealFruitESP then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(255, 174, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end

for i,v in pairs(game.Workspace.BananaSpawner:GetChildren()) do

if v:IsA("Tool") then

if RealFruitESP then

if not v.Handle:FindFirstChild('NameEsp'..Number) then

local bill = Instance.new('BillboardGui',v.Handle)

bill.Name = 'NameEsp'..Number

bill.ExtentsOffset = Vector3.new(0, 1, 0)

bill.Size = UDim2.new(1,200,1,30)

bill.Adornee = v.Handle

bill.AlwaysOnTop = true

local name = Instance.new('TextLabel',bill)

name.Font = Enum.Font.GothamSemibold

name.FontSize = "Size14"

name.TextWrapped = true

name.Size = UDim2.new(1,0,1,0)

name.TextYAlignment = 'Top'

name.BackgroundTransparency = 1

name.TextStrokeTransparency = 0.5

name.TextColor3 = Color3.fromRGB(251, 255, 0)

name.Text = (v.Name ..' \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

else

v.Handle['NameEsp'..Number].TextLabel.Text = (v.Name ..' '.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Handle.Position).Magnitude/3) ..' M')

end

else

if v.Handle:FindFirstChild('NameEsp'..Number) then

v.Handle:FindFirstChild('NameEsp'..Number):Destroy()

end

end

end

end

end

function InfAb()

if InfAbility then

if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then

local inf = Instance.new("ParticleEmitter")

inf.Acceleration = Vector3.new(0,0,0)

inf.Archivable = true

inf.Drag = 20

inf.EmissionDirection = Enum.NormalId.Top

inf.Enabled = true

inf.Lifetime = NumberRange.new(0,0)

inf.LightInfluence = 0

inf.LockedToPart = true

inf.Name = "Agility"

inf.Rate = 500

local numberKeypoints2 = {

NumberSequenceKeypoint.new(0, 0);

NumberSequenceKeypoint.new(1, 4);

}

inf.Size = NumberSequence.new(numberKeypoints2)

inf.RotSpeed = NumberRange.new(9999, 99999)

inf.Rotation = NumberRange.new(0, 0)

inf.Speed = NumberRange.new(30, 30)

inf.SpreadAngle = Vector2.new(0,0,0,0)

inf.Texture = ""

inf.VelocityInheritance = 0

inf.ZOffset = 2

inf.Transparency = NumberSequence.new(0)

inf.Color = ColorSequence.new(Color3.fromRGB(0,0,0),Color3.fromRGB(0,0,0))

inf.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

end

else

if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility") then

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("Agility"):Destroy()

end

end

end

local LocalPlayer = game:GetService'Players'.LocalPlayer

local originalstam = LocalPlayer.Character.Energy.Value

function infinitestam()

LocalPlayer.Character.Energy.Changed:connect(function()

if InfiniteEnergy then

LocalPlayer.Character.Energy.Value = originalstam

end

end)

end

spawn(function()

pcall(function()

while wait(.1) do

if InfiniteEnergy then

wait(0.1)

originalstam = LocalPlayer.Character.Energy.Value

infinitestam()

end

end

end)

end)

function NoDodgeCool()

if nododgecool then

for i,v in next, getgc() do

if game:GetService("Players").LocalPlayer.Character.Dodge then

if typeof(v) == "function" and getfenv(v).script == game:GetService("Players").LocalPlayer.Character.Dodge then

for i2,v2 in next, getupvalues(v) do

if tostring(v2) == "0.1" then

repeat wait(.1)

setupvalue(v,i2,0)

until not nododgecool

end

end

end

end

end

end

end

function fly()

local mouse=game:GetService("Players").LocalPlayer:GetMouse''

localplayer=game:GetService("Players").LocalPlayer

game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")

local torso = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

local speedSET=25

local keys={a=false,d=false,w=false,s=false}

local e1

local e2

local function start()

local pos = Instance.new("BodyPosition",torso)

local gyro = Instance.new("BodyGyro",torso)

pos.Name="EPIXPOS"

pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)

pos.position = torso.Position

gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9)

gyro.CFrame = torso.CFrame

repeat

wait()

localplayer.Character.Humanoid.PlatformStand=true

local new=gyro.CFrame - gyro.CFrame.p + pos.position

if not keys.w and not keys.s and not keys.a and not keys.d then

speed=1

end

if keys.w then

new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed

speed=speed+speedSET

end

if keys.s then

new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed

speed=speed+speedSET

end

if keys.d then

new = new * CFrame.new(speed,0,0)

speed=speed+speedSET

end

if keys.a then

new = new * CFrame.new(-speed,0,0)

speed=speed+speedSET

end

if speed>speedSET then

speed=speedSET

end

pos.position=new.p

if keys.w then

gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)

elseif keys.s then

gyro.CFrame = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)

else

gyro.CFrame = workspace.CurrentCamera.CoordinateFrame

end

until not Fly

if gyro then

gyro:Destroy()

end

if pos then

pos:Destroy()

end

flying=false

localplayer.Character.Humanoid.PlatformStand=false

speed=0

end

e1=mouse.KeyDown:connect(function(key)

if not torso or not torso.Parent then

flying=false e1:disconnect() e2:disconnect() return

end

if key=="w" then

keys.w=true

elseif key=="s" then

keys.s=true

elseif key=="a" then

keys.a=true

elseif key=="d" then

keys.d=true

end

end)

e2=mouse.KeyUp:connect(function(key)

if key=="w" then

keys.w=false

elseif key=="s" then

keys.s=false

elseif key=="a" then

keys.a=false

elseif key=="d" then

keys.d=false

end

end)

start()

end

function Click()

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

end

function AutoHaki()

if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

end

end

function UnEquipWeapon(Weapon)

if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then

_G.NotAutoEquip = true

wait(.5)

game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack

wait(.1)

_G.NotAutoEquip = false

end

end

function EquipWeapon(ToolSe)

if not _G.NotAutoEquip then

if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then

Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)

wait(.1)

game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)

end

end

end

function GetDistance(target)

return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)

end

function TP1(Pos)

Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

if Distance = 1000 then

Speed = 200

end

game:GetService("TweenService"):Create(

game.Players.LocalPlayer.Character.HumanoidRootPart,

TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),

{CFrame = Pos}

):Play()

end

function topos(Pos)

Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

if Distance = 1000 then

Speed = 200

end

game:GetService("TweenService"):Create(

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,

TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),

{CFrame = Pos}

):Play()

end

spawn(function()

game:GetService("RunService").Heartbeat:Connect(function()

if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.AutoKai or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest then

if not game:GetService("Workspace"):FindFirstChild("LOL") then

local LOL = Instance.new("Part")

LOL.Name = "LOL"

LOL.Parent = game.Workspace

LOL.Anchored = true

LOL.Transparency = 1

LOL.Size = Vector3.new(30,-0.5,30)

elseif game:GetService("Workspace"):FindFirstChild("LOL") then

game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.6, 0)

end

else

if game:GetService("Workspace"):FindFirstChild("LOL") then

game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()

end

end

end)

end)

spawn(function()

pcall(function()

while wait() do

if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or FarmBoss or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.d or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest == true then

if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then

local Noclip = Instance.new("BodyVelocity")

Noclip.Name = "BodyClip"

Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart

Noclip.MaxForce = Vector3.new(100000,100000,100000)

Noclip.Velocity = Vector3.new(0,0,0)

end

end

end

end)

end)

spawn(function()

pcall(function()

game:GetService("RunService").Stepped:Connect(function()

if _G.AutoAdvanceDungeon or _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoBounty or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.GrabChest or _G.AutoFarmBounty or _G.Holy_Torch or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.AutoFarmMaterial or _G.AutoNevaSoulGuitar or _G.Auto_Dragon_Trident or _G.Autotushita or _G.Autowaden or _G.Autogay or _G.Autopole or _G.Autosaw or _G.AutoObservationHakiV2 or _G.AutoFarmNearest or AutoFarmChest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Tweenfruit or _G.TeleportNPC or _G.AutoKai or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest == true then

for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do

if v:IsA("BasePart") then

v.CanCollide = false

end

end

end

end)

end)

end)

spawn(function()

while wait() do

if _G.AutoDoughtBoss or _G.Auto_DungeonMobAura or _G.AutoFarmChest or _G.AutoFarmBossHallow or _G.AutoFarmSwanGlasses or _G.AutoLongSword or _G.AutoBlackSpikeycoat or _G.AutoElectricClaw or _G.AutoFarmGunMastery or _G.AutoHolyTorch or _G.AutoLawRaid or _G.AutoFarmBoss or _G.AutoTwinHooks or _G.AutoOpenSwanDoor or _G.AutoDragon_Trident or _G.AutoSaber or _G.NOCLIP or _G.AutoFarmFruitMastery or _G.AutoFarmGunMastery or _G.TeleportIsland or _G.Auto_EvoRace or _G.AutoFarmAllMsBypassType or _G.AutoObservationv2 or _G.AutoMusketeerHat or _G.AutoEctoplasm or _G.AutoRengoku or _G.Auto_Rainbow_Haki or _G.AutoObservation or _G.AutoDarkDagger or _G.Safe_Mode or _G.MasteryFruit or _G.AutoBudySword or _G.AutoOderSword or _G.AutoAllBoss or _G.Auto_Bounty or _G.AutoSharkman or _G.Auto_Mastery_Fruit or _G.Auto_Mastery_Gun or _G.Auto_Dungeon or _G.Auto_Cavender or _G.Auto_Pole or _G.Auto_Kill_Ply or _G.Auto_Factory or _G.AutoSecondSea or _G.TeleportPly or _G.AutoBartilo or _G.Auto_DarkBoss or _G.AutoFarm or _G.Clip or _G.AutoElitehunter or _G.AutoThirdSea or _G.Auto_Bone or _G.Autoheart or _G.Autodoughking or _G.d or _G.Autowaden or _G.Autogay or _G.AutoObservationHakiV2 or _G.AutoFarmMaterial or _G.AutoFarmNearest or _G.AutoCarvender or _G.AutoTwinHook or AutoMobAura or _G.Leather or _G.Auto_Wing or _G.Umm or _G.Makori_gay or Radioactive or Fish or Gunpowder or Dragon_Scale or Cocoafarm or Scrap or MiniHee or _G.AutoFarmSeabaest == true then

pcall(function()

game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)

end)

end

end

end)

spawn(function()

game:GetService("RunService").RenderStepped:Connect(function()

if _G.AutoClick or Fastattack then

pcall(function()

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))

end)

end

end)

end)

function StopTween(target)

if not target then

_G.StopTween = true

wait()

topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)

wait()

if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()

end

_G.StopTween = false

_G.Clip = false

end

end

spawn(function()

pcall(function()

while wait() do

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do

if v:IsA("Tool") then

if v:FindFirstChild("RemoteFunctionShoot") then

SelectWeaponGun = v.Name

end

end

end

end

end)

end)

game:GetService("Players").LocalPlayer.Idled:connect(function()

game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

wait(1)

game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

end)

local Library = Update:Window(" ");

local H = Library:Tab("Info","rbxassetid://12950870585")

local Main = Library:Tab("General","rbxassetid://6026568198")

local N = Library:Tab("Necessary","rbxassetid://11155986081")

local M = Library:Tab("Item","rbxassetid://9606626859")

local RaceV4 = Library:Tab("Race V4","rbxassetid://11446900930")

local R = Library:Tab("Dungeon","rbxassetid://7044284832")

local P = Library:Tab("Combat","rbxassetid://7251993295")

local T = Library:Tab("Teleport","rbxassetid://11155851001")

local S = Library:Tab("Shop","rbxassetid://6031265976")

local D = Library:Tab("Fruit","rbxassetid://7044233235")

local Misc = Library:Tab("Misc","rbxassetid://11156061121")

local Ss = Library:Tab("Stats","rbxassetid://7040410130")

H:Label("backup by isnahamzah YT ")

H:Seperator("Credits")

H:Label("Crack By rich_xreal")

H:Label("Crack By Mango Man")

H:Button("Copy Discord Link",function()

game.StarterGui:SetCore("SendNotification", {

Icon = "http://www.roblox.com/asset/?id=13858697661";

Title = "SUBREK YT ISNAHAMZAH",

Text = "Link Copied …"

})

setclipboard("https://discord.gg/isnahamzah")

end)

H:Seperator("Script Support")

H:Label("Mobile: WORKING!")

H:Label("PC: WORKING")

Main:Seperator("Server")

Time = Main:Label("Executer Time")

function UpdateTime()

local GameTime = math.floor(workspace.DistributedGameTime+0.5)

local Hour = math.floor(GameTime/(60^2))%24

local Minute = math.floor(GameTime/(60^1))%60

local Second = math.floor(GameTime/(60^0))%60

Time:Set("Time > Hours : "..Hour.." | Minutes : "..Minute.." | Seconds : "..Second)

end

spawn(function()

while task.wait() do

pcall(function()

UpdateTime()

end)

end

end)

Main:Seperator("Main Farm")

Main:Toggle("Auto Set Spawn Point",false,function(x)

_G.Set = x

end)

spawn(function()

while wait() do

if _G.Set then

pcall(function()

local args = {

[1] = "SetSpawnPoint"

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end)

end

end

end)

WeaponList = {}

for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do

if v:IsA("Tool") then

table.insert(WeaponList ,v.Name)

end

end

local WeaponList = {"Melee","Sword","Fruit","Gun"}

_G.SelectWeapon = "Melee"

Main:Dropdown("Select Weapon",WeaponList,function(value)

_G.SelectWeapon = value

end)

task.spawn(function()

while wait() do

pcall(function()

if _G.SelectWeapon == "Melee" then

for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

if v.ToolTip == "Melee" then

if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then

_G.SelectWeapon = v.Name

end

end

end

elseif _G.SelectWeapon == "Sword" then

for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

if v.ToolTip == "Sword" then

if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then

_G.SelectWeapon = v.Name

end

end

end

elseif _G.SelectWeapon == "Gun" then

for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

if v.ToolTip == "Gun" then

if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then

_G.SelectWeapon = v.Name

end

end

end

elseif _G.SelectWeapon == "Fruit" then

for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do

if v.ToolTip == "Blox Fruit" then

if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then

_G.SelectWeapon = v.Name

end

end

end

end

end)

end

end)

Main:Toggle("Auto Farm Level",_G.AutoFarm,function(value)

_G.AutoFarm = value

StopTween(_G.AutoFarm)

end)

spawn(function()

while wait() do

if _G.AutoFarm then

pcall(function()

local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text

if not string.find(QuestTitle, NameMon) then

StartMagnet = false

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")

end

if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then

StartMagnet = false

CheckQuest()

repeat wait() TP1(CFrameQuest) until (CFrameQuest.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 then

if v.Name == Mon then

if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then

repeat task.wait()

EquipWeapon(_G.SelectWeapon)

AutoHaki()

PosMon = v.HumanoidRootPart.CFrame

TP1(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(70,70,70)

StartMagnet = true

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

until not _G.AutoFarm or v.Humanoid.Health 0 then

repeat wait()

EquipWeapon(_G.SelectWeapon)

if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

local args = {

[1] = "Buso"

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end

topos(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))

v.HumanoidRootPart.CanCollide = false

Fastattack = true

v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672), game.Workspace.CurrentCamera.CFrame)

AutoFarmNearestMagnet = true

PosMon = v.HumanoidRootPart.CFrame

until not _G.AutoFarmNearest or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(80,80,80)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)

until not _G.AutoFarmBoss or not v.Parent or v.Humanoid.Health 0 then

if v.Name == Mon then

if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then

HealthMs = v.Humanoid.MaxHealth * _G.Kill_At/100

repeat task.wait()

if v.Humanoid.Health 0 then

pcall(function()

CmrFwLib.activeController.timeToNextAttack = 1

CmrFwLib.activeController.attacking = false

CmrFwLib.activeController.blocking = false

CmrFwLib.activeController.timeToNextBlock = 0

CmrFwLib.activeController.increment = 3

CmrFwLib.activeController.hitboxMagnitude = 60

CmrFwLib.activeController.focusStart = 0

game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetBladeHit()))

game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")

end)

end

end

end

spawn(function()

while wait(.1) do

if _G.FastAttack then

pcall(function()

repeat task.wait(_G.FastAttackDelay)

AttackHit()

until not _G.FastAttack

end)

end

end

end)

local CamShake = require(game.ReplicatedStorage.Util.CameraShaker)

CamShake:Stop()

local Bring = {"Normal Bring", "Super Bring"}

_G.BringMode = "Normal Bring"

Main:Dropdown("Bring Mob Mode", Bring,function(value)

_G.BringMode = value

end)

spawn(function()

while wait(.1) do

if _G.BringMode then

pcall(function()

if _G.BringMode == "Normal Bring" then

_G.BringMode = 200

elseif _G.BringMode == "Super Bring" then

_G.BringMode = 330

end

end)

end

end

end)

Main:Toggle("Bring Mob",true,function(Mag)

_G.BringMonster = Mag

end)

spawn(function()

while task.wait() do

pcall(function()

if _G.BringMonster then

CheckQuest()

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

StartMagnetBoneMon = true

PosMonBone = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.Auto_Bone or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

MagnetDought = true

PosMonDoughtOpenDoor = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.AutoDoughtBoss or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.Autodoughking or not v.Parent or v.Humanoid.Health = 700 and World1 then

if game:GetService("Workspace").Map.Ice.Door.CanCollide == false and game:GetService("Workspace").Map.Ice.Door.Transparency == 1 then

local CFrame1 = CFrame.new(4849.29883, 5.65138149, 719.611877)

repeat topos(CFrame1) wait() until (CFrame1.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 then

OldCFrameSecond = v.HumanoidRootPart.CFrame

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.HumanoidRootPart.CFrame = OldCFrameSecond

topos(v.HumanoidRootPart.CFrame * CFrame.new(5,10,7))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)

until not _G.AutoSecondSea or not v.Parent or v.Humanoid.Health = 1500 and World2 then

_G.AutoFarm = false

if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then

topos(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))

if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

topos(CFrame.new(448.46756, 199.356781, -441.389252))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Radioactive or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.Makori_gay or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.Umm or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.Umm or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Scrap or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Scrap or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Scrap or not v.Parent or v.Humanoid.Health 18000 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))

end

topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))

end

end

end

end)

end)

M:Seperator("Sword & Haki")

M:Toggle("Auto Buy Legendary Sword",_G.AutoBuyLegendarySword,function(value)

_G.AutoBuyLegendarySword = value

end)

spawn(function()

while wait() do

if _G.AutoBuyLegendarySword then

pcall(function()

local args = {

[1] = "LegendarySwordDealer",

[2] = "1"

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {

[1] = "LegendarySwordDealer",

[2] = "2"

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

local args = {

[1] = "LegendarySwordDealer",

[2] = "3"

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

if _G.AutoBuyLegendarySword_Hop and _G.AutoBuyLegendarySword and World2 then

wait(10)

Hop()

end

end)

end

end

end)

M:Toggle("Auto Buy Haki Color",_G.AutoBuyEnchancementColour,function(value)

_G.AutoBuyEnchancementColour = value

end)

spawn(function()

while wait() do

if _G.AutoBuyEnchancementColour then

local args = {

[1] = "ColorsDealer",

[2] = "2"

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

if _G.AutoBuyEnchancementColour_Hop and _G.AutoBuyEnchancementColour and not World1 then

wait(10)

Hop()

end

end

end

end)

M:Seperator("Misc Law Boss")

M:Toggle("Auto Law Boss", _G.AutoOderSword,function(value)

_G.AutoOderSword = value

StopTween( _G.AutoOderSword)

end)

spawn(function()

while wait() do

if _G.AutoOderSword then

pcall(function()

if game:GetService("Workspace").Enemies:FindFirstChild("Order [Lv. 1250] [Raid Boss]") then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == "Order [Lv. 1250] [Raid Boss]" then

if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.AutoOderSword or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.Auto_Dragon_Trident or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

EquipWeapon(_G.SelectWeapon)

AutoHaki()

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

RengokuMon = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

StartRengokuMagnet = true

until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health = 150000 then

UnEquipWeapon("Combat")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")

end

if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then

_G.SelectWeapon = "Superhuman"

end

if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") or game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") or game.Players.LocalPlayer.Character:FindFirstChild("Electro") or game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") or game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") then

if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value = 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then

UnEquipWeapon("Black Leg")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")

end

if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 300000 then

UnEquipWeapon("Black Leg")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")

end

if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then

UnEquipWeapon("Electro")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")

end

if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 750000 then

UnEquipWeapon("Electro")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")

end

if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then

UnEquipWeapon("Fishman Karate")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")

end

if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300 and game:GetService("Players")["Localplayer"].Data.Fragments.Value >= 1500 then

UnEquipWeapon("Fishman Karate")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")

end

if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then

UnEquipWeapon("Dragon Claw")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")

end

if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300 and game:GetService("Players")["LocalPlayer"].Data.Beli.Value >= 3000000 then

UnEquipWeapon("Dragon Claw")

wait(.1)

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")

end

end

end

end

end)

end)

M:Toggle("Auto DeathStep",_G.AutoDeathStep,function(value)

_G.AutoDeathStep = value

end)

spawn(function()

while wait() do wait()

if _G.AutoDeathStep then

if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Death Step") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Death Step") then

if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 450 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")

_G.SelectWeapon = "Death Step"

end

if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 450 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")

_G.SelectWeapon = "Death Step"

end

if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value = 400 then

else

Ms = "Tide Keeper [Lv. 1475] [Boss]"

if game:GetService("Workspace").Enemies:FindFirstChild(Ms) then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == Ms then

OldCFrameShark = v.HumanoidRootPart.CFrame

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.Head.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.HumanoidRootPart.CFrame = OldCFrameShark

topos(v.HumanoidRootPart.CFrame*CFrame.new(2,20,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670))

sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)

until not v.Parent or v.Humanoid.Health = 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")

_G.SelectWeapon = "Electric Claw"

end

if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")

_G.SelectWeapon = "Electric Claw"

end

if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value = 400 or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 400 then

if _G.AutoFarm == false then

repeat task.wait()

topos(CFrame.new(-10371.4717, 330.764496, -10131.4199))

until not _G.AutoElectricClaw or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - CFrame.new(-10371.4717, 330.764496, -10131.4199).Position).Magnitude = 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")

_G.SelectWeapon = "Dragon Talon"

end

if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")

_G.SelectWeapon = "Dragon Talon"

end

if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value = 400 or game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") and game.Players.LocalPlayer.Character:FindFirstChild("Superhuman").Level.Value >= 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")

end

else

game.StarterGui:SetCore("SendNotification", {

Title = "Notification",

Text = "Not Have Superhuman" ,

Icon = "http://www.roblox.com/asset/?id=13858697661",

Duration = 2.5

})

end

if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep",true) == 1 then

if game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step") and game.Players.LocalPlayer.Backpack:FindFirstChild("Death Step").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Death Step") and game.Players.LocalPlayer.Character:FindFirstChild("Death Step").Level.Value >= 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")

end

else

game.StarterGui:SetCore("SendNotification", {

Title = "Notification",

Text = "Not Have Death Step" ,

Icon = "http://www.roblox.com/asset/?id=13858697661",

Duration = 2.5

})

end

if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate",true) == 1 then

if game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Sharkman Karate").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Sharkman Karate").Level.Value >= 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")

end

else

game.StarterGui:SetCore("SendNotification", {

Title = "Notification",

Text = "Not Have SharkMan Karate" ,

Icon = "http://www.roblox.com/asset/?id=13858697661",

Duration = 2.5

})

end

if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw",true) == 1 then

if game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electric Claw").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Electric Claw").Level.Value >= 400 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")

end

else

game.StarterGui:SetCore("SendNotification", {

Title = "Notification",

Text = "Not Have Electric Claw" ,

Icon = "http://www.roblox.com/asset/?id=13858697661",

Duration = 2.5

})

end

if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon",true) == 1 then

if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Talon").Level.Value >= 400 or game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Talon").Level.Value >= 400 then

if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman",true), "Bring") then

game.StarterGui:SetCore("SendNotification", {

Title = "Notification",

Text = "Not Have Enough Material" ,

Icon = "http://www.roblox.com/asset/?id=13858697661",

Duration = 2.5

})

else

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")

end

end

else

game.StarterGui:SetCore("SendNotification", {

Title = "Notification",

Text = "Not Have Dragon Talon" ,

Icon = "http://www.roblox.com/asset/?id=13858697661",

Duration = 2.5

})

end

else

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")

end

end)

end

end

end)

M:Seperator(" Materials ")

M:Toggle("Auto Farm Leather",_G.Makori_gay,function(value)

_G.Leather = value

StopTween(_G.Leather)

end)

spawn(function()

while wait() do

if _G.Leather and World1 then

pcall(function()

if game:GetService("Workspace").Enemies:FindFirstChild("Pirate [Lv. 36]") then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == "Pirate [Lv. 36]" then

if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.Leather or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.Leather or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not _G.Leather or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Cocoafarm or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Dragon_Scale or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Gunpowder or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not Fish or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.Head.CanCollide = false

MakoriGayMag = true

PosGay = v.HumanoidRootPart.CFrame

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

until not MiniHee or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.AutoBudySword or not v.Parent or v.Humanoid.Health 0 then

if v.Name == "Living Zombie [Lv. 2000]" then

EquipWeapon(_G.Select_Weapon)

v.HumanoidRootPart.Size = Vector3.new(60,60,60)

v.HumanoidRootPart.Transparency = 1

v.Humanoid.JumpPower = 0

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)

topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

end

end

end

else

topos(CFrame.new(-10160.787109375, 138.6616973876953, 5955.03076171875))

end

end

else

if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Error") then

print("Go to Grave")

topos(CFrame.new(-8653.2060546875, 140.98487854003906, 6160.033203125))

elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2), "Nothing") then

print("Wait Next Night")

else

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent",2,true)

end

end

end

else

topos(CFrame.new(-9681.458984375, 6.139880657196045, 6341.3720703125))

end

else

if _G.soulGuitarhop then

hop()

end

end

end

end)

end

end)

M:Seperator("Dual Curse Katana")

M:Toggle("Quest Dual Curse Katana ( Beta )",_G.AutoCdk,function(value)

_G.AutoCdk = value

end)

spawn(function()

while wait() do

pcall(function()

if _G.AutoCdk then

if GetMaterial("Alucard Fragment") == 0 then

Auto_Quest_Yama_1 = true

Auto_Quest_Yama_2 = false

Auto_Quest_Yama_3 = false

Auto_Quest_Tushita_1 = false

Auto_Quest_Tushita_2 = false

Auto_Quest_Tushita_3 = false

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")

elseif GetMaterial("Alucard Fragment") == 1 then

Auto_Quest_Yama_1 = false

Auto_Quest_Yama_2 = true

Auto_Quest_Yama_3 = false

Auto_Quest_Tushita_1 = false

Auto_Quest_Tushita_2 = false

Auto_Quest_Tushita_3 = false

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")

elseif GetMaterial("Alucard Fragment") == 2 then

Auto_Quest_Yama_1 = false

Auto_Quest_Yama_2 = false

Auto_Quest_Yama_3 = true

Auto_Quest_Tushita_1 = false

Auto_Quest_Tushita_2 = false

Auto_Quest_Tushita_3 = false

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Evil")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Evil")

elseif GetMaterial("Alucard Fragment") == 3 then

Auto_Quest_Yama_1 = false

Auto_Quest_Yama_2 = false

Auto_Quest_Yama_3 = false

Auto_Quest_Tushita_1 = true

Auto_Quest_Tushita_2 = false

Auto_Quest_Tushita_3 = false

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")

elseif GetMaterial("Alucard Fragment") == 4 then

Auto_Quest_Yama_1 = false

Auto_Quest_Yama_2 = false

Auto_Quest_Yama_3 = false

Auto_Quest_Tushita_1 = false

Auto_Quest_Tushita_2 = true

Auto_Quest_Tushita_3 = false

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")

elseif GetMaterial("Alucard Fragment") == 5 then

Auto_Quest_Yama_1 = false

Auto_Quest_Yama_2 = false

Auto_Quest_Yama_3 = false

Auto_Quest_Tushita_1 = false

Auto_Quest_Tushita_2 = false

Auto_Quest_Tushita_3 = true

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","Progress","Good")

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","StartTrial","Good")

elseif GetMaterial("Alucard Fragment") == 6 then

if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") then

Auto_Quest_Yama_1 = false

Auto_Quest_Yama_2 = false

Auto_Quest_Yama_3 = false

Auto_Quest_Tushita_1 = false

Auto_Quest_Tushita_2 = false

Auto_Quest_Tushita_3 = false

if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == "Cursed Skeleton Boss [Lv. 2025] [Boss]" or v.Name == "Cursed Skeleton [Lv. 2200]" then

if v.Humanoid.Health > 0 then

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)

topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

end

end

end

end

else

if (CFrame.new(-12361.7060546875, 603.3547973632812, -6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 2000 then

topos(y.HumanoidRootPart.CFrameMon * CFrame.new(0,20,0))

else

StartMagnet = true

FastAttack = true

if Auto_Buso then

if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

end

end

if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then

wait()

EquipWeapon(_G.Select_Weapon)

end

PosMonsEsp = v.HumanoidRootPart.CFrame

if not FastAttack then

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

end

v.HumanoidRootPart.Size = Vector3.new(60,60,60)

if _G.Configs["Show Hitbox"] then

v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency

else

v.HumanoidRootPart.Transparency = 1

end

v.Humanoid.JumpPower = 0

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.CanCollide = false

v.Humanoid:ChangeState(11)

topos(v.HumanoidRootPart.CFrame * CFrame.new(0,20,0))

end

until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_2 == false or not v.Parent or v.Humanoid.Health 2000 then

topos(y.HumanoidRootPart.CFrameMon* CFrame.new(0,20,0))

else

topos(y.HumanoidRootPart.CFrame * CFrame.new(0,20,0))

end

end

end

end

end

end)

end

end

end)

spawn(function()

while wait() do

if Auto_Quest_Yama_3 then

pcall(function()

if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then

_G.Main["Auto Farm Bone"] = false

topos(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame)

elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then

repeat wait()

if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]") then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Hell's Messenger [Lv. 2200] [Boss]" then

if v.Humanoid.Health > 0 then

repeat wait()

StartMagnet = true

FastAttack = true

if Auto_Buso then

if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

end

end

if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then

wait()

EquipWeapon(_G.Select_Weapon)

end

PosMonsEsp = v.HumanoidRootPart.CFrame

if not FastAttack then

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

end

v.HumanoidRootPart.Size = Vector3.new(60,60,60)

if _G.Configs["Show Hitbox"] then

v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency

else

v.HumanoidRootPart.Transparency = 1

end

v.Humanoid.JumpPower = 0

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.CanCollide = false

v.Humanoid:ChangeState(11)

topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))

until v.Humanoid.Health 0 then

repeat wait()

topos(v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2))

until Auto_Cursed_Dual_Katana == false or Auto_Quest_Yama_3 == false or game:GetService("Workspace").Map:FindFirstChild("HellDimension")

end

end

end

else

topos(CFrame.new(-9570.033203125, 315.9346923828125, 6726.89306640625))

end

else

_G.Main["Auto Farm Bone"] = true

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)

end

end

end)

end

end

end)

spawn(function()

while wait() do

if Auto_Quest_Tushita_1 then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest","BoatQuest",workspace.NPCs:FindFirstChild("Luxury Boat Dealer"))

end

end

end)

spawn(function()

while wait() do

if Auto_Quest_Tushita_1 then

topos(CFrame.new(-9546.990234375, 21.139892578125, 4686.1142578125))

wait(5)

topos(CFrame.new(-6120.0576171875, 16.455780029296875, -2250.697265625))

wait(5)

topos(CFrame.new(-9533.2392578125, 7.254445552825928, -8372.69921875))

end

end

end)

spawn(function()

while wait() do

if Auto_Quest_Tushita_2 then

pcall(function()

if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 then

if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 then

repeat wait()

if Auto_Buso then

if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

end

end

if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then

wait()

EquipWeapon(_G.Select_Weapon)

end

if not FastAttack then

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

end

v.HumanoidRootPart.Size = Vector3.new(60,60,60)

if _G.Configs["Show Hitbox"] then

v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency

else

v.HumanoidRootPart.Transparency = 1

end

v.Humanoid.JumpPower = 0

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.CanCollide = false

v.Humanoid:ChangeState(11)

topos(v.HumanoidRootPart.CFrame * CFrame.new(0,50,0))

until Auto_Cursed_Dual_Katana == false or Auto_Quest_Tushita_3 == false or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")

end

end

end

else

topos(CFrame.new(-709.3132934570312, 381.6005859375, -11011.396484375))

end

elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then

repeat wait()

if game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]") then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == "Cursed Skeleton [Lv. 2200]" or v.Name == "Cursed Skeleton [Lv. 2200] [Boss]" or v.Name == "Heaven's Guardian [Lv. 2200] [Boss]" then

if v.Humanoid.Health > 0 then

repeat wait()

if Auto_Buso then

if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")

end

end

if not game.Players.LocalPlayer.Character:FindFirstChild(_G.Select_Weapon) then

wait()

EquipWeapon(_G.Select_Weapon)

end

if not FastAttack then

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

end

v.HumanoidRootPart.Size = Vector3.new(60,60,60)

if _G.Configs["Show Hitbox"] then

v.HumanoidRootPart.Transparency = _G.Hitbox_LocalTransparency

else

v.HumanoidRootPart.Transparency = 1

end

v.Humanoid.JumpPower = 0

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.CanCollide = false

v.Humanoid:ChangeState(11)

until v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.Autotushita or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.AutoCarvender or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)

until not _G.AutoTwinHook or not v.Parent or v.Humanoid.Health 0 then

repeat task.wait()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.Humanoid.WalkSpeed = 0

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))

sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)

until _G.AutoElitehunter == false or v.Humanoid.Health 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then

repeat task.wait()

pcall(function()

AutoHaki()

EquipWeapon(_G.SelectWeapon)

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,40,2))

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 670),workspace.CurrentCamera.CFrame)

end)

until _G.AutoDarkDagger == false or v.Humanoid.Health = 3000 then

game:GetService("StarterGui"):SetCore("SendNotification", {

Icon = "rbxassetid://13858697661";

Title = "Observation",

Text = "You Have Max Points"

})

wait(2)

else

if World2 then

if game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]") then

if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

repeat task.wait()

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)

until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

else

repeat task.wait()

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Lava Pirate [Lv. 1200]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)+

wait(1)

if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then

game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)

end

until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

end

else

topos(CFrame.new(-5478.39209, 15.9775667, -5246.9126))

end

elseif World1 then

if game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]") then

if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

repeat task.wait()

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)

until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

else

repeat task.wait()

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Galley Captain [Lv. 650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)

wait(1)

if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then

game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)

end

until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

end

else

topos(CFrame.new(5533.29785, 88.1079102, 4852.3916))

end

elseif World3 then

if game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]") then

if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then

repeat task.wait()

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(3,0,0)

until _G.AutoObservation == false or not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

else

repeat task.wait()

game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Enemies:FindFirstChild("Giant Islander [Lv. 1650]").HumanoidRootPart.CFrame * CFrame.new(0,50,0)

wait(1)

if not game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") and _G.AutoObservation_Hop == true then

game:GetService("TeleportService"):Teleport(game.PlaceId,game:GetService("Players").LocalPlayer)

end

until _G.AutoObservation == false or game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel")

end

else

topos(CFrame.new(4530.3540039063, 656.75695800781, -131.60952758789))

end

end

end

end

end

end)

end)

M:Seperator("Misc Other")

M:Toggle("Auto Musketeer Hat",_G.AutoMusketeerHat,function(value)

_G.AutoMusketeerHat = value

StopTween(_G.AutoMusketeerHat)

end)

spawn(function()

pcall(function()

while wait(.1) do

if _G.AutoMusketeerHat then

if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false then

if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then

if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate [Lv. 1825]") then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == "Forest Pirate [Lv. 1825]" then

repeat task.wait()

pcall(function()

EquipWeapon(_G.SelectWeapon)

AutoHaki()

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

v.HumanoidRootPart.CanCollide = false

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

MusketeerHatMon = v.HumanoidRootPart.CFrame

StartMagnetMusketeerhat = true

end)

until _G.AutoMusketeerHat == false or not v.Parent or v.Humanoid.Health = 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false then

if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then

if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant [Lv. 1875] [Boss]") then

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == "Captain Elephant [Lv. 1875] [Boss]" then

OldCFrameElephant = v.HumanoidRootPart.CFrame

repeat task.wait()

pcall(function()

EquipWeapon(_G.SelectWeapon)

AutoHaki()

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.CFrame = OldCFrameElephant

game:GetService("VirtualUser"):CaptureController()

game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))

sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)

end)

until _G.AutoMusketeerHat == false or v.Humanoid.Health = 1800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 2 then

topos(CFrame.new(-12512.138671875, 340.39279174805, -9872.8203125))

end

end

end

end)

end)

M:Toggle("Auto Rainbow Haki",_G.Auto_Rainbow_Haki,function(value)

_G.Auto_Rainbow_Haki = value

StopTween(_G.Auto_Rainbow_Haki)

end)

spawn(function()

pcall(function()

while wait(.1) do

if _G.Auto_Rainbow_Haki then

if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then

topos(CFrame.new(-11892.0703125, 930.57672119141, -8760.1591796875))

if (Vector3.new(-11892.0703125, 930.57672119141, -8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 then

if v.Name == "Forest Pirate [Lv. 1825]" then

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50, 50, 50)

v.HumanoidRootPart.CFrame = PosHee

end

end

end

end

end)

end)

end)

spawn(function()

game:GetService("RunService").Heartbeat:connect(function()

game:GetService("RunService").Heartbeat:Wait()

pcall(function()

if _G.AutoObservationHakiV2 and StatrMagnet then

CheckQuest()

for i,v in pairs(game.Workspace.Enemies:GetChildren()) do

if v.Name == Ms then

v.Humanoid:ChangeState(11)

end

end

end

end)

game:GetService("RunService").Heartbeat:Wait()

end)

end)

M:Toggle("Auto Yama ( Beta )",_G.Auto_Yama,function(value)

_G.AutoYama = value

StopTween(_G.AutoYama)

end)

spawn(function()

while wait() do

if _G.AutoYama then

if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress") >= 30 then

repeat wait(.1)

fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector)

until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama

end

end

end

end)

M:Toggle("Auto Bartlio Quest",_G.AutoBartilo,function(value)

_G.AutoBartilo = value

end)

spawn(function()

pcall(function()

while wait(.1) do

if _G.AutoBartilo then

if game:GetService("Players").LocalPlayer.Data.Level.Value >= 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then

if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirates") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then

if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate [Lv. 775]") then

Ms = "Swan Pirate [Lv. 775]"

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == Ms then

pcall(function()

repeat task.wait()

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

EquipWeapon(_G.SelectWeapon)

AutoHaki()

v.HumanoidRootPart.Transparency = 1

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

PosMonBarto = v.HumanoidRootPart.CFrame

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

AutoBartiloBring = true

until not v.Parent or v.Humanoid.Health = 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then

if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy [Lv. 850] [Boss]") then

Ms = "Jeremy [Lv. 850] [Boss]"

for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do

if v.Name == Ms then

OldCFrameBartlio = v.HumanoidRootPart.CFrame

repeat task.wait()

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

EquipWeapon(_G.SelectWeapon)

AutoHaki()

v.HumanoidRootPart.Transparency = 1

v.HumanoidRootPart.CanCollide = false

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.HumanoidRootPart.CFrame = OldCFrameBartlio

topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))

game:GetService'VirtualUser':CaptureController()

game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)

until not v.Parent or v.Humanoid.Health = 800 and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then

repeat topos(CFrame.new(-1850.49329, 13.1789551, 1750.89685)) wait() until not _G.AutoBartilo or (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-1850.49329, 13.1789551, 1750.89685)).Magnitude 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(1500,1500,1500)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = RengokuMon

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

if _G.AutoMusketeerHat and StartMagnetMusketeerhat then

if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = MusketeerHatMon

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

if _G.AutoObservationHakiV2 and Mangnetcitzenmon then

if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosHee

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

if _G.Auto_EvoRace and StartEvoMagnet then

if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonEvo

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

if _G.AutoBartilo and AutoBartiloBring then

if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonBarto

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then

if v.Name == "Monkey [Lv. 14]" then

if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonMasteryFruit

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

elseif v.Name == "Factory Staff [Lv. 800]" then

if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonMasteryFruit

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

elseif v.Name == Mon then

if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonMasteryFruit

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

end

if _G.AutoFarmGunMastery and StartMasteryGunMagnet then

if v.Name == "Monkey [Lv. 14]" then

if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonMasteryGun

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

elseif v.Name == "Factory Staff [Lv. 800]" then

if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonMasteryGun

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

elseif v.Name == Mon then

if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonMasteryGun

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

end

if _G.Auto_Bone and StartMagnetBoneMon then

if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonBone

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

if _G.AutoFarmCandy and StartCandyMagnet then

if (v.Name == "Ice Cream Chef [Lv. 2125]" or v.Name == "Ice Cream Commander [Lv. 2150]") and (v.HumanoidRootPart.Position - CandyMon.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = CandyMon

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

if _G.AutoDoughtBoss and MagnetDought then

if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude 0 then

v.HumanoidRootPart.Size = Vector3.new(50,50,50)

v.Humanoid:ChangeState(14)

v.HumanoidRootPart.CanCollide = false

v.Head.CanCollide = false

v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor

if v.Humanoid:FindFirstChild("Animator") then

v.Humanoid.Animator:Destroy()

end

sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)

end

end

end

end

end)

end

end)

task.spawn(function()

while true do wait()

if setscriptable then

setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)

end

if sethiddenproperty then

sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

end

end

end)

--BringMobNearrest

function InMyNetWork(object)

if isnetworkowner then

return isnetworkowner(object)

else

if (object.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude = 20 then

spawn(function()

pcall(function()

if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then

game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

else

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame

end

end)

end)

elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude 0 then

pcall(function()

repeat wait(.1)

v.Humanoid.Health = 0

v.HumanoidRootPart.CanCollide = false

sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

until not _G.Complete_Ghoul or not v.Parent or v.Humanoid.Health 0 then

pcall(function()

repeat wait(.1)

v.Humanoid.Health = 0

v.HumanoidRootPart.CanCollide = false

sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

until not _G.Kill_Aura or not v.Parent or v.Humanoid.Health v.playing then

serversmaxplayer = v.maxPlayers

maxplayers = v.playing

goodserver = v.id

end

end

end

function getservers()

serversearch()

for i,v in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(gamelink))) do

if i == "nextPageCursor" then

if gamelink:find("&cursor=") then

local a = gamelink:find("&cursor=")

local b = gamelink:sub(a)

gamelink = gamelink:gsub(b, "")

end

gamelink = gamelink .. "&cursor=" ..v

getservers()

end

end

end

getservers()

if AutoTeleport then

if DontTeleportTheSameNumber then

if #game:GetService("Players"):GetPlayers() - 4 == maxplayers then

return warn("It has same number of players (except you)")

elseif goodserver == game.JobId then

return warn("Your current server is the most empty server atm")

end

end

game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, goodserver)

end

end)

Misc:Seperator("Misc")

Misc:Button("Open Inventory",function()

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")

wait(1)

game:GetService("Players").LocalPlayer.PlayerGui.Main.Inventory.Visible = true

end)

Misc:Button("Open Inventory Fruit",function()

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryFruits")

game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true

end)

Misc:Button("Title Name",function()

local args = {

[1] = "getTitles"

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true

end)

Misc:Button("Color Haki",function()

game.Players.localPlayer.PlayerGui.Main.Colors.Visible = true

end)

Misc:Seperator("Teams")

Misc:Button("Join Pirates Team",function()

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Pirates")

end)

Misc:Button("Join Marines Team",function()

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam","Marines")

end)

Misc:Seperator("Anti Ban")

Misc:Toggle("Anti Cheat Bypass", true, function(value)

_G.SafeFarm = value

CheckAntiCheatBypass()

Notification("Anti Cheat Bypass Activated âœ…")

end)

Misc:Toggle("Anti Scan",true,function(value)

_G.AFK = value

end)

getgenv().A = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync

getgenv().B = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle).play

spawn(function()

while wait() do

if _G.DeleteAttackFx then

pcall(function()

require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).wrapAttackAnimationAsync =function(a1,a2,a3,a4,a5)

local GetBladeHits = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).getBladeHits(a2,a3,a4)

if GetBladeHits then

require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = function() end

a1:Play(0.2, 0.2, 0.2)

a5(GetBladeHits)

require(game:GetService("ReplicatedStorage").CombatFramework.RigLib).play = getgenv().B

wait(.5)

a1:Stop()

end

end

end)

end

end

end)

Misc:Toggle("Anti AFK", true, function()

local vu = game:GetService("VirtualUser")

repeat wait() until game:IsLoaded()

game:GetService("Players").LocalPlayer.Idled:connect(function()

game:GetService("VirtualUser"):ClickButton2(Vector2.new())

vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

wait(1)

vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)

end)

end)

Misc:Toggle("Auto Rejoin",true,function(value)

_G.AutoRejoin = value

end)

spawn(function()

while wait() do

if _G.AutoRejoin then

getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)

if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then

game:GetService("TeleportService"):Teleport(game.PlaceId)

end

end)

end

end

end)

Misc:Seperator("Hack")

Misc:Button("Unlock Buso",function()

-- Ability [

-- Buso,Soru,Geppo,KenUpgrade

-- ]

--Example

local Ability = "Buso" -- Ability Name

-- or

-- local Ability = {Buso,Soru,Geppo}

if type(Ability) == 'string' then

game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,Ability)

elseif type(Ability) == 'table' then

for i,v in next , Ability do

game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v)

end

end

end)

Misc:Button("Unlock Soru",function()

-- Ability [

-- Buso,Soru,Geppo-- ]

--Example

local Ability = "Soru" -- Ability Name

-- or

-- local Ability = {Buso,Soru,Geppo}

if type(Ability) == 'string' then

game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,Ability)

elseif type(Ability) == 'table' then

for i,v in next , Ability do

game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v)

end

end

end)

Misc:Button("Unlock Geppo",function()

-- Ability [

-- Buso,Soru,Geppo-- ]

--Example

local Ability = "Geppo" -- Ability Name

-- or

-- local Ability = {Buso,Soru,Geppo}

if type(Ability) == 'string' then

game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,Ability)

elseif type(Ability) == 'table' then

for i,v in next , Ability do

game:GetService("CollectionService"):AddTag(game.Players.LocalPlayer.Character,v)

end

end

end)

Misc:Button("Unlock Portal",function()

_G.UnlockPortal = true

end)

spawn(function()

while wait() do

pcall(function()

if _G.UnlockPortal == true then

for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Notifications:GetChildren()) do

if v.Name == "NotificationTemplate" then

if string.find(v.Text,"cannot") then

v:Destroy()

end

end

end

end

end)

end

end)

spawn(function()

while wait() do

pcall(function()

if _G.UnlockPortal == true then

CastlePostoMansion = CFrame.new(-5084.8447265625, 316.48101806641, -3145.3752441406)

MansiontoCastlePos = CFrame.new(-12464.596679688, 376.30590820312, -7567.2626953125)

Castletophydra = CFrame.new(-5095.33984375, 316.48101806641, -3168.3134765625)

HydratoCastle = CFrame.new(5741.869140625, 611.94750976562, -282.61154174805)

if (CastlePostoMansion.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude = PointStats then

if melee then

local args = {

[1] = "AddPoint",

[2] = "Melee",

[3] = PointStats

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end

if defense then

local args = {

[1] = "AddPoint",

[2] = "Defense",

[3] = PointStats

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end

if sword then

local args = {

[1] = "AddPoint",

[2] = "Sword",

[3] = PointStats

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end

if gun then

local args = {

[1] = "AddPoint",

[2] = "Gun",

[3] = PointStats

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end

if demonfruit then

local args = {

[1] = "AddPoint",

[2] = "Demon Fruit",

[3] = PointStats

}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))

end

end

end

end)

Ss:Seperator("Fake Mode")

Ss:Textbox("Fake Level",true,function(value)

game:GetService("Players").LocalPlayer.Data.Level.Value = value

end)

Ss:Textbox("Fake Exp",true,function(value)

game:GetService("Players").LocalPlayer.Data.Exp.Value = value

end)

Ss:Textbox("Fake Beli",true,function(value)

game:GetService("Players").LocalPlayer.Data.Beli.Value = value

end)

Ss:Textbox("Fake Points",true,function(value)

game:GetService("Players").LocalPlayer.Data.Points.Value = value

end)

Ss:Textbox("Fake Bounty",true,function(value)

game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value = value

end)

game.StarterGui:SetCore("SendNotification", {

Icon = "http://www.roblox.com/asset/?id=13858697661";

Title = "MTriet Hub",

Text = "Success!"

})

_G.FastAttackNormalSpeed = true

local SeraphFrame = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework")))[2]

local VirtualUser = game:GetService('VirtualUser')

local RigControllerR = debug.getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.RigController))[2]

local Client = game:GetService("Players").LocalPlayer

local DMG = require(Client.PlayerScripts.CombatFramework.Particle.Damage)

function SeraphFuckWeapon()

local p13 = SeraphFrame.activeController

local wea = p13.blades[1]

if not wea then return end

while wea.Parent~=game.Players.LocalPlayer.Character do wea=wea.Parent end

return wea

end

function getHits(Size)

local Hits = {}

local Enemies = workspace.Enemies:GetChildren()

local Characters = workspace.Characters:GetChildren()

for i=1,#Enemies do local v = Enemies[i]

local Human = v:FindFirstChildOfClass("Humanoid")

if Human and Human.RootPart and Human.Health > 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) 0 and game.Players.LocalPlayer:DistanceFromCharacter(Human.RootPart.Position) 0 then

SeraphFrame.activeController.attacking = false

SeraphFrame.activeController.timeToNextBlock = 0

SeraphFrame.activeController.humanoid.AutoRotate = true

SeraphFrame.activeController.increment = 3

SeraphFrame.activeController.blocking = false

SeraphFrame.activeController.hitboxMagnitude = 150

SeraphFrame.activeController.timeToNextAttack = 0

SeraphFrame.activeController.focusStart = 0

SeraphFrame.activeController.humanoid.AutoRotate = true

SeraphFrame.activeController.increment = 1 + 1 / 1

end

end

end

end

end)

local cdnormal = 0.175

local Animation = Instance.new("Animation")

local CooldownFastAttack = 0.175

Attack = function()

local ac = SeraphFrame.activeController

if ac and ac.equipped then

task.spawn(

function()

if tick() - cdnormal > 0.175 then

ac:attack()

cdnormal = tick()

else

Animation.AnimationId = ac.anims.basic[2]

ac.humanoid:LoadAnimation(Animation):Play(1,1) --à¸—à¹ˆà¸²à¹„à¸¡à¹ˆà¸—à¸³à¸‡à¸²à¸™à¹à¸à¹‰à¹€à¸›à¹‡à¸™ (1,1)

game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", getHits(1), 1, "")

end

end)

end

end

b = tick()

spawn(function()

while wait(0.175) do

if _G.FastAttackNormalSpeed then

if b - tick() > 0.175 then

wait(0.175)

b = tick()

end

pcall(function()

for i, v in pairs(game.Workspace.Enemies:GetChildren()) do

if v.Humanoid.Health > 0 then

if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude 0.175 then

wait(0.175)

k = tick()

end

pcall(function()

for i, v in pairs(game.Workspace.Enemies:GetChildren()) do

if v.Humanoid.Health > 0 then

if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
