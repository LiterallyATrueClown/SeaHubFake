local uilibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/LiterallyATrueClown/SeaHubFake/main/SeaHubUILIBFake.lua", true))()
local windowz = uilibrary:CreateWindow("Sea Hub", true)

local Page1 = windowz:CreatePage("Page I")
local Page2 = windowz:CreatePage("Page II")

local Section1 = Page1:CreateSection("Section I")
local Section2 = Page2:CreateSection("Section II")

Section2:CreateKeybind("Keybind", "T", function(key)
	print("Pressed "..tostring(key))
end)

Section1:CreateSlider("Slider Example", {Min = 16, Max = 500, DefaultValue = 30}, function(Value)
	print(Value)
end)

Section1:CreateToggle("Toggle Example", {Toggled = false , Description = "Iu Tvk nhìu UwU"}, function(Value)
	print(Value)
end)

Section1:CreateButton("Button Example", function ()
	print("Button Cliked!")
end)

Section1:CreateTextbox("TextBox", false, function (vv)
	print(vv)
end)

Section1:CreateDropdown("Dropdown ", {
	List = {"Value1", "Value2", "Value3", "Value4"},
	Default = "None"}, function(value)
	print(value)
end)

Section1:CreateColorPicker("Color Picker", Color3.fromRGB(255, 255, 255), function (uwu)
	print(uwu)
end)

local dropdown = Section1:CreateDropdown("Refresh Dropdown ", {
	List = {"Value1", "Value2", "Value3", "Value4"},
	Default = "None"}, function(value)
	print(value)
end)

Section1:CreateButton("Refresh Example", function ()
	local newlist = {"resf", "uwua", "fsk"}
	dropdown:Clear()
	wait(1)
	dropdown:Add(newlist)
end)
