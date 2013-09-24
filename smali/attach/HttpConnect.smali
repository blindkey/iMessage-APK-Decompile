.class public Lattach/HttpConnect;
.super Ljava/lang/Object;
.source "HttpConnect.java"


# static fields
.field private static final CONNECT:I = 0x0

.field private static final OVER:I = 0x3

.field private static final RECVDATA:I = 0x2

.field private static final SENDBODYRECBODY:I = 0x3

.field private static final SENDBODYRECFILE:I = 0x1

.field private static final SENDDATA:I = 0x1

.field private static final SENDFILERECBODY:I = 0x2

.field private static final SENDFILERECFILE:I


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

.field private con:Ljava/net/HttpURLConnection;

.field private listener:Lcom/client/MessageRateListener;

.field private mLinkType:I

.field private mMethod:Ljava/lang/String;

.field private mServer:Ljava/lang/String;

.field private recBody:Lcom/common/CoreBuffer;

.field private recBodySize:I

.field private recFileName:Ljava/lang/String;

.field private sendBody:Lcom/common/CoreBuffer;

.field private sendFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "method"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    .line 47
    iput-object p1, p0, Lattach/HttpConnect;->mServer:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lattach/HttpConnect;->mMethod:Ljava/lang/String;

    .line 49
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
    .line 55
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lattach/HttpConnect;->Header:Ljava/util/Map;

    .line 58
    return-void
.end method

.method public execute()Z
    .locals 31

    .prologue
    .line 88
    :try_start_0
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->mServer:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    check-cast v26, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->mMethod:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 101
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->Header:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 102
    .local v10, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfOut:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfIn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 117
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->connect()V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 121
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfOut:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 122
    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 123
    .local v25, wr:Ljava/io/DataOutputStream;
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->SendRecType:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_6

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->sendBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->sendBody:Lcom/common/CoreBuffer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/common/CoreBuffer;->getLen()I

    move-result v28

    invoke-virtual/range {v25 .. v28}, Ljava/io/DataOutputStream;->write([BII)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 148
    :cond_3
    :goto_2
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V

    .line 149
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->close()V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const-string v27, "X-Apple-Request-UUID"

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 151
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

    .line 153
    .end local v21           #tmp:Ljava/lang/String;
    .end local v25           #wr:Ljava/io/DataOutputStream;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 154
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

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v13

    .line 156
    .local v13, msg:Ljava/lang/String;
    const/16 v26, 0xc8

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    const/16 v26, 0xce

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    .line 157
    const/16 v26, 0x0

    .line 214
    .end local v13           #msg:Ljava/lang/String;
    .end local v20           #statusCode:I
    :goto_3
    return v26

    .line 90
    .end local v10           #it:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 92
    .local v5, e1:Ljava/net/ProtocolException;
    invoke-virtual {v5}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 93
    .end local v5           #e1:Ljava/net/ProtocolException;
    :catch_1
    move-exception v4

    .line 95
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 96
    .end local v4           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 98
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 103
    .end local v4           #e:Ljava/io/IOException;
    .restart local v10       #it:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 104
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 105
    .local v11, key:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 106
    .local v24, valu:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 130
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #key:Ljava/lang/String;
    .end local v24           #valu:Ljava/lang/String;
    .restart local v25       #wr:Ljava/io/DataOutputStream;
    :cond_6
    :try_start_2
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->sendFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v7, file:Ljava/io/File;
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 133
    .local v8, fis:Ljava/io/FileInputStream;
    const/16 v19, 0x0

    .line 134
    .local v19, size:I
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 135
    .local v22, totsize:J
    const/16 v26, 0x1000

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 137
    .local v3, bytes:[B
    :cond_7
    :goto_4
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .line 138
    .local v12, len:I
    if-gtz v12, :cond_8

    .line 146
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 211
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #len:I
    .end local v19           #size:I
    .end local v22           #totsize:J
    .end local v25           #wr:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    .line 213
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    const/16 v26, 0x0

    goto :goto_3

    .line 140
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #bytes:[B
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v12       #len:I
    .restart local v19       #size:I
    .restart local v22       #totsize:J
    .restart local v25       #wr:Ljava/io/DataOutputStream;
    :cond_8
    const/16 v26, 0x0

    :try_start_3
    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 141
    add-int v19, v19, v12

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

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

    goto :goto_4

    .line 159
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #len:I
    .end local v19           #size:I
    .end local v22           #totsize:J
    .end local v25           #wr:Ljava/io/DataOutputStream;
    .restart local v13       #msg:Ljava/lang/String;
    .restart local v20       #statusCode:I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfIn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 160
    new-instance v17, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 161
    .local v17, re:Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->SendRecType:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_e

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    .line 163
    .local v18, rec:[B
    const/4 v15, 0x0

    .line 164
    .local v15, offset:I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    .line 166
    .local v16, plen:I
    :cond_a
    :goto_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    sub-int v16, v26, v15

    .line 167
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v12

    .line 168
    .restart local v12       #len:I
    if-gtz v12, :cond_d

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 179
    move-object/from16 v0, p0

    iput v15, v0, Lattach/HttpConnect;->recBodySize:I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 207
    .end local v15           #offset:I
    .end local v16           #plen:I
    .end local v18           #rec:[B
    :cond_b
    :goto_6
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 209
    .end local v12           #len:I
    .end local v17           #re:Ljava/io/DataInputStream;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 210
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 170
    .restart local v12       #len:I
    .restart local v15       #offset:I
    .restart local v16       #plen:I
    .restart local v17       #re:Ljava/io/DataInputStream;
    .restart local v18       #rec:[B
    :cond_d
    add-int/2addr v15, v12

    .line 171
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v15, v0, :cond_a

    .line 172
    mul-int/lit8 v26, v15, 0x2

    move/from16 v0, v26

    new-array v14, v0, [B

    .line 173
    .local v14, nrec:[B
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    move-object/from16 v18, v14

    .line 165
    goto :goto_5

    .line 187
    .end local v12           #len:I
    .end local v14           #nrec:[B
    .end local v15           #offset:I
    .end local v16           #plen:I
    .end local v18           #rec:[B
    :cond_e
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->recFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v7       #file:Ljava/io/File;
    const/16 v19, 0x0

    .line 189
    .restart local v19       #size:I
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    .line 191
    .restart local v22       #totsize:J
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 192
    .local v9, fos:Ljava/io/FileOutputStream;
    const/16 v26, 0x1000

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 193
    .restart local v3       #bytes:[B
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lattach/HttpConnect;->recBodySize:I

    .line 195
    :cond_f
    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    .line 196
    .restart local v12       #len:I
    if-gtz v12, :cond_10

    .line 205
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    .line 198
    :cond_10
    const-string v26, "http getData"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "bytes"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->recBodySize:I

    move/from16 v26, v0

    add-int v26, v26, v12

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lattach/HttpConnect;->recBodySize:I

    .line 200
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

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
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7
.end method

.method public execute(Lcom/common/CoreBuffer;)Z
    .locals 31
    .parameter "body"

    .prologue
    .line 223
    :try_start_0
    new-instance v26, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->mServer:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v26

    check-cast v26, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->mMethod:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->Header:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 237
    .local v10, it:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-nez v26, :cond_6

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfOut:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 246
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfIn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 252
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->connect()V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 256
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfOut:Z

    move/from16 v26, v0

    if-eqz v26, :cond_5

    .line 257
    new-instance v25, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 258
    .local v25, wr:Ljava/io/DataOutputStream;
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v28

    invoke-virtual/range {v25 .. v28}, Ljava/io/DataOutputStream;->write([BII)V

    .line 259
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->sendFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v7, file:Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v19

    .line 261
    .local v19, size:I
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v22, v26, v28

    .line 263
    .local v22, totsize:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

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

    .line 266
    :cond_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 267
    .local v8, fis:Ljava/io/FileInputStream;
    const/16 v26, 0x100

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 269
    .local v3, bytes:[B
    :cond_4
    :goto_2
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .line 270
    .local v12, len:I
    if-gtz v12, :cond_7

    .line 278
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 279
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->flush()V

    .line 280
    invoke-virtual/range {v25 .. v25}, Ljava/io/DataOutputStream;->close()V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    const-string v27, "X-Apple-Request-UUID"

    invoke-virtual/range {v26 .. v27}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 282
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

    .line 284
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #len:I
    .end local v19           #size:I
    .end local v21           #tmp:Ljava/lang/String;
    .end local v22           #totsize:J
    .end local v25           #wr:Ljava/io/DataOutputStream;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v20

    .line 285
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

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v13

    .line 287
    .local v13, msg:Ljava/lang/String;
    const/16 v26, 0xc8

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    const/16 v26, 0xce

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 288
    const/16 v26, 0x0

    .line 338
    .end local v13           #msg:Ljava/lang/String;
    .end local v20           #statusCode:I
    :goto_3
    return v26

    .line 225
    .end local v10           #it:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 227
    .local v5, e1:Ljava/net/ProtocolException;
    invoke-virtual {v5}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_0

    .line 228
    .end local v5           #e1:Ljava/net/ProtocolException;
    :catch_1
    move-exception v4

    .line 230
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_0

    .line 231
    .end local v4           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v4

    .line 233
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 238
    .end local v4           #e:Ljava/io/IOException;
    .restart local v10       #it:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 239
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 240
    .local v11, key:Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 241
    .local v24, valu:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 272
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #key:Ljava/lang/String;
    .end local v24           #valu:Ljava/lang/String;
    .restart local v3       #bytes:[B
    .restart local v7       #file:Ljava/io/File;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v12       #len:I
    .restart local v19       #size:I
    .restart local v22       #totsize:J
    .restart local v25       #wr:Ljava/io/DataOutputStream;
    :cond_7
    const/16 v26, 0x0

    :try_start_2
    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v3, v1, v12}, Ljava/io/DataOutputStream;->write([BII)V

    .line 273
    add-int v19, v19, v12

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

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

    goto/16 :goto_2

    .line 335
    .end local v3           #bytes:[B
    .end local v7           #file:Ljava/io/File;
    .end local v8           #fis:Ljava/io/FileInputStream;
    .end local v12           #len:I
    .end local v19           #size:I
    .end local v22           #totsize:J
    .end local v25           #wr:Ljava/io/DataOutputStream;
    :catch_3
    move-exception v4

    .line 337
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 338
    const/16 v26, 0x0

    goto :goto_3

    .line 290
    .end local v4           #e:Ljava/io/IOException;
    .restart local v13       #msg:Ljava/lang/String;
    .restart local v20       #statusCode:I
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lattach/HttpConnect;->IfIn:Z

    move/from16 v26, v0

    if-eqz v26, :cond_a

    .line 291
    new-instance v17, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 292
    .local v17, re:Ljava/io/DataInputStream;
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->SendRecType:I

    move/from16 v26, v0

    and-int/lit8 v26, v26, 0x2

    if-eqz v26, :cond_d

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    .line 294
    .local v18, rec:[B
    const/4 v15, 0x0

    .line 295
    .local v15, offset:I
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    .line 297
    .local v16, plen:I
    :cond_9
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v15, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v12

    .line 298
    .restart local v12       #len:I
    if-gtz v12, :cond_c

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->recBody:Lcom/common/CoreBuffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 309
    move-object/from16 v0, p0

    iput v15, v0, Lattach/HttpConnect;->recBodySize:I

    .line 328
    .end local v15           #offset:I
    .end local v16           #plen:I
    .end local v18           #rec:[B
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/DataInputStream;->close()V

    .line 330
    .end local v12           #len:I
    .end local v17           #re:Ljava/io/DataInputStream;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->con:Ljava/net/HttpURLConnection;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->mLinkType:I

    move/from16 v28, v0

    const/high16 v29, 0x3f80

    invoke-interface/range {v26 .. v29}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 334
    :cond_b
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 300
    .restart local v12       #len:I
    .restart local v15       #offset:I
    .restart local v16       #plen:I
    .restart local v17       #re:Ljava/io/DataInputStream;
    .restart local v18       #rec:[B
    :cond_c
    add-int/2addr v15, v12

    .line 301
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-lt v15, v0, :cond_9

    .line 302
    mul-int/lit8 v26, v15, 0x2

    move/from16 v0, v26

    new-array v14, v0, [B

    .line 303
    .local v14, nrec:[B
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    move-object/from16 v18, v14

    .line 296
    goto :goto_4

    .line 314
    .end local v12           #len:I
    .end local v14           #nrec:[B
    .end local v15           #offset:I
    .end local v16           #plen:I
    .end local v18           #rec:[B
    :cond_d
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/HttpConnect;->recFileName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v7       #file:Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 317
    .local v9, fos:Ljava/io/FileOutputStream;
    const/16 v26, 0x100

    move/from16 v0, v26

    new-array v3, v0, [B

    .line 318
    .restart local v3       #bytes:[B
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lattach/HttpConnect;->recBodySize:I

    .line 320
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->read([B)I

    move-result v12

    .line 321
    .restart local v12       #len:I
    if-gtz v12, :cond_e

    .line 326
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5

    .line 323
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lattach/HttpConnect;->recBodySize:I

    move/from16 v26, v0

    add-int v26, v26, v12

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lattach/HttpConnect;->recBodySize:I

    .line 324
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v9, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6
.end method

.method public getRecBodySize()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lattach/HttpConnect;->recBodySize:I

    return v0
.end method

.method public setIfInOut(ZZ)V
    .locals 0
    .parameter "in"
    .parameter "out"

    .prologue
    .line 81
    iput-boolean p1, p0, Lattach/HttpConnect;->IfIn:Z

    .line 82
    iput-boolean p2, p0, Lattach/HttpConnect;->IfOut:Z

    .line 83
    return-void
.end method

.method public setListener(Lcom/client/MessageRateListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "type"

    .prologue
    .line 51
    iput-object p1, p0, Lattach/HttpConnect;->listener:Lcom/client/MessageRateListener;

    .line 52
    iput p2, p0, Lattach/HttpConnect;->mLinkType:I

    .line 53
    return-void
.end method

.method public setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 65
    iput-object p1, p0, Lattach/HttpConnect;->sendBody:Lcom/common/CoreBuffer;

    .line 66
    iput-object p2, p0, Lattach/HttpConnect;->recBody:Lcom/common/CoreBuffer;

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lattach/HttpConnect;->SendRecType:I

    .line 68
    return-void
.end method

.method public setSendRecType(Lcom/common/CoreBuffer;Ljava/lang/String;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 60
    iput-object p1, p0, Lattach/HttpConnect;->sendBody:Lcom/common/CoreBuffer;

    .line 61
    iput-object p2, p0, Lattach/HttpConnect;->recFileName:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lattach/HttpConnect;->SendRecType:I

    .line 63
    return-void
.end method

.method public setSendRecType(Ljava/lang/String;Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 75
    iput-object p1, p0, Lattach/HttpConnect;->sendFileName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lattach/HttpConnect;->recBody:Lcom/common/CoreBuffer;

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lattach/HttpConnect;->SendRecType:I

    .line 79
    return-void
.end method

.method public setSendRecType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "send"
    .parameter "rec"

    .prologue
    .line 70
    iput-object p1, p0, Lattach/HttpConnect;->sendFileName:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lattach/HttpConnect;->recFileName:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lattach/HttpConnect;->SendRecType:I

    .line 73
    return-void
.end method
