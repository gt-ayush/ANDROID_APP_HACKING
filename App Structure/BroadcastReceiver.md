## BroadcastReceiver in Android (Detailed Note)

**BroadcastReceiver** is one of the four main Android components (Activity, Service, ContentProvider, BroadcastReceiver). It is used to **receive and respond to broadcast messages (Intents)** sent by the Android system or other applications.

A broadcast is a **system-wide message** that informs apps about an event. When that event occurs, Android sends a broadcast intent and all registered BroadcastReceivers that match the intent **get notified and execute code**.

---

## Purpose

BroadcastReceivers allow apps to **react to events without running continuously in the background**. They are triggered **only when the broadcast happens**.

Examples:

* Device **boot completed**
* **Battery low**
* **Network connectivity change**
* **SMS received**
* **Airplane mode changed**

---

## Types of Broadcasts

### 1. System Broadcasts

Sent by the Android operating system.

Examples:

* `BOOT_COMPLETED`
* `BATTERY_LOW`
* `CONNECTIVITY_CHANGE`

Example flow:
System event → Android sends broadcast → BroadcastReceiver receives it → app performs action.

---

### 2. Custom Broadcasts

Broadcasts sent by applications to communicate with other apps.

Example:
An app can send a broadcast like:

```java
Intent intent = new Intent("com.example.CUSTOM_EVENT");
sendBroadcast(intent);
```

Another app can receive it if it has a matching intent filter.

---

## How BroadcastReceiver Works

Steps:

1. A **broadcast intent** is sent by system or app
2. Android checks **registered BroadcastReceivers**
3. Matching receivers are triggered
4. `onReceive()` method runs

---

## Example BroadcastReceiver Code

```java
public class MyReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        Toast.makeText(context, "Broadcast Received!", Toast.LENGTH_LONG).show();
    }
}
```

---

## Registering BroadcastReceiver

### 1. Static Registration (Manifest)

Declared in **AndroidManifest.xml**.

```xml
<receiver android:name=".MyReceiver">
    <intent-filter>
        <action android:name="android.intent.action.BOOT_COMPLETED"/>
    </intent-filter>
</receiver>
```

Runs even when the app is **not open**.

---

### 2. Dynamic Registration (Runtime)

Registered inside code (Activity or Service).

```java
BroadcastReceiver receiver = new MyReceiver();
IntentFilter filter = new IntentFilter("android.intent.action.BATTERY_LOW");
registerReceiver(receiver, filter);
```

Works **only while the app is running**.

---

## Important Characteristics

* No user interface
* Runs for **short time only**
* Executes code inside `onReceive()`
* Should not perform long operations
* Used mainly for **event-driven tasks**

---

## Security Issues (Important for App Hacking)

If BroadcastReceivers are **misconfigured**, attackers may exploit them.

### Common vulnerabilities

1. **Exported Receivers**
   If `android:exported="true"` other apps can send broadcasts.

2. **Intent Injection**
   Attackers send malicious broadcast intents.

3. **Privilege Escalation**
   Sensitive operations triggered by untrusted broadcasts.

Example attack command:

```bash
adb shell am broadcast -a com.example.SECRET_ACTION
```

---

## Security Best Practices

* Use `android:exported="false"` when possible
* Protect receivers with **permissions**
* Validate incoming intent data
* Avoid performing sensitive actions directly

---

## Real Example

When a phone **boots**, Android sends:

```
android.intent.action.BOOT_COMPLETED
```

Apps with a receiver for this event can:

* Start background services
* Schedule alarms
* Sync data

---

## One-line Exam Definition

> BroadcastReceiver is an Android component that listens for broadcast intents from the system or other apps and executes code when the specified event occurs.
