.class public Lattach/SendFile;
.super Ljava/lang/Object;
.source "SendFile.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ip:Ljava/lang/String; = "192.168.253.41"


# instance fields
.field private listener:Lcom/client/MessageRateListener;

.field private mAuthorizePut:Lattach/authorizePut;

.field private mChunkSigList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;"
        }
    .end annotation
.end field

.field private mDsid:Lcom/common/CoreBuffer;

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:I

.field private mPutComplete:Lattach/putComplete;

.field private mPutFile:Lattach/putFile;

.field private mSdsid:Ljava/lang/String;

.field private mServerName:Ljava/lang/String;

.field private mSignature:Lcom/common/CoreBuffer;

.field private mSsig:Ljava/lang/String;

.field private mStoken:Ljava/lang/String;

.field private mToken:Lcom/common/CoreBuffer;

.field private mmd5:Ljava/lang/String;

.field private mputFileBodyLen:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 488
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 489
    .local v5, trustStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 491
    new-instance v4, Lattach/SSLSocketFactoryEx;

    invoke-direct {v4, v5}, Lattach/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 492
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 494
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 495
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 496
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 498
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 499
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 500
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 502
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 504
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v6

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public AuthorizePut()Z
    .locals 12

    .prologue
    const/16 v11, 0x1f4

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 629
    new-instance v6, Lattach/authorizePut;

    invoke-direct {v6}, Lattach/authorizePut;-><init>()V

    iput-object v6, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    .line 630
    iget-object v6, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    iget-object v7, p0, Lattach/SendFile;->mChunkSigList:Ljava/util/Vector;

    iget-object v8, p0, Lattach/SendFile;->mSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v6, v7, v8}, Lattach/authorizePut;->SetSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V

    .line 631
    iget-object v6, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    iget-object v7, p0, Lattach/SendFile;->mSsig:Ljava/lang/String;

    iget-object v8, p0, Lattach/SendFile;->mSdsid:Ljava/lang/String;

    iget-object v9, p0, Lattach/SendFile;->mStoken:Ljava/lang/String;

    iget v10, p0, Lattach/SendFile;->mFileSize:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lattach/authorizePut;->SetBodyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 633
    iget-object v6, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v6}, Lattach/authorizePut;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v0

    .line 635
    .local v0, Body:Lcom/common/CoreBuffer;
    iget-object v6, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v6}, Lattach/authorizePut;->getHeader()Ljava/util/Map;

    move-result-object v1

    .line 638
    .local v1, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lattach/HttpsConnect;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lattach/SendFile;->mServerName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/authorizePut"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "POST"

    invoke-direct {v3, v6, v7}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .local v3, client:Lattach/HttpsConnect;
    iget-object v6, p0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    invoke-virtual {v3, v6, v5}, Lattach/HttpsConnect;->setListener(Lcom/client/MessageRateListener;I)V

    .line 641
    new-instance v2, Lcom/common/CoreBuffer;

    new-array v6, v11, [B

    invoke-direct {v2, v6, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 642
    .local v2, Rec:Lcom/common/CoreBuffer;
    invoke-virtual {v3, v0, v2}, Lattach/HttpsConnect;->setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 643
    invoke-virtual {v3, v1}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 644
    const/16 v6, 0x80

    invoke-virtual {v3, v4, v6}, Lattach/HttpsConnect;->setChunkMode(ZI)V

    .line 645
    iget-object v6, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v6}, Lattach/authorizePut;->timeinit()V

    .line 646
    invoke-virtual {v3, v4, v4}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 648
    invoke-virtual {v3}, Lattach/HttpsConnect;->execute()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 649
    const-string v5, "AuthorizePut"

    const-string v6, " Succ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v5, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v5}, Lattach/authorizePut;->timeend()V

    .line 651
    iget-object v5, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v5, v2}, Lattach/authorizePut;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 656
    :goto_0
    return v4

    .line 655
    :cond_0
    const-string v4, "AuthorizePut"

    const-string v6, " Err"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 656
    goto :goto_0
.end method

.method public AuthorizePutt()Z
    .locals 30

    .prologue
    .line 538
    new-instance v25, Lattach/authorizePut;

    invoke-direct/range {v25 .. v25}, Lattach/authorizePut;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mChunkSigList:Ljava/util/Vector;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mSignature:Lcom/common/CoreBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Lattach/authorizePut;->SetSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mSsig:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mSdsid:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mStoken:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lattach/SendFile;->mFileSize:I

    move/from16 v29, v0

    invoke-virtual/range {v25 .. v29}, Lattach/authorizePut;->SetBodyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lattach/authorizePut;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v5

    .line 543
    .local v5, Body:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lattach/authorizePut;->getHeader()Ljava/util/Map;

    move-result-object v6

    .line 546
    .local v6, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lattach/SendFile;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v13

    .line 551
    .local v13, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mServerName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "/authorizePut"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 552
    .local v14, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_0

    .line 556
    invoke-virtual {v5}, Lcom/common/CoreBuffer;->getLen()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 557
    .local v24, tmp:[B
    invoke-virtual {v5}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual {v5}, Lcom/common/CoreBuffer;->getLen()I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v24

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 558
    new-instance v10, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 560
    .local v10, entityt:Lorg/apache/http/entity/ByteArrayEntity;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setChunked(Z)V

    .line 561
    invoke-virtual {v14, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 562
    const/16 v19, 0x0

    .line 563
    .local v19, response:Lorg/apache/http/HttpResponse;
    const/16 v16, 0x0

    .line 564
    .local v16, rec:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lattach/authorizePut;->timeinit()V

    .line 566
    :try_start_0
    invoke-interface {v13, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 574
    :goto_1
    if-nez v19, :cond_1

    .line 575
    const/16 v25, 0x0

    .line 625
    :goto_2
    return v25

    .line 552
    .end local v10           #entityt:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v16           #rec:Lcom/common/CoreBuffer;
    .end local v19           #response:Lorg/apache/http/HttpResponse;
    .end local v24           #tmp:[B
    :cond_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 554
    .local v11, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    .end local v11           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #entityt:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v16       #rec:Lcom/common/CoreBuffer;
    .restart local v19       #response:Lorg/apache/http/HttpResponse;
    .restart local v24       #tmp:[B
    :catch_0
    move-exception v9

    .line 569
    .local v9, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 570
    .end local v9           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v9

    .line 572
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 577
    .end local v9           #e:Ljava/io/IOException;
    :cond_1
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 578
    .local v8, code:I
    const-string v25, "Login"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "resCode = "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v25, 0xc8

    move/from16 v0, v25

    if-eq v8, v0, :cond_2

    const/16 v25, 0xce

    move/from16 v0, v25

    if-ne v8, v0, :cond_7

    .line 580
    :cond_2
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    .line 581
    .local v18, rentity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v12

    .line 582
    .local v12, head:[Lorg/apache/http/Header;
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 583
    .local v23, rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v12, :cond_3

    .line 584
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    array-length v0, v12

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v15, v0, :cond_6

    .line 592
    .end local v15           #i:I
    :cond_3
    const-wide/16 v21, 0x0

    .line 593
    .local v21, responseLength:J
    const-string v20, ""

    .line 594
    .local v20, responseContent:Ljava/lang/String;
    if-eqz v18, :cond_4

    .line 595
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v21

    .line 597
    :try_start_1
    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v7

    .line 598
    .local v7, buf:[B
    new-instance v17, Lcom/common/CoreBuffer;

    array-length v0, v7

    move/from16 v25, v0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-direct {v0, v7, v1}, Lcom/common/CoreBuffer;-><init>([BI)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 599
    .end local v16           #rec:Lcom/common/CoreBuffer;
    .local v17, rec:Lcom/common/CoreBuffer;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lattach/authorizePut;->handleResponseBody(Lcom/common/CoreBuffer;)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v16, v17

    .line 612
    .end local v7           #buf:[B
    .end local v17           #rec:Lcom/common/CoreBuffer;
    .restart local v16       #rec:Lcom/common/CoreBuffer;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/high16 v28, 0x3f80

    invoke-interface/range {v25 .. v28}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 615
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lattach/authorizePut;->timeend()V

    .line 616
    const-string v25, "AuthorizePut"

    const-string v26, "Succ"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v25, 0x1

    goto/16 :goto_2

    .line 585
    .end local v20           #responseContent:Ljava/lang/String;
    .end local v21           #responseLength:J
    .restart local v15       #i:I
    :cond_6
    aget-object v25, v12, v15

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v25

    aget-object v26, v12, v15

    invoke-interface/range {v26 .. v26}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 602
    .end local v15           #i:I
    .restart local v20       #responseContent:Ljava/lang/String;
    .restart local v21       #responseLength:J
    :catch_2
    move-exception v9

    .line 604
    .local v9, e:Lorg/apache/http/ParseException;
    :goto_5
    invoke-virtual {v9}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_4

    .line 605
    .end local v9           #e:Lorg/apache/http/ParseException;
    :catch_3
    move-exception v9

    .line 607
    .local v9, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 619
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #head:[Lorg/apache/http/Header;
    .end local v18           #rentity:Lorg/apache/http/HttpEntity;
    .end local v20           #responseContent:Ljava/lang/String;
    .end local v21           #responseLength:J
    .end local v23           #rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lattach/authorizePut;->timeend()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    const/16 v27, 0x0

    const/high16 v28, 0x3f80

    invoke-interface/range {v25 .. v28}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 623
    :cond_8
    const-string v25, "AuthorizePut"

    const-string v26, "Err"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 605
    .end local v16           #rec:Lcom/common/CoreBuffer;
    .restart local v7       #buf:[B
    .restart local v12       #head:[Lorg/apache/http/Header;
    .restart local v17       #rec:Lcom/common/CoreBuffer;
    .restart local v18       #rentity:Lorg/apache/http/HttpEntity;
    .restart local v20       #responseContent:Ljava/lang/String;
    .restart local v21       #responseLength:J
    .restart local v23       #rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v9

    move-object/from16 v16, v17

    .end local v17           #rec:Lcom/common/CoreBuffer;
    .restart local v16       #rec:Lcom/common/CoreBuffer;
    goto :goto_6

    .line 602
    .end local v16           #rec:Lcom/common/CoreBuffer;
    .restart local v17       #rec:Lcom/common/CoreBuffer;
    :catch_5
    move-exception v9

    move-object/from16 v16, v17

    .end local v17           #rec:Lcom/common/CoreBuffer;
    .restart local v16       #rec:Lcom/common/CoreBuffer;
    goto :goto_5
.end method

.method public PutFile()Z
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 511
    new-instance v6, Lattach/putFile;

    invoke-direct {v6}, Lattach/putFile;-><init>()V

    iput-object v6, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    .line 512
    iget-object v6, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    iget-object v7, p0, Lattach/SendFile;->mChunkSigList:Ljava/util/Vector;

    iget-object v8, p0, Lattach/SendFile;->mSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v6, v7, v8}, Lattach/putFile;->SetChunkSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V

    .line 513
    iget-object v6, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v6}, Lattach/putFile;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v0

    .line 514
    .local v0, Body:Lcom/common/CoreBuffer;
    invoke-virtual {v0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v6

    iget v7, p0, Lattach/SendFile;->mFileSize:I

    add-int/2addr v6, v7

    iput v6, p0, Lattach/SendFile;->mputFileBodyLen:I

    .line 515
    iget-object v6, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    iget-object v7, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v7}, Lattach/authorizePut;->GetResponeBody()Lcom/common/CoreBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lattach/putFile;->getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;

    move-result-object v1

    .line 518
    .local v1, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lattach/HttpsConnect;

    iget-object v6, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v6}, Lattach/putFile;->getPutFileURL()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PUT"

    invoke-direct {v2, v6, v7}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    .local v2, client:Lattach/HttpsConnect;
    iget-object v6, p0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    invoke-virtual {v2, v6, v4}, Lattach/HttpsConnect;->setListener(Lcom/client/MessageRateListener;I)V

    .line 520
    new-instance v3, Lcom/common/CoreBuffer;

    new-array v6, v9, [B

    invoke-direct {v3, v6, v9}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 521
    .local v3, rec:Lcom/common/CoreBuffer;
    invoke-virtual {v2, v5, v4}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 522
    invoke-virtual {v2, v1}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 523
    iget-object v6, p0, Lattach/SendFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v6, v3}, Lattach/HttpsConnect;->setSendRecType(Ljava/lang/String;Lcom/common/CoreBuffer;)V

    .line 524
    iget-object v6, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v6}, Lattach/putFile;->timeinit()V

    .line 525
    invoke-virtual {v2, v0}, Lattach/HttpsConnect;->execute(Lcom/common/CoreBuffer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 526
    const-string v5, "PutFile"

    const-string v6, "Succ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v5, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v5}, Lattach/putFile;->timeend()V

    .line 528
    iget-object v5, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v5, v3}, Lattach/putFile;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 529
    iget-object v5, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v2}, Lattach/HttpsConnect;->getResponeHeader()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lattach/putFile;->handleResponseHeaders(Ljava/util/Map;)V

    .line 534
    :goto_0
    return v4

    .line 533
    :cond_0
    const-string v4, "PutFile"

    const-string v6, "Err"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 534
    goto :goto_0
.end method

.method public PutFilett()Z
    .locals 29

    .prologue
    .line 216
    new-instance v4, Lattach/putFile;

    invoke-direct {v4}, Lattach/putFile;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lattach/SendFile;->mChunkSigList:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v7, v0, Lattach/SendFile;->mSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v4, v5, v7}, Lattach/putFile;->SetChunkSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v6

    .line 219
    .local v6, Body:Lcom/common/CoreBuffer;
    invoke-virtual {v6}, Lcom/common/CoreBuffer;->getLen()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lattach/SendFile;->mFileSize:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lattach/SendFile;->mputFileBodyLen:I

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v5}, Lattach/authorizePut;->GetResponeBody()Lcom/common/CoreBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lattach/putFile;->getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;

    move-result-object v8

    .line 223
    .local v8, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lattach/SendFile;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v18

    .line 230
    .local v18, httpClient:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->getMethod()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PUT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 231
    new-instance v20, Lorg/apache/http/client/methods/HttpPut;

    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->getPutFileURL()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 232
    .local v20, httpPut:Lorg/apache/http/client/methods/HttpPut;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->timeinit()V

    .line 244
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v15, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 247
    .local v3, fileInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .local v16, fileInputStream:Ljava/io/FileInputStream;
    move-object/from16 v3, v16

    .line 252
    .end local v16           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    :goto_1
    new-instance v2, Lattach/Body_File_Entity;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    invoke-direct/range {v2 .. v7}, Lattach/Body_File_Entity;-><init>(Ljava/io/FileInputStream;JLcom/common/CoreBuffer;Lcom/client/MessageRateListener;)V

    .line 253
    .local v2, reqEntity:Lattach/Body_File_Entity;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 255
    const/16 v23, 0x0

    .line 256
    .local v23, rec:Lcom/common/CoreBuffer;
    const/16 v25, 0x0

    .line 258
    .local v25, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v25

    .line 266
    :goto_2
    if-nez v25, :cond_1

    .line 267
    const/4 v4, 0x0

    .line 484
    .end local v20           #httpPut:Lorg/apache/http/client/methods/HttpPut;
    :goto_3
    return v4

    .line 232
    .end local v2           #reqEntity:Lattach/Body_File_Entity;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    .restart local v20       #httpPut:Lorg/apache/http/client/methods/HttpPut;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 234
    .local v14, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/client/methods/HttpPut;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v15       #file:Ljava/io/File;
    :catch_0
    move-exception v12

    .line 250
    .local v12, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 259
    .end local v12           #e1:Ljava/io/FileNotFoundException;
    .restart local v2       #reqEntity:Lattach/Body_File_Entity;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    .restart local v25       #response:Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v11

    .line 261
    .local v11, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v11}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_2

    .line 262
    .end local v11           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v11

    .line 264
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 269
    .end local v11           #e:Ljava/io/IOException;
    :cond_1
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 270
    .local v10, code:I
    const-string v4, "Put File"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "resCode = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v2}, Lattach/Body_File_Entity;->getMD5()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lattach/SendFile;->mmd5:Ljava/lang/String;

    .line 272
    const/16 v4, 0xc9

    if-eq v10, v4, :cond_2

    const/16 v4, 0xc8

    if-ne v10, v4, :cond_d

    .line 273
    :cond_2
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 274
    .local v13, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v17

    .line 275
    .local v17, head:[Lorg/apache/http/Header;
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 276
    .local v22, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_3

    .line 277
    const/16 v21, 0x0

    .local v21, i:I
    :goto_4
    move-object/from16 v0, v17

    array-length v4, v0

    move/from16 v0, v21

    if-lt v0, v4, :cond_5

    .line 281
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lattach/SendFile;->mmd5:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Lattach/putFile;->handleResponseHeaders(Ljava/util/Map;Ljava/lang/String;)Z

    .line 286
    .end local v21           #i:I
    :cond_3
    const-wide/16 v27, 0x0

    .line 287
    .local v27, responseLength:J
    const-string v26, ""

    .line 288
    .local v26, responseContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->timeend()V

    .line 289
    if-eqz v13, :cond_4

    .line 290
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v27

    .line 292
    :try_start_2
    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v9

    .line 293
    .local v9, buf:[B
    new-instance v24, Lcom/common/CoreBuffer;

    move-wide/from16 v0, v27

    long-to-int v4, v0

    move-object/from16 v0, v24

    invoke-direct {v0, v9, v4}, Lcom/common/CoreBuffer;-><init>([BI)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 294
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .local v24, rec:Lcom/common/CoreBuffer;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lattach/putFile;->handleResponseBody(Lcom/common/CoreBuffer;)V
    :try_end_3
    .catch Lorg/apache/http/ParseException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c

    move-object/from16 v23, v24

    .line 306
    .end local v9           #buf:[B
    .end local v24           #rec:Lcom/common/CoreBuffer;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    :cond_4
    :goto_5
    const-string v4, "res"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " data:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 278
    .end local v26           #responseContent:Ljava/lang/String;
    .end local v27           #responseLength:J
    .restart local v21       #i:I
    :cond_5
    aget-object v4, v17, v21

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v17, v21

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string v4, "putFile resheader"

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v7, v17, v21

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v17, v21

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4

    .line 296
    .end local v21           #i:I
    .restart local v26       #responseContent:Ljava/lang/String;
    .restart local v27       #responseLength:J
    :catch_3
    move-exception v11

    .line 298
    .local v11, e:Lorg/apache/http/ParseException;
    :goto_6
    invoke-virtual {v11}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_5

    .line 299
    .end local v11           #e:Lorg/apache/http/ParseException;
    :catch_4
    move-exception v11

    .line 301
    .local v11, e:Ljava/io/IOException;
    :goto_7
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 313
    .end local v2           #reqEntity:Lattach/Body_File_Entity;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .end local v10           #code:I
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v15           #file:Ljava/io/File;
    .end local v17           #head:[Lorg/apache/http/Header;
    .end local v20           #httpPut:Lorg/apache/http/client/methods/HttpPut;
    .end local v22           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    .end local v26           #responseContent:Ljava/lang/String;
    .end local v27           #responseLength:J
    :cond_6
    new-instance v19, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->getPutFileURL()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 314
    .local v19, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->timeinit()V

    .line 326
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mFilePath:Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    .restart local v15       #file:Ljava/io/File;
    const/4 v3, 0x0

    .line 329
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v16       #fileInputStream:Ljava/io/FileInputStream;
    move-object/from16 v3, v16

    .line 334
    .end local v16           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    :goto_9
    new-instance v2, Lattach/Body_File_Entity;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    invoke-direct/range {v2 .. v7}, Lattach/Body_File_Entity;-><init>(Ljava/io/FileInputStream;JLcom/common/CoreBuffer;Lcom/client/MessageRateListener;)V

    .line 335
    .restart local v2       #reqEntity:Lattach/Body_File_Entity;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 337
    const/16 v23, 0x0

    .line 338
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    const/16 v25, 0x0

    .line 340
    .restart local v25       #response:Lorg/apache/http/HttpResponse;
    :try_start_5
    invoke-interface/range {v18 .. v19}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    move-result-object v25

    .line 348
    :goto_a
    if-nez v25, :cond_8

    .line 349
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 314
    .end local v2           #reqEntity:Lattach/Body_File_Entity;
    .end local v3           #fileInputStream:Ljava/io/FileInputStream;
    .end local v15           #file:Ljava/io/File;
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 316
    .restart local v14       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 330
    .end local v14           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #fileInputStream:Ljava/io/FileInputStream;
    .restart local v15       #file:Ljava/io/File;
    :catch_5
    move-exception v12

    .line 332
    .restart local v12       #e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_9

    .line 341
    .end local v12           #e1:Ljava/io/FileNotFoundException;
    .restart local v2       #reqEntity:Lattach/Body_File_Entity;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    .restart local v25       #response:Lorg/apache/http/HttpResponse;
    :catch_6
    move-exception v11

    .line 343
    .local v11, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v11}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_a

    .line 344
    .end local v11           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_7
    move-exception v11

    .line 346
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 351
    .end local v11           #e:Ljava/io/IOException;
    :cond_8
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 352
    .restart local v10       #code:I
    const-string v4, "Put File"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "resCode = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {v2}, Lattach/Body_File_Entity;->getMD5()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lattach/SendFile;->mmd5:Ljava/lang/String;

    .line 354
    const/16 v4, 0xc9

    if-eq v10, v4, :cond_9

    const/16 v4, 0xc8

    if-ne v10, v4, :cond_d

    .line 355
    :cond_9
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 356
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v17

    .line 357
    .restart local v17       #head:[Lorg/apache/http/Header;
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 358
    .restart local v22       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v17, :cond_a

    .line 359
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_b
    move-object/from16 v0, v17

    array-length v4, v0

    move/from16 v0, v21

    if-lt v0, v4, :cond_c

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    move-object/from16 v0, p0

    iget-object v5, v0, Lattach/SendFile;->mmd5:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Lattach/putFile;->handleResponseHeaders(Ljava/util/Map;Ljava/lang/String;)Z

    .line 368
    .end local v21           #i:I
    :cond_a
    const-wide/16 v27, 0x0

    .line 369
    .restart local v27       #responseLength:J
    const-string v26, ""

    .line 370
    .restart local v26       #responseContent:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->timeend()V

    .line 371
    if-eqz v13, :cond_b

    .line 372
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v27

    .line 374
    :try_start_6
    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v9

    .line 375
    .restart local v9       #buf:[B
    new-instance v24, Lcom/common/CoreBuffer;

    move-wide/from16 v0, v27

    long-to-int v4, v0

    move-object/from16 v0, v24

    invoke-direct {v0, v9, v4}, Lcom/common/CoreBuffer;-><init>([BI)V
    :try_end_6
    .catch Lorg/apache/http/ParseException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    .line 376
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v24       #rec:Lcom/common/CoreBuffer;
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lattach/putFile;->handleResponseBody(Lcom/common/CoreBuffer;)V
    :try_end_7
    .catch Lorg/apache/http/ParseException; {:try_start_7 .. :try_end_7} :catch_b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a

    move-object/from16 v23, v24

    .line 388
    .end local v9           #buf:[B
    .end local v24           #rec:Lcom/common/CoreBuffer;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    :cond_b
    :goto_c
    const-string v4, "res"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, " data:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 360
    .end local v26           #responseContent:Ljava/lang/String;
    .end local v27           #responseLength:J
    .restart local v21       #i:I
    :cond_c
    aget-object v4, v17, v21

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v17, v21

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v4, "putFile resheader"

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v7, v17, v21

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v17, v21

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    .line 378
    .end local v21           #i:I
    .restart local v26       #responseContent:Ljava/lang/String;
    .restart local v27       #responseLength:J
    :catch_8
    move-exception v11

    .line 380
    .local v11, e:Lorg/apache/http/ParseException;
    :goto_d
    invoke-virtual {v11}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_c

    .line 381
    .end local v11           #e:Lorg/apache/http/ParseException;
    :catch_9
    move-exception v11

    .line 383
    .local v11, e:Ljava/io/IOException;
    :goto_e
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 484
    .end local v11           #e:Ljava/io/IOException;
    .end local v13           #entity:Lorg/apache/http/HttpEntity;
    .end local v17           #head:[Lorg/apache/http/Header;
    .end local v19           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v22           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v26           #responseContent:Ljava/lang/String;
    .end local v27           #responseLength:J
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 381
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v9       #buf:[B
    .restart local v13       #entity:Lorg/apache/http/HttpEntity;
    .restart local v17       #head:[Lorg/apache/http/Header;
    .restart local v19       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v22       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24       #rec:Lcom/common/CoreBuffer;
    .restart local v26       #responseContent:Ljava/lang/String;
    .restart local v27       #responseLength:J
    :catch_a
    move-exception v11

    move-object/from16 v23, v24

    .end local v24           #rec:Lcom/common/CoreBuffer;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    goto :goto_e

    .line 378
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v24       #rec:Lcom/common/CoreBuffer;
    :catch_b
    move-exception v11

    move-object/from16 v23, v24

    .end local v24           #rec:Lcom/common/CoreBuffer;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    goto :goto_d

    .line 299
    .end local v19           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v20       #httpPut:Lorg/apache/http/client/methods/HttpPut;
    .restart local v24       #rec:Lcom/common/CoreBuffer;
    :catch_c
    move-exception v11

    move-object/from16 v23, v24

    .end local v24           #rec:Lcom/common/CoreBuffer;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    goto/16 :goto_7

    .line 296
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v24       #rec:Lcom/common/CoreBuffer;
    :catch_d
    move-exception v11

    move-object/from16 v23, v24

    .end local v24           #rec:Lcom/common/CoreBuffer;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    goto/16 :goto_6
.end method

.method public Send(Ljava/lang/String;[B)Z
    .locals 1
    .parameter "codesendFilePath"
    .parameter "key"

    .prologue
    .line 67
    iput-object p1, p0, Lattach/SendFile;->mFilePath:Ljava/lang/String;

    .line 68
    invoke-static {}, Lattach/_FakeX509TrustManager;->allowAllSSL()V

    .line 69
    invoke-virtual {p0}, Lattach/SendFile;->AuthorizePutt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lattach/SendFile;->PutFilett()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lattach/SendFile;->putCompletet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetAuthorizePutServer(Ljava/lang/String;)V
    .locals 0
    .parameter "ServerName"

    .prologue
    .line 89
    iput-object p1, p0, Lattach/SendFile;->mServerName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public SetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "dsid"
    .parameter "signature"
    .parameter "token"
    .parameter "filesize"

    .prologue
    .line 82
    iput-object p1, p0, Lattach/SendFile;->mSdsid:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lattach/SendFile;->mSsig:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lattach/SendFile;->mStoken:Ljava/lang/String;

    .line 85
    iput p4, p0, Lattach/SendFile;->mFileSize:I

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public SetSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter
    .parameter "mSig"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;",
            "Lcom/common/CoreBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, mChunkSigList:Ljava/util/Vector;,"Ljava/util/Vector<LFileSignature/ChunkSignature;>;"
    iput-object p1, p0, Lattach/SendFile;->mChunkSigList:Ljava/util/Vector;

    .line 79
    iput-object p2, p0, Lattach/SendFile;->mSignature:Lcom/common/CoreBuffer;

    .line 80
    return-void
.end method

.method public putComplete()Z
    .locals 15

    .prologue
    const/16 v14, 0x64

    const/4 v13, 0x1

    .line 185
    new-instance v0, Lattach/putComplete;

    invoke-direct {v0}, Lattach/putComplete;-><init>()V

    iput-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    .line 187
    iget-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    iget-object v1, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v1}, Lattach/putFile;->getSig()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lattach/SendFile;->mSdsid:Ljava/lang/String;

    iget-object v3, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v3}, Lattach/putFile;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lattach/putComplete;->setHeaderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    iget-object v1, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v1}, Lattach/putFile;->getPutFileURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v2}, Lattach/putFile;->getResMD5()Ljava/lang/String;

    move-result-object v2

    .line 189
    iget-object v3, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v3}, Lattach/putFile;->getResEtag()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v4}, Lattach/authorizePut;->getAbsTime()J

    move-result-wide v4

    iget-object v6, p0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v6}, Lattach/putFile;->getAbsTime()J

    move-result-wide v6

    iget v8, p0, Lattach/SendFile;->mputFileBodyLen:I

    .line 188
    invoke-virtual/range {v0 .. v8}, Lattach/putComplete;->SetBodyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 191
    iget-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v0}, Lattach/putComplete;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v9

    .line 193
    .local v9, Body:Lcom/common/CoreBuffer;
    iget-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v0}, Lattach/putComplete;->getHeader()Ljava/util/Map;

    move-result-object v10

    .line 195
    .local v10, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v12, Lattach/HttpsConnect;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lattach/SendFile;->mServerName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/putComplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-direct {v12, v0, v1}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v12, client:Lattach/HttpsConnect;
    iget-object v0, p0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    const/4 v1, 0x2

    invoke-virtual {v12, v0, v1}, Lattach/HttpsConnect;->setListener(Lcom/client/MessageRateListener;I)V

    .line 198
    invoke-virtual {v12, v10}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 199
    invoke-virtual {v12, v13, v13}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 200
    new-instance v11, Lcom/common/CoreBuffer;

    new-array v0, v14, [B

    invoke-direct {v11, v0, v14}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 201
    .local v11, Rec:Lcom/common/CoreBuffer;
    invoke-virtual {v12, v9, v11}, Lattach/HttpsConnect;->setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 202
    iget-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v0}, Lattach/putComplete;->timeinit()V

    .line 204
    invoke-virtual {v12}, Lattach/HttpsConnect;->execute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "PutComplete"

    const-string v1, "Succ"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v0}, Lattach/putComplete;->timeend()V

    .line 207
    iget-object v0, p0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v0, v11}, Lattach/putComplete;->handleResponseBody(Lcom/common/CoreBuffer;)V

    move v0, v13

    .line 213
    :goto_0
    return v0

    .line 211
    :cond_0
    const-string v0, "PutComplete"

    const-string v1, "Err"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putCompletet()Z
    .locals 31

    .prologue
    .line 93
    new-instance v2, Lattach/putComplete;

    invoke-direct {v2}, Lattach/putComplete;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    move-object/from16 v0, p0

    iget-object v3, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v3}, Lattach/putFile;->getSig()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mSdsid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v5}, Lattach/putFile;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lattach/putComplete;->setHeaderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    move-object/from16 v0, p0

    iget-object v3, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v3}, Lattach/putFile;->getPutFileURL()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v4}, Lattach/putFile;->getResMD5()Ljava/lang/String;

    move-result-object v4

    .line 97
    move-object/from16 v0, p0

    iget-object v5, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v5}, Lattach/putFile;->getResEtag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lattach/SendFile;->mAuthorizePut:Lattach/authorizePut;

    invoke-virtual {v6}, Lattach/authorizePut;->getAbsTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lattach/SendFile;->mPutFile:Lattach/putFile;

    invoke-virtual {v8}, Lattach/putFile;->getAbsTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget v10, v0, Lattach/SendFile;->mputFileBodyLen:I

    .line 96
    invoke-virtual/range {v2 .. v10}, Lattach/putComplete;->SetBodyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v2}, Lattach/putComplete;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v11

    .line 101
    .local v11, Body:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v2}, Lattach/putComplete;->getHeader()Ljava/util/Map;

    move-result-object v12

    .line 103
    .local v12, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lattach/SendFile;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v19

    .line 108
    .local v19, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v20, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lattach/SendFile;->mServerName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/putComplete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 109
    .local v20, httpPost:Lorg/apache/http/client/methods/HttpPost;
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-virtual {v11}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    new-array v0, v2, [B

    move-object/from16 v30, v0

    .line 114
    .local v30, tmp:[B
    invoke-virtual {v11}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v11}, Lcom/common/CoreBuffer;->getLen()I

    move-result v5

    move-object/from16 v0, v30

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    new-instance v16, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 117
    .local v16, entityt:Lorg/apache/http/entity/ByteArrayEntity;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lorg/apache/http/entity/ByteArrayEntity;->setChunked(Z)V

    .line 118
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    const/16 v25, 0x0

    .line 120
    .local v25, response:Lorg/apache/http/HttpResponse;
    const/16 v22, 0x0

    .line 121
    .local v22, rec:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v2}, Lattach/putComplete;->timeinit()V

    .line 123
    :try_start_0
    invoke-interface/range {v19 .. v20}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v25

    .line 131
    :goto_1
    if-nez v25, :cond_1

    .line 132
    const/4 v2, 0x0

    .line 181
    :goto_2
    return v2

    .line 109
    .end local v16           #entityt:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v22           #rec:Lcom/common/CoreBuffer;
    .end local v25           #response:Lorg/apache/http/HttpResponse;
    .end local v30           #tmp:[B
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 111
    .local v17, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .end local v17           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v16       #entityt:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v22       #rec:Lcom/common/CoreBuffer;
    .restart local v25       #response:Lorg/apache/http/HttpResponse;
    .restart local v30       #tmp:[B
    :catch_0
    move-exception v15

    .line 126
    .local v15, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v15}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 127
    .end local v15           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v15

    .line 129
    .local v15, e:Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 134
    .end local v15           #e:Ljava/io/IOException;
    :cond_1
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 135
    .local v14, code:I
    const/16 v2, 0xc8

    if-eq v14, v2, :cond_2

    const/16 v2, 0xce

    if-ne v14, v2, :cond_7

    .line 136
    :cond_2
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v24

    .line 137
    .local v24, rentity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v18

    .line 138
    .local v18, head:[Lorg/apache/http/Header;
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v29, rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v18, :cond_3

    .line 140
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move-object/from16 v0, v18

    array-length v2, v0

    move/from16 v0, v21

    if-lt v0, v2, :cond_6

    .line 148
    .end local v21           #i:I
    :cond_3
    const-wide/16 v27, 0x0

    .line 149
    .local v27, responseLength:J
    const-string v26, ""

    .line 150
    .local v26, responseContent:Ljava/lang/String;
    if-eqz v24, :cond_4

    .line 151
    invoke-interface/range {v24 .. v24}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v27

    .line 153
    :try_start_1
    invoke-static/range {v24 .. v24}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v13

    .line 154
    .local v13, buf:[B
    new-instance v23, Lcom/common/CoreBuffer;

    move-wide/from16 v0, v27

    long-to-int v2, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v13, v2}, Lcom/common/CoreBuffer;-><init>([BI)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 155
    .end local v22           #rec:Lcom/common/CoreBuffer;
    .local v23, rec:Lcom/common/CoreBuffer;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lattach/putComplete;->handleResponseBody(Lcom/common/CoreBuffer;)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object/from16 v22, v23

    .line 168
    .end local v13           #buf:[B
    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v22       #rec:Lcom/common/CoreBuffer;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    if-eqz v2, :cond_5

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/high16 v5, 0x3f80

    invoke-interface {v2, v3, v4, v5}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 171
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v2}, Lattach/putComplete;->timeend()V

    .line 172
    const-string v2, "PutComplete"

    const-string v3, "Succ"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 141
    .end local v26           #responseContent:Ljava/lang/String;
    .end local v27           #responseLength:J
    .restart local v21       #i:I
    :cond_6
    aget-object v2, v18, v21

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v18, v21

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 158
    .end local v21           #i:I
    .restart local v26       #responseContent:Ljava/lang/String;
    .restart local v27       #responseLength:J
    :catch_2
    move-exception v15

    .line 160
    .local v15, e:Lorg/apache/http/ParseException;
    :goto_5
    invoke-virtual {v15}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_4

    .line 161
    .end local v15           #e:Lorg/apache/http/ParseException;
    :catch_3
    move-exception v15

    .line 163
    .local v15, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 175
    .end local v15           #e:Ljava/io/IOException;
    .end local v18           #head:[Lorg/apache/http/Header;
    .end local v24           #rentity:Lorg/apache/http/HttpEntity;
    .end local v26           #responseContent:Ljava/lang/String;
    .end local v27           #responseLength:J
    .end local v29           #rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->mPutComplete:Lattach/putComplete;

    invoke-virtual {v2}, Lattach/putComplete;->timeend()V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    if-eqz v2, :cond_8

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/high16 v5, 0x3f80

    invoke-interface {v2, v3, v4, v5}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 179
    :cond_8
    const-string v2, "PutComplete"

    const-string v3, "Err"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 161
    .end local v22           #rec:Lcom/common/CoreBuffer;
    .restart local v13       #buf:[B
    .restart local v18       #head:[Lorg/apache/http/Header;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    .restart local v24       #rentity:Lorg/apache/http/HttpEntity;
    .restart local v26       #responseContent:Ljava/lang/String;
    .restart local v27       #responseLength:J
    .restart local v29       #rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v15

    move-object/from16 v22, v23

    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v22       #rec:Lcom/common/CoreBuffer;
    goto :goto_6

    .line 158
    .end local v22           #rec:Lcom/common/CoreBuffer;
    .restart local v23       #rec:Lcom/common/CoreBuffer;
    :catch_5
    move-exception v15

    move-object/from16 v22, v23

    .end local v23           #rec:Lcom/common/CoreBuffer;
    .restart local v22       #rec:Lcom/common/CoreBuffer;
    goto :goto_5
.end method

.method public setListener(Lcom/client/MessageRateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lattach/SendFile;->listener:Lcom/client/MessageRateListener;

    .line 75
    return-void
.end method
