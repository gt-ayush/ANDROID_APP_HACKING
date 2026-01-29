.class public Lcom/withsecure/example/sieve/service/CryptoService;
.super Landroid/app/Service;
.source "CryptoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;
    }
.end annotation


# static fields
.field public static final KEY:Ljava/lang/String; = "com.withsecure.example.sieve.KEY"

.field public static final MSG_DECRYPT:I = 0x34a4

.field public static final MSG_ENCRYPT:I = 0xd7c

.field public static final RESULT:Ljava/lang/String; = "com.withsecure.example.sieve.RESULT"

.field public static final STRING:Ljava/lang/String; = "com.withsecure.example.sieve.STRING"

.field private static final TAG:Ljava/lang/String; = "m_CryptoService"


# instance fields
.field private responseHandler:Landroid/os/Messenger;

.field private serviceHandler:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const-string/jumbo v0, "sieve"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/withsecure/example/sieve/service/CryptoService;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/CryptoService;

    .line 15
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoService;->responseHandler:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$002(Lcom/withsecure/example/sieve/service/CryptoService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/CryptoService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 15
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/CryptoService;->responseHandler:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$100(Lcom/withsecure/example/sieve/service/CryptoService;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/CryptoService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/withsecure/example/sieve/service/CryptoService;->encrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/withsecure/example/sieve/service/CryptoService;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/service/CryptoService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/withsecure/example/sieve/service/CryptoService;->decrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrypt(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # [B

    .line 89
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/withsecure/example/sieve/service/CryptoService;->runNDKdecrypt(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Error during decrytion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_CryptoService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    return-object v1
.end method

.method private encrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "string"    # Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/withsecure/example/sieve/service/CryptoService;->runNDKencrypt(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Error during encrytion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_CryptoService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v1, 0x0

    return-object v1
.end method

.method private native runNDKdecrypt(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method private native runNDKencrypt(Ljava/lang/String;Ljava/lang/String;)[B
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoService;->serviceHandler:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "m_CryptoService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 115
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 117
    .local v1, "serviceLooper":Landroid/os/Looper;
    new-instance v2, Landroid/os/Messenger;

    new-instance v3, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;

    invoke-direct {v3, p0, v1}, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;-><init>(Lcom/withsecure/example/sieve/service/CryptoService;Landroid/os/Looper;)V

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/withsecure/example/sieve/service/CryptoService;->serviceHandler:Landroid/os/Messenger;

    .line 118
    return-void
.end method
