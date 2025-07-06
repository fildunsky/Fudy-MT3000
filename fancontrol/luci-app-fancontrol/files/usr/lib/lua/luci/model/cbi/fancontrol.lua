m = Map("fancontrol")
m.title	= translate("Fan Control")
m.description = translate("General fan control settings")

m:section(SimpleSection).template  = "fancontrol/fancontrol_status"

s = m:section(TypedSection, "fancontrol")
s.addremove = false
s.anonymous = true

enable=s:option(Flag, "enabled", translate("Enabled"))
enable.rmempty = false

fan_file = s:option(Value, "fan_file", translate("Fan speed adjust reading path"))

thermal_file = s:option(Value, "thermal_file", translate("Thermal value reading path"))

temp_div = s:option(ListValue, "temp_div", translate("Temperature division"))
temp_div:value("1000", translate("1000"))
temp_div:value("100", translate("100"))
temp_div:value("10", translate("10"))
temp_div:value("1", translate("1"))
temp_div.datatype="range(1,1000)"

start_temp = s:option(ListValue, "start_temp", translate("Fan speed mode"))
start_temp:value("55", translate("Silent"))
start_temp:value("45", translate("Balance"))
start_temp:value("25", translate("Performance"))
start_temp:value("99", translate("Disabled"))
start_temp.datatype="range(0,99)"

max_speed = s:option(ListValue, "max_speed", translate("PWM fan type"))
max_speed:value("63", translate("1000 RPM"))
max_speed:value("127", translate("1500 RPM"))
max_speed:value("255", translate("2500+ RPM"))
max_speed.datatype="range(0,255)"

return m
