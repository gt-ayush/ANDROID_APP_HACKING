.class public final Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;
.super Ljava/lang/Object;
.source "ActivityFileSelectBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final fileselectListPath:Landroid/widget/ListView;

.field public final fileselectTextviewPath:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ListView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "fileselectListPath"    # Landroid/widget/ListView;
    .param p3, "fileselectTextviewPath"    # Landroid/widget/TextView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 32
    iput-object p2, p0, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;->fileselectListPath:Landroid/widget/ListView;

    .line 33
    iput-object p3, p0, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;->fileselectTextviewPath:Landroid/widget/TextView;

    .line 34
    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .line 63
    sget v0, Lcom/withsecure/example/sieve/R$id;->fileselect_list_path:I

    .line 64
    .local v0, "id":I
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 65
    .local v1, "fileselectListPath":Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 69
    sget v0, Lcom/withsecure/example/sieve/R$id;->fileselect_textview_path:I

    .line 70
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 71
    .local v2, "fileselectTextviewPath":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 75
    new-instance v3, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;

    move-object v4, p0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct {v3, v4, v1, v2}, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ListView;Landroid/widget/TextView;)V

    return-object v3

    .line 72
    :cond_0
    goto :goto_0

    .line 66
    .end local v2    # "fileselectTextviewPath":Landroid/widget/TextView;
    :cond_1
    nop

    .line 78
    .end local v1    # "fileselectListPath":Landroid/widget/ListView;
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "missingId":Ljava/lang/String;
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Missing required view with ID: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 50
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_file_select:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;->bind(Landroid/view/View;)Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/withsecure/example/sieve/databinding/ActivityFileSelectBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
