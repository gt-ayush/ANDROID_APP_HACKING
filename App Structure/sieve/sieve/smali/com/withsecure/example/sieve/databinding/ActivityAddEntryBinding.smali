.class public final Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;
.super Ljava/lang/Object;
.source "ActivityAddEntryBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final addentryButtonCancel:Landroid/widget/Button;

.field public final addentryButtonDelete:Landroid/widget/Button;

.field public final addentryButtonSave:Landroid/widget/Button;

.field public final addentryEdittextEmail:Landroid/widget/EditText;

.field public final addentryEdittextPassword:Landroid/widget/EditText;

.field public final addentryEdittextPasswordagain:Landroid/widget/EditText;

.field public final addentryEdittextService:Landroid/widget/EditText;

.field public final addentryEdittextUsername:Landroid/widget/EditText;

.field public final addentryTextviewPrompt:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final textViewAddEmail:Landroid/widget/TextView;

.field public final textViewAddPassword:Landroid/widget/TextView;

.field public final textViewAddPasswordAgain:Landroid/widget/TextView;

.field public final textViewAddService:Landroid/widget/TextView;

.field public final textViewAddUsername:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "addentryButtonCancel"    # Landroid/widget/Button;
    .param p3, "addentryButtonDelete"    # Landroid/widget/Button;
    .param p4, "addentryButtonSave"    # Landroid/widget/Button;
    .param p5, "addentryEdittextEmail"    # Landroid/widget/EditText;
    .param p6, "addentryEdittextPassword"    # Landroid/widget/EditText;
    .param p7, "addentryEdittextPasswordagain"    # Landroid/widget/EditText;
    .param p8, "addentryEdittextService"    # Landroid/widget/EditText;
    .param p9, "addentryEdittextUsername"    # Landroid/widget/EditText;
    .param p10, "addentryTextviewPrompt"    # Landroid/widget/TextView;
    .param p11, "textViewAddEmail"    # Landroid/widget/TextView;
    .param p12, "textViewAddPassword"    # Landroid/widget/TextView;
    .param p13, "textViewAddPasswordAgain"    # Landroid/widget/TextView;
    .param p14, "textViewAddService"    # Landroid/widget/TextView;
    .param p15, "textViewAddUsername"    # Landroid/widget/TextView;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 75
    iput-object p2, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryButtonCancel:Landroid/widget/Button;

    .line 76
    iput-object p3, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryButtonDelete:Landroid/widget/Button;

    .line 77
    iput-object p4, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryButtonSave:Landroid/widget/Button;

    .line 78
    iput-object p5, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryEdittextEmail:Landroid/widget/EditText;

    .line 79
    iput-object p6, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryEdittextPassword:Landroid/widget/EditText;

    .line 80
    iput-object p7, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryEdittextPasswordagain:Landroid/widget/EditText;

    .line 81
    iput-object p8, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryEdittextService:Landroid/widget/EditText;

    .line 82
    iput-object p9, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryEdittextUsername:Landroid/widget/EditText;

    .line 83
    iput-object p10, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->addentryTextviewPrompt:Landroid/widget/TextView;

    .line 84
    iput-object p11, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->textViewAddEmail:Landroid/widget/TextView;

    .line 85
    iput-object p12, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->textViewAddPassword:Landroid/widget/TextView;

    .line 86
    iput-object p13, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->textViewAddPasswordAgain:Landroid/widget/TextView;

    .line 87
    iput-object p14, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->textViewAddService:Landroid/widget/TextView;

    .line 88
    iput-object p15, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->textViewAddUsername:Landroid/widget/TextView;

    .line 89
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;
    .locals 33
    .param p0, "rootView"    # Landroid/view/View;

    .line 118
    move-object/from16 v0, p0

    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_button_cancel:I

    .line 119
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 120
    .local v2, "addentryButtonCancel":Landroid/widget/Button;
    if-eqz v2, :cond_d

    .line 124
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_button_delete:I

    .line 125
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/widget/Button;

    .line 126
    .local v19, "addentryButtonDelete":Landroid/widget/Button;
    if-eqz v19, :cond_c

    .line 130
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_button_save:I

    .line 131
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/widget/Button;

    .line 132
    .local v20, "addentryButtonSave":Landroid/widget/Button;
    if-eqz v20, :cond_b

    .line 136
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_email:I

    .line 137
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v21, v3

    check-cast v21, Landroid/widget/EditText;

    .line 138
    .local v21, "addentryEdittextEmail":Landroid/widget/EditText;
    if-eqz v21, :cond_a

    .line 142
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_password:I

    .line 143
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/widget/EditText;

    .line 144
    .local v22, "addentryEdittextPassword":Landroid/widget/EditText;
    if-eqz v22, :cond_9

    .line 148
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_passwordagain:I

    .line 149
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/widget/EditText;

    .line 150
    .local v23, "addentryEdittextPasswordagain":Landroid/widget/EditText;
    if-eqz v23, :cond_8

    .line 154
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_service:I

    .line 155
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v24, v3

    check-cast v24, Landroid/widget/EditText;

    .line 156
    .local v24, "addentryEdittextService":Landroid/widget/EditText;
    if-eqz v24, :cond_7

    .line 160
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_edittext_username:I

    .line 161
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v25, v3

    check-cast v25, Landroid/widget/EditText;

    .line 162
    .local v25, "addentryEdittextUsername":Landroid/widget/EditText;
    if-eqz v25, :cond_6

    .line 166
    sget v1, Lcom/withsecure/example/sieve/R$id;->addentry_textview_prompt:I

    .line 167
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/widget/TextView;

    .line 168
    .local v26, "addentryTextviewPrompt":Landroid/widget/TextView;
    if-eqz v26, :cond_5

    .line 172
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_add_email:I

    .line 173
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/TextView;

    .line 174
    .local v27, "textViewAddEmail":Landroid/widget/TextView;
    if-eqz v27, :cond_4

    .line 178
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_add_password:I

    .line 179
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/widget/TextView;

    .line 180
    .local v28, "textViewAddPassword":Landroid/widget/TextView;
    if-eqz v28, :cond_3

    .line 184
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_add_password_again:I

    .line 185
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/widget/TextView;

    .line 186
    .local v29, "textViewAddPasswordAgain":Landroid/widget/TextView;
    if-eqz v29, :cond_2

    .line 190
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_add_service:I

    .line 191
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v30, v3

    check-cast v30, Landroid/widget/TextView;

    .line 192
    .local v30, "textViewAddService":Landroid/widget/TextView;
    if-eqz v30, :cond_1

    .line 196
    sget v1, Lcom/withsecure/example/sieve/R$id;->text_view_add_username:I

    .line 197
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Landroid/widget/TextView;

    .line 198
    .local v31, "textViewAddUsername":Landroid/widget/TextView;
    if-eqz v31, :cond_0

    .line 202
    new-instance v32, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object/from16 v3, v32

    move-object v5, v2

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v25

    move-object/from16 v13, v26

    move-object/from16 v14, v27

    move-object/from16 v15, v28

    move-object/from16 v16, v29

    move-object/from16 v17, v30

    move-object/from16 v18, v31

    invoke-direct/range {v3 .. v18}, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v32

    .line 199
    :cond_0
    goto :goto_0

    .line 193
    .end local v31    # "textViewAddUsername":Landroid/widget/TextView;
    :cond_1
    goto :goto_0

    .line 187
    .end local v30    # "textViewAddService":Landroid/widget/TextView;
    :cond_2
    goto :goto_0

    .line 181
    .end local v29    # "textViewAddPasswordAgain":Landroid/widget/TextView;
    :cond_3
    goto :goto_0

    .line 175
    .end local v28    # "textViewAddPassword":Landroid/widget/TextView;
    :cond_4
    goto :goto_0

    .line 169
    .end local v27    # "textViewAddEmail":Landroid/widget/TextView;
    :cond_5
    goto :goto_0

    .line 163
    .end local v26    # "addentryTextviewPrompt":Landroid/widget/TextView;
    :cond_6
    goto :goto_0

    .line 157
    .end local v25    # "addentryEdittextUsername":Landroid/widget/EditText;
    :cond_7
    goto :goto_0

    .line 151
    .end local v24    # "addentryEdittextService":Landroid/widget/EditText;
    :cond_8
    goto :goto_0

    .line 145
    .end local v23    # "addentryEdittextPasswordagain":Landroid/widget/EditText;
    :cond_9
    goto :goto_0

    .line 139
    .end local v22    # "addentryEdittextPassword":Landroid/widget/EditText;
    :cond_a
    goto :goto_0

    .line 133
    .end local v21    # "addentryEdittextEmail":Landroid/widget/EditText;
    :cond_b
    goto :goto_0

    .line 127
    .end local v20    # "addentryButtonSave":Landroid/widget/Button;
    :cond_c
    goto :goto_0

    .line 121
    .end local v19    # "addentryButtonDelete":Landroid/widget/Button;
    :cond_d
    nop

    .line 208
    .end local v2    # "addentryButtonCancel":Landroid/widget/Button;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 105
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_add_entry:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    :cond_0
    invoke-static {v0}, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/withsecure/example/sieve/databinding/ActivityAddEntryBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
