.class public final Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;
.super Ljava/lang/Object;
.source "ActivityShortLoginBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final shortloginButtonSubmit:Landroid/widget/Button;

.field public final shortloginEdittextEntry:Landroid/widget/EditText;

.field public final shortloginTextviewPrompt:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "shortloginButtonSubmit"    # Landroid/widget/Button;
    .param p3, "shortloginEdittextEntry"    # Landroid/widget/EditText;
    .param p4, "shortloginTextviewPrompt"    # Landroid/widget/TextView;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 37
    iput-object p2, p0, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->shortloginButtonSubmit:Landroid/widget/Button;

    .line 38
    iput-object p3, p0, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->shortloginEdittextEntry:Landroid/widget/EditText;

    .line 39
    iput-object p4, p0, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->shortloginTextviewPrompt:Landroid/widget/TextView;

    .line 40
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 69
    sget v0, Lcom/withsecure/example/sieve/R$id;->shortlogin_button_submit:I

    .line 70
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 71
    .local v1, "shortloginButtonSubmit":Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 75
    sget v0, Lcom/withsecure/example/sieve/R$id;->shortlogin_edittext_entry:I

    .line 76
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 77
    .local v2, "shortloginEdittextEntry":Landroid/widget/EditText;
    if-eqz v2, :cond_1

    .line 81
    sget v0, Lcom/withsecure/example/sieve/R$id;->shortlogin_textview_prompt:I

    .line 82
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 83
    .local v3, "shortloginTextviewPrompt":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 87
    new-instance v4, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;

    move-object v5, p0

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-direct {v4, v5, v1, v2, v3}, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v4

    .line 84
    :cond_0
    goto :goto_0

    .line 78
    .end local v3    # "shortloginTextviewPrompt":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 72
    .end local v2    # "shortloginEdittextEntry":Landroid/widget/EditText;
    :cond_2
    nop

    .line 90
    .end local v1    # "shortloginButtonSubmit":Landroid/widget/Button;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 56
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_short_login:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 60
    :cond_0
    invoke-static {v0}, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/withsecure/example/sieve/databinding/ActivityShortLoginBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
