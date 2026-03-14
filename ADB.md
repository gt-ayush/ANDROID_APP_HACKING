
# Android Debug Bridge (ADB) – Detailed Command Table

**ADB (Android Debug Bridge)** is a command-line tool that enables communication between a computer and an Android device for **debugging, file transfer, app management, and system control**.

---

# 1️⃣ Device Management Commands

| Command            | Description                   | Example                   |
| ------------------ | ----------------------------- | ------------------------- |
| `adb devices`      | Lists connected devices       | `adb devices`             |
| `adb connect`      | Connect to device via IP      | `adb connect 192.168.1.5` |
| `adb disconnect`   | Disconnect network device     | `adb disconnect`          |
| `adb kill-server`  | Stops adb server              | `adb kill-server`         |
| `adb start-server` | Starts adb server             | `adb start-server`        |
| `adb usb`          | Restart device in USB mode    | `adb usb`                 |
| `adb tcpip`        | Restart device in TCP mode    | `adb tcpip 5555`          |
| `adb get-state`    | Shows device connection state | `adb get-state`           |
| `adb get-serialno` | Shows device serial number    | `adb get-serialno`        |
| `adb version`      | Displays adb version          | `adb version`             |

---

# 2️⃣ Application Management Commands

| Command                      | Description             | Example                            |
| ---------------------------- | ----------------------- | ---------------------------------- |
| `adb install`                | Install APK             | `adb install app.apk`              |
| `adb install -r`             | Reinstall app           | `adb install -r app.apk`           |
| `adb uninstall`              | Remove application      | `adb uninstall com.example.app`    |
| `adb uninstall -k`           | Uninstall but keep data | `adb uninstall -k com.example.app` |
| `adb shell pm list packages` | List installed apps     | `adb shell pm list packages`       |
| `adb shell pm path`          | Show APK location       | `adb shell pm path com.app`        |
| `adb shell pm clear`         | Clear app data          | `adb shell pm clear com.app`       |
| `adb shell pm disable`       | Disable app             | `adb shell pm disable com.app`     |
| `adb shell pm enable`        | Enable app              | `adb shell pm enable com.app`      |

---

# 3️⃣ File Transfer Commands

| Command           | Description                 | Example                      |
| ----------------- | --------------------------- | ---------------------------- |
| `adb push`        | Copy file from PC to device | `adb push file.txt /sdcard/` |
| `adb pull`        | Copy file from device to PC | `adb pull /sdcard/file.txt`  |
| `adb sync`        | Sync files to device        | `adb sync`                   |
| `adb shell ls`    | List directory files        | `adb shell ls /sdcard`       |
| `adb shell rm`    | Remove file                 | `adb shell rm file.txt`      |
| `adb shell mkdir` | Create directory            | `adb shell mkdir test`       |

---

# 4️⃣ Device Control Commands

| Command                 | Description                       | Example                   |
| ----------------------- | --------------------------------- | ------------------------- |
| `adb reboot`            | Reboot device                     | `adb reboot`              |
| `adb reboot bootloader` | Boot into bootloader              | `adb reboot bootloader`   |
| `adb reboot recovery`   | Boot into recovery mode           | `adb reboot recovery`     |
| `adb sideload`          | Install update package            | `adb sideload update.zip` |
| `adb root`              | Restart adb with root permissions | `adb root`                |
| `adb unroot`            | Restart adb without root          | `adb unroot`              |

---

# 5️⃣ Logging and Debugging Commands

| Command               | Description               | Example               |
| --------------------- | ------------------------- | --------------------- |
| `adb logcat`          | Display system logs       | `adb logcat`          |
| `adb logcat -d`       | Dump logs and exit        | `adb logcat -d`       |
| `adb bugreport`       | Generate system report    | `adb bugreport`       |
| `adb jdwp`            | List Java debug processes | `adb jdwp`            |
| `adb shell dumpsys`   | Show system services info | `adb shell dumpsys`   |
| `adb shell dumpstate` | Dump device state         | `adb shell dumpstate` |

---

# 6️⃣ Activity Manager (am) Commands

| Command                     | Description             | Example                                       |
| --------------------------- | ----------------------- | --------------------------------------------- |
| `adb shell am start`        | Start activity          | `adb shell am start -n com.app/.MainActivity` |
| `adb shell am startservice` | Start service           | `adb shell am startservice com.app/.Service`  |
| `adb shell am stopservice`  | Stop service            | `adb shell am stopservice com.app/.Service`   |
| `adb shell am broadcast`    | Send broadcast intent   | `adb shell am broadcast -a ACTION_TEST`       |
| `adb shell am force-stop`   | Force stop app          | `adb shell am force-stop com.app`             |
| `adb shell am kill`         | Kill background process | `adb shell am kill com.app`                   |

---

# 7️⃣ Package Manager (pm) Commands

| Command            | Description           | Example                                  |
| ------------------ | --------------------- | ---------------------------------------- |
| `pm list packages` | List installed apps   | `adb shell pm list packages`             |
| `pm path`          | Show APK location     | `adb shell pm path com.app`              |
| `pm install`       | Install APK via shell | `adb shell pm install app.apk`           |
| `pm uninstall`     | Remove package        | `adb shell pm uninstall com.app`         |
| `pm grant`         | Grant permission      | `adb shell pm grant com.app permission`  |
| `pm revoke`        | Revoke permission     | `adb shell pm revoke com.app permission` |

---

# 8️⃣ System Information Commands

| Command             | Description               | Example                       |
| ------------------- | ------------------------- | ----------------------------- |
| `adb shell getprop` | Display system properties | `adb shell getprop`           |
| `adb shell setprop` | Set system property       | `adb shell setprop key value` |
| `adb shell uptime`  | Show device uptime        | `adb shell uptime`            |
| `adb shell df`      | Show disk usage           | `adb shell df`                |
| `adb shell free`    | Show memory usage         | `adb shell free`              |

---

# 9️⃣ Screen and Input Commands

| Command                    | Description         | Example                                  |
| -------------------------- | ------------------- | ---------------------------------------- |
| `adb shell screencap`      | Capture screenshot  | `adb shell screencap /sdcard/screen.png` |
| `adb shell screenrecord`   | Record screen       | `adb shell screenrecord video.mp4`       |
| `adb shell input tap`      | Simulate screen tap | `adb shell input tap 300 400`            |
| `adb shell input text`     | Enter text          | `adb shell input text hello`             |
| `adb shell input keyevent` | Send key event      | `adb shell input keyevent 26`            |

---

# 10️⃣ Useful Commands for Android Security Testing

| Command                         | Purpose                         |
| ------------------------------- | ------------------------------- |
| `adb shell pm list packages -f` | Show packages with APK path     |
| `adb shell dumpsys package`     | View app permissions            |
| `adb shell run-as`              | Access app sandbox (debug apps) |
| `adb shell am start`            | Launch hidden activities        |
| `adb shell am broadcast`        | Trigger broadcast receivers     |
| `adb pull /data/app`            | Extract APK files               |

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

3️⃣ Pull APK

```
adb pull /data/app/com.example/base.apk
```

4️⃣ Analyze with jadx/apktool.

---

# Short Exam Definition

**ADB (Android Debug Bridge)** is a command-line tool used to communicate with an Android device for debugging, installing applications, transferring files, and executing system commands.

