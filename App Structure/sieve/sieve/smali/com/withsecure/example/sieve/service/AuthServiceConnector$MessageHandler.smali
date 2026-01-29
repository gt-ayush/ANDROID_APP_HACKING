.class Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;
.super Landroid/os/Handler;
.source "AuthServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/withsecure/example/sieve/service/AuthServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;


# direct methods
.method constructor <init>(Lcom/withsecure/example/sieve/service/AuthServiceConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    .line 14
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 17
    const/4 v0, 0x1

    .line 18
    .local v0, "z":Z
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, ", arg1: "

    const-string v3, "Error: Recieved unrecognised Message, what: "

    const-string v4, "m_AuthServiceConnector"

    sparse-switch v1, :sswitch_data_0

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 78
    :sswitch_0
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, v1, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    invoke-interface {v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->sendFailed()V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 51
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    .line 65
    return-void

    .line 62
    :pswitch_0
    nop

    .line 69
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, v1, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    .line 70
    .local v1, "authServiceConnector$ResponseListener3":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 74
    :cond_0
    invoke-interface {v1, v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->checkKeyResult(Z)V

    .line 75
    return-void

    .line 53
    .end local v1    # "authServiceConnector$ResponseListener3":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    :pswitch_1
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, v1, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    .line 54
    .local v1, "authServiceConnector$ResponseListener2":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_1

    .line 55
    const/4 v0, 0x0

    .line 58
    :cond_1
    invoke-interface {v1, v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->checkPinResult(Z)V

    .line 59
    return-void

    .line 24
    .end local v1    # "authServiceConnector$ResponseListener2":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    .line 38
    return-void

    .line 35
    :pswitch_2
    nop

    .line 42
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, v1, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    .line 43
    .local v1, "authServiceConnector$ResponseListener1":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    .line 44
    const/4 v0, 0x0

    .line 47
    :cond_2
    invoke-interface {v1, v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->setKeyResult(Z)V

    .line 48
    return-void

    .line 26
    .end local v1    # "authServiceConnector$ResponseListener1":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    :pswitch_3
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, v1, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    .line 27
    .local v1, "authServiceConnector$ResponseListener0":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_3

    .line 28
    const/4 v0, 0x0

    .line 31
    :cond_3
    invoke-interface {v1, v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->setPinResult(Z)V

    .line 32
    return-void

    .line 20
    .end local v1    # "authServiceConnector$ResponseListener0":Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;
    :sswitch_3
    iget-object v1, p0, Lcom/withsecure/example/sieve/service/AuthServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, v1, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->activity:Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;->firstLaunchResult(I)V

    .line 21
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_1
        0x1b207 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x29
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
