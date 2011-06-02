#!/usr/bin/expect
spawn sh -c "exec ~/bin/moon -p 5566"
interact timeout 30 { send "\x00" }
