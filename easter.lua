local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Name = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local YugiAnimDeleter = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local Replacelaw = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local AutoLaw = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_8 = Instance.new("UICorner")
local TextLabel_4 = Instance.new("TextLabel")
local UICorner_9 = Instance.new("UICorner")
local TextBox = Instance.new("TextBox")
local UICorner_10 = Instance.new("UICorner")

---- Ts local textbox bla bla
local TextBoxTS = Instance.new("TextBox")
local AutoTs = Instance.new("TextButton")
local UICorner_TS = Instance.new("UICorner")
local TextLabel_TS = Instance.new("TextLabel")
local UICorner_TSS = Instance.new("UICorner")
local UICorner_TSSS = Instance.new("UICorner")

-----
local LocalPlayer = game.Players.LocalPlayer
local GameId = game.GameId
local Remotes = game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Input")
local UserInputService = game:GetService("UserInputService")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--- เปลี่ยนกรอบ
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(130, 203, 255)
Frame.Position = UDim2.new(0.295644134, 0, 0.235759497, 0)
Frame.Size = UDim2.new(0, 289, 0, 196)
Frame.Draggable = true

local function dragify(Frame)
	local dragToggle = nil
	local dragSpeed = 100000 -- You can edit this.
	local dragInput = nil
	local dragStart = nil
	local dragPos = nil

	local function updateInput(input)
		Delta = input.Position - dragStart
		Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
		game:GetService("TweenService"):Create(Frame, TweenInfo.new(0), {Position = Position}):Play()
	end

	Frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
			dragToggle = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if (input.UserInputState == Enum.UserInputState.End) then
					dragToggle = false
				end
			end)
		end
	end)

	Frame.InputChanged:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
			dragInput = input
		end
	end)

	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if (input == dragInput and dragToggle) then
			updateInput(input)
		end
	end)
end

dragify(Frame)

UICorner.Parent = Frame

Name.Name = "Name"
Name.Parent = Frame
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 0
Name.BorderColor3 = Color3.fromRGB(80, 255, 243)
Name.Position = UDim2.new(-0.0054210, 0, -0.107142858, 0)
Name.Size = UDim2.new(0, 289, 0, 21)
Name.Font = Enum.Font.Arcade
Name.Text = "ASTD Hack, for LBs."
Name.TextColor3 = Color3.fromRGB(0, 0, 0)
Name.TextSize = 23.000
Name.TextXAlignment = Enum.TextXAlignment.Right

UICorner_2.CornerRadius = UDim.new(0, 20)
UICorner_2.Parent = Name

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Position = UDim2.new(0.425979182, 0, 0.888775539, 0)
TextLabel.Size = UDim2.new(0, 51, 0, 12)
TextLabel.Font = Enum.Font.Arcade
TextLabel.Text = "Original By Chef. | Modify By Nagi"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000


--Auto Law

AutoLaw.Name = "AutoLaw"
AutoLaw.Parent = Frame
AutoLaw.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
AutoLaw.Position = UDim2.new(0.8304497, 0, 0.367346942, 0)
AutoLaw.Size = UDim2.new(0, 29, 0, 32)
AutoLaw.Font = Enum.Font.Arcade
AutoLaw.Text = ""
AutoLaw.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoLaw.TextSize = 30.000

UICorner_6.Parent = AutoLaw

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.Position = UDim2.new(0.0346020758, 0, 0.367346942, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 32)
TextLabel_4.Font = Enum.Font.Arcade
TextLabel_4.Text = "Auto Laws."
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 25.000

UICorner_9.Parent = TextLabel_4

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(235, 255, 10)
TextBox.Position = UDim2.new(0.653979123, 0, 0.367346942, 0)
TextBox.Size = UDim2.new(0, 29, 0, 32)
TextBox.Font = Enum.Font.Arcade
TextBox.PlaceholderColor3 = Color3.fromRGB(16, 135, 178)
TextBox.Text = "Q"
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true

UICorner_10.Parent = TextBox

---AUTO TS

AutoTs.Name = "AutoTs"
AutoTs.Parent = Frame
AutoTs.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
AutoTs.Position = UDim2.new(0.8304497, 0, 0.099346942, 0)
AutoTs.Size = UDim2.new(0, 29, 0, 32)
AutoTs.Font = Enum.Font.Arcade
AutoTs.Text = ""
AutoTs.TextColor3 = Color3.fromRGB(0, 0, 0)
AutoTs.TextSize = 45.000

UICorner_TS.Parent = AutoTs

TextLabel_TS.Parent = Frame
TextLabel_TS.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_TS.Position = UDim2.new(0.0346020758, 0, 0.107142858, 0)
TextLabel_TS.Size = UDim2.new(0, 200, 0, 32)
TextLabel_TS.Font = Enum.Font.Arcade
TextLabel_TS.Text = "Auto Ts."
TextLabel_TS.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_TS.TextSize = 30.000

UICorner_TSS.Parent = TextLabel_TS

TextBoxTS.Parent = Frame
TextBoxTS.BackgroundColor3 = Color3.fromRGB(235, 255, 10)
TextBoxTS.Position = UDim2.new(0.653979123, 0, 0.099346942, 0)
TextBoxTS.Size = UDim2.new(0, 29, 0, 32)
TextBoxTS.Font = Enum.Font.Arcade
TextBoxTS.PlaceholderColor3 = Color3.fromRGB(16, 135, 178)
TextBoxTS.Text = "F"
TextBoxTS.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBoxTS.TextScaled = true
TextBoxTS.TextSize = 14.000
TextBoxTS.TextWrapped = true

UICorner_TSSS.Parent = TextBox

--YUGI ANIM 

YugiAnimDeleter.Name = "YugiAnimDeleter"
YugiAnimDeleter.Parent = Frame
YugiAnimDeleter.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
YugiAnimDeleter.Position = UDim2.new(0.8304497, 0, 0.607142858, 0)
YugiAnimDeleter.Size = UDim2.new(0, 29, 0, 32)
YugiAnimDeleter.Font = Enum.Font.SourceSans
YugiAnimDeleter.Text = ""
YugiAnimDeleter.TextColor3 = Color3.fromRGB(0, 0, 0)
YugiAnimDeleter.TextSize = 14.000

UICorner_4.Parent = YugiAnimDeleter

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.Position = UDim2.new(0.0846020758, 0, 0.607142858, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 32)
TextLabel_2.Font = Enum.Font.Arcade
TextLabel_2.Text = "Yugi Animation Delete."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 15.000

UICorner_7.Parent = TextLabel_2



-- local

local IsAutoLaw = false
local IsAutoTs = false
local YugiValues = nil

--Yugi Deletes

YugiAnimDeleter.MouseButton1Down:Connect(function()
	if IsYugiAnim then
		IsYugiAnim = false
		YugiValues = nil
		YugiAnimDeleter.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		IsYugiAnim = true
		YugiAnimDeleter.BackgroundColor3 = Color3.new(0, 1, 0)
		YugiValues = game:GetService("Workspace"):WaitForChild("Camera"):WaitForChild("Exodia")
		if YugiValues then
			YugiValues:Destroy()
		end
	end
end)


-- TS
AutoTs.MouseButton1Down:Connect(function()
	if IsAutoTs then
		IsAutoTs = false
		AutoTs.BackgroundColor3 = Color3.new(1, 0, 0)
	else
		IsAutoTs = true
		AutoTs.BackgroundColor3 = Color3.new(0, 1, 0)
	end
end)

	UserInputService.InputBegan:Connect(function(input, gameprocesses)
		if not gameprocesses then
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode[TextBoxTS.Text] then
 				      game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-69.0650711, 97.4366531, -2243.62183, 0.999944806, -1.05097655e-08, 0.0105053633, 9.60293356e-09, 1, 8.63712799e-08, -0.0105053633, -8.62656364e-08, 0.999944806)
				end
			end
		end
	end)

