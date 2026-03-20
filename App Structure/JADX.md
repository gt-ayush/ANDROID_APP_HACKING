## JADX (Java Decompiler for Android) – Detailed Note

**JADX** is an open-source tool used to **decompile Android APK and DEX files into readable Java source code**. It is widely used in **Android reverse engineering, security analysis, and malware analysis**.

APK files contain **DEX (Dalvik Executable) bytecode**, which is not easily readable. JADX converts this bytecode into **human-readable Java code**.

---

# Purpose of JADX

* Reverse engineer Android applications
* Analyze application logic
* Identify security vulnerabilities
* Study malware behavior
* Understand closed-source apps

---

# Input Files Supported

| File Type | Description                 |
| --------- | --------------------------- |
| `.apk`    | Android application package |
| `.dex`    | Dalvik executable file      |
| `.jar`    | Java archive                |
| `.class`  | Java bytecode               |

---

# Output Produced by JADX

| Output              | Description               |
| ------------------- | ------------------------- |
| Java source code    | Decompiled readable code  |
| Resources           | Layout files, images      |
| AndroidManifest.xml | Application configuration |
| Package structure   | Organized code hierarchy  |

---

# Components of JADX

| Component    | Purpose                          |
| ------------ | -------------------------------- |
| **jadx-gui** | Graphical interface for analysis |
| **jadx-cli** | Command-line decompiler          |

---

# Basic Usage

### Decompile APK using CLI

```bash
jadx app.apk
```

Output folder will contain the **decompiled source code**.

---

### Launch GUI

```bash
jadx-gui
```

Then open the APK file to view the source code interactively.

---

# Features of JADX

| Feature                  | Description                   |
| ------------------------ | ----------------------------- |
| Java code reconstruction | Converts DEX bytecode to Java |
| Resource decoding        | Extracts XML and assets       |
| Code navigation          | Browse packages and classes   |
| Search functionality     | Find functions or strings     |
| Debugging support        | Useful in reverse engineering |

---

# Typical Reverse Engineering Workflow

1. Extract APK from device

```
adb pull /data/app/app.apk
```

2. Open with JADX

```
jadx-gui app.apk
```

3. Analyze:

* Activities
* Services
* BroadcastReceivers
* ContentProviders

4. Look for vulnerabilities.

---

# Common Things Analyzed with JADX

| Item                  | Purpose             |
| --------------------- | ------------------- |
| Hardcoded credentials | Security flaw       |
| API keys              | Information leakage |
| Authentication logic  | Bypass analysis     |
| Cryptography usage    | Weak encryption     |
| Web requests          | Backend endpoints   |

---

# Limitations of JADX

| Limitation             | Description                       |
| ---------------------- | --------------------------------- |
| Obfuscated code        | Hard to understand                |
| Partial reconstruction | Some code not perfectly recovered |
| Native code            | Cannot decompile `.so` libraries  |

---

# Comparison with Other Tools

| Tool        | Purpose                         |
| ----------- | ------------------------------- |
| **APKTool** | Decode resources and smali code |
| **JADX**    | Convert DEX to Java             |
| **Ghidra**  | Analyze native binaries         |

---

# Example Use Case in Security Testing

Suppose an app stores a password in code:

```java
String password = "admin123";
```

Using JADX, testers can easily **find hardcoded credentials**.

---

# One-line Exam Definition

**JADX is an open-source Android reverse engineering tool that decompiles APK and DEX files into readable Java source code for analysis and security testing.**
