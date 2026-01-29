.class public Lcom/withsecure/example/sieve/activity/FileSelectActivity;
.super Landroid/app/Activity;
.source "FileSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final FILE:Ljava/lang/String; = "com.withsecure.example.sieve.FILE"

.field private static final root:Ljava/lang/String; = "/"


# instance fields
.field private currentPath:Landroid/widget/TextView;

.field private item:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pathList:Landroid/widget/ListView;

.field private resultIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->item:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->path:Ljava/util/List;

    .line 31
    return-void
.end method

.method private cancel()V
    .locals 2

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->resultIntent:Landroid/content/Intent;

    .line 35
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 36
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->finish()V

    .line 37
    return-void
.end method

.method static synthetic lambda$onItemClick$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "i"    # I

    .line 64
    return-void
.end method

.method private processDir(Ljava/lang/String;)V
    .locals 9
    .param p1, "dir"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->currentPath:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->item:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->path:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 79
    .local v1, "arr_file":[Ljava/io/File;
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->item:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->path:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->item:Ljava/util/List;

    const-string v4, "../"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->path:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 87
    .local v5, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->path:Ljava/util/List;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    iget-object v6, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->item:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    :cond_1
    iget-object v6, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->item:Ljava/util/List;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v5    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    :cond_2
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->item:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 96
    .local v2, "fileList":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->pathList:Landroid/widget/ListView;

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v3, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->pathList:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    return-void
.end method

.method private returnFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "out"    # Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/withsecure/example/sieve/activity/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->resultIntent:Landroid/content/Intent;

    .line 102
    const-string v1, "com.withsecure.example.sieve.FILE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->resultIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->setResult(ILandroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->finish()V

    .line 105
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->cancel()V

    .line 42
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/withsecure/example/sieve/R$layout;->activity_file_select:I

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->setContentView(I)V

    .line 48
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "startingPath":Ljava/lang/String;
    sget v1, Lcom/withsecure/example/sieve/R$id;->fileselect_textview_path:I

    invoke-virtual {p0, v1}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->currentPath:Landroid/widget/TextView;

    .line 50
    sget v1, Lcom/withsecure/example/sieve/R$id;->fileselect_list_path:I

    invoke-virtual {p0, v1}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->pathList:Landroid/widget/ListView;

    .line 52
    invoke-direct {p0, v0}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->processDir(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "adapterView0"    # Landroid/widget/AdapterView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J

    .line 57
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->path:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->path:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->processDir(Ljava/lang/String;)V

    .line 61
    return-void

    .line 63
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/withsecure/example/sieve/R$mipmap;->ic_launcher:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] folder can\'t be read!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/withsecure/example/sieve/activity/FileSelectActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/withsecure/example/sieve/activity/FileSelectActivity$$ExternalSyntheticLambda0;-><init>()V

    const-string v3, "OK"

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 65
    return-void

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".XML"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/withsecure/example/sieve/activity/FileSelectActivity;->returnFile(Ljava/lang/String;)V

    .line 71
    :cond_3
    return-void
.end method
