.class public Lattach/ReciveFile;
.super Ljava/lang/Object;
.source "ReciveFile.java"


# instance fields
.field private codegetFilePath:Ljava/lang/String;

.field private getFilePath:Ljava/lang/String;

.field private mAuthorizeGet:Lattach/authorizeGet;

.field private mDsid:Ljava/lang/String;

.field private mFileSize:I

.field private mGetComplete:Lattach/getComplete;

.field private mGetFile:Lattach/getFile;

.field private mServer:Ljava/lang/String;

.field private mSignature:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AuthorizeGet()Z
    .locals 10

    .prologue
    const/16 v9, 0x1f4

    const/4 v4, 0x1

    .line 445
    new-instance v5, Lattach/authorizeGet;

    invoke-direct {v5}, Lattach/authorizeGet;-><init>()V

    iput-object v5, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    .line 446
    new-instance v3, Lattach/HttpsConnect;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lattach/ReciveFile;->mServer:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/authorizeGet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "POST"

    invoke-direct {v3, v5, v6}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    .local v3, client:Lattach/HttpsConnect;
    iget-object v5, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    iget-object v6, p0, Lattach/ReciveFile;->mSignature:Ljava/lang/String;

    iget-object v7, p0, Lattach/ReciveFile;->mToken:Ljava/lang/String;

    iget-object v8, p0, Lattach/ReciveFile;->mDsid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lattach/authorizeGet;->setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v5, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    invoke-virtual {v5}, Lattach/authorizeGet;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v0

    .line 450
    .local v0, Body:Lcom/common/CoreBuffer;
    new-instance v2, Lcom/common/CoreBuffer;

    new-array v5, v9, [B

    invoke-direct {v2, v5, v9}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 451
    .local v2, Rec:Lcom/common/CoreBuffer;
    invoke-virtual {v3, v0, v2}, Lattach/HttpsConnect;->setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 453
    iget-object v5, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    invoke-virtual {v5}, Lattach/authorizeGet;->getHeader()Ljava/util/Map;

    move-result-object v1

    .line 454
    .local v1, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v1}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 456
    iget-object v5, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    invoke-virtual {v5}, Lattach/authorizeGet;->timeinit()V

    .line 457
    invoke-virtual {v3, v4, v4}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 458
    invoke-virtual {v3}, Lattach/HttpsConnect;->execute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 459
    const-string v5, "AuthorizeGet"

    const-string v6, " Succ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v5, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    invoke-virtual {v5}, Lattach/authorizeGet;->timeend()V

    .line 461
    iget-object v5, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    invoke-virtual {v5, v2}, Lattach/authorizeGet;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 466
    :goto_0
    return v4

    .line 465
    :cond_0
    const-string v4, "AuthorizeGet"

    const-string v5, " Err"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public GetFile()Z
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 421
    new-instance v6, Lattach/getFile;

    invoke-direct {v6}, Lattach/getFile;-><init>()V

    iput-object v6, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    .line 422
    iget-object v6, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    iget-object v7, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    invoke-virtual {v7}, Lattach/authorizeGet;->GetResponeBody()Lcom/common/CoreBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lattach/getFile;->getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;

    move-result-object v1

    .line 425
    .local v1, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v6}, Lattach/getFile;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v0

    .line 427
    .local v0, Body:Lcom/common/CoreBuffer;
    new-instance v2, Lattach/HttpConnect;

    iget-object v6, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v6}, Lattach/getFile;->getGetFileURL()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GET"

    invoke-direct {v2, v6, v7}, Lattach/HttpConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v2, client:Lattach/HttpConnect;
    new-instance v3, Lcom/common/CoreBuffer;

    new-array v6, v8, [B

    invoke-direct {v3, v6, v8}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 429
    .local v3, rec:Lcom/common/CoreBuffer;
    invoke-virtual {v2, v4, v5}, Lattach/HttpConnect;->setIfInOut(ZZ)V

    .line 430
    invoke-virtual {v2, v1}, Lattach/HttpConnect;->AddHeader(Ljava/util/Map;)V

    .line 431
    iget-object v6, p0, Lattach/ReciveFile;->codegetFilePath:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Lattach/HttpConnect;->setSendRecType(Lcom/common/CoreBuffer;Ljava/lang/String;)V

    .line 432
    iget-object v6, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v6}, Lattach/getFile;->timeinit()V

    .line 433
    invoke-virtual {v2}, Lattach/HttpConnect;->execute()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 434
    const-string v5, "GetFile"

    const-string v6, "Succ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v5, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v5}, Lattach/getFile;->timeend()V

    .line 436
    iget-object v5, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v5, v3}, Lattach/getFile;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 437
    iget-object v5, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v2}, Lattach/HttpConnect;->getRecBodySize()I

    move-result v6

    invoke-virtual {v5, v6}, Lattach/getFile;->setfileSize(I)V

    .line 442
    :goto_0
    return v4

    .line 441
    :cond_0
    const-string v4, "GetFile"

    const-string v6, "Err"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 442
    goto :goto_0
.end method

.method public GetFiletp()Z
    .locals 30

    .prologue
    .line 221
    new-instance v27, Lattach/getFile;

    invoke-direct/range {v27 .. v27}, Lattach/getFile;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lattach/authorizeGet;->GetResponeBody()Lcom/common/CoreBuffer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lattach/getFile;->getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;

    move-result-object v4

    .line 225
    .local v4, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lattach/getFile;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v3

    .line 233
    .local v3, Body:Lcom/common/CoreBuffer;
    const/16 v23, 0x0

    .local v23, start:I
    const/16 v25, 0x0

    .line 236
    .local v25, totlen:I
    const-string v27, "Range"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 237
    .local v18, ran:Ljava/lang/String;
    const-string v27, "bytes="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    .line 238
    .local v22, st:I
    const/16 v27, 0x2d

    add-int/lit8 v28, v22, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 239
    .local v8, ed:I
    add-int/lit8 v27, v22, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 240
    add-int/lit8 v27, v8, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v25, v27, 0x1

    .line 242
    move/from16 v13, v23

    .line 243
    .local v13, index:I
    const-string v27, "Attach"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "st:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "tot:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v27, "Range"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->codegetFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v24, storeFile:Ljava/io/File;
    const/16 v16, 0x0

    .line 248
    .local v16, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v16           #output:Ljava/io/FileOutputStream;
    .local v17, output:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    move/from16 v0, v25

    if-lt v13, v0, :cond_1

    .line 323
    const-string v27, "rec data"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "over:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v29, v13, v23

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lattach/getFile;->timeend()V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lattach/getFile;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    sub-int v28, v13, v23

    invoke-virtual/range {v27 .. v28}, Lattach/getFile;->setfileSize(I)V

    .line 328
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 329
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 334
    :goto_1
    move/from16 v0, v25

    if-ne v13, v0, :cond_8

    .line 335
    const-string v27, "GetFile"

    const-string v28, "Succ"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/16 v27, 0x1

    move-object/from16 v16, v17

    .line 339
    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :goto_2
    return v27

    .line 249
    :catch_0
    move-exception v7

    .line 251
    .local v7, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 252
    const/16 v27, 0x0

    goto :goto_2

    .line 257
    .end local v7           #e1:Ljava/io/FileNotFoundException;
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :cond_1
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 261
    .local v11, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lattach/getFile;->getGetFileURL()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 262
    .local v12, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_5

    .line 266
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "bytes="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 267
    .local v19, range:Ljava/lang/String;
    const-string v27, "Range"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :try_start_2
    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v21

    .line 272
    .local v21, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v20

    .line 273
    .local v20, rescode:I
    const/16 v27, 0xc8

    move/from16 v0, v27

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 274
    const/16 v27, 0xce

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 277
    :cond_2
    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 280
    .local v9, entity:Lorg/apache/http/HttpEntity;
    if-eqz v9, :cond_0

    .line 289
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 290
    .local v14, input:Ljava/io/InputStream;
    const/16 v27, 0x400

    move/from16 v0, v27

    new-array v5, v0, [B

    .line 292
    .local v5, b:[B
    :goto_4
    const/16 v26, 0x1

    .line 293
    .local v26, wait:I
    :goto_5
    invoke-virtual {v14}, Ljava/io/InputStream;->available()I

    move-result v27

    if-gez v27, :cond_3

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_6

    .line 297
    :cond_3
    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_7

    .line 307
    :cond_4
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 310
    .end local v5           #b:[B
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #input:Ljava/io/InputStream;
    .end local v20           #rescode:I
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v26           #wait:I
    :catch_1
    move-exception v6

    .line 312
    .local v6, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 262
    .end local v6           #e:Lorg/apache/http/client/ClientProtocolException;
    .end local v19           #range:Ljava/lang/String;
    :cond_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 264
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v12, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 294
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #b:[B
    .restart local v9       #entity:Lorg/apache/http/HttpEntity;
    .restart local v14       #input:Ljava/io/InputStream;
    .restart local v19       #range:Ljava/lang/String;
    .restart local v20       #rescode:I
    .restart local v21       #response:Lorg/apache/http/HttpResponse;
    .restart local v26       #wait:I
    :cond_6
    move/from16 v0, v26

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    :try_start_3
    invoke-static/range {v27 .. v28}, Ljava/lang/Thread;->sleep(J)V

    .line 295
    mul-int/lit8 v26, v26, 0x2

    goto :goto_5

    .line 300
    :cond_7
    invoke-virtual {v14, v5}, Ljava/io/InputStream;->read([B)I

    move-result v15

    .line 301
    .local v15, j:I
    if-lez v15, :cond_4

    .line 303
    add-int/2addr v13, v15

    .line 304
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v15}, Ljava/io/FileOutputStream;->write([BII)V

    .line 305
    const-string v27, "rec data"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "abs:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v29, v13, v23

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 313
    .end local v5           #b:[B
    .end local v9           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #input:Ljava/io/InputStream;
    .end local v15           #j:I
    .end local v20           #rescode:I
    .end local v21           #response:Lorg/apache/http/HttpResponse;
    .end local v26           #wait:I
    :catch_2
    move-exception v6

    .line 315
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 316
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 318
    .local v6, e:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 330
    .end local v6           #e:Ljava/lang/InterruptedException;
    .end local v11           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v12           #httpGet:Lorg/apache/http/client/methods/HttpGet;
    .end local v19           #range:Ljava/lang/String;
    :catch_4
    move-exception v6

    .line 332
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 338
    .end local v6           #e:Ljava/io/IOException;
    :cond_8
    const-string v27, "GetFile"

    const-string v28, "Err"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/16 v27, 0x0

    move-object/from16 v16, v17

    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public GetFilett()Z
    .locals 21

    .prologue
    .line 343
    new-instance v18, Lattach/getFile;

    invoke-direct/range {v18 .. v18}, Lattach/getFile;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lattach/authorizeGet;->GetResponeBody()Lcom/common/CoreBuffer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lattach/getFile;->getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;

    move-result-object v3

    .line 347
    .local v3, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lattach/getFile;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v2

    .line 349
    .local v2, Body:Lcom/common/CoreBuffer;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 350
    .local v8, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v13, Lorg/apache/http/HttpHost;

    const-string v18, "192.168.253.41"

    const/16 v19, 0x22b8

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 351
    .local v13, proxy:Lorg/apache/http/HttpHost;
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v18

    const-string v19, "http.route.default-proxy"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v13}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 356
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lattach/getFile;->getGetFileURL()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 357
    .local v9, httpGet:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_3

    .line 364
    :try_start_0
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 365
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 366
    .local v14, rescode:I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v0, v14, :cond_0

    .line 367
    const/16 v18, 0xce

    move/from16 v0, v18

    if-ne v14, v0, :cond_5

    .line 370
    :cond_0
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 373
    .local v6, entity:Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_1

    .line 379
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->codegetFilePath:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 380
    .local v16, storeFile:Ljava/io/File;
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 382
    .local v12, output:Ljava/io/FileOutputStream;
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 384
    .local v10, input:Ljava/io/InputStream;
    const/16 v18, 0x400

    move/from16 v0, v18

    new-array v4, v0, [B

    .line 385
    .local v4, b:[B
    const/4 v11, 0x0

    .line 386
    .local v11, j:I
    const/16 v17, 0x0

    .line 389
    .local v17, tot:I
    :goto_1
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 390
    const-string v18, "rec data"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "cur:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-gtz v11, :cond_4

    .line 397
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 398
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lattach/getFile;->timeend()V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lattach/getFile;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lattach/getFile;->setfileSize(I)V

    .line 403
    .end local v4           #b:[B
    .end local v10           #input:Ljava/io/InputStream;
    .end local v11           #j:I
    .end local v12           #output:Ljava/io/FileOutputStream;
    .end local v16           #storeFile:Ljava/io/File;
    .end local v17           #tot:I
    :cond_1
    const-string v18, "rec data"

    const-string v19, "over"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v6, :cond_2

    .line 405
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    :cond_2
    const/16 v18, 0x1

    .line 416
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v14           #rescode:I
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    return v18

    .line 357
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 359
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 393
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #b:[B
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    .restart local v10       #input:Ljava/io/InputStream;
    .restart local v11       #j:I
    .restart local v12       #output:Ljava/io/FileOutputStream;
    .restart local v14       #rescode:I
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #storeFile:Ljava/io/File;
    .restart local v17       #tot:I
    :cond_4
    const/16 v18, 0x0

    :try_start_1
    move/from16 v0, v18

    invoke-virtual {v12, v4, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 394
    add-int v17, v17, v11

    .line 395
    const-string v18, "rec data"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "abs:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 409
    .end local v4           #b:[B
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v10           #input:Ljava/io/InputStream;
    .end local v11           #j:I
    .end local v12           #output:Ljava/io/FileOutputStream;
    .end local v14           #rescode:I
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #storeFile:Ljava/io/File;
    .end local v17           #tot:I
    :catch_0
    move-exception v5

    .line 411
    .local v5, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v5}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 416
    .end local v5           #e:Lorg/apache/http/client/ClientProtocolException;
    :cond_5
    :goto_3
    const/16 v18, 0x0

    goto :goto_2

    .line 412
    :catch_1
    move-exception v5

    .line 414
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public GetFileurl()Z
    .locals 30

    .prologue
    .line 98
    new-instance v27, Lattach/getFile;

    invoke-direct/range {v27 .. v27}, Lattach/getFile;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lattach/authorizeGet;->GetResponeBody()Lcom/common/CoreBuffer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lattach/getFile;->getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;

    move-result-object v4

    .line 102
    .local v4, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lattach/getFile;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v3

    .line 110
    .local v3, Body:Lcom/common/CoreBuffer;
    const/16 v22, 0x0

    .local v22, start:I
    const/16 v25, 0x0

    .line 113
    .local v25, totlen:I
    const-string v27, "Range"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 114
    .local v18, ran:Ljava/lang/String;
    const-string v27, "bytes="

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 115
    .local v21, st:I
    const/16 v27, 0x2d

    add-int/lit8 v28, v21, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 116
    .local v9, ed:I
    add-int/lit8 v27, v21, 0x6

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 117
    add-int/lit8 v27, v9, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    add-int/lit8 v25, v27, 0x1

    .line 119
    move/from16 v11, v22

    .line 120
    .local v11, index:I
    const-string v27, "Attach"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "st:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "tot:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v27, "Range"

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->codegetFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    .local v24, storeFile:Ljava/io/File;
    const/16 v16, 0x0

    .line 125
    .local v16, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v16           #output:Ljava/io/FileOutputStream;
    .local v17, output:Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lattach/getFile;->timeinit()V

    .line 133
    :goto_0
    move/from16 v0, v25

    if-lt v11, v0, :cond_1

    .line 201
    :cond_0
    :goto_1
    const-string v27, "rec data"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "over:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int v29, v11, v22

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lattach/getFile;->timeend()V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lattach/getFile;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    sub-int v28, v11, v22

    invoke-virtual/range {v27 .. v28}, Lattach/getFile;->setfileSize(I)V

    .line 206
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->flush()V

    .line 207
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 212
    :goto_2
    move/from16 v0, v25

    if-ne v11, v0, :cond_5

    .line 213
    const-string v27, "GetFile"

    const-string v28, "Succ"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v27, 0x1

    move-object/from16 v16, v17

    .line 217
    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :goto_3
    return v27

    .line 126
    :catch_0
    move-exception v8

    .line 128
    .local v8, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 129
    const/16 v27, 0x0

    goto :goto_3

    .line 134
    .end local v8           #e1:Ljava/io/FileNotFoundException;
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v6, 0x0

    .line 138
    .local v6, con:Ljava/net/HttpURLConnection;
    :try_start_2
    new-instance v27, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lattach/getFile;->getGetFileURL()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lattach/getFile;->getMethod()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    const/16 v27, 0x3a98

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 141
    const/16 v27, 0x2710

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 155
    :goto_4
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 156
    .local v12, it:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-nez v27, :cond_3

    .line 162
    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, "bytes="

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "-"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 163
    .local v19, range:Ljava/lang/String;
    const-string v27, "Range"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v27, "GetFile"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, "range:"

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 169
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v23

    .line 170
    .local v23, statusCode:I
    const-string v27, "statusCode"

    new-instance v28, Ljava/lang/StringBuilder;

    const-string v29, " "

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v15

    .line 172
    .local v15, msg:Ljava/lang/String;
    const/16 v27, 0xc8

    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_2

    const/16 v27, 0xce

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    .line 182
    :cond_2
    :try_start_4
    new-instance v20, Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    .local v20, re:Ljava/io/DataInputStream;
    const/16 v27, 0x1000

    move/from16 v0, v27

    new-array v5, v0, [B

    .line 185
    .local v5, bytes:[B
    :goto_6
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v14

    .line 186
    .local v14, len:I
    if-gtz v14, :cond_4

    .line 193
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 199
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 144
    .end local v5           #bytes:[B
    .end local v12           #it:Ljava/util/Iterator;
    .end local v14           #len:I
    .end local v15           #msg:Ljava/lang/String;
    .end local v19           #range:Ljava/lang/String;
    .end local v20           #re:Ljava/io/DataInputStream;
    .end local v23           #statusCode:I
    :catch_1
    move-exception v8

    .line 146
    .local v8, e1:Ljava/net/ProtocolException;
    invoke-virtual {v8}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_4

    .line 147
    .end local v8           #e1:Ljava/net/ProtocolException;
    :catch_2
    move-exception v7

    .line 149
    .local v7, e:Ljava/net/MalformedURLException;
    invoke-virtual {v7}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_4

    .line 150
    .end local v7           #e:Ljava/net/MalformedURLException;
    :catch_3
    move-exception v7

    .line 152
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 157
    .end local v7           #e:Ljava/io/IOException;
    .restart local v12       #it:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 158
    .local v10, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 159
    .local v13, key:Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 160
    .local v26, valu:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v6, v13, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 175
    .end local v10           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #key:Ljava/lang/String;
    .end local v26           #valu:Ljava/lang/String;
    .restart local v19       #range:Ljava/lang/String;
    :catch_4
    move-exception v7

    .line 177
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 188
    .end local v7           #e:Ljava/io/IOException;
    .restart local v5       #bytes:[B
    .restart local v14       #len:I
    .restart local v15       #msg:Ljava/lang/String;
    .restart local v20       #re:Ljava/io/DataInputStream;
    .restart local v23       #statusCode:I
    :cond_4
    :try_start_5
    const-string v27, "http getData"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "bytes"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    add-int/2addr v11, v14

    .line 191
    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_6

    .line 194
    .end local v5           #bytes:[B
    .end local v14           #len:I
    .end local v20           #re:Ljava/io/DataInputStream;
    :catch_5
    move-exception v7

    .line 196
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 208
    .end local v6           #con:Ljava/net/HttpURLConnection;
    .end local v7           #e:Ljava/io/IOException;
    .end local v12           #it:Ljava/util/Iterator;
    .end local v15           #msg:Ljava/lang/String;
    .end local v19           #range:Ljava/lang/String;
    .end local v23           #statusCode:I
    :catch_6
    move-exception v7

    .line 210
    .restart local v7       #e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 216
    .end local v7           #e:Ljava/io/IOException;
    :cond_5
    const-string v27, "GetFile"

    const-string v28, "Err"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/16 v27, 0x0

    move-object/from16 v16, v17

    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_3
.end method

.method public Recive(Ljava/lang/String;[B)Z
    .locals 6
    .parameter "name"
    .parameter "key"

    .prologue
    .line 44
    iput-object p1, p0, Lattach/ReciveFile;->getFilePath:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/common/Constants;->StortmpFilePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lattach/ReciveFile;->getFilePath:Ljava/lang/String;

    iget-object v4, p0, Lattach/ReciveFile;->getFilePath:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lattach/ReciveFile;->codegetFilePath:Ljava/lang/String;

    .line 50
    invoke-virtual {p0}, Lattach/ReciveFile;->AuthorizeGet()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lattach/ReciveFile;->GetFileurl()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lattach/ReciveFile;->getComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lattach/ReciveFile;->codegetFilePath:Ljava/lang/String;

    iget-object v3, p0, Lattach/ReciveFile;->getFilePath:Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lattach/FileAes;->Decrypt([BLjava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 v1, 0x1

    .line 56
    .local v1, flag:Z
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lattach/ReciveFile;->codegetFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    return v1

    .line 54
    .end local v0           #f:Ljava/io/File;
    .end local v1           #flag:Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #flag:Z
    goto :goto_0
.end method

.method public SetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "dsid"
    .parameter "signature"
    .parameter "token"
    .parameter "server"
    .parameter "len"

    .prologue
    .line 62
    iput-object p1, p0, Lattach/ReciveFile;->mDsid:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lattach/ReciveFile;->mSignature:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lattach/ReciveFile;->mToken:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lattach/ReciveFile;->mServer:Ljava/lang/String;

    .line 66
    iput p5, p0, Lattach/ReciveFile;->mFileSize:I

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public getComplete()Z
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 70
    new-instance v0, Lattach/getComplete;

    invoke-direct {v0}, Lattach/getComplete;-><init>()V

    iput-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    .line 71
    iget-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    iget-object v1, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v1}, Lattach/getFile;->getSig()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lattach/ReciveFile;->mDsid:Ljava/lang/String;

    iget-object v3, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v3}, Lattach/getFile;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lattach/getComplete;->setHeaderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    iget-object v1, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v1}, Lattach/getFile;->getGetFileURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lattach/ReciveFile;->mAuthorizeGet:Lattach/authorizeGet;

    invoke-virtual {v2}, Lattach/authorizeGet;->getAbsTime()J

    move-result-wide v2

    .line 73
    iget-object v4, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v4}, Lattach/getFile;->getAbsTime()J

    move-result-wide v4

    iget-object v6, p0, Lattach/ReciveFile;->mGetFile:Lattach/getFile;

    invoke-virtual {v6}, Lattach/getFile;->getfileSize()I

    move-result v6

    .line 72
    invoke-virtual/range {v0 .. v6}, Lattach/getComplete;->SetBodyData(Ljava/lang/String;JJI)V

    .line 75
    iget-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    invoke-virtual {v0}, Lattach/getComplete;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v7

    .line 77
    .local v7, Body:Lcom/common/CoreBuffer;
    iget-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    invoke-virtual {v0}, Lattach/getComplete;->getHeader()Ljava/util/Map;

    move-result-object v8

    .line 79
    .local v8, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v10, Lattach/HttpsConnect;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lattach/ReciveFile;->mServer:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/getComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-direct {v10, v0, v1}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v10, client:Lattach/HttpsConnect;
    invoke-virtual {v10, v8}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 81
    invoke-virtual {v10, v12, v11}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 82
    new-instance v9, Lcom/common/CoreBuffer;

    new-array v0, v13, [B

    invoke-direct {v9, v0, v13}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 83
    .local v9, Rec:Lcom/common/CoreBuffer;
    invoke-virtual {v10, v7, v9}, Lattach/HttpsConnect;->setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 84
    iget-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    invoke-virtual {v0}, Lattach/getComplete;->timeinit()V

    .line 86
    invoke-virtual {v10}, Lattach/HttpsConnect;->execute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string v0, "GetComplete"

    const-string v1, "Succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    invoke-virtual {v0}, Lattach/getComplete;->timeend()V

    .line 89
    iget-object v0, p0, Lattach/ReciveFile;->mGetComplete:Lattach/getComplete;

    invoke-virtual {v0, v9}, Lattach/getComplete;->handleResponseBody(Lcom/common/CoreBuffer;)V

    move v0, v11

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    const-string v0, "GetComplete"

    const-string v1, "Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v12

    .line 95
    goto :goto_0
.end method
