.class public Lcom/withsecure/example/sieve/activity/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"


# static fields
.field public static final PASS:Ljava/lang/String; = "com.withsecure.example.sieve.PASS"

.field public static final PERMISSIONS_CODE:I = 0x3ea


# instance fields
.field private entryOne:Landroid/widget/EditText;

.field private entryTwo:Landroid/widget/EditText;

.field private prompt:Landroid/widget/TextView;

.field resultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->finishAffinity()V

    .line 31
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_welcome:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->setContentView(I)V

    .line 39
    sget v0, Lcom/withsecure/example/sieve/R$id;->welcome_edittext_password:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->entryOne:Landroid/widget/EditText;

    .line 40
    sget v0, Lcom/withsecure/example/sieve/R$id;->welcome_edittext_passwordagain:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->entryTwo:Landroid/widget/EditText;

    .line 41
    sget v0, Lcom/withsecure/example/sieve/R$id;->welcome_textview_prompt:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->prompt:Landroid/widget/TextView;

    .line 42
    return-void
.end method

.method public submit(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->entryOne:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->entryTwo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "s1":Ljava/lang/String;
    const-string v2, "[a-zA-Z0-9]+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 48
    .local v2, "z":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/withsecure/example/sieve/activity/MainLoginActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->resultIntent:Landroid/content/Intent;

    .line 52
    const-string v4, "com.withsecure.example.sieve.PASS"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->setResult(ILandroid/content/Intent;)V

    .line 54
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->finish()V

    .line 55
    return-void

    .line 58
    :cond_0
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->prompt:Landroid/widget/TextView;

    sget v4, Lcom/withsecure/example/sieve/R$string;->text_view_password_dontmatch:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 59
    return-void

    .line 62
    :cond_1
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->prompt:Landroid/widget/TextView;

    sget v4, Lcom/withsecure/example/sieve/R$string;->text_view_password_notstandard:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 63
    return-void

    .line 66
    :cond_2
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/WelcomeActivity;->prompt:Landroid/widget/TextView;

    sget v4, Lcom/withsecure/example/sieve/R$string;->text_view_password_tooshort:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 68
    return-void
.end method
