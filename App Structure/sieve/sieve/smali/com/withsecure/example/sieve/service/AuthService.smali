.class public Lcom/withsecure/example/sieve/service/AuthService;
.super Landroid/app/Service;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;
    }
.end annotation


# static fields
.field static final MSG_CHECK:I = 0x932

.field static final MSG_CHECK_IF_INITALISED:I = 0x2

.field static final MSG_FIRST_LAUNCH:I = 0x4

.field static final MSG_SAY_HELLO:I = 0x1

.field static final MSG_SET:I = 0x18c9

.field static final MSG_UNREGISTER:I = -0x1

.field public static final PASSWORD:Ljava/lang/String; = "com.withsecure.example.sieve.PASSWORD"

.field public static final PIN:Ljava/lang/String; = "com.withsecure.example.sieve.PIN"

.field private static final TAG:Ljava/lang/String; = "m_AuthService"

.field static final TYPE_KEY:I = 0x1d1c

.field static final TYPE_PIN:I = 0x2412


# instance fields
.field private final NOTIFICATION:I

.field private nManager:Landroid/app/NotificationManager;

.field private responseHandler:Landroid/os/Messenger;

.field private serviceHandler:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 169
    sget v0, Lcom/withsecure/example/sieve/R$string;->app_name:I

    iput v0, p0, Lcom/withsecure/example/sieve/service/AuthService;->NOTIFICATION:I

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/withsecure/example/sieve/service/AuthService;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;

    .line 29
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthService;->responseHandler:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lcom/withsecure/example/sieve/service/AuthService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 29
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/AuthService;->responseHandler:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/service/AuthService;->verifyKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/withsecure/example/sieve/service/AuthService;)V
    .locals 0
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;

    .line 29
    invoke-direct {p0}, Lcom/withsecure/example/sieve/service/AuthService;->showNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/service/AuthService;->verifyPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/withsecure/example/sieve/service/AuthService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;

    .line 29
    invoke-direct {p0}, Lcom/withsecure/example/sieve/service/AuthService;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/service/AuthService;->setKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/AuthService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p1}, Lcom/withsecure/example/sieve/service/AuthService;->setPin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getKey()Ljava/lang/String;
    .locals 9

    .line 190
    new-instance v7, Landroid/content/CursorLoader;

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v8, "Password"

    aput-object v8, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 191
    .local v0, "cursor0":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 192
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setKey(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 220
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v0, "out":Landroid/content/ContentValues;
    const-string v1, "Password"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/service/AuthService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setPin(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v0, "out":Landroid/content/ContentValues;
    const-string v1, "pin"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/service/AuthService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const-string v3, "pin IS NULL"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private showNotification()V
    .locals 5

    .line 232
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/withsecure/example/sieve/R$mipmap;->ic_launcher:I

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget v1, Lcom/withsecure/example/sieve/R$string;->app_name:I

    invoke-virtual {p0, v1}, Lcom/withsecure/example/sieve/service/AuthService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const-string v1, "Click to access your passwords"

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 233
    .local v0, "notificationCompat$Builder0":Landroidx/core/app/NotificationCompat$Builder;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/withsecure/example/sieve/activity/MainLoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    .local v1, "resultIntent":Landroid/content/Intent;
    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/service/AuthService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x14000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 236
    iget-object v2, p0, Lcom/withsecure/example/sieve/service/AuthService;->nManager:Landroid/app/NotificationManager;

    iget v3, p0, Lcom/withsecure/example/sieve/service/AuthService;->NOTIFICATION:I

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 237
    return-void
.end method

.method private verifyKey(Ljava/lang/String;)Z
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .line 240
    new-instance v7, Landroid/content/CursorLoader;

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "Password"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const-string v4, "Password = ?"

    new-array v5, v8, [Ljava/lang/String;

    aput-object p1, v5, v9

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8
.end method

.method private verifyPin(Ljava/lang/String;)Z
    .locals 10
    .param p1, "PIN"    # Ljava/lang/String;

    .line 244
    new-instance v7, Landroid/content/CursorLoader;

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "pin"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const-string v4, "pin = ?"

    new-array v5, v8, [Ljava/lang/String;

    aput-object p1, v5, v9

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8
.end method


# virtual methods
.method public checkKeyExists()Z
    .locals 10

    .line 173
    new-instance v7, Landroid/content/CursorLoader;

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "Password"

    const/4 v9, 0x0

    aput-object v0, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    return v8
.end method

.method public checkPinExists()Z
    .locals 11

    .line 178
    new-instance v7, Landroid/content/CursorLoader;

    sget-object v2, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "pin"

    aput-object v10, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    .line 179
    .local v0, "cursor0":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 180
    .local v1, "exists":Z
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 181
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 182
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move v1, v3

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 197
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthService;->serviceHandler:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 202
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/service/AuthService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/withsecure/example/sieve/service/AuthService;->nManager:Landroid/app/NotificationManager;

    .line 203
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "m_AuthService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 204
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 205
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 206
    .local v1, "serviceLooper":Landroid/os/Looper;
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;

    invoke-direct {v3, p0, v1}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;-><init>(Lcom/withsecure/example/sieve/service/AuthService;Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/withsecure/example/sieve/service/AuthService;->serviceHandler:Landroid/os/Messenger;

    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthService;->nManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 212
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 216
    const/4 v0, 0x1

    return v0
.end method
