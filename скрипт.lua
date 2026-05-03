--SCRIPT MADE BY
--[[


▒█▀▀█ ▒█▀▀▀█ ▒█▀▀█ ▒█░▄▀ ▒█▀▀▀█ ▒█░░▒█ ▒█░░▒█ 
▒█▄▄▀ ▒█░░▒█ ▒█░░░ ▒█▀▄░ ▒█░░▒█ ░▒█▒█░ ░▒█▒█░ 
▒█░▒█ ▒█▄▄▄█ ▒█▄▄█ ▒█░▒█ ▒█▄▄▄█ ░░▀▄▀░ ░░▀▄▀░


Telegram - t.me/PNEVMA_TOOLS
YouTube - youtube.com/rckvv
GitHub - github.com/rckvv
--]]
wait(0.1)
local StGui = game.StarterGui
local boost = false
local plr = script.Parent.Parent
local SpeedMultiKey = Enum.KeyCode.W
local qbEnabledKeyCode = Enum.KeyCode.S
local velocityMult2 = 0.005
local velocityMult = 0.025
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local imagepck = {
	
	tg = "rbxassetid://85368333070972";
	ashibka = "rbxassetid://7072725342";
	success = "rbxassetid://6023426926";
	info = "rbxassetid://7072717857";
	warning = "rbxassetid://7072980286";
	
	intro = "rbxassetid://95270226053275";
	
	razdelA = "rbxassetid://87478789590888";
	razdelB = "rbxassetid://76430398871052";
	razdelC = "rbxassetid://75585620849799"
	
}

local function notify(T1, T2 ,IMG)
	StGui:SetCore("SendNotification",{ Title = T1 , Text = T2 ,  Icon = IMG})
end

local function create(type, parent,name, pos, size, visible, imgid)
	local new = Instance.new(type, parent)
	new.Name = name
	if type == "TextLabel" or type == "ImageLabel" or type == "ImageButton" or type == "Frame" or type == "ScrollingFrame" then
		new.Size = size
		new.Position = pos
		new.Visible = visible
		if imgid and type == "ImageLabel" or type == "ImageButton" then
			new.Image = imgid
		end
	end
end

if not plr then
	notify("❌ Ошибка!", "Скрипт не был запущен из-за отсутствия системных файлов", imagepck.ashibka)
	script:Destroy()
end

warn("Запуск скрипта PNEVMA TOOLS")
notify("⚠ Внимание!", "Использование этого скрипта может повлечь за собой бан аккаунта, так что играйте осторожно :3", imagepck.warning)
wait(2)

notify("тгк PNEVMA_TOOLS", "В нём вы найдете новые версии", imagepck.tg)


local gui = Instance.new("ScreenGui", plr.PlayerGui)
gui.Name = "_PT"..math.random(1000.9999) -- типо защита от античита
create("ImageLabel", gui, "Icon",UDim2.fromScale(0.5, 0.5),UDim2.fromScale(0.035, 0.069), true, imagepck.intro )
local int = gui.Icon
int.AnchorPoint = Vector2.new(0.5,0.5)
int.BackgroundTransparency = 1
int.Rotation = "-180"
int.ImageTransparency = 1

local aspect1 = create("UIAspectRatioConstraint", int, "UIARC")
local t1 = Instance.new("TextLabel", gui)
t1.Name = "Title"
t1.Size = UDim2.fromOffset(382, 82)
t1.Position = UDim2.fromScale(0.323,0.414)
t1.BackgroundTransparency = 1
t1.Text = "PNEVMA TOOLS"
t1.TextColor3 = Color3.fromRGB(255, 255, 255)
t1.TextStrokeTransparency = 0
t1.Font = Enum.Font.SourceSansBold
t1.TextScaled = true
t1.TextTransparency = 1
t1.TextStrokeTransparency = 1

local t2 = Instance.new("TextLabel", gui)
t2.Name = "Subtitle"
t2.Size = UDim2.fromOffset(297, 46)
t2.Position = UDim2.fromScale(0.314,0.518)
t2.BackgroundTransparency = 1
t2.Text = "t.me/PNEVMA_TOOLS"
t2.TextColor3 = Color3.fromRGB(255, 255, 255)
t2.TextStrokeTransparency = 0
t2.Font = Enum.Font.Nunito
t2.TextScaled = true
t2.TextTransparency = 1
t2.TextStrokeTransparency = 1

--animation

local tweenInfo = TweenInfo.new(
	1,
	Enum.EasingStyle.Linear, 
	Enum.EasingDirection.Out 
)
local tween = TweenService:Create(int, tweenInfo, {ImageTransparency = 0})
local tweenInfo2 = TweenInfo.new(
	1.5, 
	Enum.EasingStyle.Quad, 
	Enum.EasingDirection.Out 
)

local targetSize = UDim2.new(0.12, 0, 0.212, 0) -- Целевой размер
local tween2 = TweenService:Create(int, tweenInfo2, {Size = targetSize})

tween:Play()
tween2:Play()

local startRotation = -180
local endRotation = 18
local duration = 1.5
--rotation
local startTime = tick()
while tick() - startTime < duration do
	local elapsed = tick() - startTime
	local progress = elapsed / duration
	local easedProgress = 1 - (1 - progress) ^ 3 
	local currentRotation = startRotation + (endRotation - startRotation) * easedProgress
	int.Rotation = currentRotation
	wait(0)
end
int.Rotation = endRotation

local startPos = int.Position 
local endPos = UDim2.new(startPos.X.Scale - 0.13, startPos.X.Offset, startPos.Y.Scale, startPos.Y.Offset)
local tweenInfo3 = TweenInfo.new(
	1,
	Enum.EasingStyle.Quad, 
	Enum.EasingDirection.Out 
)
local tween3 = TweenService:Create(int, tweenInfo3, {Position = endPos})

local startPos2 = t1.Position 
local endPos2 = UDim2.new(startPos2.X.Scale + 0.1, startPos2.X.Offset, startPos2.Y.Scale, startPos2.Y.Offset)
local tween4 = TweenService:Create(t1, tweenInfo3, {Position = endPos2})
local startPos3 = t2.Position 
local endPos3 = UDim2.new(startPos3.X.Scale + 0.1, startPos3.X.Offset, startPos3.Y.Scale, startPos3.Y.Offset)
local tween5 = TweenService:Create(t2, tweenInfo3, {Position = endPos3})
local tween6 = TweenService:Create(t1, tweenInfo, {TextTransparency = 0})
local tween7 = TweenService:Create(t2, tweenInfo, {TextTransparency = 0})
tween3:Play()
tween4:Play()
tween5:Play()
tween6:Play()
tween7:Play()

--starting gui spawning and blaack дич
wait(2)

local osnFrame = Instance.new("Frame", gui)
osnFrame.Name = "_sysGUI"
osnFrame.AnchorPoint = Vector2.new(0.5, 0.5)
osnFrame.Position = UDim2.fromScale(0.5, 0.5)
osnFrame.Size = UDim2.new(0, 773,0, 496)
osnFrame.BackgroundTransparency = 0.4
osnFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
osnFrame.Visible = false

local dragt = Instance.new("UIDragDetector", osnFrame) --двигалка
local corners = Instance.new("UICorner", osnFrame)
corners.CornerRadius = UDim.new(0, 10)

local author = Instance.new("TextLabel", osnFrame)
author.Name = "author"
author.BackgroundTransparency = 1
author.Size = UDim2.new(0, 242,0, 25)
author.Position = UDim2.new(0.343, 0,0.95, 0)
author.Text = "PNEVMA TOOLS ©"
author.Font = Enum.Font.Nunito
author.TextColor3 = Color3.fromRGB(255, 255, 255)
author.RichText = true
author.TextScaled = true

local bg = Instance.new("Frame", osnFrame)
bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
bg.BackgroundTransparency = 0.6
bg.Position = UDim2.new(0.032, 0,0.139, 0)
bg.Size = UDim2.new(0, 723,0, 3)

local img1 = Instance.new("ImageLabel", osnFrame)
img1.Name = "TuningIcon"
img1.BackgroundTransparency = 1
img1.Size = UDim2.new(0, 51,0, 52)
img1.Position = UDim2.new(0.071, 0,0.02, 0)
img1.Image = imagepck.razdelA
img1.ImageTransparency = 0.6

local text1 = Instance.new("TextButton", osnFrame)
text1.Name = "Tuning"
text1.BackgroundTransparency = 1
text1.Size = UDim2.new(0, 134,0, 42)
text1.Position = UDim2.new(0.128, 0,0.04, 0)
text1.Text = "Тюнинг"
text1.Font = Enum.Font.Nunito
text1.RichText = true
text1.TextSize = 14
text1.TextTransparency = 0.6
text1.TextColor3 = Color3.fromRGB(255, 255, 255)
text1.TextScaled = true


local img2 = Instance.new("ImageLabel", osnFrame)
img2.Name = "PlaceIcon"
img2.BackgroundTransparency = 1
img2.Size = UDim2.new(0, 51,0, 52)
img2.Position = UDim2.new(0.386, 0,0.022, 0)
img2.Image = imagepck.razdelB
img2.ImageTransparency = 0.6

local text2 = Instance.new("TextButton", osnFrame)
text2.Name = "Place"
text2.BackgroundTransparency = 1
text2.Size = UDim2.new(0, 134,0, 42)
text2.Position = UDim2.new(0.439, 0,0.038, 0)
text2.Text = "(Скоро)Плейс"
text2.Font = Enum.Font.Nunito
text2.RichText = true
text2.TextSize = 14
text2.TextTransparency = 0.6
text2.TextColor3 = Color3.fromRGB(255, 255, 255)
text2.TextScaled = true


local img3 = Instance.new("ImageLabel", osnFrame)
img3.Name = "ScriptIcon"
img3.BackgroundTransparency = 1
img3.Size = UDim2.new(0, 51,0, 52)
img3.Position = UDim2.new(0.695, 0,0.022, 0)
img3.Image = imagepck.razdelC
img3.ImageTransparency = 0.6

local text3 = Instance.new("TextButton", osnFrame)
text3.Name = "Script"
text3.BackgroundTransparency = 1
text3.Size = UDim2.new(0, 134,0, 42)
text3.Position = UDim2.new(0.748, 0,0.04, 0)
text3.Text = "Скрипт"
text3.Font = Enum.Font.Nunito
text3.RichText = true
text3.TextSize = 14
text3.TextTransparency = 0.6
text3.TextColor3 = Color3.fromRGB(255, 255, 255)
text3.TextScaled = true

--guis RIP

local tuning = Instance.new("ScrollingFrame", osnFrame)
tuning.Name = "TuningFrame"
tuning.CanvasSize = UDim2.new(0, 0,4, 0)
tuning.Size = UDim2.new(0, 724,0, 393)
tuning.Position = UDim2.new(0.031, 0,0.157, 0)
tuning.Visible = false
tuning.ScrollBarThickness = 12
tuning.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
tuning.BackgroundTransparency = 1

local place = tuning:Clone()
place.Name = "PlaceFrame"
place.Parent = osnFrame

local nastroiki = tuning:Clone()
nastroiki.Name = "ScriptFrame"
nastroiki.Parent = osnFrame

local podveska = Instance.new("Frame", tuning)
podveska.Name = "PodveskaFr"
podveska.BackgroundTransparency = 1
podveska.Size = UDim2.new(0, 707,0, 287)
wait()
local text_podveska = Instance.new("TextLabel", podveska)
text_podveska.Name = "Title"
text_podveska.BackgroundTransparency = 1
text_podveska.TextStrokeTransparency = 1
text_podveska.TextColor3 = Color3.fromRGB(255, 255, 255)
text_podveska.Text = "<b>Подвеска</b>"
text_podveska.Font = Enum.Font.Nunito
text_podveska.RichText = true
text_podveska.TextSize = 14
text_podveska.TextScaled = true
text_podveska.Position = UDim2.new(0.034, 0,0.078, 0)
text_podveska.Size = UDim2.new(0, 189,0, 47)

local text_podveska2 = text_podveska:Clone()
text_podveska2.Parent = podveska
text_podveska2.Position = UDim2.new(0.468, 0,0.151, 0)
text_podveska2.Size = UDim2.new(0, 163,0, 40)
text_podveska2.Text = "Передняя"

local text_podveska3 = text_podveska2:Clone()
text_podveska3.Parent = podveska
text_podveska3.Position = UDim2.new(0.726, 0,0.151, 0)
text_podveska3.Size = UDim2.new(0, 163,0, 40)
text_podveska3.Text = "Задняя"

local podveska_b1 = Instance.new("TextButton", podveska)
podveska_b1.Name = "FD"
podveska_b1.BackgroundTransparency = 0.7
podveska_b1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
podveska_b1.TextColor3 = Color3.fromRGB(255, 255, 255)
podveska_b1.Text = "<b>-</b>"
podveska_b1.Font = Enum.Font.Ubuntu
podveska_b1.RichText = true
podveska_b1.TextSize = 54
podveska_b1.Position = UDim2.new(0.503, 0,0.292, 0)
podveska_b1.Size = UDim2.new(0, 49,0, 42)
local uicor = Instance.new("UICorner", podveska_b1)
uicor.CornerRadius = UDim.new(0, 10)

local podveska_b2 = podveska_b1:Clone()
podveska_b2.Name = "FA"
podveska_b2.Parent = podveska
podveska_b2.Text = "<b>+</b>"
podveska_b2.Position = UDim2.new(0.6, 0,0.292, 0)

local podveska_b3 = podveska_b1:Clone()
podveska_b3.Name = "RD"
podveska_b3.Parent = podveska
podveska_b3.Text = "<b>-</b>"
podveska_b3.Position = UDim2.new(0.761, 0,0.292, 0)

local podveska_b4 = podveska_b1:Clone()
podveska_b4.Name = "RA"
podveska_b4.Parent = podveska
podveska_b4.Text = "<b>+</b>"
podveska_b4.Position = UDim2.new(0.857, 0,0.292, 0)

local boostengine = Instance.new("Frame", tuning)
boostengine.Name = "BoostEngineFr"
boostengine.BackgroundTransparency = 1
boostengine.Position = UDim2.new(0, 0,0.1, 0)
boostengine.Size = UDim2.new(0, 707,0, 96)

local text_boostengine = Instance.new("TextLabel", boostengine)
text_boostengine.Name = "Title"
text_boostengine.BackgroundTransparency = 1
text_boostengine.TextStrokeTransparency = 1
text_boostengine.TextColor3 = Color3.fromRGB(255, 255, 255)
text_boostengine.Text = "<b>Буст двигателя</b>"
text_boostengine.Font = Enum.Font.Nunito
text_boostengine.RichText = true
text_boostengine.TextScaled = true
text_boostengine.Position = UDim2.new(0.044, 0,0.134, 0)
text_boostengine.Size = UDim2.new(0, 240,0, 70)

local boostengine_control = Instance.new("TextButton", boostengine)
boostengine_control.Name = "Controller"
boostengine_control.BackgroundTransparency = 0.7
boostengine_control.TextStrokeTransparency = 1
boostengine_control.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
boostengine_control.TextColor3 = Color3.fromRGB(255, 255, 255)
boostengine_control.Text = "Выключено"
boostengine_control.Font = Enum.Font.Ubuntu
boostengine_control.RichText = true
boostengine_control.TextSize = 31
boostengine_control.Position = UDim2.new(0.609, 0,0.274, 0)
boostengine_control.Size = UDim2.new(0, 200,0, 42)
local uicor2 = Instance.new("UICorner", boostengine_control)
uicor2.CornerRadius = UDim.new(0, 10)
--second slot


local nastroiki_frame = Instance.new("Frame", nastroiki)
nastroiki_frame.Name = "Epilog"
nastroiki_frame.BackgroundTransparency = 1
nastroiki_frame.Position = UDim2.new(0, 0,0, 0)
nastroiki_frame.Size = UDim2.new(0, 707,0, 372)

local nastroiki_text1 = Instance.new("TextLabel", nastroiki_frame)
nastroiki_text1.Name = "Title"
nastroiki_text1.TextColor3 = Color3.fromRGB(255, 255, 255)
nastroiki_text1.BackgroundTransparency = 1
nastroiki_text1.TextStrokeTransparency = 1
nastroiki_text1.Text = "<b>Данным скриптом владеет домен PNEVMA TOOLS</b>"
nastroiki_text1.Font = Enum.Font.Nunito
nastroiki_text1.RichText = true
nastroiki_text1.TextScaled = true
nastroiki_text1.Position = UDim2.new(0.035, 0,0.01, 0)
nastroiki_text1.Size = UDim2.new(0, 674,0, 113)

local nastroiki_text2 = nastroiki_text1:Clone()
nastroiki_text2.Name = "Title2"
nastroiki_text2.Text = "По всем вопросам у нас есть свой собственный канал"
nastroiki_text2.Position = UDim2.new(0.188, 0,0.313, 0)
nastroiki_text2.Size = UDim2.new(0, 459,0, 113)
nastroiki_text2.Parent = nastroiki_frame

local nastroiki_text3 = nastroiki_text1:Clone()
nastroiki_text3.Name = "Title3"
nastroiki_text3.Text = "t.me/PNEVMA_TOOLS"
nastroiki_text3.Position = UDim2.new(0.322, 0,0.617, 0)
nastroiki_text3.Size = UDim2.new(0, 306,0, 40)
nastroiki_text3.Parent = nastroiki_frame

local nastroiki_text4 = nastroiki_text1:Clone()
nastroiki_text4.Name = "Title4"
nastroiki_text4.Text = "<i>Сторонние скрипты на платформе Roblox запрещены. Мы не имеем ответственность за ваши действия и ваш аккаунт.</i>"
nastroiki_text4.Position = UDim2.new(0.093, 0,0.78, 0)
nastroiki_text4.Size = UDim2.new(0, 592,0, 70)
nastroiki_text4.TextTransparency = 0.5
nastroiki_text4.Parent = nastroiki_frame
--button system
text1.MouseButton1Click:Connect(function()
	nastroiki.Visible = false
	tuning.Visible = true
	
	text1.TextTransparency = 0
	text3.TextTransparency = 0.6
	img1.ImageTransparency = 0
	img3.ImageTransparency = 0.6
end)

text2.MouseButton1Click:Connect(function()
	notify("🤫", "Данный раздел пока в разработке...", imagepck.info)
end)

text3.MouseButton1Click:Connect(function()
	nastroiki.Visible = true
	tuning.Visible = false
	
	text1.TextTransparency = 0.6
	text3.TextTransparency = 0
	img1.ImageTransparency = 0.6
	img3.ImageTransparency = 0
end)
wait(2)
t1:Destroy()
t2:Destroy()
int:Destroy()
osnFrame.Visible = true
notify("Версия", "1.1", imagepck.info)
local index = Instance.new("ObjectValue", gui)
index.Name = "PlrCar"
index.Value = nil

--boost
boostengine_control.MouseButton1Click:Connect(function()
    boost = not boost
	if boost == true then
	 notify("⚠️ Внимание", "Режим турбо-двигателя включен", imagepck.success)
	boostengine_control.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
	boostengine_control.Text = "Включено"
	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == SpeedMultiKey then
			while UserInputService:IsKeyDown(SpeedMultiKey) do
				wait()
				local car = index.Value
				if car then
					local ds = car:FindFirstChild("DriveSeat")
					if ds then
						ds.AssemblyLinearVelocity *= Vector3.new(1 + velocityMult, 1, 1 + velocityMult)
					end
				end
				if boost == false then
					break
				end
			end
		end
		if input.KeyCode == qbEnabledKeyCode then
			while UserInputService:IsKeyDown(qbEnabledKeyCode) do
					wait()
				local car = index.Value
				if car then
					local ds = car:FindFirstChild("DriveSeat")
					if ds then
						ds.AssemblyLinearVelocity *= Vector3.new(1 - velocityMult2, 1, 1 - velocityMult2)
					end
				end
					if boost == false then
						break
					end
			end
			
		end
	end)
	end
	if boost == false then
		notify("⚠️ Внимание", "Режим турбо-двигателя выключен", imagepck.success)
		boostengine_control.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
		boostengine_control.Text = "Выключено"
	end
end)

--peredminus
podveska_b1.MouseButton1Click:Connect(function()
	local car = index.Value
	if car then
		local wheels = car:FindFirstChild("Wheels")
		if wheels then
			local spring1 = wheels:FindFirstChild("FL"):FindFirstChild("Spring")
			local spring2 = wheels:FindFirstChild("FR"):FindFirstChild("Spring")
			if spring1 and spring2 then
				spring1.LimitsEnabled = false
				spring2.LimitsEnabled = false
				spring1.Stiffness = spring1.Stiffness - 1000
				spring2.Stiffness = spring2.Stiffness - 1000
				spring1.FreeLength = spring1.FreeLength - 0.05
				spring2.FreeLength = spring2.FreeLength - 0.05
			end
			if not spring1 and not spring2 then
				local s1 = wheels:FindFirstChild("FL"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				local s2 = wheels:FindFirstChild("FR"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				if s1 and s2 then
					s1.LimitsEnabled = false
					s2.LimitsEnabled = false
					s1.Stiffness = s1.Stiffness - 1000
					s2.Stiffness = s2.Stiffness - 1000
					s1.FreeLength = s1.FreeLength - 0.05
					s2.FreeLength = s2.FreeLength - 0.05
				end
			end
		end
	end
	if not car then
		notify("⚠️ Внимание", "Чтобы скрипт работал, нужно сесть в машину!", imagepck.error)
	end
end)
--peredplus
podveska_b2.MouseButton1Click:Connect(function()
	local car = index.Value
	if car then
		local wheels = car:FindFirstChild("Wheels")
		if wheels then
			local spring1 = wheels:FindFirstChild("FL"):FindFirstChild("Spring")
			local spring2 = wheels:FindFirstChild("FR"):FindFirstChild("Spring")
			if spring1 and spring2 then
				spring1.LimitsEnabled = false
				spring2.LimitsEnabled = false
				spring1.Stiffness = spring1.Stiffness + 1000
				spring2.Stiffness = spring2.Stiffness + 1000
				spring1.FreeLength = spring1.FreeLength + 0.05
				spring2.FreeLength = spring2.FreeLength + 0.05
			end
			if not spring1 and not spring2 then
				local s1 = wheels:FindFirstChild("FL"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				local s2 = wheels:FindFirstChild("FR"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				if s1 and s2 then
					s1.LimitsEnabled = false
					s2.LimitsEnabled = false
					s1.Stiffness = s1.Stiffness + 1000
					s2.Stiffness = s2.Stiffness + 1000
					s1.FreeLength = s1.FreeLength + 0.05
					s2.FreeLength = s2.FreeLength + 0.05
				end
			end
		end
	end
	if not car then
		notify("⚠️ Внимание", "Чтобы скрипт работал, нужно сесть в машину!", imagepck.error)
	end
end)
--zadminus

podveska_b3.MouseButton1Click:Connect(function()
	local car = index.Value
	if car then
		local wheels = car:FindFirstChild("Wheels")
		if wheels then
			local spring1 = wheels:FindFirstChild("RL"):FindFirstChild("Spring")
			local spring2 = wheels:FindFirstChild("RR"):FindFirstChild("Spring")
			if spring1 and spring2 then
				spring1.LimitsEnabled = false
				spring2.LimitsEnabled = false
				spring1.Stiffness = spring1.Stiffness - 1000
				spring2.Stiffness = spring2.Stiffness - 1000
				spring1.FreeLength = spring1.FreeLength - 0.05
				spring2.FreeLength = spring2.FreeLength - 0.05
			end
			if not spring1 and not spring2 then
				local s1 = wheels:FindFirstChild("RL"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				local s2 = wheels:FindFirstChild("RR"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				if s1 and s2 then
					s1.LimitsEnabled = false
					s2.LimitsEnabled = false
					s1.Stiffness = s1.Stiffness - 1000
					s2.Stiffness = s2.Stiffness - 1000
					s1.FreeLength = s1.FreeLength - 0.05
					s2.FreeLength = s2.FreeLength - 0.05
				end
			end
		end
	end
	if not car then
		notify("⚠️ Внимание", "Чтобы скрипт работал, нужно сесть в машину!", imagepck.error)
	end
end)

--zadplus
podveska_b4.MouseButton1Click:Connect(function()
	local car = index.Value
	if car then
		local wheels = car:FindFirstChild("Wheels")
		if wheels then
			local spring1 = wheels:FindFirstChild("RL"):FindFirstChild("Spring")
			local spring2 = wheels:FindFirstChild("RR"):FindFirstChild("Spring")
			if spring1 and spring2 then
				spring1.LimitsEnabled = false
				spring2.LimitsEnabled = false
				spring1.Stiffness = spring1.Stiffness + 1000
				spring2.Stiffness = spring2.Stiffness + 1000
				spring1.FreeLength = spring1.FreeLength + 0.05
				spring2.FreeLength = spring2.FreeLength + 0.05
			end
			if not spring1 and not spring2 then
				local s1 = wheels:FindFirstChild("RL"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				local s2 = wheels:FindFirstChild("RR"):FindFirstChild("SuspensionFixed"):FindFirstChild("Spring")
				if s1 and s2 then
					s1.LimitsEnabled = false
					s2.LimitsEnabled = false
					s1.Stiffness = s1.Stiffness + 1000
					s2.Stiffness = s2.Stiffness + 1000
					s1.FreeLength = s1.FreeLength + 0.05
					s2.FreeLength = s2.FreeLength + 0.05
				end
			end
		end
	end
	if not car then
		notify("⚠️ Внимание", "Чтобы скрипт работал, нужно сесть в машину!", imagepck.error)
	end
end)







--scriptiki
while wait() do
	wait(0.1)
	local Character = plr.Character
	if Character and typeof(Character) == "Instance" then
		local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
		if Humanoid and typeof(Humanoid) == "Instance" then
			local SeatPart = Humanoid.SeatPart
			if SeatPart and typeof(SeatPart) == "Instance" and SeatPart:IsA("VehicleSeat") then
				local car = SeatPart.Parent
				if car and typeof(car) == "Instance" then
					index.Value = car
				end
				if not car then
					index.Value = nil
				end
			end
		end
	end
end

