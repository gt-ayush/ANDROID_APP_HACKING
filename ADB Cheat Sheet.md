

# ADB (Android Debug Bridge) – Complete Cheat Sheet

**ADB** is a command-line tool used to **communicate with Android devices** for debugging, testing, file transfer, and device control.

---

# 1. ADB Server Management

| Command               | Description              |
| --------------------- | ------------------------ |
| `adb start-server`    | Start ADB server         |
| `adb kill-server`     | Stop ADB server          |
| `adb version`         | Show ADB version         |
| `adb nodaemon server` | Run server in foreground |
| `adb reconnect`       | Reconnect device         |

---

# 2. Device Connection Commands

| Command               | Description               |
| --------------------- | ------------------------- |
| `adb devices`         | List connected devices    |
| `adb devices -l`      | Detailed device list      |
| `adb connect IP:PORT` | Connect device over WiFi  |
| `adb disconnect`      | Disconnect WiFi device    |
| `adb get-state`       | Show device state         |
| `adb get-serialno`    | Show device serial number |
| `adb usb`             | Restart in USB mode       |
| `adb tcpip 5555`      | Enable TCP debugging      |

---

# 3. File Transfer Commands

| Command                  | Description           |
| ------------------------ | --------------------- |
| `adb push file /sdcard/` | Copy file to device   |
| `adb pull /sdcard/file`  | Copy file to computer |
| `adb sync`               | Sync files            |
| `adb shell ls`           | List directory        |
| `adb shell cp`           | Copy file             |
| `adb shell mv`           | Move file             |
| `adb shell rm`           | Delete file           |
| `adb shell mkdir`        | Create directory      |

---

# 4. Application Management

| Command                         | Description              |
| ------------------------------- | ------------------------ |
| `adb install app.apk`           | Install APK              |
| `adb install -r app.apk`        | Reinstall app            |
| `adb install -g app.apk`        | Install with permissions |
| `adb uninstall package`         | Remove app               |
| `adb uninstall -k package`      | Remove but keep data     |
| `adb shell pm list packages`    | List apps                |
| `adb shell pm list packages -3` | User apps                |
| `adb shell pm list packages -s` | System apps              |
| `adb shell pm path package`     | Show APK path            |
| `adb shell pm clear package`    | Clear app data           |

---

# 5. Activity Manager Commands (`am`)

| Command                                   | Description               |
| ----------------------------------------- | ------------------------- |
| `adb shell am start -n package/.Activity` | Start activity            |
| `adb shell am startservice`               | Start service             |
| `adb shell am stopservice`                | Stop service              |
| `adb shell am broadcast -a ACTION`        | Send broadcast            |
| `adb shell am force-stop package`         | Force stop app            |
| `adb shell am kill package`               | Kill process              |
| `adb shell am instrument`                 | Run instrumentation tests |

---

# 6. Package Manager Commands (`pm`)

| Command                                  | Description             |
| ---------------------------------------- | ----------------------- |
| `adb shell pm list packages`             | List installed packages |
| `adb shell pm path package`              | Get APK location        |
| `adb shell pm install file.apk`          | Install APK via shell   |
| `adb shell pm uninstall package`         | Remove package          |
| `adb shell pm grant package permission`  | Grant permission        |
| `adb shell pm revoke package permission` | Revoke permission       |
| `adb shell pm disable package`           | Disable package         |
| `adb shell pm enable package`            | Enable package          |

---

# 7. System Information Commands

| Command                       | Description               |
| ----------------------------- | ------------------------- |
| `adb shell getprop`           | Display system properties |
| `adb shell setprop key value` | Set property              |
| `adb shell uptime`            | Show uptime               |
| `adb shell df`                | Disk usage                |
| `adb shell free`              | Memory usage              |
| `adb shell cat /proc/cpuinfo` | CPU information           |

---

# 8. Logging & Debugging

| Command                | Description         |
| ---------------------- | ------------------- |
| `adb logcat`           | Show device logs    |
| `adb logcat -d`        | Dump logs           |
| `adb logcat > log.txt` | Save logs           |
| `adb bugreport`        | Full device report  |
| `adb shell dumpsys`    | System service info |
| `adb shell dumpstate`  | Device state info   |

---

# 9. Device Control Commands

| Command                 | Description           |
| ----------------------- | --------------------- |
| `adb reboot`            | Reboot device         |
| `adb reboot bootloader` | Bootloader mode       |
| `adb reboot recovery`   | Recovery mode         |
| `adb sideload file.zip` | Install update        |
| `adb root`              | Restart adb with root |
| `adb unroot`            | Restart without root  |

---

# 10. Screen & Input Control

| Command                      | Description     |
| ---------------------------- | --------------- |
| `adb shell screencap`        | Take screenshot |
| `adb shell screenrecord`     | Record screen   |
| `adb shell input tap x y`    | Simulate tap    |
| `adb shell input swipe`      | Swipe screen    |
| `adb shell input text hello` | Enter text      |
| `adb shell input keyevent`   | Send key event  |

Example:

```
adb shell input keyevent 26
```

(Power button)

---

# 11. Content Provider Commands

| Command                    | Description    |
| -------------------------- | -------------- |
| `adb shell content query`  | Query provider |
| `adb shell content insert` | Insert data    |
| `adb shell content update` | Update data    |
| `adb shell content delete` | Delete data    |

Example:

```
adb shell content query --uri content://contacts/people
```

---

# 12. Useful Android Security Testing Commands

| Command                         | Purpose                |
| ------------------------------- | ---------------------- |
| `adb shell pm list packages -f` | Get APK path           |
| `adb shell dumpsys package app` | View permissions       |
| `adb shell run-as package`      | Access app data        |
| `adb shell am start`            | Launch hidden activity |
| `adb shell am broadcast`        | Trigger receiver       |
| `adb pull /data/app`            | Extract APK            |

---

# Example Android Pentesting Workflow

1️⃣ List apps

```
adb shell pm list packages
```

2️⃣ Get APK path

```
adb shell pm path com.example.app
```

3️⃣ Extract APK

```
adb pull /data/app/com.example/base.apk
```

4️⃣ Analyze using **jadx or apktool**

---

# Short Exam Definition

**ADB (Android Debug Bridge)** is a command-line tool that enables communication between a computer and an Android device for debugging, installing applications, transferring files, and executing system commands.

