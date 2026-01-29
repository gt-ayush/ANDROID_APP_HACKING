.class public Lcom/withsecure/example/sieve/service/AuthServiceConnector;
.super Landroid/os/Handler;
.source "AuthServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;,
        Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;
    }
.end annotation


# static fields
.field static final MSG_CHECK:I = 0x5

.field static final MSG_ERROR:I = 0x1b207

.field static final MSG_FIRST_LAUNCH:I = 0x3

.field static final MSG_SET:I = 0x4

.field private static final TAG:Ljava/lang/String; = "m_AuthServiceConnector"

.field public static final TYPE_HAS_KEY_HAS_PIN:I = 0x1f

.field public static final TYPE_HAS_KEY_NO_PIN:I = 0x20

.field static final TYPE_KEY:I = 0x2a

.field static final TYPE_MSG_UNDEFINED:I = 0x1dd6e

.field public static final TYPE_NO_KEY_NO_PIN:I = 0x21

.field static final TYPE_PIN:I = 0x29


# instance fields
.field activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

.field private bound:Z

.field private responseHandler:Landroid/os/Messenger;

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;)V
    .locals 0
    .param p1, "activity"    # Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    .line 121
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    .line 123
    return-void
.end method

.method private sendToServer(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    iget-boolean v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->bound:Z

    const-string v1, "m_AuthServiceConnector"

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->responseHandler:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 159
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to send message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    invoke-interface {v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->sendFailed()V

    .line 166
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "ERROR: We are not bound to Crypto!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method


# virtual methods
.method public checkFirstLaunch()V
    .locals 2

    .line 126
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->sendToServer(Landroid/os/Message;)V

    .line 127
    return-void
.end method

.method public checkKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.withsecure.example.sieve.PASSWORD"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/16 v1, 0x1d1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x932

    invoke-static {v3, v4, v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->sendToServer(Landroid/os/Message;)V

    .line 133
    return-void
.end method

.method public checkPin(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.withsecure.example.sieve.PIN"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/16 v1, 0x2412

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x932

    invoke-static {v3, v4, v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->sendToServer(Landroid/os/Message;)V

    .line 139
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 143
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->serviceMessenger:Landroid/os/Messenger;

    .line 144
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;-><init>(Lcom/withsecure/example/sieve/service/AuthServiceConnector;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->responseHandler:Landroid/os/Messenger;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->bound:Z

    .line 146
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    invoke-interface {v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->connected()V

    .line 147
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->bound:Z

    .line 152
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    invoke-interface {v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->sendFailed()V

    .line 153
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.withsecure.example.sieve.PASSWORD"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/16 v1, 0x1d1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x18c9

    invoke-static {v3, v4, v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->sendToServer(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method public setPin(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.withsecure.example.sieve.PIN"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/16 v1, 0x2412

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x18c9

    invoke-static {v3, v4, v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->sendToServer(Landroid/os/Message;)V

    .line 182
    return-void
.end method
