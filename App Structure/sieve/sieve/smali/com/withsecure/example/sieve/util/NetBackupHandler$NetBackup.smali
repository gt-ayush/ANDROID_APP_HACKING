.class Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;
.super Landroid/os/AsyncTask;
.source "NetBackupHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/withsecure/example/sieve/util/NetBackupHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetBackup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;


# direct methods
.method private constructor <init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;

    .line 19
    iput-object p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 20
    return-void
.end method

.method constructor <init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;
    .param p2, "netBackupHandler$NetBackup0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;

    .line 22
    iput-object p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arr_object"    # [Ljava/lang/Object;

    .line 27
    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .param p1, "ins"    # [Ljava/lang/String;

    .line 31
    const-string v0, "m_NetBackup"

    const/4 v1, 0x0

    .line 32
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 33
    .local v2, "is":Ljava/io/InputStream;
    const/16 v3, 0x1000

    new-array v4, v3, [B

    .line 34
    .local v4, "buffer":[B
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 35
    .local v3, "byteBuffer0":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 37
    :try_start_0
    iget-object v5, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v5}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$000(Lcom/withsecure/example/sieve/util/NetBackupHandler;)Ljava/net/Socket;

    move-result-object v5

    .line 38
    .local v5, "socket0":Ljava/net/Socket;
    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v6

    const/16 v7, 0x5bbd

    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    move-object v1, v6

    .line 40
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    .line 43
    :cond_0
    const-string v6, "Socket is NOT Connected!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v6, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v6, v7}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 47
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "POST /Backup.xml HTTP/1.1\r\nContent-Length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v8, p1, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\r\n\r\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v8, p1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/OutputStream;->write([B)V

    .line 50
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 51
    .local v6, "bytesRead":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 52
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 53
    iget-object v7, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    const v8, 0x7043b

    invoke-static {v7, v8}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 54
    goto :goto_2

    .line 57
    :cond_1
    invoke-virtual {v3, v4, v7, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 58
    nop

    .end local v6    # "bytesRead":I
    goto :goto_1

    .line 61
    :cond_2
    const-string v6, "Connection to server failed!"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v6, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v6, v7}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 65
    :goto_2
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v5    # "socket0":Ljava/net/Socket;
    goto :goto_3

    .line 67
    :catch_0
    move-exception v5

    .line 68
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error during connection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    const v1, 0x3b7c4

    invoke-static {v0, v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$202(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 77
    iget-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v0}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$100(Lcom/withsecure/example/sieve/util/NetBackupHandler;)I

    move-result v0

    .line 78
    .local v0, "v":I
    iget-object v1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetBackup;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$300(Lcom/withsecure/example/sieve/util/NetBackupHandler;)Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;->onTaskFinish(ILjava/lang/String;)V

    .line 79
    return-void
.end method
