.class public LdataEncode/rsaCode;
.super Ljava/lang/Object;
.source "rsaCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptByPublicKey([B[B)[B
    .locals 11
    .parameter "data"
    .parameter "keyBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    new-instance v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v8, p1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 19
    .local v8, x509KeySpec:Ljava/security/spec/X509EncodedKeySpec;
    const-string v9, "RSA"

    invoke-static {v9}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 20
    .local v4, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v4, v8}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    .line 23
    .local v7, publicK:Ljava/security/Key;
    const-string v9, "RSA/NONE/OAEPPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 24
    .local v1, cipher:Ljavax/crypto/Cipher;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 25
    array-length v3, p0

    .line 26
    .local v3, inputLen:I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 27
    .local v6, out:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 29
    .local v5, offSet:I
    const/4 v2, 0x0

    .line 30
    .local v2, i:I
    const/4 v9, 0x0

    array-length v10, p0

    invoke-virtual {v1, p0, v9, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 31
    .local v0, cache:[B
    return-object v0
.end method

.method public static encryptbyPrivateKey([B[B)[B
    .locals 5
    .parameter "data"
    .parameter "keyBytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 44
    .local v2, pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 45
    .local v1, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 50
    .local v3, privateK:Ljava/security/PrivateKey;
    invoke-virtual {v1}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 51
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 53
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    return-object v4
.end method

.method public static encryptbyPrivateKey([B[BLjava/lang/String;)[B
    .locals 5
    .parameter "data"
    .parameter "keyBytes"
    .parameter "instance"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 66
    .local v1, pkcs8KeySpec:Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 67
    .local v0, keyFactory:Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 72
    .local v2, privateK:Ljava/security/PrivateKey;
    invoke-static {p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 73
    .local v3, signature:Ljava/security/Signature;
    invoke-virtual {v3, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 74
    invoke-virtual {v3, p0}, Ljava/security/Signature;->update([B)V

    .line 75
    invoke-virtual {v3}, Ljava/security/Signature;->sign()[B

    move-result-object v4

    return-object v4
.end method
