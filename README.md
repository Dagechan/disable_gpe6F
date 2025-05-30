# disable_gpe6F
When using Linux distros, my laptop always has acpi issues and it causes high cpu usage. These scripts are for fixing the cpu usage issues.

## How to use
Put disable_gpe6F.sh in `/usr/local/bin/` and allow to execute it with
```
$ sudo chmod +x /usr/local/bin/disable_gpe6F.sh
```

Put disabe_gpe6F in `/lib/systemd/system-sleep/` and allow to execute it with
```
sudo chmod +x /lib/systemd/system-sleep/disable_gpe6F
```

Put disable-gpe6F.service in `/etc/systemd/system/` and execute commands below.
```
$ sudo systemctl daemon-reexec
$ sudo systemctl enable disable-gpe6F.service
```

