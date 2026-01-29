.class public Lcom/withsecure/example/sieve/database/DBParser;
.super Ljava/lang/Object;
.source "DBParser.java"


# static fields
.field public static ns:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/withsecure/example/sieve/database/DBParser;->ns:Ljava/lang/String;

    .line 19
    sput-object v0, Lcom/withsecure/example/sieve/database/DBParser;->ns:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 24
    .local v0, "xmlPullParser0":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 25
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 27
    sget-object v2, Lcom/withsecure/example/sieve/database/DBParser;->ns:Ljava/lang/String;

    const-string v3, "Passwords"

    const/4 v4, 0x2

    invoke-interface {v0, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v2, "Key"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPIN(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 33
    .local v0, "xmlPullParser0":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 34
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 36
    sget-object v2, Lcom/withsecure/example/sieve/database/DBParser;->ns:Ljava/lang/String;

    const-string v3, "Passwords"

    const/4 v4, 0x2

    invoke-interface {v0, v4, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "Pin"

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static processElement(Lcom/withsecure/example/sieve/util/PasswordEntry;)Ljava/lang/String;
    .locals 2
    .param p0, "pe"    # Lcom/withsecure/example/sieve/util/PasswordEntry;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<service>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</service>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<username>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</username>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<email>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</email>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/withsecure/example/sieve/util/PasswordEntry;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</entry>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x2

    sget-object v1, Lcom/withsecure/example/sieve/database/DBParser;->ns:Ljava/lang/String;

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lcom/withsecure/example/sieve/database/DBParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "s1":Ljava/lang/String;
    const/4 v1, 0x3

    sget-object v2, Lcom/withsecure/example/sieve/database/DBParser;->ns:Ljava/lang/String;

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method private static readEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/withsecure/example/sieve/util/PasswordEntry;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "service":Ljava/lang/String;
    const/4 v1, 0x0

    .line 54
    .local v1, "username":Ljava/lang/String;
    const/4 v2, 0x0

    .line 55
    .local v2, "email":Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "password":Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    .line 57
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 58
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "s4":Ljava/lang/String;
    const-string/jumbo v5, "service"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 63
    invoke-static {p0, v5}, Lcom/withsecure/example/sieve/database/DBParser;->readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    const-string/jumbo v5, "username"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    invoke-static {p0, v5}, Lcom/withsecure/example/sieve/database/DBParser;->readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    goto :goto_0

    .line 72
    :cond_2
    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    invoke-static {p0, v5}, Lcom/withsecure/example/sieve/database/DBParser;->readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    goto :goto_0

    .line 77
    :cond_3
    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 78
    goto :goto_0

    .line 81
    :cond_4
    invoke-static {p0, v5}, Lcom/withsecure/example/sieve/database/DBParser;->readElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .end local v4    # "s4":Ljava/lang/String;
    goto :goto_0

    .line 84
    :cond_5
    new-instance v4, Lcom/withsecure/example/sieve/util/PasswordEntry;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/withsecure/example/sieve/util/PasswordEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method private static readFeed(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 4
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/withsecure/example/sieve/util/PasswordEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/withsecure/example/sieve/database/DBParser;->ns:Ljava/lang/String;

    const-string v1, "Passwords"

    const/4 v2, 0x2

    invoke-interface {p0, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 90
    .local v0, "pe":Ljava/util/List;, "Ljava/util/List<Lcom/withsecure/example/sieve/util/PasswordEntry;>;"
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 91
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 92
    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "entry"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    invoke-static {p0}, Lcom/withsecure/example/sieve/database/DBParser;->readEntry(Lorg/xmlpull/v1/XmlPullParser;)Lcom/withsecure/example/sieve/util/PasswordEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    goto :goto_0

    .line 100
    :cond_1
    invoke-static {p0}, Lcom/withsecure/example/sieve/database/DBParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 103
    :cond_2
    return-object v0
.end method

.method public static readFile(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/withsecure/example/sieve/util/PasswordEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 108
    .local v0, "xmlPullParser0":Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 109
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 110
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 111
    invoke-static {v0}, Lcom/withsecure/example/sieve/database/DBParser;->readFeed(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "result":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 117
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 121
    :cond_0
    return-object v0
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 130
    const/4 v0, 0x1

    .line 131
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 137
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 134
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 135
    nop

    .line 138
    :goto_1
    goto :goto_0

    .line 141
    :cond_0
    return-void

    .line 126
    .end local v0    # "depth":I
    :cond_1
    const-string v0, "parser"

    const-string v1, "IllegalState thrown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
