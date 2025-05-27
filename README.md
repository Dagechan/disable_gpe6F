# disable_gpe6F
When using Linux distros, my laptop always has acpi issues and it causes high cpu usage. This script is for fixing the cpu usage issues.

## How to use
Put disable_gpe6F.sh in `/usr/local/bin/` and allow to execute it with
```
$ sudo chmod +x /usr/local/bin/disable_gpe6F.sh
```

Put disable_gpe6F.service in `/etc/systemd/system/` and execute commands below.
```
$ sudo systemctl daemon-reexec
$ sudo systemctl enable disable-gpe6F.service
```

