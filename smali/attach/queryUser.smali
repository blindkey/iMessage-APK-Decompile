.class public Lattach/queryUser;
.super Lattach/message;
.source "queryUser.java"


# instance fields
.field private Nonce:Ljava/lang/String;

.field private ResStatus:I

.field private Sig:Ljava/lang/String;

.field private flag:Z

.field private mContext:Landroid/content/Context;

.field private mTokenDB:Lcom/DB/TokenDB;

.field private resIdentity:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private resSeToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private resToken:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private toUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "user"
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0}, Lattach/message;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lattach/queryUser;->flag:Z

    .line 74
    iput-object p1, p0, Lattach/queryUser;->toUser:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lattach/queryUser;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 106
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 107
    .local v5, trustStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 109
    new-instance v4, Lattach/SSLSocketFactoryEx;

    invoke-direct {v4, v5}, Lattach/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 110
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 112
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 113
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 114
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 116
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 117
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 118
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 120
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 122
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v6

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public GenerateNonceAndSignature()V
    .locals 25

    .prologue
    .line 256
    const-string v13, "id-query"

    .line 258
    .local v13, idq:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mailto:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->toUser:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 259
    .local v21, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->toUser:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "@"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 260
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "tel:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->toUser:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 264
    :goto_0
    const-string v11, ""

    .line 266
    .local v11, enurl:Ljava/lang/String;
    :try_start_0
    const-string v22, "gb2312"

    invoke-static/range {v21 .. v22}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 271
    :goto_1
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "uri="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 273
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x15

    add-int/lit8 v22, v22, 0x4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v23

    add-int v22, v22, v23

    add-int/lit8 v20, v22, 0x4

    .line 274
    .local v20, size:I
    invoke-virtual/range {p0 .. p0}, Lattach/queryUser;->GetNonce()[B

    move-result-object v7

    .line 275
    .local v7, buf:[B
    move/from16 v0, v20

    new-array v8, v0, [B

    .line 276
    .local v8, data:[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x11

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v7, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    const/16 v16, 0x11

    .line 279
    .local v16, index:I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v18

    .line 280
    .local v18, len:I
    add-int/lit8 v17, v16, 0x1

    .end local v16           #index:I
    .local v17, index:I
    shr-int/lit8 v22, v18, 0x18

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v16

    .line 281
    add-int/lit8 v16, v17, 0x1

    .end local v17           #index:I
    .restart local v16       #index:I
    shr-int/lit8 v22, v18, 0x10

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v17

    .line 282
    add-int/lit8 v17, v16, 0x1

    .end local v16           #index:I
    .restart local v17       #index:I
    shr-int/lit8 v22, v18, 0x8

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v16

    .line 283
    add-int/lit8 v16, v17, 0x1

    .end local v17           #index:I
    .restart local v16       #index:I
    shr-int/lit8 v22, v18, 0x0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v17

    .line 284
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    add-int/lit8 v16, v18, 0x15

    .line 287
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    .line 288
    add-int/lit8 v17, v16, 0x1

    .end local v16           #index:I
    .restart local v17       #index:I
    shr-int/lit8 v22, v18, 0x18

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v16

    .line 289
    add-int/lit8 v16, v17, 0x1

    .end local v17           #index:I
    .restart local v16       #index:I
    shr-int/lit8 v22, v18, 0x10

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v17

    .line 290
    add-int/lit8 v17, v16, 0x1

    .end local v16           #index:I
    .restart local v17       #index:I
    shr-int/lit8 v22, v18, 0x8

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v16

    .line 291
    add-int/lit8 v16, v17, 0x1

    .end local v17           #index:I
    .restart local v16       #index:I
    shr-int/lit8 v22, v18, 0x0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v8, v17

    .line 292
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 293
    add-int v16, v16, v18

    .line 294
    add-int/lit8 v17, v16, 0x1

    .end local v16           #index:I
    .restart local v17       #index:I
    const/16 v22, 0x0

    aput-byte v22, v8, v16

    .line 295
    add-int/lit8 v16, v17, 0x1

    .end local v17           #index:I
    .restart local v16       #index:I
    const/16 v22, 0x0

    aput-byte v22, v8, v17

    .line 296
    add-int/lit8 v17, v16, 0x1

    .end local v16           #index:I
    .restart local v17       #index:I
    const/16 v22, 0x0

    aput-byte v22, v8, v16

    .line 297
    add-int/lit8 v16, v17, 0x1

    .end local v17           #index:I
    .restart local v16       #index:I
    const/16 v22, 0x0

    aput-byte v22, v8, v17

    .line 299
    const/16 v19, 0x0

    check-cast v19, [B

    .line 301
    .local v19, sig:[B
    :try_start_1
    sget-object v22, LdataEncode/KeyLib;->csrrsaKey:[B

    const-string v23, "SHA1withRSA"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v8, v0, v1}, LdataEncode/rsaCode;->encryptbyPrivateKey([B[BLjava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 306
    :goto_2
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 307
    .local v6, Lsig:[B
    const/16 v22, 0x0

    const/16 v23, 0x1

    aput-byte v23, v6, v22

    .line 308
    const/16 v22, 0x1

    const/16 v23, 0x1

    aput-byte v23, v6, v22

    .line 309
    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v7, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    .line 311
    .local v5, BaseTime:[B
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v6, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    .line 312
    .local v4, BaseSig:[B
    const/4 v14, 0x0

    .line 313
    .local v14, in:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    array-length v0, v5

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v12, v0, :cond_1

    .line 316
    new-instance v22, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v5, v1, v14}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/queryUser;->Nonce:Ljava/lang/String;

    .line 318
    const/4 v14, 0x0

    .line 319
    const/4 v12, 0x0

    :goto_4
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v12, v0, :cond_3

    .line 322
    new-instance v22, Ljava/lang/String;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v4, v1, v14}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/queryUser;->Sig:Ljava/lang/String;

    .line 323
    return-void

    .line 262
    .end local v4           #BaseSig:[B
    .end local v5           #BaseTime:[B
    .end local v6           #Lsig:[B
    .end local v7           #buf:[B
    .end local v8           #data:[B
    .end local v11           #enurl:Ljava/lang/String;
    .end local v12           #i:I
    .end local v14           #in:I
    .end local v16           #index:I
    .end local v18           #len:I
    .end local v19           #sig:[B
    .end local v20           #size:I
    :cond_0
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "mailto:"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->toUser:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_0

    .line 267
    .restart local v11       #enurl:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 269
    .local v10, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v10}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_1

    .line 302
    .end local v10           #e1:Ljava/io/UnsupportedEncodingException;
    .restart local v7       #buf:[B
    .restart local v8       #data:[B
    .restart local v16       #index:I
    .restart local v18       #len:I
    .restart local v19       #sig:[B
    .restart local v20       #size:I
    :catch_1
    move-exception v9

    .line 304
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 314
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v4       #BaseSig:[B
    .restart local v5       #BaseTime:[B
    .restart local v6       #Lsig:[B
    .restart local v12       #i:I
    .restart local v14       #in:I
    :cond_1
    aget-byte v22, v5, v12

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 315
    add-int/lit8 v15, v14, 0x1

    .end local v14           #in:I
    .local v15, in:I
    aget-byte v22, v5, v12

    aput-byte v22, v5, v14

    move v14, v15

    .line 313
    .end local v15           #in:I
    .restart local v14       #in:I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 320
    :cond_3
    aget-byte v22, v4, v12

    const/16 v23, 0xa

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    .line 321
    add-int/lit8 v15, v14, 0x1

    .end local v14           #in:I
    .restart local v15       #in:I
    aget-byte v22, v4, v12

    aput-byte v22, v4, v14

    move v14, v15

    .line 319
    .end local v15           #in:I
    .restart local v14       #in:I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_4
.end method

.method public GetNonce()[B
    .locals 37

    .prologue
    .line 205
    const/16 v33, 0x11

    move/from16 v0, v33

    new-array v4, v0, [B

    .line 211
    .local v4, data:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    div-long v33, v33, v35

    move-wide/from16 v0, v33

    long-to-double v2, v0

    .line 212
    .local v2, a2:D
    const-wide/16 v27, 0x0

    .line 214
    .local v27, v14:J
    double-to-long v0, v2

    move-wide/from16 v23, v0

    .line 215
    .local v23, v12:J
    const-wide/32 v33, 0x3e800

    mul-long v25, v33, v23

    .line 216
    .local v25, v13:J
    const-wide/16 v27, 0x0

    .line 218
    const-wide/32 v33, -0x18000000

    mul-long v7, v33, v23

    .line 219
    .local v7, t1:J
    const-wide/32 v33, 0xff0000

    and-long v9, v25, v33

    .line 220
    .local v9, t2:J
    const-wide v33, 0xe8000000L

    mul-long v33, v33, v23

    const/16 v35, 0x20

    shr-long v33, v33, v35

    const-wide/16 v35, 0x3

    mul-long v35, v35, v23

    add-long v33, v33, v35

    const-wide/32 v35, 0xff00

    and-long v11, v33, v35

    .line 221
    .local v11, t3:J
    const-wide/32 v33, 0x3e800

    mul-long v33, v33, v23

    const/16 v35, 0x20

    shr-long v13, v33, v35

    .line 222
    .local v13, t4:J
    or-long v33, v7, v9

    or-long v33, v33, v11

    or-long v33, v33, v13

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v32, v0

    .line 225
    .local v32, v89:I
    const-wide/16 v33, 0x3e8

    mul-long v33, v33, v23

    const/16 v35, 0x20

    shr-long v33, v33, v35

    const-wide/16 v35, 0x3e8

    mul-long v35, v35, v27

    add-long v33, v33, v35

    const/16 v35, 0x8

    shl-long v29, v33, v35

    .line 226
    .local v29, v15:J
    const-wide/16 v33, 0x3e8

    mul-long v33, v33, v23

    const/16 v35, 0x20

    shr-long v33, v33, v35

    const-wide/16 v35, 0x3e8

    mul-long v35, v35, v27

    add-long v33, v33, v35

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    shr-int/lit8 v33, v33, 0x18

    move/from16 v0, v33

    int-to-long v15, v0

    .line 227
    .local v15, tt1:J
    const-wide/16 v33, 0x3e8

    mul-long v33, v33, v23

    const/16 v35, 0x20

    shr-long v33, v33, v35

    const-wide/16 v35, 0x3e8

    mul-long v35, v35, v27

    add-long v33, v33, v35

    const/16 v35, 0x18

    shl-long v17, v33, v35

    .line 228
    .local v17, tt2:J
    const-wide/32 v33, 0xff0000

    and-long v19, v29, v33

    .line 229
    .local v19, tt3:J
    const-wide/16 v33, 0x3e8

    mul-long v33, v33, v23

    const/16 v35, 0x20

    shr-long v33, v33, v35

    const-wide/16 v35, 0x3e8

    mul-long v35, v35, v27

    add-long v33, v33, v35

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    shr-int/lit8 v33, v33, 0x8

    const v34, 0xff00

    and-int v33, v33, v34

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v21, v0

    .line 230
    .local v21, tt4:J
    or-long v33, v15, v17

    or-long v33, v33, v19

    or-long v33, v33, v21

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v31, v0

    .line 232
    .local v31, v88:I
    const/16 v33, 0x0

    const/16 v34, 0x1

    aput-byte v34, v4, v33

    .line 234
    const/4 v5, 0x1

    .local v5, i:I
    :goto_0
    const/16 v33, 0x4

    move/from16 v0, v33

    if-le v5, v0, :cond_0

    .line 239
    const/4 v5, 0x5

    :goto_1
    const/16 v33, 0x8

    move/from16 v0, v33

    if-le v5, v0, :cond_1

    .line 244
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v33

    move-wide/from16 v0, v33

    invoke-direct {v6, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 245
    .local v6, rdm:Ljava/util/Random;
    const/16 v5, 0x9

    :goto_2
    const/16 v33, 0x11

    move/from16 v0, v33

    if-lt v5, v0, :cond_2

    .line 248
    return-object v4

    .line 236
    .end local v6           #rdm:Ljava/util/Random;
    :cond_0
    move/from16 v0, v31

    rem-int/lit16 v0, v0, 0x100

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v4, v5

    .line 237
    shr-int/lit8 v31, v31, 0x8

    .line 234
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 241
    :cond_1
    move/from16 v0, v32

    rem-int/lit16 v0, v0, 0x100

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v4, v5

    .line 242
    shr-int/lit8 v32, v32, 0x8

    .line 239
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 246
    .restart local v6       #rdm:Ljava/util/Random;
    :cond_2
    const/16 v33, 0xff

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v33

    move/from16 v0, v33

    int-to-byte v0, v0

    move/from16 v33, v0

    aput-byte v33, v4, v5

    .line 245
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public getExit()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lattach/queryUser;->flag:Z

    return v0
.end method

.method public getFromDB(Ljava/lang/String;Lcom/DB/TokenDB;)V
    .locals 2
    .parameter "curUser"
    .parameter "tokenDB"

    .prologue
    .line 92
    iget-object v1, p0, Lattach/queryUser;->toUser:Ljava/lang/String;

    invoke-virtual {p2, p1, v1}, Lcom/DB/TokenDB;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/common/TokenList;

    move-result-object v0

    .line 93
    .local v0, list:Lcom/common/TokenList;
    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Lattach/queryUser;->start(Ljava/lang/String;Lcom/DB/TokenDB;)Z

    .line 103
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, v0, Lcom/common/TokenList;->resSeToken:Ljava/util/ArrayList;

    iput-object v1, p0, Lattach/queryUser;->resSeToken:Ljava/util/ArrayList;

    .line 98
    iget-object v1, v0, Lcom/common/TokenList;->resToken:Ljava/util/ArrayList;

    iput-object v1, p0, Lattach/queryUser;->resToken:Ljava/util/ArrayList;

    .line 99
    iget-object v1, v0, Lcom/common/TokenList;->resIdentity:Ljava/util/ArrayList;

    iput-object v1, p0, Lattach/queryUser;->resIdentity:Ljava/util/ArrayList;

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lattach/queryUser;->flag:Z

    goto :goto_0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 326
    invoke-virtual {p0}, Lattach/queryUser;->GenerateNonceAndSignature()V

    .line 328
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 329
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "MIIEnTCCA4WgAwIBAgIRAJ+UDK3aHhHip3Uf2X9HcAMwDQYJKoZIhvcNAQEFBQAwbjELMAkGA1UEBhMCVVMxEzARBgNVBAoMCkFwcGxlIEluYy4xEjAQBgNVBAsMCUFwcGxlIElEUzERMA8GA1UEDwwIaWRlbnRpdHkxIzAhBgNVBAMMGkFwcGxlIElEUyBJZGVudGl0eSBDQSAtIFIxMB4XDTEzMDYyMTAyNTk0MFoXDTEzMDgwNTAyNTk0M1owZTETMBEGA1UECgwKQXBwbGUgSW5jLjESMBAGA1UECwwJTWVzc2VuZ2VyMQ4wDAYDVQQPDAVkcy1pZDEcMBoGCgmSJomT8ixkAQEMDEQ6MTY4MDEzNTI1OTEMMAoGA1UEBRMDWDpiMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAp8lPbUlUKsGSIK9A9oEMUYfcMW/p9xem3puPRLZaWoEWDYUTuibPjwL+1ZwM3ISnEATC7TY0vh1NiRmEXJF5ntgiWEValOQxjE5EfDX6jejbar9i9cvK39RUuxBL0ntPu7ZrSd8NNXWF4lF1oTbbd+VCFw4SYElRB+3xwfclIxlz3Cd8K/+YpEEkSeNRS/Xt+HGY+lymLJ9wOu/2TkDIckr2BCzMrLmcyd0lYgc+uqmvT+Vinv1ulS9THT95ztln1x8Uy7clBjZQb0GKR7NqGcUqzt5MG0/kXPNkEa3MoAktF4m2HQTobSvV67n5xUCkpnFkC8BWKWA+ZLutc/uMIQIDAQABo4IBPTCCATkwgbYGA1UdEQSBrjCBq4YYbWFpbHRvOjEyNTE1MDE3OTJAcXEuY29toC8GCiqGSIb3Y2QGBAYDIQB9m7bv/f/F8LpqdFAavxEFsh7e5IBIwep+EVYSlcrnEaAjBgoqhkiG92NkBgQEAxUAAQIEAAAAAQAAAAEAAAAACAAAAACgOQYKKoZIhvdjZAYEBwMrAGJwbGlzdDAw0AgAAAAAAAABAQAAAAAAAAABAAAAAAAAAAAAAAAAAAAACTAfBgNVHSMEGDAWgBTGe2m+ScBBDsDIqzIyOOQ/kUCL2jAdBgNVHQ4EFgQUQi9vkht7aCnL3OLGQN7JAXB0cZ0wDAYDVR0TAQH/BAIwADAOBgNVHQ8BAf8EBAMCA/gwIAYDVR0lAQH/BBYwFAYIKwYBBQUHAwEGCCsGAQUFBwMCMA0GCSqGSIb3DQEBBQUAA4IBAQA6tRtNXmE802iU6Cnvg5+hREj2/Tv/PByOUj5j1pFtvJ+GkFWuHrJYeczxl5hKW1AKhtMjJrv9u8WIPZXjSoDA/c9i1ZYrUtG8DTyFlOJ158sbGryKKroFinhkFeYHm+IOZgeKa7F97R0ZYAuff0te4Yfc1zDoDz6/aK9o/mL5+uywVJrw1v7qdDT2p1vOkEItZGi531oURNaYdIavLsxU19bG5Itk++HM2I18oJ+VJDNblfyKwVt/+brfy7lmWTlKqPhEvOBQKQUBtZIDPwKCgi9Tj+6A+kQ+D2/rdAFPRtI5VVmcrAEvhnISNeHOjHS4CPK5iHJIJ+SVxXJ+dMyS"

    .line 330
    .local v0, cert:Ljava/lang/String;
    const-string v7, "AQEleXlP+1kApBoWbpMkFdhkW7OsYPARYY+FbgvKCEd4bFhLb4RI6ujomnM2BFB/uvxshkfGyk2lREo2Y0daIqN3QPv5ZXX+vL43psXhAtObGIQ4ABrTY/yxSmOdFybgS8RGQgtNZQv08F4C3hBKxx94qtW+5ouOzdBo0sggPQpMP+WmSmMjAFO+/FHgf8OnU+3OPEFOVMQaORFFy22IblbJHsV5xSBVssEV5ofWLjLySpfXfJpPIPYCutDdwEUA7AcrmRkip+HqV5rbI1Q8lpdUce/dTeO4OrH8W01xvfNAee+HYtgPzl1uxu15nrs9kqU8loreStol2+lgAov9Wz+b"

    .line 331
    .local v7, sig:Ljava/lang/String;
    const-string v6, "AQAAAT9+v9HQAAAAAAAAAAA="

    .line 333
    .local v6, nonce:Ljava/lang/String;
    const-string v8, "Accept-Encoding"

    const-string v9, "gzip"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v7, p0, Lattach/queryUser;->Sig:Ljava/lang/String;

    .line 335
    const-string v8, "x-id-sig"

    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v8, "Accept-Language"

    const-string v9, "zh-cn"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v8, LdataEncode/KeyLib;->certrsaKey:[B

    invoke-static {v8, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    .line 339
    .local v1, certKey:[B
    const/4 v3, 0x0

    .line 340
    .local v3, in:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v1

    if-lt v2, v8, :cond_0

    .line 344
    new-instance v0, Ljava/lang/String;

    .end local v0           #cert:Ljava/lang/String;
    invoke-direct {v0, v1, v10, v3}, Ljava/lang/String;-><init>([BII)V

    .line 345
    .restart local v0       #cert:Ljava/lang/String;
    const-string v8, "x-id-cert"

    invoke-interface {v5, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v6, p0, Lattach/queryUser;->Nonce:Ljava/lang/String;

    .line 347
    const-string v8, "x-id-nonce"

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v8, "Accept"

    const-string v9, "*/*"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v8, "Connection"

    const-string v9, "keep-alive"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v8, "User-Agent"

    const-string v9, "com.apple.madrid-lookup [Mac OS X,10.8.2,12C54,Macmini5,1]"

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object v5

    .line 341
    :cond_0
    aget-byte v8, v1, v2

    const/16 v9, 0xa

    if-eq v8, v9, :cond_1

    .line 342
    add-int/lit8 v4, v3, 0x1

    .end local v3           #in:I
    .local v4, in:I
    aget-byte v8, v1, v2

    aput-byte v8, v1, v3

    move v3, v4

    .line 340
    .end local v4           #in:I
    .restart local v3       #in:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getResIdentity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lattach/queryUser;->resIdentity:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResSeToken()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lattach/queryUser;->resSeToken:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getResToken()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lattach/queryUser;->resToken:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 5

    .prologue
    .line 443
    iget-object v3, p0, Lattach/queryUser;->toUser:Ljava/lang/String;

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 444
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lattach/queryUser;->toUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    .local v2, url:Ljava/lang/String;
    :goto_0
    const-string v1, ""

    .line 450
    .local v1, enurl:Ljava/lang/String;
    :try_start_0
    const-string v3, "gb2312"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 455
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "query?uri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://service.ess.apple.com/WebObjects/TDIdentityService.woa/wa/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 446
    .end local v1           #enurl:Ljava/lang/String;
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mailto:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lattach/queryUser;->toUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #url:Ljava/lang/String;
    goto :goto_0

    .line 451
    .restart local v1       #enurl:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 453
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 26
    .parameter "coreBuffer"

    .prologue
    .line 359
    new-instance v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    .line 360
    .local v3, body:Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 362
    .local v21, t:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, LdataEncode/gZip;->uncompressToString([B)Ljava/lang/String;

    move-result-object v14

    .line 363
    .local v14, resBody:Ljava/lang/String;
    const-string v23, "Query resBody"

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/queryUser;->resIdentity:Ljava/util/ArrayList;

    .line 365
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/queryUser;->resToken:Ljava/util/ArrayList;

    .line 366
    const/4 v8, 0x0

    .line 367
    .local v8, index:I
    const-string v18, "<key>public-message-identity-key</key>"

    .line 368
    .local v18, sub1:Ljava/lang/String;
    const-string v19, "<key>push-token</key>"

    .line 369
    .local v19, sub2:Ljava/lang/String;
    const-string v20, "<key>status</key>"

    .line 370
    .local v20, sub3:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    .line 371
    .local v17, stt:I
    const-string v23, "<integer>"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 372
    .local v10, integerst:I
    const-string v23, "</integer>"

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    .line 373
    .local v9, integered:I
    add-int/lit8 v23, v10, 0x9

    move/from16 v0, v23

    invoke-virtual {v14, v0, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 374
    .local v15, snumb:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lattach/queryUser;->ResStatus:I

    .line 376
    :goto_0
    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 377
    .local v5, cur:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_2

    .line 404
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/queryUser;->ResStatus:I

    move/from16 v23, v0

    const/16 v24, 0x13a8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 405
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v4, broadCast:Landroid/content/Intent;
    const-string v23, "com.way.querystatus"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v23, "message"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lattach/queryUser;->ResStatus:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 411
    .end local v4           #broadCast:Landroid/content/Intent;
    :cond_1
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lattach/queryUser;->m_ResponseStatus:I

    .line 412
    return-void

    .line 380
    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v23

    add-int v8, v5, v23

    .line 382
    const-string v23, "<data>"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v16

    .line 383
    .local v16, st:I
    const-string v23, "</data>"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 384
    .local v6, ed:I
    add-int/lit8 v23, v16, 0x6

    move/from16 v0, v23

    invoke-virtual {v14, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 385
    .local v22, token:Ljava/lang/String;
    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v11

    .line 386
    .local v11, itoken:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->resToken:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 389
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v5, v0, :cond_0

    .line 392
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    add-int v8, v5, v23

    .line 393
    const-string v23, "<data>"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v16

    .line 394
    const-string v23, "</data>"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 395
    add-int/lit8 v23, v16, 0x6

    move/from16 v0, v23

    invoke-virtual {v14, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 396
    .local v12, key:Ljava/lang/String;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-static {v12, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v7

    .line 397
    .local v7, ikey:[B
    const/16 v23, 0xac

    move/from16 v0, v23

    new-array v13, v0, [B

    .line 398
    .local v13, nikey:[B
    array-length v0, v7

    move/from16 v23, v0

    move/from16 v0, v23

    add-int/lit16 v0, v0, -0xac

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0xac

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v7, v0, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->resIdentity:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public handleResponseHeaders(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, resHeader:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 416
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lattach/queryUser;->resSeToken:Ljava/util/ArrayList;

    .line 417
    const-string v1, "x-id-session-token"

    .line 418
    .local v1, str:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 419
    .local v4, token:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 420
    move-object v2, v4

    .line 421
    .local v2, t:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 422
    .local v3, tok:[B
    iget-object v5, p0, Lattach/queryUser;->resSeToken:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .end local v2           #t:Ljava/lang/String;
    .end local v3           #tok:[B
    :cond_0
    const/4 v0, 0x0

    .line 427
    .local v0, index:I
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #token:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 428
    .restart local v4       #token:Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 429
    if-eqz v4, :cond_1

    .line 430
    move-object v2, v4

    .line 431
    .restart local v2       #t:Ljava/lang/String;
    invoke-static {v2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 432
    .restart local v3       #tok:[B
    iget-object v5, p0, Lattach/queryUser;->resSeToken:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    .end local v2           #t:Ljava/lang/String;
    .end local v3           #tok:[B
    :cond_1
    return-void
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return-object v0
.end method

.method public start(Ljava/lang/String;Lcom/DB/TokenDB;)Z
    .locals 25
    .parameter "curUser"
    .parameter "tokenDB"

    .prologue
    .line 130
    invoke-virtual/range {p0 .. p0}, Lattach/queryUser;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v4

    .line 132
    .local v4, Body:Lcom/common/CoreBuffer;
    invoke-virtual/range {p0 .. p0}, Lattach/queryUser;->getHeader()Ljava/util/Map;

    move-result-object v5

    .line 133
    .local v5, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lattach/queryUser;->getServer()Ljava/lang/String;

    move-result-object v21

    .line 135
    .local v21, serverName:Ljava/lang/String;
    invoke-static {}, Lattach/queryUser;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v12

    .line 141
    .local v12, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v13, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 142
    .local v13, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_5

    .line 150
    :try_start_0
    invoke-interface {v12, v13}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v20

    .line 151
    .local v20, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 152
    .local v19, rescode:I
    const/16 v22, 0xc8

    move/from16 v0, v22

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 153
    const/16 v22, 0xce

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 155
    :cond_0
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 156
    .local v9, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v20 .. v20}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v11

    .line 157
    .local v11, head:[Lorg/apache/http/Header;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 158
    .local v18, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v11, :cond_1

    .line 159
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    array-length v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v14, v0, :cond_6

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lattach/queryUser;->handleResponseHeaders(Ljava/util/Map;)V

    .line 166
    .end local v14           #i:I
    :cond_1
    if-eqz v9, :cond_2

    .line 169
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v16, v0

    .line 170
    .local v16, len:I
    move/from16 v0, v16

    new-array v7, v0, [B

    .line 171
    .local v7, buf:[B
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    .line 172
    .local v15, input:Ljava/io/InputStream;
    invoke-virtual {v15, v7}, Ljava/io/InputStream;->read([B)I

    .line 173
    new-instance v6, Lcom/common/CoreBuffer;

    move/from16 v0, v16

    invoke-direct {v6, v7, v0}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 174
    .local v6, Rec:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lattach/queryUser;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 176
    .end local v6           #Rec:Lcom/common/CoreBuffer;
    .end local v7           #buf:[B
    .end local v15           #input:Ljava/io/InputStream;
    .end local v16           #len:I
    :cond_2
    if-eqz v9, :cond_3

    .line 177
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 179
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->resToken:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_4

    .line 180
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lattach/queryUser;->flag:Z

    .line 181
    new-instance v17, Lcom/common/TokenList;

    invoke-direct/range {v17 .. v17}, Lcom/common/TokenList;-><init>()V

    .line 182
    .local v17, list:Lcom/common/TokenList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->resIdentity:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/common/TokenList;->resIdentity:Ljava/util/ArrayList;

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->resSeToken:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/common/TokenList;->resSeToken:Ljava/util/ArrayList;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->resToken:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/common/TokenList;->resToken:Ljava/util/ArrayList;

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->resToken:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v17

    iput v0, v1, Lcom/common/TokenList;->size:I

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->toUser:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/DB/TokenDB;->saveToken(Ljava/lang/String;Ljava/lang/String;Lcom/common/TokenList;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 200
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #head:[Lorg/apache/http/Header;
    .end local v17           #list:Lcom/common/TokenList;
    .end local v18           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #rescode:I
    .end local v20           #response:Lorg/apache/http/HttpResponse;
    :cond_4
    :goto_2
    const-string v22, "QueryUser "

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/queryUser;->toUser:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/queryUser;->flag:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/queryUser;->flag:Z

    move/from16 v22, v0

    return v22

    .line 142
    :cond_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 144
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #head:[Lorg/apache/http/Header;
    .restart local v14       #i:I
    .restart local v18       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19       #rescode:I
    .restart local v20       #response:Lorg/apache/http/HttpResponse;
    :cond_6
    :try_start_1
    aget-object v22, v11, v14

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v22

    aget-object v23, v11, v14

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 190
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #head:[Lorg/apache/http/Header;
    .end local v14           #i:I
    .end local v18           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19           #rescode:I
    .end local v20           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    .line 192
    .local v8, e:Lorg/apache/http/client/ClientProtocolException;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lattach/queryUser;->flag:Z

    .line 193
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 194
    .end local v8           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v8

    .line 196
    .local v8, e:Ljava/io/IOException;
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lattach/queryUser;->flag:Z

    .line 197
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
