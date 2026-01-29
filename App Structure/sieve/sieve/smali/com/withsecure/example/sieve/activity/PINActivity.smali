.class public Lcom/withsecure/example/sieve/activity/PINActivity;
.super Landroid/app/Activity;
.source "PINActivity.java"


# static fields
.field public static final REQUEST:Ljava/lang/String; = "com.withsecure.example.sieve.REQUEST"

.field public static final REQUEST_ADD:I = 0x69b5b

.field public static final REQUEST_EDIT:I = 0x169db


# instance fields
.field private currentPIN:Ljava/lang/String;

.field private entryOne:Landroid/widget/EditText;

.field private entryThree:Landroid/widget/EditText;

.field private entryTwo:Landroid/widget/EditText;

.field private prompt:Landroid/widget/TextView;

.field private requestCode:I

.field resultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->currentPIN:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/MainLoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->resultIntent:Landroid/content/Intent;

    .line 34
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/withsecure/example/sieve/activity/PINActivity;->setResult(ILandroid/content/Intent;)V

    .line 35
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PINActivity;->finish()V

    .line 36
    return-void
.end method

.method private submitEdit()V
    .locals 6

    .line 82
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryOne:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryTwo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "s1":Ljava/lang/String;
    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryThree:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "s2":Ljava/lang/String;
    const-string v3, "[^0-9]"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    .line 86
    .local v3, "z":Z
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->currentPIN:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 87
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 88
    if-nez v3, :cond_1

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/withsecure/example/sieve/activity/MainLoginActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v4, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->resultIntent:Landroid/content/Intent;

    .line 91
    const-string v5, "com.withsecure.example.sieve.PIN"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v4, v5}, Lcom/withsecure/example/sieve/activity/PINActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PINActivity;->finish()V

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    sget v5, Lcom/withsecure/example/sieve/R$string;->text_view_pin_dontmatch:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 98
    return-void

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    sget v5, Lcom/withsecure/example/sieve/R$string;->text_view_pin_notstandard:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 102
    return-void

    .line 105
    :cond_2
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    sget v5, Lcom/withsecure/example/sieve/R$string;->text_view_pin_tooshort:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 106
    return-void

    .line 109
    :cond_3
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    sget v5, Lcom/withsecure/example/sieve/R$string;->text_view_pin_notold:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 110
    return-void
.end method

.method private submitEntry()V
    .locals 5

    .line 113
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryOne:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryTwo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "s1":Ljava/lang/String;
    const-string v2, "[^0-9]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 116
    .local v2, "z":Z
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 117
    if-nez v2, :cond_1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/withsecure/example/sieve/activity/MainLoginActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v3, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->resultIntent:Landroid/content/Intent;

    .line 120
    const-string v4, "com.withsecure.example.sieve.PIN"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v4}, Lcom/withsecure/example/sieve/activity/PINActivity;->setResult(ILandroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PINActivity;->finish()V

    .line 123
    return-void

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    sget v4, Lcom/withsecure/example/sieve/R$string;->text_view_pin_dontmatch:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 127
    return-void

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    sget v4, Lcom/withsecure/example/sieve/R$string;->text_view_pin_notstandard:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 131
    return-void

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    sget v4, Lcom/withsecure/example/sieve/R$string;->text_view_pin_tooshort:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 135
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PINActivity;->cancel()V

    .line 41
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_pin:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PINActivity;->setContentView(I)V

    .line 47
    sget v0, Lcom/withsecure/example/sieve/R$id;->pinentry_edittext_pin:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryOne:Landroid/widget/EditText;

    .line 48
    sget v0, Lcom/withsecure/example/sieve/R$id;->pinentry_edittext_pinagain:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryTwo:Landroid/widget/EditText;

    .line 49
    sget v0, Lcom/withsecure/example/sieve/R$id;->pinentry_edittext_pinold:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->entryThree:Landroid/widget/EditText;

    .line 50
    sget v0, Lcom/withsecure/example/sieve/R$id;->pinentry_textview_prompt:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->prompt:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/PINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, "intent0":Landroid/content/Intent;
    const-string v1, "com.withsecure.example.sieve.REQUEST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->requestCode:I

    .line 53
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 59
    :sswitch_0
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_pin_password_old:I

    invoke-virtual {p0, v1}, Lcom/withsecure/example/sieve/activity/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 60
    sget v1, Lcom/withsecure/example/sieve/R$id;->pinentry_edittext_pinold:I

    invoke-virtual {p0, v1}, Lcom/withsecure/example/sieve/activity/PINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v1, "com.withsecure.example.sieve.PIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->currentPIN:Ljava/lang/String;

    .line 56
    nop

    .line 64
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x169db -> :sswitch_1
        0x69b5b -> :sswitch_0
    .end sparse-switch
.end method

.method public submit(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 67
    iget v0, p0, Lcom/withsecure/example/sieve/activity/PINActivity;->requestCode:I

    sparse-switch v0, :sswitch_data_0

    .line 79
    return-void

    .line 73
    :sswitch_0
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PINActivity;->submitEntry()V

    .line 74
    return-void

    .line 69
    :sswitch_1
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/PINActivity;->submitEdit()V

    .line 70
    return-void

    :sswitch_data_0
    .sparse-switch
        0x169db -> :sswitch_1
        0x69b5b -> :sswitch_0
    .end sparse-switch
.end method
