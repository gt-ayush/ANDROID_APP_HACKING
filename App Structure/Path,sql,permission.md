Here are **clean, detailed notes** on the three major Android vulnerabilities you used 👇 (exam + practical friendly)

---

# 1️⃣ Path Traversal / URI Bypass

## Definition

**Path Traversal (URI Bypass)** is a vulnerability where an attacker manipulates the **ContentProvider URI path** to bypass access restrictions and reach unauthorized data.

---

## How it Works

A ContentProvider may restrict access like:

```
content://app.provider/Keys
```

But attacker sends:

```
content://app.provider/Keys/////
```

or

```
content://app.provider/Keys/../Passwords
```

---

## Root Cause

* Weak **path validation (regex or string matching)**
* Developer checks path like:

```java
if(uri.getPath().equals("/Keys"))
```

➡️ This fails when extra `/` or encoded paths are used

---

## Why Attack Works

* Android internally **normalizes URIs**
* `/////` is treated same as `/`
* Validation logic is bypassed

---

## Example Attack

```java
Uri uri = Uri.parse("content://com.app.provider/Keys/////");
Cursor c = getContentResolver().query(uri,null,null,null,null);
```

---

## Impact

| Impact              | Description              |
| ------------------- | ------------------------ |
| Unauthorized access | Access restricted tables |
| Data leakage        | Read private data        |
| Privilege bypass    | Skip permission checks   |

---

## Prevention

* Use **strict URI matching**
* Normalize paths before checking
* Avoid string comparison → use URI matcher

```java
UriMatcher matcher = new UriMatcher(UriMatcher.NO_MATCH);
```

---

## One-line

**Path traversal allows attackers to bypass URI validation and access restricted data by manipulating paths.**

---

# 2️⃣ SQL Injection in ContentProvider

## Definition

**SQL Injection** occurs when user-controlled input is directly inserted into SQL queries, allowing attackers to modify the query logic.

---

## How it Works

Normal query:

```sql
SELECT * FROM Passwords
```

Injected query:

```sql
SELECT * FROM KEY-- FROM Passwords
```

---

## Root Cause

* Unsafe query construction:

```java
db.rawQuery("SELECT * FROM users WHERE name = '" + input + "'", null);
```

* Using **projection or selection directly**

---

## Your Example Explained

```java
String[] projection = new String[] {"* FROM KEY--;"};
```

This modifies query to:

```sql
SELECT * FROM KEY-- FROM Passwords
```

➡️ `--` comments rest → query changed

---

## Why Attack Works

* No input validation
* No parameterized queries
* Direct SQL concatenation

---

## Impact

| Impact             | Description          |
| ------------------ | -------------------- |
| Data leakage       | Dump all records     |
| Auth bypass        | Login bypass         |
| Data modification  | Insert/update/delete |
| Full DB compromise | Access all tables    |

---

## Exploitation (ADB)

```bash
adb shell content query \
--uri content://app.provider/table \
--where "name=' OR 1=1 --"
```

---

## Prevention

Use **parameterized queries**:

```java
db.query("users", null, "name=?", new String[]{input}, null, null, null);
```

---

## One-line

**SQL Injection in ContentProvider allows attackers to manipulate database queries and access unauthorized data.**

---

# 3️⃣ Improper Permission Usage

## Definition

This vulnerability occurs when an app defines **custom permissions incorrectly**, allowing unauthorized apps to gain access.

---

## How it Works

App defines permission:

```xml
<permission android:name="com.app.READ_KEYS"/>
```

But:

* No `protectionLevel`
* Or set to `normal` / `dangerous`

---

## Your Example Explained

```java
String[] permission = new String[] {"com.mwr.example.sieve.READ_KEYS"};
ActivityCompat.requestPermissions(this, permission,9001);
```

➡️ Your app requests permission
➡️ System grants it
➡️ You access restricted data

---

## Root Cause

| Issue                | Description                      |
| -------------------- | -------------------------------- |
| Weak protectionLevel | `normal` permission auto-granted |
| Exported components  | Accessible by other apps         |
| No permission checks | Anyone can call provider         |

---

## Protection Levels

| Level     | Security                     |
| --------- | ---------------------------- |
| normal    | Low (auto granted ❌)         |
| dangerous | Medium                       |
| signature | High (same developer only ✅) |

---

## Why Attack Works

* Permission not restricted
* No signature-level protection
* Exported component allows access

---

## Impact

| Impact               | Description           |
| -------------------- | --------------------- |
| Unauthorized access  | Read private data     |
| Privilege escalation | Gain higher access    |
| Data manipulation    | Modify sensitive data |

---

## Prevention

* Use:

```xml
android:protectionLevel="signature"
```

* Restrict exported components:

```xml
android:exported="false"
```

* Validate caller identity

---

## One-line

**Improper permission usage allows unauthorized apps to access protected resources due to weak or misconfigured permissions.**

---

# 🔥 Final Comparison Table

| Vulnerability     | Target         | Cause              | Result                  |
| ----------------- | -------------- | ------------------ | ----------------------- |
| Path Traversal    | File/URI path  | Weak validation    | Access restricted paths |
| SQL Injection     | Database       | Unsafe SQL queries | Data leakage            |
| Permission Misuse | App components | Weak permissions   | Unauthorized access     |

---

# 🧠 Final Exam Summary

> Android apps are vulnerable when ContentProviders are improperly secured, leading to path traversal, SQL injection, and permission bypass, allowing attackers to access or manipulate sensitive data.

---

If you want, I can next show:
👉 **Real lab exploitation (Sieve step-by-step using ADB)**
👉 OR **how to detect these in JADX quickly (very useful for exams + viva)**
