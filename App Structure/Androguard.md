# 📘 Androguard – Complete Notes for Android Reverse Engineering

---

# Table of Contents

1. Introduction
2. Features
3. Installation
4. Project Structure
5. Components
6. Loading an APK
7. APK Analysis
8. DEX Analysis
9. Manifest Analysis
10. Class Analysis
11. Method Analysis
12. String Analysis
13. Field Analysis
14. Cross References (XREF)
15. Call Graph Analysis
16. Control Flow Graph (CFG)
17. Resources Analysis
18. Certificates & Signatures
19. Malware Analysis
20. Interactive Shell
21. Command Line Tools
22. Automation Examples
23. Comparison with JADX
24. Advantages
25. Limitations
26. Useful Cheat Sheet

---

# 1. What is Androguard?

**Androguard** is a **Python framework** used for **static analysis of Android applications**.

It allows you to inspect:

* APK files
* DEX files
* ODEX files
* AndroidManifest.xml
* Resources
* Java classes
* Smali-equivalent instructions
* Control Flow Graphs
* Call Graphs
* Cross References
* Certificates

Unlike JADX, Androguard is primarily designed for **programmatic analysis and scripting**.

---

# 2. Features

✔ APK Parsing

✔ DEX Analysis

✔ ODEX Analysis

✔ Manifest Parsing

✔ Resource Parsing

✔ Certificate Extraction

✔ Method Analysis

✔ Class Analysis

✔ Call Graph Generation

✔ Cross References

✔ String Analysis

✔ Opcode Inspection

✔ Malware Research

✔ Static Analysis Automation

---

# 3. Installation

## Create Virtual Environment

```bash
python3 -m venv ~/Tools/androguard-env
```

Activate

```bash
source ~/Tools/androguard-env/bin/activate
```

Install

```bash
pip install androguard
```

Verify

```bash
androguard --help
```

---

## Exit Virtual Environment

```bash
deactivate
```

---

# 4. Main Components

```
APK
 │
 ├── AndroidManifest.xml
 ├── resources.arsc
 ├── classes.dex
 ├── assets/
 ├── res/
 └── META-INF/
```

Androguard can inspect every one of these.

---

# 5. Loading an APK

```python
from androguard.misc import AnalyzeAPK

a, d, dx = AnalyzeAPK("app.apk")
```

Returns

```
a  → APK object

d  → DalvikVMFormat object(s)

dx → Analysis object
```

---

# 6. APK Object

The APK object contains information about the application.

Example

```python
a.get_package()
```

```
com.example.app
```

Version

```python
a.get_androidversion_name()
```

Version Code

```python
a.get_androidversion_code()
```

Permissions

```python
a.get_permissions()
```

Activities

```python
a.get_activities()
```

Services

```python
a.get_services()
```

Receivers

```python
a.get_receivers()
```

Providers

```python
a.get_providers()
```

Main Activity

```python
a.get_main_activity()
```

Libraries

```python
a.get_libraries()
```

SDK

```python
a.get_min_sdk_version()

a.get_target_sdk_version()
```

---

# 7. Manifest Analysis

Manifest is parsed automatically.

Retrieve package

```python
a.package
```

Retrieve permissions

```python
a.get_permissions()
```

Intent Filters

```python
a.get_intent_filters(
    "activity",
    "MainActivity"
)
```

---

# 8. DEX Analysis

```
classes.dex
```

is converted into

```
DalvikVMFormat
```

Example

```python
for cls in d.get_classes():
    print(cls.get_name())
```

---

# 9. Class Analysis

Find classes

```python
dx.find_classes("Main")
```

All classes

```python
for c in dx.get_classes():
    print(c.name)
```

Example

```
Lcom/example/MainActivity;
```

---

# 10. Method Analysis

Search methods

```python
dx.find_methods("login")
```

Print every method

```python
for m in dx.get_methods():
    print(m)
```

Method Name

```python
m.name
```

Descriptor

```python
m.descriptor
```

---

# 11. String Analysis

Find strings

```python
dx.find_strings("password")
```

Search

```
password

admin

token

api

secret

login
```

Print all strings

```python
for s in dx.get_strings():
    print(s)
```

Useful for

* API Keys
* URLs
* Passwords
* SQL Queries

---

# 12. Field Analysis

```python
dx.find_fields("username")
```

List all fields

```python
for f in dx.get_fields():
    print(f)
```

---

# 13. Cross References (XREF)

Cross References answer:

**Who uses this method?**

**Where is this string used?**

Example

```python
method.get_xref_from()
```

Example

```python
method.get_xref_to()
```

Strings

```python
string.get_xref_from()
```

---

# 14. Call Graph

One of Androguard's strongest features.

Generate graph

```python
cg = dx.get_call_graph()
```

Output

```
NetworkX DiGraph
```

Count nodes

```python
len(cg.nodes())
```

Count edges

```python
len(cg.edges())
```

Show first methods

```python
list(cg.nodes())[:10]
```

Show method calls

```python
for src, dst in cg.edges():
    print(src, dst)
```

Find callers

```python
cg.predecessors(node)
```

Find callees

```python
cg.successors(node)
```

Export

```python
import networkx as nx

nx.write_gexf(
    cg,
    "callgraph.gexf"
)
```

Open using

* Gephi
* Cytoscape

---

# 15. Control Flow Graph (CFG)

Shows execution flow inside a method.

```
if

else

switch

loops

goto
```

Useful for malware analysis.

---

# 16. Resources Analysis

Read

```
resources.arsc
```

Access

```
Strings

Layouts

Images

Icons
```

---

# 17. Certificate Analysis

View certificate

```python
a.get_certificates()
```

Retrieve

```
SHA1

SHA256

Issuer

Subject
```

Useful for

* Signature Verification
* Malware Classification

---

# 18. Malware Analysis

Search for

```
Runtime.exec()

DexClassLoader

Reflection

Base64

AES

DES

RC4

Root Detection

Frida Detection

SSL Pinning

WebView

Content Providers
```

---

# 19. Interactive Shell

Launch

```bash
androguard analyze app.apk
```

You receive

```
>>> a

>>> d

>>> dx
```

These objects are already loaded.

Example

```python
a.get_package()

a.get_permissions()

dx.find_strings("password")

dx.find_methods("login")
```

---

# 20. Command-Line Tools

Analyze APK

```bash
androguard analyze app.apk
```

Display APK info

```bash
androguard apkid app.apk
```

Generate Call Graph

```bash
androguard cg app.apk
```

Decompile DEX

```bash
androguard decompile app.apk
```

---

# 21. Automation Example

```python
from androguard.misc import AnalyzeAPK

a, d, dx = AnalyzeAPK("app.apk")

print(a.get_package())

for p in a.get_permissions():
    print(p)

for s in dx.find_strings("password"):
    print(s)

cg = dx.get_call_graph()

print(len(cg.nodes()))
```

---

# 22. Comparison with JADX

| Feature          | JADX     | Androguard |
| ---------------- | -------- | ---------- |
| Java Source      | ✅        | Partial    |
| GUI              | ✅        | ❌          |
| Python API       | ❌        | ✅          |
| Automation       | ❌        | ✅          |
| Call Graph       | Limited  | ✅          |
| XREF             | Limited  | ✅          |
| Malware Analysis | Moderate | Excellent  |
| Scripting        | ❌        | ✅          |
| Batch Analysis   | ❌        | ✅          |

---

# 23. Advantages

* Excellent Python API
* Supports APK, DEX, and ODEX
* Powerful static analysis
* Rich call graph generation
* Cross-reference analysis
* Easy automation
* Malware analysis support
* Large community

---

# 24. Limitations

* No full-featured GUI like JADX
* Java decompilation quality is not as good as JADX
* Dynamic analysis is not supported
* Some heavily obfuscated code can be difficult to interpret
* Call graphs for very large apps may consume significant memory

---

# 25. Useful Cheat Sheet

## Load APK

```python
from androguard.misc import AnalyzeAPK
a, d, dx = AnalyzeAPK("app.apk")
```

## Package

```python
a.get_package()
```

## Permissions

```python
a.get_permissions()
```

## Activities

```python
a.get_activities()
```

## Services

```python
a.get_services()
```

## Receivers

```python
a.get_receivers()
```

## Providers

```python
a.get_providers()
```

## Main Activity

```python
a.get_main_activity()
```

## Strings

```python
dx.find_strings("password")
```

## Classes

```python
dx.find_classes("Main")
```

## Methods

```python
dx.find_methods("login")
```

## Fields

```python
dx.find_fields("username")
```

## Call Graph

```python
cg = dx.get_call_graph()
```

## Number of Methods

```python
len(cg.nodes())
```

## Number of Calls

```python
len(cg.edges())
```

## Export Call Graph

```python
import networkx as nx
nx.write_gexf(cg, "callgraph.gexf")
```

## Exit Virtual Environment

```bash
deactivate
```

---

# 26. Where Androguard Fits in an Android Reverse Engineering Workflow

A practical static analysis workflow often looks like this:

```text
APK
 │
 ▼
Rename APK → .zip (optional)
 │
 ▼
Extract classes.dex
 │
 ├── JADX / JADX-GUI
 │      • High-level Java decompilation
 │      • Browse source code
 │
 ├── dex2jar + JD-GUI
 │      • Convert DEX → JAR
 │      • Inspect Java bytecode in JD-GUI
 │
 ├── Apktool
 │      • Decode resources
 │      • Analyze Smali
 │      • Modify and rebuild APK
 │
 └── Androguard
        • Static analysis with Python
        • Manifest inspection
        • Class/method/string searches
        • Cross-reference (XREF) analysis
        • Call graph generation
        • Certificate and permission analysis
        • Batch analysis and automation
```

### When to use Androguard

Use Androguard when you want to:

* Automate analysis across many APKs.
* Search for sensitive strings, methods, or permissions programmatically.
* Build call graphs or inspect cross-references.
* Perform malware triage and static analysis at scale.
* Integrate Android analysis into custom Python scripts or research workflows.

For interactive code browsing and manual reverse engineering, JADX and JADX-GUI are usually more convenient. For resource editing and APK modification, Apktool is the standard choice. Androguard complements these tools by providing powerful automation and analysis capabilities rather than replacing them.
