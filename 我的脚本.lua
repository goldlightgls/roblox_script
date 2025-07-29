--玄影散人--
local TextButtons = nil
local buttons = {}
local list2 = {
{Text = "功能1", Switch = true},
{Text = "功能2", Switch = true}
}
local list = {"主要功能", "功能2", "功能3"}
local Yoffset = 0
local player = game.Players.LocalPlayer
local Gui = game.CoreGui
local dragToggle = nil
local dragSpeed = 0.1
local dragStart = nil
local startPos = nil
local lols = math.random(1,25)
local UIS = game:GetService('UserInputService')
 
--运行script提示
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "脚本运行成功",
Text = "作者:玄影散人",
Duration = 3
})
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "注意",
Text = "脚本本来是永久免费，如果你是买的那就是你被骗了",
Duration = 4
})
--创建ScreenGui
local Sgui = Instance.new("ScreenGui")
Sgui.Parent = Gui
Sgui.Name = " DaoGui"
 
--创建按钮
local Button = Instance.new("ImageButton")
Button.Image = "rbxthumb://type=Asset&id=93042757230956&w=420&h=420"
Button.BackgroundColor3 = Color3.fromRGB(130,130,130)
Button.Parent = Sgui
Button.Position = UDim2.new(0.1,0,0.1,0)
Button.Size = UDim2.new(0,40,0,40)
Button.ZIndex = 2
local ButtonCorner = Instance.new("UICorner")
ButtonCorner.Parent = Button
ButtonCorner.CornerRadius = UDim.new(0,10)
local Buttonstroke = Instance.new("UIStroke")
Buttonstroke.Parent = Button
Buttonstroke.Thickness = 2
 
 
--创建主背景
local Maingui = Instance.new("Frame")
Maingui.Parent = Sgui
Maingui.Position = UDim2.new(0.5,-175,0.5,-140)
Maingui.Size = UDim2.new(0,350,0,262)
Maingui.BackgroundColor3 = Color3.fromRGB(30,30,30)
Maingui.BackgroundTransparency = 0.05
Maingui.Visible = false
Maingui.ZIndex = 1
local Mainguicorner = Instance.new("UICorner")
Mainguicorner.Parent = Maingui
Mainguicorner.CornerRadius = UDim.new(0,3)
local Mainguistroke = Instance.new("UIStroke")
Mainguistroke.Parent = Maingui
Mainguistroke.Color = Color3.new(0,0,0)
Mainguistroke.Thickness = 2
local Mainguibranchings = Instance.new("Frame")
Mainguibranchings.Position = UDim2.new(0,0,0.072,0)
Mainguibranchings.Size = UDim2.new(0,350,0,2)
Mainguibranchings.Parent = Maingui
Mainguibranchings.BorderSizePixel = 0
Mainguibranchings.BackgroundColor3 = Color3.fromRGB(0,0,0)
local Mainguilabel = Instance.new("TextLabel")
Mainguilabel.Size = UDim2.new(0,280,0,19)
Mainguilabel.Text = "??? game v1.0.0"
Mainguilabel.Font = "Code"
Mainguilabel.Parent = Maingui
Mainguilabel.BorderSizePixel = 0
Mainguilabel.BackgroundColor3 = Color3.fromRGB(75,75,255)
Mainguilabel.BackgroundTransparency = 0.05
Mainguilabel.TextColor3 = Color3.fromRGB(255,255,255)
Mainguilabel.FontSize = "Size12"
local Mainguilabelbranching = Instance.new("Frame")
Mainguilabelbranching.Size = UDim2.new(0,2,0,19)
Mainguilabelbranching.Position = UDim2.new(0,280,0.0)
Mainguilabelbranching.BorderSizePixel = 0
Mainguilabelbranching.BackgroundColor3 = Color3.fromRGB(0,0,0)
Mainguilabelbranching.Parent = Maingui
local Mainguilabelclose = Instance.new("Frame")
Mainguilabelclose.Size = UDim2.new(0,68,1,0)
Mainguilabelclose.Position = UDim2.new(0,282,0,0)
Mainguilabelclose.Parent = Mainguilabel
Mainguilabelclose.BackgroundColor3 = Color3.fromRGB(75,75,255)
Mainguilabelclose.BorderSizePixel = 0
local Destroy = Instance.new("TextButton")
Destroy.Parent = Mainguilabelclose
Destroy.Position = UDim2.new(0.65,0,0,0)
Destroy.Size = UDim2.new(0,20,1,0)
Destroy.BorderSizePixel = 0
Destroy.Text = "×"
Destroy.FontSize = "Size24"
Destroy.TextColor3 = Color3.fromRGB(255,255,255)
Destroy.BackgroundTransparency = 1
Destroy.MouseButton1Click:Connect(function()
Sgui:Destroy()
end)






 
 
 
 


--创建Maingui里滚动框
local Mainguibranching = Instance.new("Frame")
Mainguibranching.Size = UDim2.new(0,2,0.92,0)
Mainguibranching.Position = UDim2.new(0,80,0.08,0)
Mainguibranching.Parent = Maingui
Mainguibranching.BorderSizePixel = 0
Mainguibranching.BackgroundColor3 = Color3.fromRGB(0,0,0)
local Mainguiscrolls = Instance.new("ScrollingFrame")
Mainguiscrolls.ScrollBarThickness = 0
Mainguiscrolls.Position = UDim2.new(0,0,0.08,0)
Mainguiscrolls.Size = UDim2.new(0,80,1,0)
Mainguiscrolls.BackgroundTransparency = 1
Mainguiscrolls.Parent = Maingui
--滚动功能表
function brox(name)
    local TextButton = Instance.new("TextButton")
    TextButton.Parent = Mainguiscrolls
    TextButton.Size = UDim2.new(0,70,0,40)
    TextButton.FontSize = "Size12"
    TextButton.Text = name
    TextButton.TextColor3 = Color3.fromRGB(255,255,255)
    TextButton.BorderSizePixel = 0
    TextButton.BackgroundTransparency = 1
    local TextButtonCorner = Instance.new("UICorner")
    TextButtonCorner.Parent = TextButton
    TextButtonCorner.CornerRadius = UDim.new(0,10)
    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.Parent = Maingui
    ScrollingFrame.Position = UDim2.new(0,82,0,21)
    ScrollingFrame.Size = UDim2.new(0,268,0,241)
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.Visible = false
    ScrollingFrame.ScrollBarThickness = 0
    return {TextButton, ScrollingFrame}
end
function functionui(Text, Switch)
local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.96,0,0,30)
Frame.Parent = buttons[1][2]
Frame.BackgroundTransparency = 0.1
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(60,60,60)
local Framestroke = Instance.new("UIStroke")
Framestroke.Parent = Frame
Framestroke.Color = Color3.new(0,0,0)
Framestroke.Thickness = 2
local Framecorner = Instance.new("UICorner")
Framecorner.Parent = Frame
Framecorner.CornerRadius = UDim.new(0,4)
local FrameText = Instance.new("TextLabel")
FrameText.Parent = Frame
FrameText.Text = Text
FrameText.Position = UDim2.new(0.05,0,0,0)
FrameText.Size = UDim2.new(0.725,0,1,0)
FrameText.TextColor3 = Color3.fromRGB(255,255,255)
FrameText.TextSize = 19
FrameText.Font = "Code"
FrameText.BackgroundTransparency = 1
local SwitchState = false
if Switch then
local SImageButton = Instance.new("ImageButton")
SImageButton.Parent = FrameText
SImageButton.Position = UDim2.new(1,0,0.14,0)
SImageButton.Size = UDim2.new(0,45,0,21)
SImageButton.BackgroundColor3 = Color3.fromRGB(190,190,190)
local ImageUICorner = Instance.new("UICorner")
ImageUICorner.Parent = SImageButton
ImageUICorner.CornerRadius = UDim.new(0,15)
local SFrame = Instance.new("Frame")
SFrame.Parent = SImageButton
SFrame.Size = UDim2.new(0,14,0,14)
SFrame.Position = UDim2.new(0.11,0,0.16,0)
SFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
local SFrameUICorner = Instance.new("UICorner")
SFrameUICorner.Parent = SFrame
SImageButton.MouseButton1Click:Connect(function()
SwitchState = not SwitchState
if SwitchState then
SFrame.Position = UDim2.new(0.58,0,0.16,0)
SImageButton.BackgroundColor3 = Color3.fromRGB(50,255,50)
else
SFrame.Position = UDim2.new(0.11,0,0.16,0)
SImageButton.BackgroundColor3 = Color3.fromRGB(190,190,190)
end
end)
end
return Frame
end
function broy()
    for _, lists in ipairs(list) do
        local buttonFramePair = brox(lists)
        local TextButton = buttonFramePair[1]
        local ScrollingFrame = buttonFramePair[2]
        TextButton.Position = UDim2.new(0,5,0,Yoffset)
        table.insert(buttons, buttonFramePair) -- 将组合添加到buttons表中
        Yoffset = Yoffset + TextButton.Size.Y.Offset + 10
        TextButton.MouseButton1Click:Connect(function()
            if TextButtons then
                local oldTextButton, oldScrollingFrame = unpack(TextButtons)
                oldTextButton.BackgroundTransparency = 1
                oldScrollingFrame.Visible = false
            end
            TextButton.BackgroundTransparency = 0.8
            ScrollingFrame.Visible = true
            TextButtons = {TextButton, ScrollingFrame} -- 更新当前选中的TextButton和ScrollingFrame组合
        end)
    end
end 
broy()
function brobro()
    local Yoffset2 = 4 -- 初始化偏移量
    for _, v in ipairs(list2) do
        local Frame = functionui(v.Text, v.Switch)
        Frame.Parent = buttons[1][2] -- 确保Frame被添加到正确的父级
        Frame.Position = UDim2.new(0.02, 0, 0, Yoffset2) -- 动态设置Y位置
        Yoffset2 = Yoffset2 + Frame.AbsoluteSize.Y + 35 -- 更新偏移量
    end
end
brobro()
buttons[1][1].BackgroundTransparency = 0.8 -- 设置透明度以显示选中状态
buttons[1][2].Visible = true -- 显示对应的滚动框
-- 保存当前的选中状态到 TextButtons
TextButtons = {buttons[1][1], buttons[1][2]}


 
 
 
 
--:3 彩蛋
function lol()
    if lols == 25 then
        Button.Image = "rbxthumb://type=Asset&id=18741036855&w=420&h=420"
        game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "一个小彩蛋>:) 1 in 25 (4%) ",
        Text = "看看彩蛋在哪里(UI)",
        Duration = 3
        })
    end
end
lol()    
--打开按钮反应
Button.MouseButton1Click:Connect(function()
    Maingui.Visible = not Maingui.Visible
end)
 
--拖动按钮
local frame = Button
local function updateInput(input)
    local delta = input.Position - dragStart
    local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
    startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
end
 
frame.InputBegan:Connect(function(input)
    if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
        dragToggle = true
        dragStart = input.Position
        startPos = frame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragToggle = false
            end
        end)
    end
end)
 
UIS.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        if dragToggle then
            updateInput(input)
        end
    end
end)
local ha = buttons[1]
ha[1].MouseButton1Click:Connect(function()
    print("yes！")
end)
local ha = buttons[2]
ha[1].MouseButton1Click:Connect(function()
    print("yes！yes?")
end)
local ha = buttons[3]
ha[1].MouseButton1Click:Connect(function()
    print("yes！yes? yes!")
end)
