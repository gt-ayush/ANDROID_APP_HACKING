.class Lcom/withsecure/example/sieve/util/NetBackupHandler$1;
.super Ljava/lang/Object;
.source "NetBackupHandler.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/withsecure/example/sieve/util/NetBackupHandler;->getNewHttpConnection()Ljava/net/Socket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;


# direct methods
.method constructor <init>(Lcom/withsecure/example/sieve/util/NetBackupHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/withsecure/example/sieve/util/NetBackupHandler;

    .line 176
    iput-object p1, p0, Lcom/withsecure/example/sieve/util/NetBackupHandler$1;->this$0:Lcom/withsecure/example/sieve/util/NetBackupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 179
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 183
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 187
    const/4 v0, 0x0

    return-object v0
.end method
