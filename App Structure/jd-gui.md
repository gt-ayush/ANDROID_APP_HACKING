# JD-GUI (Java Decompiler) – Detailed Notes

## What is JD-GUI?

**JD-GUI (Java Decompiler GUI)** is a graphical Java decompiler used to open and inspect compiled Java `.class` files and `.jar` archives. It converts Java bytecode back into readable Java source code, making it useful for reverse engineering, debugging, malware analysis, and security research.

> **Note:** JD-GUI works with Java bytecode (`.class`, `.jar`). It **does not directly decompile Android APKs**. For APKs, tools like **JADX** are generally more suitable.

---

# Features

* Graphical interface (easy to navigate)
* Decompiles `.class` files
* Opens entire `.jar` files
* Displays package/class hierarchy
* Search within decompiled code
* Save all decompiled sources
* Cross-platform (Windows, Linux, macOS)

---

# Supported File Types

| File Type | Supported | Description                   |
| --------- | --------- | ----------------------------- |
| `.class`  | ✅         | Java bytecode                 |
| `.jar`    | ✅         | Java Archive                  |
| `.zip`    | ⚠️        | If it contains `.class` files |
| `.apk`    | ❌         | Not directly supported        |

---

# How JD-GUI Works

```
Java Source (.java)
        │
        ▼
Java Compiler (javac)
        │
        ▼
Bytecode (.class)
        │
        ▼
JD-GUI
        │
        ▼
Recovered Java Source
```

---

# Installation

## Ubuntu/Linux

Download the Linux version and make it executable:

```bash
chmod +x jd-gui-*.AppImage
./jd-gui-*.AppImage
```

Or, if distributed as a JAR:

```bash
java -jar jd-gui.jar
```

---

## Windows

Download `jd-gui.exe` and run it.

---

# Opening a JAR File

1. Launch JD-GUI.
2. Select **File → Open**.
3. Choose the `.jar` file.
4. Browse packages and classes.

Example:

```
myapp.jar
├── com
│   └── example
│       ├── Main.class
│       └── Utils.class
```

becomes

```
com.example
    Main.java
    Utils.java
```

---

# Saving Decompiled Source

```
File
 └── Save All Sources
```

JD-GUI creates a ZIP archive containing the decompiled `.java` files.

---

# Typical Workflow

```
Program.jar
      │
      ▼
 JD-GUI
      │
      ▼
 Decompiled Java
      │
      ▼
 Security Analysis / Reverse Engineering
```

---

# Android APK Workflow

An APK contains `classes.dex`, not Java `.class` files.

Typical workflow:

```
APK
 │
 ▼
apktool d app.apk
 │
 ▼
classes.dex
 │
 ▼
dex2jar
 │
 ▼
classes.jar
 │
 ▼
JD-GUI
```

Modern alternative:

```
APK
 │
 ▼
JADX
 │
 ▼
Java Source
```

**JADX is usually preferred because it reads `classes.dex` directly.**

---

# Example Commands

### Convert DEX to JAR

```bash
d2j-dex2jar classes.dex
```

Output:

```
classes-dex2jar.jar
```

Open with JD-GUI:

```
JD-GUI
  └── Open
        └── classes-dex2jar.jar
```

---

# Advantages

* Free
* Lightweight
* Easy to use
* Produces readable Java code
* Good for Java desktop applications
* Useful for malware analysis and reverse engineering

---

# Limitations

* Cannot directly read APKs
* Decompiled code may differ from the original source
* Local variable names may be lost
* Comments are not recoverable
* Generic types may not always be reconstructed accurately

---

# JD-GUI vs JADX

| Feature           | JD-GUI              | JADX       |
| ----------------- | ------------------- | ---------- |
| `.class` support  | ✅                   | ❌          |
| `.jar` support    | ✅                   | Limited    |
| `.dex` support    | ❌                   | ✅          |
| `.apk` support    | ❌                   | ✅          |
| Android analysis  | Basic (via dex2jar) | Excellent  |
| Java applications | Excellent           | Limited    |
| Android resources | ❌                   | ✅          |
| GUI               | ✅                   | ✅          |
| CLI               | ❌                   | ✅ (`jadx`) |

---

# JD-GUI in Android Reverse Engineering

Traditional workflow:

```
APK
 │
 ▼
apktool d
 │
 ▼
classes.dex
 │
 ▼
dex2jar
 │
 ▼
classes.jar
 │
 ▼
JD-GUI
```

Modern workflow:

```
APK
 │
 ▼
jadx-gui
 │
 ▼
Java + Resources + Manifest
```

---

# Common Use Cases

* Reverse engineering Java applications
* Security auditing
* Understanding third-party libraries
* Malware analysis
* Recovering source code for learning
* Inspecting compiled JAR files

---

# Exam Summary

| Item                       | Description              |
| -------------------------- | ------------------------ |
| Tool                       | JD-GUI                   |
| Purpose                    | Java bytecode decompiler |
| Input                      | `.class`, `.jar`         |
| Output                     | Decompiled Java source   |
| Android Support            | Indirect (via `dex2jar`) |
| Modern Android Alternative | JADX                     |

---

## Quick Interview Question

**Q:** Why is JADX preferred over JD-GUI for Android APK analysis?

**A:** Android APKs contain **Dalvik bytecode (`classes.dex`)**, while JD-GUI only understands **Java bytecode (`.class`/`.jar`)**. JADX can decompile `classes.dex` directly, preserving Android-specific structure (manifest, resources, and Java code), making it the preferred tool for Android reverse engineering.
