local Icons = require "utils.class.icon"
local fs = require("utils.fn").fs

local Config = {}

Config.default_cwd = fs.home()

-- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
Config.ssh_domains = {}

-- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
Config.unix_domains = {}
Config.default_prog = { '/usr/bin/fish', "-l" }

return Config
