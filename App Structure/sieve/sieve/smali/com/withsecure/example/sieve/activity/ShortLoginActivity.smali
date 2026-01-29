.class public Lcom/withsecure/example/sieve/activity/ShortLoginActivity;
.super Landroid/app/Activity;
.source "ShortLoginActivity.java"

# interfaces
.implements Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "m_ShortLogin"


# instance fields
.field private connectionError:Landroid/app/AlertDialog$Builder;

.field private mainKey:Ljava/lang/String;

.field private prompt:Landroid/widget/TextView;

.field private pwEntry:Landroid/widget/EditText;

.field private serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

.field private submitButton:Landroid/widget/Button;

.field private workingPIN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->workingPIN:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->mainKey:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 98
    return-void
.end method

.method private unbind()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 138
    return-void
.end method


# virtual methods
.method public checkKeyResult(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 44
    const-string v0, "m_ShortLogin"

    const-string v1, "called checkKeyResult?"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public checkPinResult(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->loginSuccessful()V

    .line 51
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->loginFailed()V

    .line 55
    return-void
.end method

.method public connected()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->submitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    return-void
.end method

.method public firstLaunchResult(I)V
    .locals 2
    .param p1, "status"    # I

    .line 64
    const-string v0, "m_ShortLogin"

    const-string v1, "called firstLaunchResult?"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public loginFailed()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->prompt:Landroid/widget/TextView;

    sget v1, Lcom/withsecure/example/sieve/R$string;->error_incorrect_password:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->submitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 70
    return-void
.end method

.method public loginSuccessful()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->submitButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/PWList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.withsecure.example.sieve.KEY"

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->mainKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_short_login:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->setContentView(I)V

    .line 90
    new-instance v0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    invoke-direct {v0, p0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;-><init>(Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    .line 91
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.withsecure.example.sieve.PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->mainKey:Ljava/lang/String;

    .line 92
    sget v0, Lcom/withsecure/example/sieve/R$id;->shortlogin_edittext_entry:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->pwEntry:Landroid/widget/EditText;

    .line 93
    sget v0, Lcom/withsecure/example/sieve/R$id;->shortlogin_textview_prompt:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->prompt:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/withsecure/example/sieve/R$id;->shortlogin_button_submit:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->submitButton:Landroid/widget/Button;

    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    .line 96
    sget v1, Lcom/withsecure/example/sieve/R$string;->service_error_cantconnect:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/ShortLoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 105
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->unbind()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/service/AuthService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 112
    return-void
.end method

.method public sendFailed()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->connectionError:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 117
    return-void
.end method

.method public setKeyResult(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 121
    const-string v0, "m_ShortLogin"

    const-string v1, "called setKeyResult?"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method

.method public setPinResult(Z)V
    .locals 2
    .param p1, "status"    # Z

    .line 126
    const-string v0, "m_ShortLogin"

    const-string v1, "called setPinResult?"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public submit(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->pwEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->workingPIN:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user has entered a pin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->workingPIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_ShortLogin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->workingPIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->checkPin(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;->submitButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    return-void
.end method
