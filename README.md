-- Xin lỗi vì tao làm docs nhìn như cứt :<

-- Khai báo thư viện
local uilibrary = loadstring(game:HttpGet(""))()

-- Khởi tạo gui
uilibrary:CreateWindow(Title: string, Icon: boolean)

-- Ví dụ : 
local windowz = uilibrary:CreateWindow("Sea Hub", true)

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một trang/tab (Page/Tab)
Tabs:CreatePage(Title: string)

-- Ví dụ:
local Page1 = windowz:CreatePage("Page I")

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một mục (Section)
Sections:CreateSection(Title: string)

-- Ví dụ
local Section1 = Page1:CreateSection("Section Name")

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một công tắc (Toggle)
Elements:CreateToggle(Title: string, Setting: table, Callback: function)

-- Ví dụ
Section1:CreateToggle("Toggle Example", {Toggled = false , Description = "Iu Tvk nhìu UwU"}, function(Value)
	print(Value)
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một nút (Button)
Elements:CreateButton(Title: string, Callback: function)

-- Ví dụ
Section1:CreateButton("Button Example", function ()
	print("Button Cliked!")
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một danh sách thả (Dropdown)
Elements:CreateDropdown(Title: string, Setting: table, Callback: function)

-- Ví dụ:
Section1:CreateDropdown("Dropdown ", {List = {"Value1", "Value2", "Value3", "Value4"}, Default = "None"}, function(value)
	print(value)
end)

-- Cập nhật một danh sách thả (Update Dropdown)
Dropdown:Add(List: table)

-- Khởi tạo lại danh sách thả từ đầu (Reset/Clear Dropdown)
Dropdown:Clear()

-- Ví dụ:

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

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một ô văn bản (Text Box)
Elements:CreateTextbox(Title: string, PlaceHolder: string, Callback: function, Description: string)

-- Ví dụ: 
Section1:CreateTextbox("TextBox", false, function(vv)
	print(vv)
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một liên kết bàn phím (Keybind)
Elements:CreateKeybind(Title: string, KeyCode: string/UserInputType/KeyCode, Callback: function)

-- Ví dụ: 
Section1:CreateKeybind("Keybind", "T", function()
	print("Pressed T")
end)

-------------------------------------------------------------------------------------------------------------------------------

-- Khởi tạo một bộ chọn màu (Color Picker)
Elements:CreateColorPicker(Title: string, Color: color3, Callback: function)

-- Ví dụ:
Section1:CreateColorPicker("Color Picker", Color3.fromRGB(255, 255, 255), function (uwu)
	print(uwu)
end)
