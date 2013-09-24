.class public Lattach/_FakeX509TrustManager;
.super Ljava/lang/Object;
.source "_FakeX509TrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# static fields
.field private static final _AcceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private static trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lattach/_FakeX509TrustManager;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAllSSL()V
    .locals 5

    .prologue
    .line 35
    new-instance v2, Lattach/_FakeX509TrustManager$1;

    invoke-direct {v2}, Lattach/_FakeX509TrustManager$1;-><init>()V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, context:Ljavax/net/ssl/SSLContext;
    sget-object v2, Lattach/_FakeX509TrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v2, :cond_0

    .line 47
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lattach/_FakeX509TrustManager;

    invoke-direct {v4}, Lattach/_FakeX509TrustManager;-><init>()V

    aput-object v4, v2, v3

    sput-object v2, Lattach/_FakeX509TrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 51
    :cond_0
    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 52
    const/4 v2, 0x0

    sget-object v3, Lattach/_FakeX509TrustManager;->trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    :goto_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 62
    return-void

    .line 53
    :catch_0
    move-exception v1

    .line 54
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 56
    .local v1, e:Ljava/security/KeyManagementException;
    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 69
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .parameter "chain"
    .parameter "authType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lattach/_FakeX509TrustManager;->_AcceptedIssuers:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public isClientTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .parameter "chain"

    .prologue
    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public isServerTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .parameter "chain"

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method
