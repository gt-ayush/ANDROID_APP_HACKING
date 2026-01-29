.class public Lcom/withsecure/example/sieve/service/CryptoServiceConnector;
.super Landroid/os/Handler;
.source "CryptoServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;,
        Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;
    }
.end annotation


# static fields
.field static final MSG_RESULT:I = 0x9

.field private static final TAG:Ljava/lang/String; = "m_CryptServiceConnector"

.field static final TYPE_DECRYPT:I = 0x5c

.field static final TYPE_ENCRYPT:I = 0x5b


# instance fields
.field activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

.field private bound:Z

.field private responseHandler:Landroid/os/Messenger;

.field private serviceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;)V
    .locals 0
    .param p1, "activity"    # Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    .line 66
    return-void
.end method

.method private sendToServer(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 97
    iget-boolean v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->bound:Z

    const-string v1, "m_CryptServiceConnector"

    if-eqz v0, :cond_0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->responseHandler:Landroid/os/Messenger;

    iput-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 100
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->serviceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to send message to Service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    invoke-interface {v1}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;->sendFailed()V

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->bound:Z

    .line 108
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v0, "ERROR: We are not bound to Crypto!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    invoke-interface {v0}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;->sendFailed()V

    .line 113
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 70
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->serviceMessenger:Landroid/os/Messenger;

    .line 71
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;-><init>(Lcom/withsecure/example/sieve/service/CryptoServiceConnector;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->responseHandler:Landroid/os/Messenger;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->bound:Z

    .line 73
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    invoke-interface {v0}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;->connected()V

    .line 74
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 78
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    invoke-interface {v0}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;->sendFailed()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->bound:Z

    .line 80
    return-void
.end method

.method public sendForDecryption(Ljava/lang/String;[BI)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [B
    .param p3, "code"    # I

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.withsecure.example.sieve.KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "com.withsecure.example.sieve.PASSWORD"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 86
    const/16 v1, 0x34a4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v1, p3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendToServer(Landroid/os/Message;)V

    .line 87
    return-void
.end method

.method public sendForEncryption(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "code"    # I

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 91
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "com.withsecure.example.sieve.KEY"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "com.withsecure.example.sieve.STRING"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v1, 0xd7c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v1, p3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->sendToServer(Landroid/os/Message;)V

    .line 94
    return-void
.end method
