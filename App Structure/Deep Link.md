**Deep Link in Android (Short Note)**

**Deep Link** is a type of link that **directly opens a specific screen or feature inside an Android app** instead of launching the app’s main activity.

**Purpose:**

* Allows users to navigate directly to particular content within the app.
* Commonly used in **web links, emails, notifications, and advertisements**.

**Types of Deep Links:**

1. **Standard Deep Links** – Open the app if installed; otherwise nothing happens.
2. **Deferred Deep Links** – Work even if the app is not installed; after installation they redirect to the specific content.
3. **App Links** – Verified HTTP/HTTPS links that open the app directly without showing a chooser.

**Implementation:**
Deep links are defined in **AndroidManifest.xml** using an **intent-filter**.

Example:

```xml
<intent-filter>
    <action android:name="android.intent.action.VIEW"/>
    <category android:name="android.intent.category.DEFAULT"/>
    <category android:name="android.intent.category.BROWSABLE"/>
    <data android:scheme="https"
          android:host="example.com"
          android:pathPrefix="/product"/>
</intent-filter>
```

**Security Note (in testing):**
Improper deep link validation may allow **unauthorized access to internal app screens or sensitive functions**.

**One-line definition:**

> Deep Link is a URL or URI that opens a specific page or feature inside an Android application.**Web Links in Android (Short Note)**

**Web Links** are **HTTP/HTTPS URLs** that open content inside an Android application directly from a browser or another app.

**Purpose:**

* Allow users to open a specific page in an app using a **website link**
* Improve navigation between **web and mobile apps**

**How it works:**
Web links are defined in **AndroidManifest.xml** using an **intent-filter** with the `VIEW` action and web URL details.

**Example:**

```xml
<intent-filter>
    <action android:name="android.intent.action.VIEW"/>
    <category android:name="android.intent.category.DEFAULT"/>
    <category android:name="android.intent.category.BROWSABLE"/>

    <data
        android:scheme="https"
        android:host="example.com"/>
</intent-filter>
```

When a user clicks a link like:

```
https://example.com
```

Android checks if any installed app can handle that link and opens the app.

**Key Points:**

* Uses **HTTP or HTTPS URLs**
* Connects **web pages to app content**
* Works through **intent filters**
* Often used in **app navigation, promotions, and sharing**

**One-line definition:**

> Web links are HTTP/HTTPS URLs that allow a website link to open directly inside an Android application.


**App Links in Android (Short Note)**

**App Links** are **verified HTTP/HTTPS links** that automatically open a specific screen in an Android app **without showing the app chooser**.

**Purpose:**

* Connect a website directly to its Android app.
* Provide **secure and seamless navigation** from web pages to app content.

**How it works:**
App Links are defined in **AndroidManifest.xml** using an **intent-filter** with `autoVerify="true"`.

**Example:**

```xml
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW"/>
    <category android:name="android.intent.category.DEFAULT"/>
    <category android:name="android.intent.category.BROWSABLE"/>

    <data
        android:scheme="https"
        android:host="example.com"/>
</intent-filter>
```

The website must also host a verification file:

```
https://example.com/.well-known/assetlinks.json
```

**Key Points:**

* Uses **HTTP/HTTPS URLs**
* Requires **domain verification**
* Opens the app **directly without a chooser**
* Improves **security and user experience**

**One-line definition:**

> App Links are verified web links that automatically open content inside the associated Android application.



