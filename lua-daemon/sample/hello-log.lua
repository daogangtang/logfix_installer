require 'posix'
require 'daemon'

daemon.daemonize('nochdir,nostdfds,noumask0')
--posix.openlog('hello-log', 'p')
local i = 0
while i do
    -- posix.syslog(1, i .. ' Hello, World!')
    print('1234566', i)
    i = i + 1
    posix.sleep(1)
end
