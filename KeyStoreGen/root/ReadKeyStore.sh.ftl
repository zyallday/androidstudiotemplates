#!/usr/bin/expect
# 这个Bash用于读取Keystore的详细信息

spawn keytool -list -v -keystore ${storeFileName}
match_max 100000
expect "*?assword:*"
send -- "${keyPass}\r"
interact
