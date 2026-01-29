.class Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;
.super Landroid/os/AsyncTask;
.source "NetBackupHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/withsecure/example/sieve/util/NetBackupHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetRestore"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;


# direct methods
.method private constructor <init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;

    .line 83
    iput-object p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 84
    return-void
.end method

.method constructor <init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;
    .param p2, "netBackupHandler$NetRestore0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;

    .line 86
    iput-object p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arr_object"    # [Ljava/lang/Object;

    .line 91
    move-object v0, p1

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 12
    .param p1, "arg0"    # [Ljava/lang/Void;

    .line 95
    const-string v0, "m_NetBackup"

    const/16 v1, 0x1000

    new-array v2, v1, [B

    .line 96
    .local v2, "buffer":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 97
    .local v1, "byteBuffer0":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 99
    const/4 v3, 0x0

    const/16 v4, 0x5bbd

    :try_start_0
    iget-object v5, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v5}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$000(Lcom/withsecure/example/sieve/util/NetBackupHandler;)Ljava/net/Socket;

    move-result-object v5

    .line 100
    .local v5, "socket0":Ljava/net/Socket;
    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "Socket is NOT Connected!"

    if-nez v6, :cond_0

    .line 101
    :try_start_1
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v6, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v6, v4}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 103
    return-object v3

    .line 106
    :cond_0
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 107
    .local v6, "os":Ljava/io/OutputStream;
    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 108
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 109
    const-string v7, "GET /Backup.xml HTTP/1.1\r\n\r\n"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 111
    :goto_0
    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 112
    .local v7, "bytesRead":I
    const/4 v9, -0x1

    const/4 v10, 0x0

    if-ne v7, v9, :cond_1

    .line 113
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 114
    new-instance v9, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/String;-><init>([B)V

    const-string v11, "\r\n\r\n"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    aget-object v9, v9, v11

    const-string v11, "\u0000"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v10

    .line 115
    .local v9, "out":Ljava/lang/String;
    iget-object v10, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    const v11, 0xb6111

    invoke-static {v10, v11}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 116
    return-object v9

    .line 119
    .end local v9    # "out":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v2, v10, v7}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 120
    nop

    .end local v7    # "bytesRead":I
    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v7, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v7, v4}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    return-object v3

    .line 126
    .end local v5    # "socket0":Ljava/net/Socket;
    .end local v6    # "os":Ljava/io/OutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v5

    .line 127
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

    .line 128
    iget-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v0, v4}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$102(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 131
    .end local v5    # "e":Ljava/lang/Exception;
    return-object v3
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object0"    # Ljava/lang/Object;

    .line 136
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->onPostExecute(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    const v1, 0x3b7c4

    invoke-static {v0, v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$202(Lcom/withsecure/example/sieve/util/NetBackupHandler;I)I

    .line 141
    iget-object v0, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v0}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$300(Lcom/withsecure/example/sieve/util/NetBackupHandler;)Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$NetRestore;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-static {v1}, Lcom/withsecure/example/sieve/util/NetBackupHandler;->access$100(Lcom/withsecure/example/sieve/util/NetBackupHandler;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/withsecure/example/sieve/util/NetBackupHandler$ResultListener;->onTaskFinish(ILjava/lang/String;)V

    .line 142
    return-void
.end method
