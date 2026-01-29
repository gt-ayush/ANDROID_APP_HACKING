.class public Lcom/withsecure/example/sieve/util/NetBackupHandler;
.super Ljava/lang/Object;
.source "NetBackupHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;,
        Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;,
        Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;
    }
.end annotation


# static fields
.field public static final BACKUP_SUCCESS:I = 0x7043b

.field private static final END_HEADER:Ljava/lang/String; = "\r\n\r\n"

.field private static final GET_REQUEST:Ljava/lang/String; = "GET /Backup.xml HTTP/1.1"

.field private static final NOT_RUNNING:I = 0x3b7c4

.field public static final OPERATION_FAILED:I = 0x5bbd

.field private static final POST_REQUEST:Ljava/lang/String; = "POST /Backup.xml HTTP/1.1"

.field public static final RESTORE_SUCCESS:I = 0xb6111

.field private static final RUNNING_BACKUP:I = 0x252c8b

.field private static final RUNNING_RESTORE:I = 0x4054cea

.field private static final TAG:Ljava/lang/String; = "m_NetBackup"


# instance fields
.field private port:Ljava/lang/String;

.field private result:I

.field private rl:Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;

.field private state:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;)V
    .locals 1
    .param p1, "iurl"    # Ljava/lang/String;
    .param p2, "iport"    # Ljava/lang/String;
    .param p3, "irl"    # Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const v0, 0x3b7c4

    iput v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->state:I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->result:I

    .line 168
    const-string v0, "localhost"

    iput-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->url:Ljava/lang/String;

    .line 169
    const-string v0, "8000"

    iput-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->port:Ljava/lang/String;

    .line 170
    iput-object p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->url:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->port:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->rl:Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/withsecure/example/sieve/util/NetBackupHandler;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;

    .line 17
    invoke-direct {p0}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->getNewHttpConnection()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/withsecure/example/sieve/util/NetBackupHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;

    .line 17
    iget v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->result:I

    return v0
.end method

.method static synthetic access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->result:I

    return p1
.end method

.method static synthetic access$202(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->state:I

    return p1
.end method

.method static synthetic access$300(Lcom/withsecure/example/sieve/util/NetBackupHandler;)Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;

    .line 17
    iget-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->rl:Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;

    return-object v0
.end method

.method private getNewHttpConnection()Ljava/net/Socket;
    .locals 6

    .line 176
    new-instance v0, Lcom/withsecure/example/sieve/util/NetBackupHandler$1;

    invoke-direct {v0, p0}, Lcom/withsecure/example/sieve/util/NetBackupHandler$1;-><init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;)V

    .line 191
    .local v0, "tm":Ljavax/net/ssl/TrustManager;
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 192
    .local v1, "sSLContext0":Ljavax/net/ssl/SSLContext;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 193
    .local v2, "secureRandom0":Ljava/security/SecureRandom;
    const/4 v3, 0x0

    new-array v4, v3, [Ljavax/net/ssl/KeyManager;

    const/4 v5, 0x1

    new-array v5, v5, [Ljavax/net/ssl/TrustManager;

    aput-object v0, v5, v3

    invoke-virtual {v1, v4, v5, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 194
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->port:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 196
    .end local v1    # "sSLContext0":Ljavax/net/ssl/SSLContext;
    .end local v2    # "secureRandom0":Ljava/security/SecureRandom;
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: Socket createion error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "m_NetBackup"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public performNetBackup(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 203
    monitor-enter p0

    .line 204
    :try_start_0
    iget v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->state:I

    const v1, 0x3b7c4

    if-ne v0, v1, :cond_0

    .line 205
    const v0, 0x252c8b

    iput v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->state:I

    .line 206
    new-instance v0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;-><init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 208
    :cond_0
    monitor-exit p0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public performNetRestore()V
    .locals 2

    .line 212
    monitor-enter p0

    .line 213
    :try_start_0
    const-string v0, "m_NetBackup"

    const-string v1, "performNetRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->state:I

    const v1, 0x3b7c4

    if-ne v0, v1, :cond_0

    .line 215
    const v0, 0x4054cea

    iput v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler;->state:I

    .line 216
    new-instance v0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;-><init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    :cond_0
    monitor-exit p0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
