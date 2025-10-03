**Note:** 
```
-- Android Debud Bridge to intreact with the android.
-- Java Debug Buyer Protocol to debug Java code.
-- CDB to debug Native C code and we can use Frida and many more.
-- we could use android device , Emulator , Android on VM , direct android install on pc.
-- we can add paths in linux using a file named zshrc in ~/.zshrc we can nano the file and write "export PATH=$PATH:<PATH>:<PATH>:<PATH>:"
-- we can update the path to be used in the terminal by using "source ~/.zshrc".
-- i have created a path for emulator to run and we can use "emulator -list-avds" to list all emularor present then run "emulator @Pixel_6" to run it.
```

**Tools to install**

-- `sudo apt install net-tools`
-- we can use `netstat -tulpen` to list all port that are currentely active in the system.
-- we can connect to a port using `telnet <ip address> <port>`
-- use the `auth <auth key>` command and copy and past the <auth key> in the location given in the terminel to gain access.

-- we can use various commands like 
```
Android Console: type 'help' for a list of commands
OK
help
Android console commands:
    help|h|?
    help-verbose
    ping
    automation
    event
    geo
    gsm
    cdma
    crash
    crash-on-exit
    kill
    restart
    network
    grpc
    power
    quit|exit
    redir
    sms
    avd
    qemu
    sensor
    physics
    finger
    debug
    rotate
    screenrecord
    fold
    unfold
    posture
    multidisplay
    icebox
    nodraw
    resize-display
    virtualscene-image
    proxy
    phonenumber

```
