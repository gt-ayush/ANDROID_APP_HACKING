.class public final Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;
.super Ljava/lang/Object;
.source "ActivityWelcomeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/RelativeLayout;

.field public final textView1:Landroid/widget/TextView;

.field public final textViewWelcomePassword:Landroid/widget/TextView;

.field public final textViewWelcomePasswordAgain:Landroid/widget/TextView;

.field public final welcomeButtonSubmit:Landroid/widget/Button;

.field public final welcomeEdittextPassword:Landroid/widget/EditText;

.field public final welcomeEdittextPasswordagain:Landroid/widget/EditText;

.field public final welcomeTextviewPrompt:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "textView1"    # Landroid/widget/TextView;
    .param p3, "textViewWelcomePassword"    # Landroid/widget/TextView;
    .param p4, "textViewWelcomePasswordAgain"    # Landroid/widget/TextView;
    .param p5, "welcomeButtonSubmit"    # Landroid/widget/Button;
    .param p6, "welcomeEdittextPassword"    # Landroid/widget/EditText;
    .param p7, "welcomeEdittextPasswordagain"    # Landroid/widget/EditText;
    .param p8, "welcomeTextviewPrompt"    # Landroid/widget/TextView;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 50
    iput-object p2, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->textView1:Landroid/widget/TextView;

    .line 51
    iput-object p3, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->textViewWelcomePassword:Landroid/widget/TextView;

    .line 52
    iput-object p4, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->textViewWelcomePasswordAgain:Landroid/widget/TextView;

    .line 53
    iput-object p5, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->welcomeButtonSubmit:Landroid/widget/Button;

    .line 54
    iput-object p6, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->welcomeEdittextPassword:Landroid/widget/EditText;

    .line 55
    iput-object p7, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->welcomeEdittextPasswordagain:Landroid/widget/EditText;

    .line 56
    iput-object p8, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->welcomeTextviewPrompt:Landroid/widget/TextView;

    .line 57
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;
    .locals 19
    .param p0, "rootView"    # Landroid/view/View;

    .line 86
    move-object/from16 v0, p0

    sget v1, Lcom/withsecure/example/sieve/R$id;->textView1:I

    .line 87
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, "textView1":Landroid/widget/TextView;
    if-eqz v2, :cond_6

    .line 92
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_welcome_password:I

    .line 93
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/widget/TextView;

    .line 94
    .local v12, "textViewWelcomePassword":Landroid/widget/TextView;
    if-eqz v12, :cond_5

    .line 98
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_welcome_password_again:I

    .line 99
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/TextView;

    .line 100
    .local v13, "textViewWelcomePasswordAgain":Landroid/widget/TextView;
    if-eqz v13, :cond_4

    .line 104
    sget v1, Lcom/withsecure/example/sieve/R$id;->welcome_button_submit:I

    .line 105
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/Button;

    .line 106
    .local v14, "welcomeButtonSubmit":Landroid/widget/Button;
    if-eqz v14, :cond_3

    .line 110
    sget v1, Lcom/withsecure/example/sieve/R$id;->welcome_edittext_password:I

    .line 111
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/EditText;

    .line 112
    .local v15, "welcomeEdittextPassword":Landroid/widget/EditText;
    if-eqz v15, :cond_2

    .line 116
    sget v1, Lcom/withsecure/example/sieve/R$id;->welcome_edittext_passwordagain:I

    .line 117
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/EditText;

    .line 118
    .local v16, "welcomeEdittextPasswordagain":Landroid/widget/EditText;
    if-eqz v16, :cond_1

    .line 122
    sget v1, Lcom/withsecure/example/sieve/R$id;->welcome_textview_prompt:I

    .line 123
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/TextView;

    .line 124
    .local v17, "welcomeTextviewPrompt":Landroid/widget/TextView;
    if-eqz v17, :cond_0

    .line 128
    new-instance v18, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v18

    move-object v5, v2

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    invoke-direct/range {v3 .. v11}, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    return-object v18

    .line 125
    :cond_0
    goto :goto_0

    .line 119
    .end local v17    # "welcomeTextviewPrompt":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 113
    .end local v16    # "welcomeEdittextPasswordagain":Landroid/widget/EditText;
    :cond_2
    goto :goto_0

    .line 107
    .end local v15    # "welcomeEdittextPassword":Landroid/widget/EditText;
    :cond_3
    goto :goto_0

    .line 101
    .end local v14    # "welcomeButtonSubmit":Landroid/widget/Button;
    :cond_4
    goto :goto_0

    .line 95
    .end local v13    # "textViewWelcomePasswordAgain":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 89
    .end local v12    # "textViewWelcomePassword":Landroid/widget/TextView;
    :cond_6
    nop

    .line 132
    .end local v2    # "textView1":Landroid/widget/TextView;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 73
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_welcome:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 77
    :cond_0
    invoke-static {v0}, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/withsecure/example/sieve/databinding/ActivityWelcomeBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
