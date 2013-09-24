.class public Lattach/HttpsConnect;
.super Ljava/lang/Object;
.source "HttpsConnect.java"


# static fields
.field private static final CONNECT:I = 0x0

.field private static final OVER:I = 0x3

.field private static final RECVDATA:I = 0x2

.field private static final SENDBODYRECBODY:I = 0x3

.field private static final SENDBODYRECFILE:I = 0x1

.field private static final SENDDATA:I = 0x1

.field private static final SENDFILERECBODY:I = 0x2

.field private static final SENDFILERECFILE:I

.field private static final START:I


# instance fields
.field private Header:Ljava/util/Map;
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

.field private IfIn:Z

.field private IfOut:Z

.field private SendRecType:I

.field private chunkLength:I

.field private chunkMode:Z

.field private con:Ljavax/net/ssl/HttpsURLConnection;

.field private listener:Lcom/client/MessageRateListener;

.field private mLinkType:I

.field private mMethod:Ljava/lang/String;

.field private mServer:Ljava/lang/String;

.field private recBody:Lcom/common/CoreBuffer;

.field private recBodySize:I

.field private recFileName:Ljava/lang/String;

.field private resHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private sendBody:Lcom/common/CoreBuffer;

.field private sendFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "method"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lattach/HttpsConnect;->chunkMode:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    .line 61
    iput-object p1, p0, Lattach/HttpsConnect;->mServer:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lattach/HttpsConnect;->mMethod:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public AddHeader(Ljava/util/Map;)V
    .locals 0
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
    .line 71
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lattach/HttpsConnect;->Header:Ljava/util/Map;

    .line 74
    return-void
.end method

.method public execute()Z
    .locals 29

    .prologue
    .line 108
    invoke-static {}, Lattach/_FakeX509TrustManager;->allowAllSSL()V

    .line 118
    :try_start_0
    new-instance v24, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->mServer:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v24

    check-cast v24, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    const/16 v25, 0x2710

    invoke-virtual/range {v24 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    const/16 v25, 0x1388

    invoke-virtual/range {v24 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->mMethod:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->chunkMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->chunkLength:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setChunkedStreamingMode(I)V

    .line 138
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->Header:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 139
    .local v10, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-nez v24, :cond_6

    .line 147
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfOut:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfIn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 155
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    invoke-interface/range {v24 .. v27}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 159
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfOut:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 160
    new-instance v23, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 161
    .local v23, wr:Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->SendRecType:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x1

    if-eqz v24, :cond_7

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->sendBody:Lcom/common/CoreBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->sendBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/common/CoreBuffer;->getLen()I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Ljava/io/DataOutputStream;->write([BII)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_4

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    invoke-interface/range {v24 .. v27}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 185
    :cond_4
    :goto_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataOutputStream;->close()V

    .line 190
    .end local v23           #wr:Ljava/io/DataOutputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v19

    .line 191
    .local v19, statusCode:I
    const-string v24, "statusCode"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, " "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 192
    const/16 v24, 0xc8

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    const/16 v24, 0xce

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 193
    const/16 v24, 0xc9

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    .line 194
    const/16 v24, 0x0

    .line 252
    .end local v10           #it:Ljava/util/Iterator;
    .end local v19           #statusCode:I
    :goto_2
    return v24

    .line 122
    :catch_0
    move-exception v5

    .line 124
    .local v5, e1:Ljava/net/ProtocolException;
    invoke-virtual {v5}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 125
    const/16 v24, 0x0

    goto :goto_2

    .line 126
    .end local v5           #e1:Ljava/net/ProtocolException;
    :catch_1
    move-exception v4

    .line 128
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 129
    const/16 v24, 0x0

    goto :goto_2

    .line 130
    .end local v4           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 132
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 133
    const/16 v24, 0x0

    goto :goto_2

    .line 140
    .end local v4           #e:Ljava/io/IOException;
    .restart local v10       #it:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 141
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 142
    .local v11, key:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 143
    .local v22, valu:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #key:Ljava/lang/String;
    .end local v22           #valu:Ljava/lang/String;
    .restart local v23       #wr:Ljava/io/DataOutputStream;
    :cond_7
    :try_start_2
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->sendFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v7, file:Ljava/io/File;
    const/16 v18, 0x0

    .line 169
    .local v18, size:I
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 170
    .local v20, totsize:J
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 171
    .local v8, fis:Ljava/io/FileInputStream;
    const/16 v24, 0x1000

    move/from16 v0, v24

    new-array v3, v0, [B

    .line 173
    .local v3, bytes:[B
    :cond_8
    :goto_3
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .line 174
    .local v12, len:I
    if-gtz v12, :cond_9

    .line 182
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 249
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #len:I
    .end local v18           #size:I
    .end local v20           #totsize:J
    .end local v23           #wr:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    .line 251
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 252
    const/16 v24, 0x0

    goto :goto_2

    .line 176
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #bytes:[B
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v12       #len:I
    .restart local v18       #size:I
    .restart local v20       #totsize:J
    .restart local v23       #wr:Ljava/io/DataOutputStream;
    :cond_9
    const/16 v24, 0x0

    :try_start_3
    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v3, v1, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 177
    add-int v18, v18, v12

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v26, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-interface/range {v24 .. v27}, Lcom/client/MessageRateListener;->Message(IIF)V

    goto :goto_3

    .line 198
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #len:I
    .end local v18           #size:I
    .end local v20           #totsize:J
    .end local v23           #wr:Ljava/io/DataOutputStream;
    .restart local v19       #statusCode:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/HttpsConnect;->resHeader:Ljava/util/Map;

    .line 201
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfIn:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 202
    new-instance v16, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 203
    .local v16, re:Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->SendRecType:I

    move/from16 v24, v0

    and-int/lit8 v24, v24, 0x2

    if-eqz v24, :cond_10

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v17

    .line 205
    .local v17, rec:[B
    const/4 v14, 0x0

    .line 206
    .local v14, offset:I
    move-object/from16 v0, v17

    array-length v15, v0

    .line 208
    .local v15, plen:I
    :cond_b
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    sub-int v15, v24, v14

    .line 209
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v15}, Ljava/io/DataInputStream;->read([BII)I

    move-result v12

    .line 210
    .restart local v12       #len:I
    if-gtz v12, :cond_f

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_c

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    invoke-interface/range {v24 .. v27}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 242
    .end local v14           #offset:I
    .end local v15           #plen:I
    .end local v17           #rec:[B
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataInputStream;->close()V

    .line 244
    .end local v12           #len:I
    .end local v16           #re:Ljava/io/DataInputStream;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_e

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v26, v0

    const/high16 v27, 0x3f80

    invoke-interface/range {v24 .. v27}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 248
    :cond_e
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 212
    .restart local v12       #len:I
    .restart local v14       #offset:I
    .restart local v15       #plen:I
    .restart local v16       #re:Ljava/io/DataInputStream;
    .restart local v17       #rec:[B
    :cond_f
    add-int/2addr v14, v12

    .line 213
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v14, v0, :cond_b

    .line 214
    mul-int/lit8 v24, v14, 0x2

    move/from16 v0, v24

    new-array v13, v0, [B

    .line 215
    .local v13, nrec:[B
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v13, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    move-object/from16 v17, v13

    .line 207
    goto/16 :goto_4

    .line 224
    .end local v12           #len:I
    .end local v13           #nrec:[B
    .end local v14           #offset:I
    .end local v15           #plen:I
    .end local v17           #rec:[B
    :cond_10
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->recFileName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .restart local v7       #file:Ljava/io/File;
    const/16 v18, 0x0

    .line 226
    .restart local v18       #size:I
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 227
    .restart local v20       #totsize:J
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 228
    .local v9, fos:Ljava/io/FileOutputStream;
    const/16 v24, 0x1000

    move/from16 v0, v24

    new-array v3, v0, [B

    .line 230
    .restart local v3       #bytes:[B
    :cond_11
    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    .line 231
    .restart local v12       #len:I
    if-gtz v12, :cond_12

    .line 239
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    .line 233
    :cond_12
    add-int v18, v18, v12

    .line 234
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_11

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v26, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3f80

    mul-float v27, v27, v28

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v28, v0

    div-float v27, v27, v28

    invoke-interface/range {v24 .. v27}, Lcom/client/MessageRateListener;->Message(IIF)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6
.end method

.method public execute(Lcom/common/CoreBuffer;)Z
    .locals 31
    .parameter "body"

    .prologue
    .line 262
    :try_start_0
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->mServer:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    check-cast v26, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->mMethod:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 277
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->Header:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 278
    .local v10, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_6

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 292
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfOut:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfIn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    .line 300
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 304
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfOut:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 305
    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 306
    .local v25, wr:Ljava/io/DataOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v28

    invoke-virtual/range {v25 .. v28}, Ljava/io/DataOutputStream;->write([BII)V

    .line 307
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V

    .line 308
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->sendFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v7, file:Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v19

    .line 310
    .local v19, size:I
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v26

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v22, v26, v28

    .line 312
    .local v22, totsize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f80

    mul-float v29, v29, v30

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 316
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 317
    .local v8, fis:Ljava/io/FileInputStream;
    const/16 v26, 0x1000

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 319
    .local v3, bytes:[B
    :cond_4
    :goto_2
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v13

    .line 320
    .local v13, len:I
    if-gtz v13, :cond_7

    .line 331
    const-string v26, "totsize "

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 333
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V

    .line 334
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->close()V

    .line 336
    const-string v26, "flush stream "

    const-string v27, " "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    const-string v27, "X-Apple-Request-UUID"

    invoke-virtual/range {v26 .. v27}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 340
    .local v21, tmp:Ljava/lang/String;
    const-string v26, "tmp"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, " "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v26, "flush stream 1"

    const-string v27, " "

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v13           #len:I
    .end local v19           #size:I
    .end local v21           #tmp:Ljava/lang/String;
    .end local v22           #totsize:J
    .end local v25           #wr:Ljava/io/DataOutputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/HttpsConnect;->resHeader:Ljava/util/Map;

    .line 345
    const-string v26, "resheader"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, " "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->resHeader:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 347
    .local v20, statusCode:I
    const-string v26, "statusCode"

    new-instance v27, Ljava/lang/StringBuilder;

    const-string v28, " "

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/16 v26, 0xc8

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v26, 0xce

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 349
    const/16 v26, 0xc9

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 351
    const/16 v26, 0x0

    .line 433
    .end local v20           #statusCode:I
    :goto_3
    return v26

    .line 264
    .end local v10           #it:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 266
    .local v5, e1:Ljava/net/ProtocolException;
    invoke-virtual {v5}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 267
    .end local v5           #e1:Ljava/net/ProtocolException;
    :catch_1
    move-exception v4

    .line 269
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 270
    .end local v4           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 272
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 279
    .end local v4           #e:Ljava/io/IOException;
    .restart local v10       #it:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 280
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 281
    .local v12, key:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 282
    .local v24, valu:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, " "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 322
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12           #key:Ljava/lang/String;
    .end local v24           #valu:Ljava/lang/String;
    .restart local v3       #bytes:[B
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v13       #len:I
    .restart local v19       #size:I
    .restart local v22       #totsize:J
    .restart local v25       #wr:Ljava/io/DataOutputStream;
    :cond_7
    :try_start_2
    const-string v26, "https outdata"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1, v13}, Ljava/io/DataOutputStream;->write([BII)V

    .line 324
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V

    .line 326
    add-int v19, v19, v13

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v28, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v29, v0

    const/high16 v30, 0x3f80

    mul-float v29, v29, v30

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v30, v0

    div-float v29, v29, v30

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_2

    .line 425
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v13           #len:I
    .end local v19           #size:I
    .end local v22           #totsize:J
    .end local v25           #wr:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    .line 428
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 429
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 355
    .end local v4           #e:Ljava/io/IOException;
    .restart local v20       #statusCode:I
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpsConnect;->IfIn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 356
    const-string v26, "start rec before"

    const-string v27, " data"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v17, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 358
    .local v17, re:Ljava/io/DataInputStream;
    const/16 v11, 0x64

    .line 360
    .local v11, j:I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->available()I

    move-result v26

    if-nez v26, :cond_9

    .line 361
    const-wide/16 v26, 0x2710

    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V

    .line 362
    const-string v26, "sleep"

    const-string v27, " 10s"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    .line 430
    .end local v11           #j:I
    .end local v17           #re:Ljava/io/DataInputStream;
    .end local v20           #statusCode:I
    :catch_4
    move-exception v4

    .line 432
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 433
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 367
    .end local v4           #e:Ljava/lang/InterruptedException;
    .restart local v11       #j:I
    .restart local v17       #re:Ljava/io/DataInputStream;
    .restart local v20       #statusCode:I
    :cond_9
    :try_start_4
    const-string v26, "start rec"

    const-string v27, " data"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->SendRecType:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_e

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    .line 370
    .local v18, rec:[B
    const/4 v15, 0x0

    .line 371
    .local v15, offset:I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    .line 374
    .local v16, plen:I
    :cond_a
    :goto_5
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v13

    .line 375
    .restart local v13       #len:I
    const-string v26, "rec data"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    if-gtz v13, :cond_d

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 386
    move-object/from16 v0, p0

    iput v15, v0, Lattach/HttpsConnect;->recBodySize:I

    .line 406
    .end local v15           #offset:I
    .end local v16           #plen:I
    .end local v18           #rec:[B
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 420
    .end local v11           #j:I
    .end local v13           #len:I
    .end local v17           #re:Ljava/io/DataInputStream;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->con:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->mLinkType:I

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 424
    :cond_c
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 378
    .restart local v11       #j:I
    .restart local v13       #len:I
    .restart local v15       #offset:I
    .restart local v16       #plen:I
    .restart local v17       #re:Ljava/io/DataInputStream;
    .restart local v18       #rec:[B
    :cond_d
    add-int/2addr v15, v13

    .line 379
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v15, v0, :cond_a

    .line 380
    mul-int/lit8 v26, v15, 0x2

    move/from16 v0, v26

    new-array v14, v0, [B

    .line 381
    .local v14, nrec:[B
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    move-object/from16 v18, v14

    .line 372
    goto :goto_5

    .line 391
    .end local v13           #len:I
    .end local v14           #nrec:[B
    .end local v15           #offset:I
    .end local v16           #plen:I
    .end local v18           #rec:[B
    :cond_e
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpsConnect;->recFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .restart local v7       #file:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 394
    .local v9, fos:Ljava/io/FileOutputStream;
    const/16 v26, 0x1000

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 395
    .restart local v3       #bytes:[B
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lattach/HttpsConnect;->recBodySize:I

    .line 397
    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v13

    .line 398
    .restart local v13       #len:I
    const-string v26, "rec data"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    if-gtz v13, :cond_f

    .line 404
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_6

    .line 401
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpsConnect;->recBodySize:I

    move/from16 v26, v0

    add-int v26, v26, v13

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lattach/HttpsConnect;->recBodySize:I

    .line 402
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v3, v0, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7
.end method

.method public getResponeHeader()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lattach/HttpsConnect;->resHeader:Ljava/util/Map;

    return-object v0
.end method

.method public setChunkMode(ZI)V
    .locals 0
    .parameter "flag"
    .parameter "length"

    .prologue
    .line 100
    iput-boolean p1, p0, Lattach/HttpsConnect;->chunkMode:Z

    .line 101
    iput p2, p0, Lattach/HttpsConnect;->chunkLength:I

    .line 102
    return-void
.end method

.method public setIfInOut(ZZ)V
    .locals 0
    .parameter "in"
    .parameter "out"

    .prologue
    .line 104
    iput-boolean p1, p0, Lattach/HttpsConnect;->IfIn:Z

    .line 105
    iput-boolean p2, p0, Lattach/HttpsConnect;->IfOut:Z

    .line 106
    return-void
.end method

.method public setListener(Lcom/client/MessageRateListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "type"

    .prologue
    .line 66
    iput-object p1, p0, Lattach/HttpsConnect;->listener:Lcom/client/MessageRateListener;

    .line 67
    iput p2, p0, Lattach/HttpsConnect;->mLinkType:I

    .line 68
    return-void
.end method

.method public setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 84
    iput-object p1, p0, Lattach/HttpsConnect;->sendBody:Lcom/common/CoreBuffer;

    .line 85
    iput-object p2, p0, Lattach/HttpsConnect;->recBody:Lcom/common/CoreBuffer;

    .line 86
    const/4 v0, 0x3

    iput v0, p0, Lattach/HttpsConnect;->SendRecType:I

    .line 87
    return-void
.end method

.method public setSendRecType(Lcom/common/CoreBuffer;Ljava/lang/String;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 79
    iput-object p1, p0, Lattach/HttpsConnect;->sendBody:Lcom/common/CoreBuffer;

    .line 80
    iput-object p2, p0, Lattach/HttpsConnect;->recFileName:Ljava/lang/String;

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lattach/HttpsConnect;->SendRecType:I

    .line 82
    return-void
.end method

.method public setSendRecType(Ljava/lang/String;Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 94
    iput-object p1, p0, Lattach/HttpsConnect;->sendFileName:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lattach/HttpsConnect;->recBody:Lcom/common/CoreBuffer;

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lattach/HttpsConnect;->SendRecType:I

    .line 98
    return-void
.end method

.method public setSendRecType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 89
    iput-object p1, p0, Lattach/HttpsConnect;->sendFileName:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lattach/HttpsConnect;->recFileName:Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lattach/HttpsConnect;->SendRecType:I

    .line 92
    return-void
.end method
