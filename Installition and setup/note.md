**Note:** 
```
-- Android Debud Bridge to intreact with the android.
-- Java Debug Buyer Protocol to debug Java code.
-- CDB to debug Native C code and we can use Frida and many more.
-- we could use android devicesudo modprobe -r kvm_intel , Emulator , Android on VM , direct android install on pc.
-- we can add paths in linux using a file named zshrc in ~/.zshrc we can nano the file and write "export PATH=$PATH:<PATH>:<PATH>:<PATH>:"
-- we can update the path to be used in the terminal by using "source ~/.zshrc".
-- i have created a path for emulator to run and we can use "emulator -list-avds" to list all emularor present then run "emulator @Pixel_6" to run it.
```

**Tools to install**

-- `sudo apt install net-tools`\
-- we can use `netstat -tulpen` to list all port that are currentely active in the system.\
-- we can connect to a port using `telnet <ip address> <port>`\
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

**4 oct 2025**

After installing VirtualBox, I couldn’t run Android due to an error. I learned I needed to sign the kernel module using MOK management with `sudo /sbin/vboxconfig`. Even after setting a temporary password, the error persisted. I then ran `sudo mokutil --import /var/lib/shim-signed/mok/MOK.der`, rebooted, enrolled the MOK, entered the temporary password, and rebooted again. After that, a new error appeared related to KVM. Since I wasn’t familiar with KVM, I decided to temporarily disable it to proceed.


### Cheking if KVM is running
```shell
ayush@ayush-83eq:~$ lsmod | grep kvm
kvm_intel             487424  0
kvm                  1425408  1 kvm_intel
irqbypass              12288  1 kvm
```
### Disable the KVM
```
ayush@ayush-83eq:~$ sudo modprobe -r kvm_intel
[sudo] password for ayush: 
```

### Enable the KVM 
```
ayush@ayush-83eq:~$ sudo modprobe kvm_intel
[sudo] password for ayush: 

ayush@ayush-83eq:~$ lsmod | grep kvm
kvm_intel             487424  0
kvm                  1425408  1 kvm_intel
irqbypass              12288  1 kvm
```

**We can also add path to the the linux using:**

```shell
ayush@ayush-83eq:/tmp/scrcpy$ echo $PATH
/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

ayush@ayush-83eq:/tmp/scrcpy$ export PATH=/usr/local/bin:$PATH

ayush@ayush-83eq:/tmp/scrcpy$ source ~/.bashrc
```
**Note:** the only didfference between then is that one we have to update every time and othere is auto updated to be used in other konsole.

### **16 oct 2025**
`Added amy first hack` using `.sh` file and the `touch tab <l> <l>`.Where `l` is pointer location. \
```
I am knowing about shell script from class 10 and I got to know we can use while ,do while and for loop and if ,if else and more in shell scripts. 

And because android is also based on linux all comands work fine so it is doing very well.
```

Here’s a cleaned-up and polished version of your note:

---

### **19 Oct 2025**

**Bluetooth HCI Snoop Log**

* **Step 1:** Enable **Bluetooth HCI snoop log** in **Developer options** on your device.
* **Step 2:** On your terminal, run:

  ```bash
  adb bugreport <filename>.zip
  ```

  This will generate a bug report named `<filename>.zip` and store it in your current directory. It may take a few minutes.
* **Step 3:** Extract the zip, navigate to the `FS` folder, and locate the HCI log:

  * Either search for `HCI`
  * Or go directly to:

    ```
    FS/data/misc/bluetooth/logs/
    ```
* **Step 4:** Open a terminal in that folder and launch Wireshark to analyze the log:

  ```bash
  wireshark btsnoop_hci.log
  ```

---

