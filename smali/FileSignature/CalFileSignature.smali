.class public LFileSignature/CalFileSignature;
.super Ljava/lang/Object;
.source "CalFileSignature.java"


# instance fields
.field private mFileSignature:Lcom/common/CoreBuffer;

.field private md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GeneratorFileSignatureCreate()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 14
    :try_start_0
    const-string v5, "SHA-1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    iput-object v5, p0, LFileSignature/CalFileSignature;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    const-string v1, "com.apple.XattrObjectSalt"

    .line 20
    .local v1, str1:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v3, v5, [B

    .line 21
    .local v3, tmp:[B
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v7, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    aput-byte v7, v3, v5

    .line 23
    iget-object v5, p0, LFileSignature/CalFileSignature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v5, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 24
    const-string v2, "com.apple.DataObjectSalt"

    .line 25
    .local v2, str2:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 26
    .local v4, tmp1:[B
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    aput-byte v7, v4, v5

    .line 28
    iget-object v5, p0, LFileSignature/CalFileSignature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->update([B)V

    .line 30
    const/4 v5, 0x1

    return v5

    .line 15
    .end local v1           #str1:Ljava/lang/String;
    .end local v2           #str2:Ljava/lang/String;
    .end local v3           #tmp:[B
    .end local v4           #tmp1:[B
    :catch_0
    move-exception v0

    .line 17
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public GeneratorFileSignatureFinal()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 43
    iget-object v2, p0, LFileSignature/CalFileSignature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 44
    .local v1, md1:[B
    const/16 v2, 0x20

    new-array v0, v2, [B

    .line 45
    .local v0, buf:[B
    aput-byte v4, v0, v3

    .line 46
    const/16 v2, 0x14

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    new-instance v2, Lcom/common/CoreBuffer;

    const/16 v3, 0x15

    invoke-direct {v2, v0, v3}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v2, p0, LFileSignature/CalFileSignature;->mFileSignature:Lcom/common/CoreBuffer;

    .line 48
    return v4
.end method

.method public GeneratorFileSignatureUpdate(Lcom/common/CoreBuffer;)Z
    .locals 4
    .parameter "data"

    .prologue
    .line 38
    iget-object v0, p0, LFileSignature/CalFileSignature;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public GetFileSignature()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, LFileSignature/CalFileSignature;->mFileSignature:Lcom/common/CoreBuffer;

    return-object v0
.end method
