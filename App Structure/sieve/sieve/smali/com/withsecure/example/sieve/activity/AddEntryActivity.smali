.class public Lcom/withsecure/example/sieve/activity/AddEntryActivity;
.super Landroid/app/Activity;
.source "AddEntryActivity.java"


# static fields
.field public static final ENTRY:Ljava/lang/String; = "com.withsecure.example.sieve.ENTRY"

.field public static final REQUEST:Ljava/lang/String; = "com.withsecure.example.sieve.REQUEST"

.field public static final REQUEST_ADD:I = 0x110d

.field public static final REQUEST_EDIT:I = 0x92a

.field private static final TAG:Ljava/lang/String; = "m_AddEntry"


# instance fields
.field ausDelete:Landroid/app/AlertDialog$Builder;

.field private editEmail:Landroid/widget/EditText;

.field private editPassword:Landroid/widget/EditText;

.field private editPasswordAgain:Landroid/widget/EditText;

.field private editService:Landroid/widget/EditText;

.field private editUsername:Landroid/widget/EditText;

.field private prompt:Landroid/widget/TextView;

.field private requestCode:I

.field resultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->requestCode:I

    .line 35
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/PWList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->resultIntent:Landroid/content/Intent;

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->finish()V

    .line 41
    return-void
.end method

.method private fillData(Lcom/withsecure/example/sieve/util/PasswordEntry;)V
    .locals 2
    .param p1, "pe"    # Lcom/withsecure/example/sieve/util/PasswordEntry;

    .line 44
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editService:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editUsername:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editEmail:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/withsecure/example/sieve/util/PasswordEntry;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editPassword:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editPasswordAgain:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method static synthetic lambda$onCreate$4(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "arg0"    # Landroid/content/DialogInterface;
    .param p1, "arg1"    # I

    .line 84
    return-void
.end method

.method private returnForDelete()V
    .locals 2

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/PWList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->resultIntent:Landroid/content/Intent;

    .line 99
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 100
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->finish()V

    .line 101
    return-void
.end method

.method private returnToActivity()V
    .locals 8

    .line 104
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editService:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editUsername:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "s1":Ljava/lang/String;
    iget-object v2, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editEmail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "s2":Ljava/lang/String;
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "s3":Ljava/lang/String;
    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "s4":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->prompt:Landroid/widget/TextView;

    sget v6, Lcom/withsecure/example/sieve/R$string;->error_incorrect_password:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 115
    iget-object v5, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->prompt:Landroid/widget/TextView;

    sget v6, Lcom/withsecure/example/sieve/R$string;->text_view_password_dontmatch:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 116
    return-void

    .line 119
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    .line 120
    iget-object v5, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->prompt:Landroid/widget/TextView;

    sget v6, Lcom/withsecure/example/sieve/R$string;->error_incorrect_password:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 121
    return-void

    .line 124
    :cond_2
    iget-object v5, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->resultIntent:Landroid/content/Intent;

    new-instance v6, Lcom/withsecure/example/sieve/util/PasswordEntry;

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/withsecure/example/sieve/util/PasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "com.withsecure.example.sieve.ENTRY"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    const/4 v5, -0x1

    iget-object v6, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v5, v6}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->finish()V

    .line 127
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->ausDelete:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 135
    return-void
.end method

.method synthetic lambda$onCreate$0$com-withsecure-example-sieve-activity-AddEntryActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->save()V

    .line 63
    return-void
.end method

.method synthetic lambda$onCreate$1$com-withsecure-example-sieve-activity-AddEntryActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->delete()V

    .line 67
    return-void
.end method

.method synthetic lambda$onCreate$2$com-withsecure-example-sieve-activity-AddEntryActivity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 70
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->cancel()V

    .line 71
    return-void
.end method

.method synthetic lambda$onCreate$3$com-withsecure-example-sieve-activity-AddEntryActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .line 82
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->returnForDelete()V

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->cancel()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_add_entry:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->setContentView(I)V

    .line 61
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_button_save:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda0;-><init>(Lcom/withsecure/example/sieve/activity/AddEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_button_delete:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda1;-><init>(Lcom/withsecure/example/sieve/activity/AddEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_button_cancel:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda2;-><init>(Lcom/withsecure/example/sieve/activity/AddEntryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_service:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editService:Landroid/widget/EditText;

    .line 75
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_username:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editUsername:Landroid/widget/EditText;

    .line 76
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_email:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editEmail:Landroid/widget/EditText;

    .line 77
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_password:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editPassword:Landroid/widget/EditText;

    .line 78
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_passwordagain:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->editPasswordAgain:Landroid/widget/EditText;

    .line 79
    sget v0, Lcom/withsecure/example/sieve/R$id;->addentry_textview_prompt:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->prompt:Landroid/widget/TextView;

    .line 80
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->ausDelete:Landroid/app/AlertDialog$Builder;

    .line 81
    sget v1, Lcom/withsecure/example/sieve/R$string;->addentry_confirm_delete:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 82
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->ausDelete:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda3;-><init>(Lcom/withsecure/example/sieve/activity/AddEntryActivity;)V

    const-string v2, "Yes"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 83
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->ausDelete:Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/withsecure/example/sieve/activity/AddEntryActivity$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "No"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 85
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->ausDelete:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 86
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->resultIntent:Landroid/content/Intent;

    .line 87
    if-nez v0, :cond_0

    .line 88
    const-string v0, "m_AddEntry"

    const-string v1, "requestIntent = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->resultIntent:Landroid/content/Intent;

    const-string v1, "com.withsecure.example.sieve.REQUEST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->requestCode:I

    .line 92
    const/16 v1, 0x92a

    if-ne v0, v1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->resultIntent:Landroid/content/Intent;

    const-string v1, "com.withsecure.example.sieve.ENTRY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/withsecure/example/sieve/util/PasswordEntry;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lcom/withsecure/example/sieve/util/PasswordEntry;

    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->fillData(Lcom/withsecure/example/sieve/util/PasswordEntry;)V

    .line 95
    :cond_1
    return-void
.end method

.method public save()V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/AddEntryActivity;->returnToActivity()V

    .line 131
    return-void
.end method
