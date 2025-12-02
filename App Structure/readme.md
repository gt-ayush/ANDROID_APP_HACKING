

## **APK File Structure – Quick Note**

An **APK (Android Package)** is basically a compressed ZIP file that contains **everything an Android app needs to run**. Its structure usually includes:

### **1. `AndroidManifest.xml`**

* Core file of the app.
* Contains package name, permissions, activities, services, receivers, SDK version, etc.
* Usually in binary XML format.

### **2. `classes.dex`**

* The app’s compiled Java/Kotlin code in **Dalvik Executable** format.
* There can be multiple files: `classes.dex`, `classes2.dex`, etc.

### **3. `resources.arsc`**

* Compiled resources such as strings, styles, themes, and layouts.
* Android uses this file to quickly look up resource values.

### **4. `res/` folder**

* Uncompiled resources like images, layouts, icons, XMLs, etc.
* Subfolders:

  * `drawable/` — images
  * `layout/` — UI XML layouts
  * `values/` — strings.xml, styles.xml, colors.xml
  * `mipmap/` — app launcher icons

### **5. `assets/` folder**

* Raw files bundled with the app.
* App reads this content as-is using the `AssetManager`.
* Great for game data, config files, text files, etc.

### **6. `lib/` folder**

* Contains **native libraries (.so files)** for different CPU architectures:

  * `lib/armeabi-v7a/`
  * `lib/arm64-v8a/`
  * `lib/x86/`, etc.

### **7. `META-INF/` folder**

* APK signature & certificate information.
* Includes:

  * `CERT.RSA` — certificate
  * `CERT.SF` — signature
  * `MANIFEST.MF` — hash list of files for verification

### **8. `kotlin/` folder (optional)**

* Extra metadata for Kotlin-based apps.

---

## **Summary**

An APK is a **ZIP** containing:

| Component             | Purpose                    |
| --------------------- | -------------------------- |
| `AndroidManifest.xml` | App metadata & permissions |
| `classes.dex`         | Compiled app code          |
| `resources.arsc`      | Compiled resources         |
| `res/`                | Uncompiled resources       |
| `assets/`             | Raw bundled files          |
| `lib/`                | Native libraries           |
| `META-INF/`           | App signature              |

---

