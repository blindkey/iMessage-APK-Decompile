.class public Lattach/FileAes;
.super Ljava/lang/Object;
.source "FileAes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decrypt([BLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "key"
    .parameter "fromPath"
    .parameter "toPath"

    .prologue
    .line 22
    :try_start_0
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v12, "AES"

    invoke-direct {v9, p0, v12}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 23
    .local v9, mkey:Ljavax/crypto/spec/SecretKeySpec;
    const-string v12, "AES/CTR/NoPadding"

    invoke-static {v12}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 24
    .local v1, cipher:Ljavax/crypto/Cipher;
    const/16 v12, 0x10

    new-array v6, v12, [B

    .line 25
    .local v6, ivBytes:[B
    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v7, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 26
    .local v7, ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    const/4 v12, 0x2

    invoke-virtual {v1, v12, v9, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 27
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v11, out:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 30
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v5, in:Ljava/io/File;
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 32
    .local v3, fis:Ljava/io/FileInputStream;
    const/16 v12, 0x640

    new-array v0, v12, [B

    .line 34
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    .line 35
    .local v8, len:I
    if-gtz v8, :cond_0

    .line 40
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v10

    .line 41
    .local v10, obuf:[B
    invoke-virtual {v4, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 43
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 44
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 72
    .end local v0           #buf:[B
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #in:Ljava/io/File;
    .end local v6           #ivBytes:[B
    .end local v7           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #len:I
    .end local v9           #mkey:Ljavax/crypto/spec/SecretKeySpec;
    .end local v10           #obuf:[B
    .end local v11           #out:Ljava/io/File;
    :goto_1
    return-void

    .line 37
    .restart local v0       #buf:[B
    .restart local v1       #cipher:Ljavax/crypto/Cipher;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v5       #in:Ljava/io/File;
    .restart local v6       #ivBytes:[B
    .restart local v7       #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .restart local v8       #len:I
    .restart local v9       #mkey:Ljavax/crypto/spec/SecretKeySpec;
    .restart local v11       #out:Ljava/io/File;
    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v1, v0, v12, v8}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v10

    .line 38
    .restart local v10       #obuf:[B
    invoke-virtual {v4, v10}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    goto :goto_0

    .line 47
    .end local v0           #buf:[B
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v5           #in:Ljava/io/File;
    .end local v6           #ivBytes:[B
    .end local v7           #ivSpec:Ljavax/crypto/spec/IvParameterSpec;
    .end local v8           #len:I
    .end local v9           #mkey:Ljavax/crypto/spec/SecretKeySpec;
    .end local v10           #obuf:[B
    .end local v11           #out:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 49
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 50
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 52
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 53
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 55
    .local v2, e:Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 58
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 59
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 61
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 62
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 64
    .local v2, e:Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v2           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_6
    move-exception v2

    .line 67
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 68
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_7
    move-exception v2

    .line 70
    .local v2, e:Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static Encrypt([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "fromPath"
    .parameter "toPath"

    .prologue
    .line 74
    invoke-static {p0, p1, p2}, Lattach/FileAes;->Decrypt([BLjava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
