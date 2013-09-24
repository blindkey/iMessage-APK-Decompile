.class public LdataEncode/aesCode;
.super Ljava/lang/Object;
.source "aesCode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decrypt([B)[B
    .locals 1
    .parameter "buf"

    .prologue
    .line 52
    invoke-static {p0}, LdataEncode/aesCode;->Encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static Encrypt([B)[B
    .locals 7
    .parameter "buf"

    .prologue
    .line 21
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v5, LdataEncode/KeyLib;->aesKey:[B

    const-string v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 24
    .local v4, mkey:Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    const-string v5, "AES/CTR/NoPadding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 25
    .local v0, cipher:Ljavax/crypto/Cipher;
    const/16 v5, 0x10

    new-array v2, v5, [B

    .line 26
    .local v2, ivBytes:[B
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 27
    .local v3, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 29
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v5

    .line 49
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v2           #ivBytes:[B
    .end local v3           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    return-object v5

    .line 30
    :catch_0
    move-exception v1

    .line 32
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 49
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 33
    :catch_1
    move-exception v1

    .line 35
    .local v1, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 36
    .end local v1           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 38
    .local v1, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v1           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 41
    .local v1, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    .line 42
    .end local v1           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v1

    .line 44
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 45
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 47
    .local v1, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static initKey()V
    .locals 3

    .prologue
    .line 16
    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, LdataEncode/KeyLib;->aesKey:[B

    .line 17
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 18
    .local v0, rdm:Ljava/util/Random;
    sget-object v1, LdataEncode/KeyLib;->aesKey:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 19
    return-void

    .line 16
    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data
.end method
