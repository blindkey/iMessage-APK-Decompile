.class public LUserLogin/UserRegisterHttpsRequest;
.super Ljava/lang/Object;
.source "UserRegisterHttpsRequest.java"


# instance fields
.field private body:Lcom/common/CoreBuffer;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resBody:Lcom/common/CoreBuffer;

.field private resHeader:Lcom/common/CoreBuffer;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/common/CoreBuffer;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v5

    .line 55
    .local v5, len:I
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 57
    .local v0, buf:[B
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, LUserLogin/UserRegisterHttpsRequest;->map:Ljava/util/Map;

    .line 58
    const/4 v3, 0x7

    .line 59
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-byte v12, v0, v3

    iput v12, p0, LUserLogin/UserRegisterHttpsRequest;->type:I

    .line 61
    :goto_0
    if-lt v4, v5, :cond_0

    .line 112
    return-void

    .line 62
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-byte v12, v0, v4

    sparse-switch v12, :sswitch_data_0

    .line 97
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-byte v8, v0, v3

    .line 98
    .local v8, size:I
    new-array v9, v8, [B

    .line 99
    .local v9, tbuf:[B
    const/4 v12, 0x0

    invoke-static {v0, v4, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    add-int v3, v4, v8

    .line 102
    .end local v4           #index:I
    .restart local v3       #index:I
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v9}, Ljava/lang/String;-><init>([B)V

    .line 103
    .local v11, tmp1:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 104
    .local v7, ma1:I
    const/4 v12, -0x1

    if-eq v7, v12, :cond_1

    .line 105
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, h1:Ljava/lang/String;
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, h2:Ljava/lang/String;
    iget-object v12, p0, LUserLogin/UserRegisterHttpsRequest;->map:Ljava/util/Map;

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #h1:Ljava/lang/String;
    .end local v2           #h2:Ljava/lang/String;
    .end local v7           #ma1:I
    .end local v11           #tmp1:Ljava/lang/String;
    :cond_1
    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 64
    .end local v4           #index:I
    .end local v8           #size:I
    .end local v9           #tbuf:[B
    .restart local v3       #index:I
    :sswitch_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-byte v8, v0, v3

    .line 65
    .restart local v8       #size:I
    new-array v9, v8, [B

    .line 66
    .restart local v9       #tbuf:[B
    const/4 v12, 0x0

    invoke-static {v0, v4, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    add-int v3, v4, v8

    .line 69
    .end local v4           #index:I
    .restart local v3       #index:I
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "https://"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, LUserLogin/UserRegisterHttpsRequest;->url:Ljava/lang/String;

    move v4, v3

    .line 70
    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 72
    .end local v4           #index:I
    .end local v8           #size:I
    .end local v9           #tbuf:[B
    .restart local v3       #index:I
    :sswitch_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-byte v12, v0, v3

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-byte v13, v0, v4

    and-int/lit16 v13, v13, 0xff

    or-int v8, v12, v13

    .line 73
    .restart local v8       #size:I
    new-array v9, v8, [B

    .line 74
    .restart local v9       #tbuf:[B
    const/4 v12, 0x0

    invoke-static {v0, v3, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    add-int/2addr v3, v8

    .line 76
    new-instance v12, Lcom/common/CoreBuffer;

    invoke-direct {v12, v9, v8}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v12, p0, LUserLogin/UserRegisterHttpsRequest;->body:Lcom/common/CoreBuffer;

    move v4, v3

    .line 77
    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 83
    .end local v4           #index:I
    .end local v8           #size:I
    .end local v9           #tbuf:[B
    .restart local v3       #index:I
    :sswitch_2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-byte v12, v0, v3

    shl-int/lit8 v12, v12, 0x8

    const v13, 0xff00

    and-int/2addr v12, v13

    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-byte v13, v0, v4

    and-int/lit16 v13, v13, 0xff

    or-int v8, v12, v13

    .line 84
    .restart local v8       #size:I
    new-array v9, v8, [B

    .line 85
    .restart local v9       #tbuf:[B
    const/4 v12, 0x0

    invoke-static {v0, v3, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    add-int/2addr v3, v8

    .line 88
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 89
    .local v10, tmp:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 90
    .local v6, ma:I
    const/4 v12, -0x1

    if-eq v6, v12, :cond_1

    .line 91
    const/4 v12, 0x0

    invoke-virtual {v10, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1       #h1:Ljava/lang/String;
    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .restart local v2       #h2:Ljava/lang/String;
    iget-object v12, p0, LUserLogin/UserRegisterHttpsRequest;->map:Ljava/util/Map;

    invoke-interface {v12, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v3

    .line 95
    .end local v3           #index:I
    .restart local v4       #index:I
    goto/16 :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1d -> :sswitch_2
        0x1f -> :sswitch_2
        0x20 -> :sswitch_2
        0x21 -> :sswitch_2
        0x30 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getNewHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 10

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v5

    .line 201
    .local v5, trustStore:Ljava/security/KeyStore;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 203
    new-instance v4, Lattach/SSLSocketFactoryEx;

    invoke-direct {v4, v5}, Lattach/SSLSocketFactoryEx;-><init>(Ljava/security/KeyStore;)V

    .line 204
    .local v4, sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v6, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 206
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 207
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget-object v6, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 208
    const-string v6, "UTF-8"

    invoke-static {v2, v6}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 210
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 211
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v8

    const/16 v9, 0x50

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 212
    new-instance v6, Lorg/apache/http/conn/scheme/Scheme;

    const-string v7, "https"

    const/16 v8, 0x1bb

    invoke-direct {v6, v7, v4, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v3, v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 214
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 216
    .local v0, ccm:Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v0           #ccm:Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2           #params:Lorg/apache/http/params/HttpParams;
    .end local v3           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v4           #sf:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    return-object v6

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter "rec"

    .prologue
    .line 255
    iput-object p1, p0, LUserLogin/UserRegisterHttpsRequest;->resBody:Lcom/common/CoreBuffer;

    .line 256
    return-void
.end method

.method private handleResponseHeaders(Ljava/util/Map;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, responeHeader:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v4, ""

    .line 240
    .local v4, res:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 241
    .local v2, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 250
    new-instance v6, Lcom/common/CoreBuffer;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v6, p0, LUserLogin/UserRegisterHttpsRequest;->resHeader:Lcom/common/CoreBuffer;

    .line 251
    return-void

    .line 242
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 245
    .local v5, valu:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 247
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private handleResponseHeaders(Ljava/util/Map;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, responeHeader:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, ""

    .line 224
    .local v3, res:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    .local v1, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 232
    new-instance v5, Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v5, p0, LUserLogin/UserRegisterHttpsRequest;->resHeader:Lcom/common/CoreBuffer;

    .line 233
    const/4 v5, 0x1

    return v5

    .line 226
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    .local v0, entry:Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    .local v4, valu:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public res_body()Lcom/common/CoreBuffer;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, headerLen:I
    iget-object v8, p0, LUserLogin/UserRegisterHttpsRequest;->resBody:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getLen()I

    move-result v0

    .line 262
    .local v0, bodylen:I
    add-int/lit8 v6, v0, 0xe

    .line 263
    .local v6, size:I
    new-array v1, v6, [B

    .line 264
    .local v1, buf:[B
    const/4 v3, 0x0

    .line 265
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/16 v8, 0xa

    aput-byte v8, v1, v3

    .line 266
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    add-int/lit8 v8, v6, -0x5

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 267
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    add-int/lit8 v8, v6, -0x5

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 268
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    add-int/lit8 v8, v6, -0x5

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 269
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    add-int/lit8 v8, v6, -0x5

    shr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 271
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aput-byte v11, v1, v4

    .line 272
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-byte v9, v1, v3

    .line 273
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    iget v8, p0, LUserLogin/UserRegisterHttpsRequest;->type:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, LUserLogin/UserRegisterHttpsRequest;->type:I

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 275
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v8, 0x40

    aput-byte v8, v1, v3

    .line 276
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    int-to-byte v8, v10

    aput-byte v8, v1, v4

    .line 277
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    int-to-byte v8, v10

    aput-byte v8, v1, v3

    .line 278
    iget-object v8, p0, LUserLogin/UserRegisterHttpsRequest;->resHeader:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v8

    invoke-static {v8, v10, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    add-int/lit8 v3, v2, 0xb

    .line 281
    .end local v4           #index:I
    .restart local v3       #index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    const/16 v8, 0x41

    aput-byte v8, v1, v3

    .line 282
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    .line 283
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    shr-int/lit8 v8, v0, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v3

    .line 285
    iget-object v8, p0, LUserLogin/UserRegisterHttpsRequest;->resBody:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v8

    invoke-static {v8, v10, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object v8, p0, LUserLogin/UserRegisterHttpsRequest;->resBody:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v8

    invoke-static {v8}, LdataEncode/gZip;->uncompressToString([B)Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, rb:Ljava/lang/String;
    const-string v5, ""

    .line 288
    add-int/lit8 v3, v0, 0xe

    .line 290
    .end local v4           #index:I
    .restart local v3       #index:I
    invoke-static {v1}, LdataEncode/aesCode;->Encrypt([B)[B

    move-result-object v7

    .line 291
    .local v7, tbuf:[B
    array-length v8, v7

    add-int/lit8 v8, v8, 0x5

    new-array v1, v8, [B

    .line 292
    const/16 v8, 0x3c

    aput-byte v8, v1, v10

    .line 293
    array-length v8, v7

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v1, v9

    .line 294
    const/4 v8, 0x2

    array-length v9, v7

    shr-int/lit8 v9, v9, 0x10

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 295
    array-length v8, v7

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v1, v11

    .line 296
    const/4 v8, 0x4

    array-length v9, v7

    shr-int/lit8 v9, v9, 0x0

    int-to-byte v9, v9

    aput-byte v9, v1, v8

    .line 297
    const/4 v8, 0x5

    array-length v9, v7

    invoke-static {v7, v10, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    array-length v8, v7

    add-int/lit8 v6, v8, 0x5

    .line 300
    new-instance v8, Lcom/common/CoreBuffer;

    invoke-direct {v8, v1, v6}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v8
.end method

.method public start()Z
    .locals 6

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x1

    .line 117
    new-instance v0, Lattach/HttpsConnect;

    iget-object v3, p0, LUserLogin/UserRegisterHttpsRequest;->url:Ljava/lang/String;

    const-string v4, "POST"

    invoke-direct {v0, v3, v4}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, client:Lattach/HttpsConnect;
    new-instance v1, Lcom/common/CoreBuffer;

    new-array v3, v5, [B

    invoke-direct {v1, v3, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 120
    .local v1, rec:Lcom/common/CoreBuffer;
    invoke-virtual {v0, v2, v2}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 121
    iget-object v3, p0, LUserLogin/UserRegisterHttpsRequest;->map:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 122
    iget-object v3, p0, LUserLogin/UserRegisterHttpsRequest;->body:Lcom/common/CoreBuffer;

    invoke-virtual {v0, v3, v1}, Lattach/HttpsConnect;->setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 123
    invoke-virtual {v0}, Lattach/HttpsConnect;->execute()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Register https request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, LUserLogin/UserRegisterHttpsRequest;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Succ"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0, v1}, LUserLogin/UserRegisterHttpsRequest;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 126
    invoke-virtual {v0}, Lattach/HttpsConnect;->getResponeHeader()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v3}, LUserLogin/UserRegisterHttpsRequest;->handleResponseHeaders(Ljava/util/Map;)V

    .line 131
    :goto_0
    return v2

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Register https request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, LUserLogin/UserRegisterHttpsRequest;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Err"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public startc()Z
    .locals 22

    .prologue
    .line 134
    invoke-static {}, LUserLogin/UserRegisterHttpsRequest;->getNewHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v8

    .line 137
    .local v8, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v9, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, LUserLogin/UserRegisterHttpsRequest;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 138
    .local v9, httpPost:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, LUserLogin/UserRegisterHttpsRequest;->map:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_0

    .line 142
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, LUserLogin/UserRegisterHttpsRequest;->body:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 143
    .local v5, entityt:Lorg/apache/http/entity/ByteArrayEntity;
    invoke-virtual {v9, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 144
    const/4 v14, 0x0

    .line 145
    .local v14, response:Lorg/apache/http/HttpResponse;
    const/4 v11, 0x0

    .line 147
    .local v11, rec:Lcom/common/CoreBuffer;
    :try_start_0
    invoke-interface {v8, v9}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 155
    :goto_1
    if-nez v14, :cond_1

    .line 156
    const/16 v19, 0x0

    .line 196
    :goto_2
    return v19

    .line 138
    .end local v5           #entityt:Lorg/apache/http/entity/ByteArrayEntity;
    .end local v11           #rec:Lcom/common/CoreBuffer;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 140
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #entityt:Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v11       #rec:Lcom/common/CoreBuffer;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    .line 150
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 151
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v4

    .line 153
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 158
    .end local v4           #e:Ljava/io/IOException;
    :cond_1
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 159
    .local v3, code:I
    const-string v19, "Login"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "resCode = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-eq v3, v0, :cond_2

    const/16 v19, 0xce

    move/from16 v0, v19

    if-ne v3, v0, :cond_6

    .line 161
    :cond_2
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 162
    .local v13, rentity:Lorg/apache/http/HttpEntity;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    .line 163
    .local v7, head:[Lorg/apache/http/Header;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v18, rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 165
    const/4 v10, 0x0

    .local v10, i:I
    :goto_3
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_5

    .line 168
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, LUserLogin/UserRegisterHttpsRequest;->handleResponseHeaders(Ljava/util/Map;)Z

    .line 173
    .end local v10           #i:I
    :cond_3
    const-wide/16 v16, 0x0

    .line 174
    .local v16, responseLength:J
    const-string v15, ""

    .line 175
    .local v15, responseContent:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 176
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    .line 178
    :try_start_1
    invoke-static {v13}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v2

    .line 179
    .local v2, buf:[B
    new-instance v12, Lcom/common/CoreBuffer;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v12, v2, v0}, Lcom/common/CoreBuffer;-><init>([BI)V
    :try_end_1
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 180
    .end local v11           #rec:Lcom/common/CoreBuffer;
    .local v12, rec:Lcom/common/CoreBuffer;
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, LUserLogin/UserRegisterHttpsRequest;->handleResponseBody(Lcom/common/CoreBuffer;)V
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v11, v12

    .line 192
    .end local v2           #buf:[B
    .end local v12           #rec:Lcom/common/CoreBuffer;
    .restart local v11       #rec:Lcom/common/CoreBuffer;
    :cond_4
    :goto_4
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Register https request: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, LUserLogin/UserRegisterHttpsRequest;->type:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Succ"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/16 v19, 0x1

    goto/16 :goto_2

    .line 166
    .end local v15           #responseContent:Ljava/lang/String;
    .end local v16           #responseLength:J
    .restart local v10       #i:I
    :cond_5
    aget-object v19, v7, v10

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v19

    aget-object v20, v7, v10

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 182
    .end local v10           #i:I
    .restart local v15       #responseContent:Ljava/lang/String;
    .restart local v16       #responseLength:J
    :catch_2
    move-exception v4

    .line 184
    .local v4, e:Lorg/apache/http/ParseException;
    :goto_5
    invoke-virtual {v4}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_4

    .line 185
    .end local v4           #e:Lorg/apache/http/ParseException;
    :catch_3
    move-exception v4

    .line 187
    .local v4, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 195
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #head:[Lorg/apache/http/Header;
    .end local v13           #rentity:Lorg/apache/http/HttpEntity;
    .end local v15           #responseContent:Ljava/lang/String;
    .end local v16           #responseLength:J
    .end local v18           #rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Register https request: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, LUserLogin/UserRegisterHttpsRequest;->type:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Err"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 185
    .end local v11           #rec:Lcom/common/CoreBuffer;
    .restart local v2       #buf:[B
    .restart local v7       #head:[Lorg/apache/http/Header;
    .restart local v12       #rec:Lcom/common/CoreBuffer;
    .restart local v13       #rentity:Lorg/apache/http/HttpEntity;
    .restart local v15       #responseContent:Ljava/lang/String;
    .restart local v16       #responseLength:J
    .restart local v18       #rmap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_4
    move-exception v4

    move-object v11, v12

    .end local v12           #rec:Lcom/common/CoreBuffer;
    .restart local v11       #rec:Lcom/common/CoreBuffer;
    goto :goto_6

    .line 182
    .end local v11           #rec:Lcom/common/CoreBuffer;
    .restart local v12       #rec:Lcom/common/CoreBuffer;
    :catch_5
    move-exception v4

    move-object v11, v12

    .end local v12           #rec:Lcom/common/CoreBuffer;
    .restart local v11       #rec:Lcom/common/CoreBuffer;
    goto :goto_5
.end method
