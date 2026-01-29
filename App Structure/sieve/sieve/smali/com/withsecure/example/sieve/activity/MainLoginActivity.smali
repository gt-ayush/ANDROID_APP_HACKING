.class public Lcom/withsecure/example/sieve/activity/MainLoginActivity;
.super Landroid/app/Activity;
.source "MainLoginActivity.java"

# interfaces
.implements Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;


# static fields
.field private static final IS_AUTHENTICATED:I = 0x44fdab

.field public static final MAIN_PIN:I = 0x2

.field public static final MAIN_SETTINGS:I = 0x3

.field public static final MAIN_WELCOME:I = 0x1

.field private static final NOT_AUTHENTICATED:I = 0x9fe8b

.field private static final NOT_INITALISED:I = 0xe1750

.field private static final TAG:Ljava/lang/String; = "m_MainLogin"


# instance fields
.field entry:Landroid/widget/EditText;

.field login_button:Landroid/widget/Button;

.field prompt:Landroid/widget/TextView;

.field private serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

.field private state:I

.field private workingIntent:Landroid/content/Intent;

.field private workingPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const v0, 0xe1750

    iput v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->state:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingPassword:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingIntent:Landroid/content/Intent;

    .line 47
    return-void
.end method

.method private initaliseActivity()V
    .locals 1

    .line 89
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_main_login:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->setContentView(I)V

    .line 90
    sget v0, Lcom/withsecure/example/sieve/R$id;->mainlogin_edittext_entry:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->entry:Landroid/widget/EditText;

    .line 91
    sget v0, Lcom/withsecure/example/sieve/R$id;->mainlogin_button_login:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->login_button:Landroid/widget/Button;

    .line 92
    sget v0, Lcom/withsecure/example/sieve/R$id;->mainlogin_textview_prompt:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->prompt:Landroid/widget/TextView;

    .line 93
    return-void
.end method

.method static synthetic lambda$sendFailed$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 201
    return-void
.end method

.method private loginFailed()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->prompt:Landroid/widget/TextView;

    sget v1, Lcom/withsecure/example/sieve/R$string;->error_incorrect_password:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->login_button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    return-void
.end method

.method private loginSuccessful()V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->login_button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/PWList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.withsecure.example.sieve.KEY"

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    const v1, 0x44fdab

    iput v1, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->state:I

    .line 117
    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method private openSettings()V
    .locals 2

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 196
    return-void
.end method

.method private setPin()V
    .locals 3

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/PINActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.withsecure.example.sieve.REQUEST"

    const v2, 0x69b5b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 215
    return-void
.end method

.method private unbind()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 226
    return-void
.end method

.method private welcomeUser()V
    .locals 2

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/WelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 230
    return-void
.end method


# virtual methods
.method public checkKeyResult(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->loginSuccessful()V

    .line 53
    return-void

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->loginFailed()V

    .line 57
    return-void
.end method

.method public checkPinResult(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 61
    return-void
.end method

.method public connected()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    invoke-virtual {v0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->checkFirstLaunch()V

    .line 66
    return-void
.end method

.method public firstLaunchResult(I)V
    .locals 0
    .param p1, "status"    # I

    .line 70
    packed-switch p1, :pswitch_data_0

    .line 86
    return-void

    .line 80
    :pswitch_0
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->welcomeUser()V

    .line 81
    return-void

    .line 76
    :pswitch_1
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->setPin()V

    .line 77
    return-void

    .line 72
    :pswitch_2
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->initaliseActivity()V

    .line 73
    return-void

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public login(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->entry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingPassword:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String enetered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m_MainLogin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->checkKey(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->login_button:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 135
    return-void

    .line 125
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 126
    iput-object p3, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingIntent:Landroid/content/Intent;

    .line 127
    return-void

    .line 130
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 148
    new-instance v0, Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    invoke-direct {v0, p0}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;-><init>(Lcom/withsecure/example/sieve/service/AuthServiceConnector$ResponseListener;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    .line 149
    const v0, 0x9fe8b

    iput v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->state:I

    .line 150
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 155
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->unbind()V

    .line 156
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/service/AuthService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 162
    iget v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->state:I

    sparse-switch v0, :sswitch_data_0

    .line 186
    return-void

    .line 180
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/ShortLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.withsecure.example.sieve.PASSWORD"

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingPassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 181
    return-void

    .line 165
    :sswitch_1
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2

    .line 166
    const-string v1, "com.withsecure.example.sieve.PASS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->setKey(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingIntent:Landroid/content/Intent;

    const-string v1, "com.withsecure.example.sieve.PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->serviceConnection:Lcom/withsecure/example/sieve/service/AuthServiceConnector;

    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/withsecure/example/sieve/service/AuthServiceConnector;->setPin(Ljava/lang/String;)V

    .line 173
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->workingIntent:Landroid/content/Intent;

    .line 174
    return-void

    .line 177
    :cond_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x9fe8b -> :sswitch_1
        0xe1750 -> :sswitch_1
        0x44fdab -> :sswitch_0
    .end sparse-switch
.end method

.method protected onStart()V
    .locals 2

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/service/AuthService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    return-void
.end method

.method public sendFailed()V
    .locals 3

    .line 200
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/withsecure/example/sieve/R$string;->service_error_cantconnect:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/withsecure/example/sieve/activity/MainLoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/withsecure/example/sieve/activity/MainLoginActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    return-void
.end method

.method public setKeyResult(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 206
    if-nez p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->sendFailed()V

    .line 209
    :cond_0
    return-void
.end method

.method public setPinResult(Z)V
    .locals 0
    .param p1, "status"    # Z

    .line 219
    if-nez p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->sendFailed()V

    .line 222
    :cond_0
    return-void
.end method

.method public settings_login(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 103
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/MainLoginActivity;->openSettings()V

    .line 104
    return-void
.end method
