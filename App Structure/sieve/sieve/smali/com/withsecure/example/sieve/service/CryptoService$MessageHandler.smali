.class final Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;
.super Landroid/os/Handler;
.source "CryptoService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/withsecure/example/sieve/service/CryptoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/withsecure/example/sieve/service/CryptoService;


# direct methods
.method public constructor <init>(Lcom/withsecure/example/sieve/service/CryptoService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/service/CryptoService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 17
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoService;

    .line 18
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    return-void
.end method

.method private sendResponseMessage(IIILandroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 52
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 53
    .local v0, "message0":Landroid/os/Message;
    if-eqz p4, :cond_0

    .line 54
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoService;

    invoke-static {v1}, Lcom/withsecure/example/sieve/service/CryptoService;->access$000(Lcom/withsecure/example/sieve/service/CryptoService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v0    # "message0":Landroid/os/Message;
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to send message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_CryptoService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private sendUnrecognizedMessage()V
    .locals 2

    .line 65
    const/4 v0, 0x0

    const v1, 0x1b207

    invoke-static {v0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 67
    .local v0, "message0":Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoService;

    invoke-static {v1}, Lcom/withsecure/example/sieve/service/CryptoService;->access$000(Lcom/withsecure/example/sieve/service/CryptoService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 71
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 23
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/withsecure/example/sieve/service/CryptoService;->access$002(Lcom/withsecure/example/sieve/service/CryptoService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 25
    .local v0, "recievedBundle":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x9

    const-string v3, "com.withsecure.example.sieve.RESULT"

    const-string v4, "com.withsecure.example.sieve.KEY"

    sparse-switch v1, :sswitch_data_0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unrecognized command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m_CryptoService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-direct {p0}, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->sendUnrecognizedMessage()V

    .line 45
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    return-void

    .line 35
    :sswitch_0
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "recievedKey":Ljava/lang/String;
    const-string v4, "com.withsecure.example.sieve.PASSWORD"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 37
    .local v4, "recievedData":[B
    iget-object v5, p0, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoService;

    invoke-static {v5, v1, v4}, Lcom/withsecure/example/sieve/service/CryptoService;->access$200(Lcom/withsecure/example/sieve/service/CryptoService;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/16 v3, 0x5c

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3, v5, v0}, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->sendResponseMessage(IIILandroid/os/Bundle;)V

    .line 39
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    return-void

    .line 27
    .end local v1    # "recievedKey":Ljava/lang/String;
    .end local v4    # "recievedData":[B
    :sswitch_1
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    .restart local v1    # "recievedKey":Ljava/lang/String;
    const-string v4, "com.withsecure.example.sieve.STRING"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    .local v4, "recievedString":Ljava/lang/String;
    iget-object v5, p0, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoService;

    invoke-static {v5, v1, v4}, Lcom/withsecure/example/sieve/service/CryptoService;->access$100(Lcom/withsecure/example/sieve/service/CryptoService;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 30
    const/16 v3, 0x5b

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2, v3, v5, v0}, Lcom/withsecure/example/sieve/service/CryptoService$MessageHandler;->sendResponseMessage(IIILandroid/os/Bundle;)V

    .line 31
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 32
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xd7c -> :sswitch_1
        0x34a4 -> :sswitch_0
    .end sparse-switch
.end method
