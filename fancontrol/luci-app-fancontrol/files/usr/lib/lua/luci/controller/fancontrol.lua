module("luci.controller.fancontrol", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/fancontrol") then
		return
	end

	entry({"admin", "system", "fancontrol"}, cbi("fancontrol"), _("Fan Control"), 100).dependent = true
	entry({"admin", "system", "fancontrol", "status"}, call("fancontrol_status"))
end

function fancontrol_status()
	local sys  = require "luci.sys"
	local fs = require "nixio.fs"
	local uci  = require "luci.model.uci".cursor()
	local fanfile = uci:get_first("fancontrol", "fancontrol", "fan_file")
	local maxspeed = uci:get_first("fancontrol", "fancontrol", "max_speed") or "255"
	local thermalfile = uci:get_first("fancontrol", "fancontrol", "thermal_file")
	local tempdiv = uci:get_first("fancontrol", "fancontrol", "temp_div") or "1000"
	
	local fanspeed = fs.readfile(fanfile) or "0"
	local cputemp = (fs.readfile(thermalfile) / tempdiv) or "50.0"
	
	local percentage = (fanspeed / maxspeed) * 100
	
	local status = {
		running = (sys.call("pidof fancontrol >/dev/null") == 0),
		speed = string.format("%.2f%%", percentage),
		temp = cputemp
	}

	luci.http.prepare_content("application/json")
	luci.http.write_json(status)
end
