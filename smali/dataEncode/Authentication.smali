.class public LdataEncode/Authentication;
.super Ljava/lang/Object;
.source "Authentication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DecryptData(Lcom/common/CoreBuffer;)Lcom/common/CoreBuffer;
    .locals 1
    .parameter "data"

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public static EncryptData(Lcom/common/CoreBuffer;)Lcom/common/CoreBuffer;
    .locals 1
    .parameter "data"

    .prologue
    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Respone_authentication([BI)Z
    .locals 8
    .parameter "buf"
    .parameter "len"

    .prologue
    .line 96
    const/4 v1, 0x6

    .line 98
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, flag:Z
    move v2, v1

    .line 107
    .end local v1           #index:I
    .local v2, index:I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 135
    return v0

    .line 108
    :cond_0
    const-string v6, "Auth_Result"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v6, p0, v2

    packed-switch v6, :pswitch_data_0

    :goto_1
    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 113
    .end local v2           #index:I
    .restart local v1       #index:I
    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-byte v5, p0, v1

    .line 114
    .local v5, size:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v4, p0, v2

    .line 115
    .local v4, res:I
    if-nez v4, :cond_1

    .line 116
    const-string v6, "Authentication"

    const-string v7, " Authentication Succ"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x1

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 119
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    const/4 v0, 0x0

    .line 120
    const-string v6, "Authentication"

    const-string v7, " Authentication Error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 122
    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 127
    .end local v2           #index:I
    .end local v4           #res:I
    .end local v5           #size:I
    .restart local v1       #index:I
    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-byte v5, p0, v1

    .line 128
    .restart local v5       #size:I
    new-array v3, v5, [B

    .line 129
    .local v3, radomauthKey:[B
    const/4 v6, 0x0

    invoke-static {p0, v2, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    add-int v1, v2, v5

    .line 131
    .end local v2           #index:I
    .restart local v1       #index:I
    sput-object v3, LdataEncode/KeyLib;->randomAuthKey:[B

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static Respone_rsaKey([BI)V
    .locals 4
    .parameter "buf"
    .parameter "len"

    .prologue
    .line 38
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    aget-byte v3, p0, v3

    or-int v0, v2, v3

    .line 39
    .local v0, rsaLen:I
    new-array v1, v0, [B

    .line 40
    .local v1, rsa_publickey:[B
    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    const-string v2, "Authentication"

    const-string v3, " Rec rsa key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, LdataEncode/Authentication;->StoreAutrsaKey(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private static StoreAutrsaKey(Ljava/lang/String;)V
    .locals 7
    .parameter "publicKey"

    .prologue
    .line 47
    const-string v4, "-----BEGIN PUBLIC KEY-----"

    .line 48
    .local v4, t1:Ljava/lang/String;
    const-string v5, "-----END PUBLIC KEY-----"

    .line 49
    .local v5, t2:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 50
    .local v3, st:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, ed:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, key:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 53
    .local v2, keyBytes:[B
    sput-object v2, LdataEncode/KeyLib;->autrsaKey:[B

    .line 54
    return-void
.end method

.method public static StoreCertrsaKey(Ljava/lang/String;)V
    .locals 3
    .parameter "Key"

    .prologue
    .line 67
    move-object v0, p0

    .line 68
    .local v0, key:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 69
    .local v1, keyBytes:[B
    sput-object v1, LdataEncode/KeyLib;->certrsaKey:[B

    .line 70
    return-void
.end method

.method public static StoreCsrrsaKey(Ljava/lang/String;)V
    .locals 7
    .parameter "Key"

    .prologue
    .line 57
    const-string v4, "-----BEGIN RSA PRIVATE KEY-----"

    .line 58
    .local v4, t1:Ljava/lang/String;
    const-string v5, "-----END RSA PRIVATE KEY-----"

    .line 59
    .local v5, t2:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 60
    .local v3, st:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, ed:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, key:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 63
    .local v2, keyBytes:[B
    sput-object v2, LdataEncode/KeyLib;->csrrsaKey:[B

    .line 64
    return-void
.end method

.method public static init_aesKey()V
    .locals 0

    .prologue
    .line 27
    invoke-static {}, LdataEncode/aesCode;->initKey()V

    .line 28
    return-void
.end method

.method public static request_rsaKey()Lcom/common/CoreBuffer;
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 33
    new-array v0, v4, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    .line 34
    .local v0, buf:[B
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-direct {v1, v0, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v1
.end method

.method public static send_aesKey()Lcom/common/CoreBuffer;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 72
    const/4 v0, 0x0

    check-cast v0, [B

    .line 74
    .local v0, aes:[B
    :try_start_0
    sget-object v5, LdataEncode/KeyLib;->aesKey:[B

    sget-object v6, LdataEncode/KeyLib;->autrsaKey:[B

    invoke-static {v5, v6}, LdataEncode/rsaCode;->encryptByPublicKey([B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    array-length v5, v0

    add-int/lit8 v3, v5, 0x4

    .line 81
    .local v3, len:I
    array-length v5, v0

    add-int/lit8 v4, v5, 0x9

    .line 82
    .local v4, totlen:I
    new-array v1, v4, [B

    .line 83
    .local v1, body:[B
    aput-byte v9, v1, v8

    .line 84
    shr-int/lit8 v5, v3, 0x18

    int-to-byte v5, v5

    aput-byte v5, v1, v9

    .line 85
    const/4 v5, 0x2

    shr-int/lit8 v6, v3, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 86
    shr-int/lit8 v5, v3, 0x8

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    .line 87
    const/4 v5, 0x4

    shr-int/lit8 v6, v3, 0x0

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 88
    const/4 v5, 0x5

    aput-byte v7, v1, v5

    .line 89
    const/4 v5, 0x6

    aput-byte v7, v1, v5

    .line 90
    const/4 v5, 0x7

    array-length v6, v0

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 91
    const/16 v5, 0x8

    array-length v6, v0

    shr-int/lit8 v6, v6, 0x0

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 92
    const/16 v5, 0x9

    array-length v6, v0

    invoke-static {v0, v8, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance v5, Lcom/common/CoreBuffer;

    invoke-direct {v5, v1, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v5

    .line 76
    .end local v1           #body:[B
    .end local v3           #len:I
    .end local v4           #totlen:I
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "na"
    .parameter "pass"

    .prologue
    .line 31
    return-void
.end method
