.class public final Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;
.super Ljava/lang/Object;
.source "ActivityMainLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final mainloginButtonLogin:Landroid/widget/Button;

.field public final mainloginButtonSettings:Landroid/widget/Button;

.field public final mainloginEdittextEntry:Landroid/widget/EditText;

.field public final mainloginTextviewPrompt:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "mainloginButtonLogin"    # Landroid/widget/Button;
    .param p3, "mainloginButtonSettings"    # Landroid/widget/Button;
    .param p4, "mainloginEdittextEntry"    # Landroid/widget/EditText;
    .param p5, "mainloginTextviewPrompt"    # Landroid/widget/TextView;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 40
    iput-object p2, p0, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->mainloginButtonLogin:Landroid/widget/Button;

    .line 41
    iput-object p3, p0, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->mainloginButtonSettings:Landroid/widget/Button;

    .line 42
    iput-object p4, p0, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->mainloginEdittextEntry:Landroid/widget/EditText;

    .line 43
    iput-object p5, p0, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->mainloginTextviewPrompt:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;
    .locals 12
    .param p0, "rootView"    # Landroid/view/View;

    .line 73
    sget v0, Lcom/withsecure/example/sieve/R$id;->mainlogin_button_login:I

    .line 74
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 75
    .local v1, "mainloginButtonLogin":Landroid/widget/Button;
    if-eqz v1, :cond_3

    .line 79
    sget v0, Lcom/withsecure/example/sieve/R$id;->mainlogin_button_settings:I

    .line 80
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Button;

    .line 81
    .local v8, "mainloginButtonSettings":Landroid/widget/Button;
    if-eqz v8, :cond_2

    .line 85
    sget v0, Lcom/withsecure/example/sieve/R$id;->mainlogin_edittext_entry:I

    .line 86
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    .line 87
    .local v9, "mainloginEdittextEntry":Landroid/widget/EditText;
    if-eqz v9, :cond_1

    .line 91
    sget v0, Lcom/withsecure/example/sieve/R$id;->mainlogin_textview_prompt:I

    .line 92
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    .line 93
    .local v10, "mainloginTextviewPrompt":Landroid/widget/TextView;
    if-eqz v10, :cond_0

    .line 97
    new-instance v11, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v11

    move-object v4, v1

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v11

    .line 94
    :cond_0
    goto :goto_0

    .line 88
    .end local v10    # "mainloginTextviewPrompt":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 82
    .end local v9    # "mainloginEdittextEntry":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 76
    .end local v8    # "mainloginButtonSettings":Landroid/widget/Button;
    :cond_3
    nop

    .line 100
    .end local v1    # "mainloginButtonLogin":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 54
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 60
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_main_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/withsecure/example/sieve/databinding/ActivityMainLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
