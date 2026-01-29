.class final Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;
.super Landroid/os/Handler;
.source "AuthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/withsecure/example/sieve/service/AuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/withsecure/example/sieve/service/AuthService;


# direct methods
.method public constructor <init>(Lcom/withsecure/example/sieve/service/AuthService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/service/AuthService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 31
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    .line 32
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 33
    return-void
.end method

.method private sendResponseMessage(IIILandroid/os/Bundle;)V
    .locals 3
    .param p1, "command"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;

    .line 129
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "message0":Landroid/os/Message;
    if-eqz p4, :cond_0

    .line 131
    invoke-virtual {v0, p4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v1}, Lcom/withsecure/example/sieve/service/AuthService;->access$000(Lcom/withsecure/example/sieve/service/AuthService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "message0":Landroid/os/Message;
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
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

    const-string v2, "m_AuthService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private sendUnrecognisedMessage()V
    .locals 4

    .line 143
    const v0, 0x1dd6e

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x1b207

    :try_start_0
    invoke-static {v2, v3, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 144
    .local v0, "message0":Landroid/os/Message;
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v1}, Lcom/withsecure/example/sieve/service/AuthService;->access$000(Lcom/withsecure/example/sieve/service/AuthService;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0    # "message0":Landroid/os/Message;
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "m_AuthService"

    const-string v2, "Unable to send message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 39
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/withsecure/example/sieve/service/AuthService;->access$002(Lcom/withsecure/example/sieve/service/AuthService;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 40
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 41
    .local v0, "returnBundle":Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "com.withsecure.example.sieve.PIN"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "com.withsecure.example.sieve.PASSWORD"

    sparse-switch v1, :sswitch_data_0

    .line 99
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

    const-string v2, "m_AuthService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-direct {p0}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendUnrecognisedMessage()V

    .line 101
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 102
    return-void

    .line 96
    :sswitch_0
    nop

    .line 106
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v6, 0x4

    sparse-switch v1, :sswitch_data_1

    .line 122
    invoke-direct {p0}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendUnrecognisedMessage()V

    .line 125
    return-void

    .line 115
    :sswitch_1
    const/16 v1, 0x29

    .line 116
    .local v1, "responseCode":I
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "recievedString":Ljava/lang/String;
    iget-object v5, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v5, v2}, Lcom/withsecure/example/sieve/service/AuthService;->access$600(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v4, v5

    .line 118
    .local v4, "returnVal":I
    invoke-direct {p0, v6, v1, v4, v3}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendResponseMessage(IIILandroid/os/Bundle;)V

    .line 119
    return-void

    .line 108
    .end local v1    # "responseCode":I
    .end local v2    # "recievedString":Ljava/lang/String;
    .end local v4    # "returnVal":I
    :sswitch_2
    const/16 v1, 0x2a

    .line 109
    .restart local v1    # "responseCode":I
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "recievedString":Ljava/lang/String;
    iget-object v5, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v5, v2}, Lcom/withsecure/example/sieve/service/AuthService;->access$500(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z

    move-result v5

    xor-int/2addr v4, v5

    .line 111
    .restart local v4    # "returnVal":I
    invoke-direct {p0, v6, v1, v4, v3}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendResponseMessage(IIILandroid/os/Bundle;)V

    .line 112
    return-void

    .line 57
    .end local v1    # "responseCode":I
    .end local v2    # "recievedString":Ljava/lang/String;
    .end local v4    # "returnVal":I
    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x5

    sparse-switch v1, :sswitch_data_2

    .line 76
    invoke-direct {p0}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendUnrecognisedMessage()V

    .line 77
    return-void

    .line 73
    :sswitch_4
    nop

    .line 81
    const/16 v1, 0x29

    .line 82
    .restart local v1    # "responseCode":I
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .restart local v2    # "recievedString":Ljava/lang/String;
    iget-object v4, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v4, v2}, Lcom/withsecure/example/sieve/service/AuthService;->access$300(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v0, v4

    .line 85
    iget-object v4, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v4}, Lcom/withsecure/example/sieve/service/AuthService;->access$400(Lcom/withsecure/example/sieve/service/AuthService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v4, 0x0

    .restart local v4    # "returnVal":I
    goto :goto_0

    .line 89
    .end local v4    # "returnVal":I
    :cond_0
    const/4 v4, 0x1

    .line 92
    .restart local v4    # "returnVal":I
    :goto_0
    invoke-direct {p0, v3, v1, v4, v0}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendResponseMessage(IIILandroid/os/Bundle;)V

    .line 93
    return-void

    .line 59
    .end local v1    # "responseCode":I
    .end local v2    # "recievedString":Ljava/lang/String;
    .end local v4    # "returnVal":I
    :sswitch_5
    const/16 v1, 0x2a

    .line 60
    .restart local v1    # "responseCode":I
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .restart local v2    # "recievedString":Ljava/lang/String;
    iget-object v4, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v4, v2}, Lcom/withsecure/example/sieve/service/AuthService;->access$100(Lcom/withsecure/example/sieve/service/AuthService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    iget-object v4, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-static {v4}, Lcom/withsecure/example/sieve/service/AuthService;->access$200(Lcom/withsecure/example/sieve/service/AuthService;)V

    .line 63
    const/4 v4, 0x0

    .restart local v4    # "returnVal":I
    goto :goto_1

    .line 66
    .end local v4    # "returnVal":I
    :cond_1
    const/4 v4, 0x1

    .line 69
    .restart local v4    # "returnVal":I
    :goto_1
    invoke-direct {p0, v3, v1, v4, v0}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendResponseMessage(IIILandroid/os/Bundle;)V

    .line 70
    return-void

    .line 43
    .end local v1    # "responseCode":I
    .end local v2    # "recievedString":Ljava/lang/String;
    .end local v4    # "returnVal":I
    :sswitch_6
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/service/AuthService;->checkKeyExists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 44
    const/16 v1, 0x21

    .restart local v1    # "responseCode":I
    goto :goto_2

    .line 46
    .end local v1    # "responseCode":I
    :cond_2
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthService;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/service/AuthService;->checkPinExists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    const/16 v1, 0x1f

    .restart local v1    # "responseCode":I
    goto :goto_2

    .line 50
    .end local v1    # "responseCode":I
    :cond_3
    const/16 v1, 0x20

    .line 53
    .restart local v1    # "responseCode":I
    :goto_2
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1, v4, v3}, Lcom/withsecure/example/sieve/service/AuthService$MessageHandler;->sendResponseMessage(IIILandroid/os/Bundle;)V

    .line 54
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x932 -> :sswitch_3
        0x18c9 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1d1c -> :sswitch_2
        0x2412 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1d1c -> :sswitch_5
        0x2412 -> :sswitch_4
    .end sparse-switch
.end method
