.class public Lcom/withsecure/example/sieve/util/PasswordEntry;
.super Ljava/lang/Object;
.source "PasswordEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/withsecure/example/sieve/util/PasswordEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public email:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public service:Ljava/lang/String;

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    new-instance v0, Lcom/withsecure/example/sieve/util/PasswordEntry$1;

    invoke-direct {v0}, Lcom/withsecure/example/sieve/util/PasswordEntry$1;-><init>()V

    sput-object v0, Lcom/withsecure/example/sieve/util/PasswordEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 33
    .local v0, "input":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 34
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    .line 35
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    .line 36
    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->email:Ljava/lang/String;

    .line 37
    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/String;
    .param p4, "p"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->email:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static MapList(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/withsecure/example/sieve/util/PasswordEntry;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    .local p0, "list0":Ljava/util/List;, "Ljava/util/List<Lcom/withsecure/example/sieve/util/PasswordEntry;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 50
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/withsecure/example/sieve/util/PasswordEntry;

    iget-object v2, v2, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/withsecure/example/sieve/util/PasswordEntry;

    iget-object v3, v3, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->email:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 70
    return-void
.end method
