.class public Lcom/withsecure/example/sieve/provider/DBContentProvider;
.super Landroid/content/ContentProvider;
.source "DBContentProvider.java"


# static fields
.field public static final KEY:I = 0xc8

.field public static KEYS_URI:Landroid/net/Uri; = null

.field public static final KEY_ID:I = 0xe6

.field public static final KEY_PASSWORD:I = 0xd2

.field public static final KEY_PIN:I = 0xdc

.field public static final PASSWORDS:I = 0x64

.field public static final PASSWORDS_EMAIL:I = 0x8c

.field public static final PASSWORDS_ID:I = 0x6e

.field public static final PASSWORDS_PASSWORD:I = 0x96

.field public static final PASSWORDS_SERVICE:I = 0x78

.field public static PASSWORDS_URI:Landroid/net/Uri; = null

.field public static final PASSWORDS_USERNAME:I = 0x82


# instance fields
.field pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

.field private sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    .line 25
    sput-object v0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    .line 31
    const-string v0, "content://com.withsecure.example.sieve.provider.DBContentProvider/Passwords"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->PASSWORDS_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.withsecure.example.sieve.provider.DBContentProvider/Keys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->KEYS_URI:Landroid/net/Uri;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 36
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 37
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "in"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 42
    .local v0, "v":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "Passwords"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 46
    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "Key"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "in"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 56
    iget-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 57
    .local v0, "v":I
    const/16 v1, 0x64

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "Passwords"

    invoke-virtual {v1, v3, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "Key"

    invoke-virtual {v1, v3, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, -0x1

    :goto_0
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()Z
    .locals 4

    .line 66
    new-instance v0, Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {p0}, Lcom/withsecure/example/sieve/provider/DBContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/withsecure/example/sieve/util/PWDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    .line 67
    iget-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "Passwords"

    const/16 v2, 0x64

    const-string v3, "com.withsecure.example.sieve.provider.DBContentProvider"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "Keys"

    const/16 v2, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "in"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 75
    .local v0, "v":I
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 76
    .local v1, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/16 v2, 0x64

    const/16 v3, 0xc8

    if-lt v0, v2, :cond_0

    if-ge v0, v3, :cond_0

    .line 77
    const-string v2, "Passwords"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v2}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 81
    :cond_0
    if-lt v0, v3, :cond_1

    .line 82
    const-string v2, "Key"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 83
    iget-object v2, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v2}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v2}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 92
    .local v0, "v":I
    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "Passwords"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 96
    :cond_0
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/withsecure/example/sieve/provider/DBContentProvider;->pwdb:Lcom/withsecure/example/sieve/util/PWDBHelper;

    invoke-virtual {v1}, Lcom/withsecure/example/sieve/util/PWDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "Key"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1
.end method
