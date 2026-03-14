## Services in Android (Detailed Note)

A **Service** in Android is a component that runs in the **background** to perform long-running operations without a user interface. Services are used when an app needs to continue working even when the user is not interacting with the application.

Examples:

* Playing music in background
* Downloading files
* Syncing data with server
* Location tracking

Services are declared in **AndroidManifest.xml** and run independently of Activities.

---

# Types of Services

| Type                   | Description                                                 | Example Use                 |
| ---------------------- | ----------------------------------------------------------- | --------------------------- |
| **Started Service**    | Started by another component and runs until it stops itself | Music player                |
| **Bound Service**      | Allows other components to bind and interact with it        | Client-server communication |
| **Foreground Service** | Runs in background but shows notification to user           | Navigation apps             |
| **Background Service** | Runs without user interaction                               | Data synchronization        |

---

# 1. Started Service

A **Started Service** is started using `startService()` and continues running in the background even if the component that started it is destroyed.

### Lifecycle

1. `startService()` called
2. `onCreate()` executed
3. `onStartCommand()` executed
4. Service runs in background
5. `stopSelf()` or `stopService()` stops it

### Example Code

```java
public class MyService extends Service {

    public int onStartCommand(Intent intent, int flags, int startId) {
        // background task
        return START_STICKY;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }
}
```

---

# 2. Bound Service

A **Bound Service** allows other components (Activities or apps) to **connect and interact with the service** using `bindService()`.

### Lifecycle

1. `bindService()` called
2. `onCreate()` executed
3. `onBind()` returns an interface
4. Client communicates with service
5. `onUnbind()` when client disconnects

### Example Code

```java
public IBinder onBind(Intent intent) {
    return binder;
}
```

---

# 3. Foreground Service

A **Foreground Service** runs with a visible notification so the user knows the service is active.

Example uses:

* Music playback
* GPS navigation
* File downloads

Example:

```java
startForeground(notificationId, notification);
```

---

# Service Lifecycle

| Method             | Description                            |
| ------------------ | -------------------------------------- |
| `onCreate()`       | Called when service is created         |
| `onStartCommand()` | Called when service starts             |
| `onBind()`         | Called when component binds to service |
| `onUnbind()`       | Called when client disconnects         |
| `onDestroy()`      | Called when service stops              |

---

# BroadcastReceiver in Android

A **BroadcastReceiver** is a component that listens for **broadcast messages (intents)** sent by the system or other apps.

It allows apps to respond to **system-wide events**.

Examples:

* Battery low
* Network change
* Boot completed

BroadcastReceivers **do not have UI** and run briefly to handle events.

---

# Types of Broadcasts

| Type                  | Description                       |
| --------------------- | --------------------------------- |
| **System Broadcast**  | Sent by Android OS                |
| **Custom Broadcast**  | Sent by applications              |
| **Ordered Broadcast** | Delivered sequentially            |
| **Sticky Broadcast**  | Remains available after broadcast |

---

# BroadcastReceiver Example

### Java Code

```java
public class MyReceiver extends BroadcastReceiver {

    public void onReceive(Context context, Intent intent) {
        Toast.makeText(context,"Event Received",Toast.LENGTH_LONG).show();
    }
}
```

---

### Manifest Declaration

```xml
<receiver android:name=".MyReceiver">
    <intent-filter>
        <action android:name="android.intent.action.BOOT_COMPLETED"/>
    </intent-filter>
</receiver>
```

---

# Use of BroadcastReceiver

| Use Case                | Example                      |
| ----------------------- | ---------------------------- |
| System event detection  | Device boot                  |
| Network monitoring      | Internet connectivity change |
| Alarm triggers          | AlarmManager events          |
| SMS monitoring          | Incoming SMS                 |
| Inter-app communication | Custom broadcasts            |

---

# Security Issues (Important in Android Hacking)

Misconfigured BroadcastReceivers may cause vulnerabilities:

| Vulnerability        | Description                 |
| -------------------- | --------------------------- |
| Exported receivers   | Other apps can trigger them |
| Intent injection     | Malicious broadcast intents |
| Privilege escalation | Unauthorized actions        |

Example attack command:

```
adb shell am broadcast -a com.example.ACTION
```

---

# Service vs BroadcastReceiver

| Feature   | Service            | BroadcastReceiver    |
| --------- | ------------------ | -------------------- |
| UI        | No UI              | No UI                |
| Execution | Long-running tasks | Short event handling |
| Trigger   | App component      | Broadcast intent     |
| Example   | Music player       | Battery low alert    |

---

# Short Exam Definition

**Service:**
A Service is an Android component that performs background operations without a user interface.

**BroadcastReceiver:**
A BroadcastReceiver is a component that listens for broadcast intents and executes code when specific events occur.

