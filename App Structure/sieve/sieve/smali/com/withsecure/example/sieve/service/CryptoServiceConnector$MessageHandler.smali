.class Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;
.super Landroid/os/Handler;
.source "CryptoServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/withsecure/example/sieve/service/CryptoServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;


# direct methods
.method constructor <init>(Lcom/withsecure/example/sieve/service/CryptoServiceConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    .line 14
    iput-object p1, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 17
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 42
    return-void

    .line 36
    :sswitch_0
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    iget-object v0, v0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    invoke-interface {v0}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;->sendFailed()V

    .line 37
    return-void

    .line 19
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    const-string v1, "com.withsecure.example.sieve.RESULT"

    packed-switch v0, :pswitch_data_0

    .line 28
    return-void

    .line 25
    :pswitch_0
    nop

    .line 32
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    iget-object v0, v0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;->decryptionReturned(Ljava/lang/String;I)V

    .line 33
    return-void

    .line 21
    :pswitch_1
    iget-object v0, p0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$MessageHandler;->this$0:Lcom/withsecure/example/sieve/service/CryptoServiceConnector;

    iget-object v0, v0, Lcom/withsecure/example/sieve/service/CryptoServiceConnector;->activity:Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/withsecure/example/sieve/service/CryptoServiceConnector$ResponseListener;->encryptionReturned([BI)V

    .line 22
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0x1b207 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
