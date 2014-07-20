require 'posix'
require 'daemon'

local filedriver = require "logging.file"

local log_dir = './'
local logger = filedriver(log_dir.."testlog_%s.log", "%Y-%m-%d")

function log (...)
	print(...)
	local params = {...}
	for i, v in pairs(params) do
		v = tostring(v)		
	end
	local info_str = table.concat(params, '\t');

	logger:info(info_str)
end




daemon.daemonize('nochdir,nostdfds,noumask0')
--posix.openlog('hello-log', 'p')
local i = 0
while i do
    -- posix.syslog(1, i .. ' Hello, World!')
    print('1234566', i)
    log("some error", i)
    i = i + 1
    posix.sleep(1)
end
