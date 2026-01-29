.class public Lcom/withsecure/example/sieve/util/PWDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PWDBHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "database.db"

.field public static final DATABASE_VERSION:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "database.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 15
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    const-string v0, "CREATE TABLE Passwords (_id INTEGER PRIMARY KEY,service TEXT,username TEXT,password BLOB,email )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 20
    const-string v0, "CREATE TABLE Key (Password TEXT PRIMARY KEY,pin TEXT )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "arg0"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 25
    return-void
.end method
