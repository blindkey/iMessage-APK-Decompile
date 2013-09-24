.class public Lattach/putComplete;
.super Lattach/message;
.source "putComplete.java"


# instance fields
.field private Body:Lcom/common/CoreBuffer;

.field private mAuthorizePutTime:J

.field private mDsid:Ljava/lang/String;

.field private mEtag:Ljava/lang/String;

.field private mFileSize:I

.field private mMD5:Ljava/lang/String;

.field private mPutFileTime:J

.field private mPutFileURL:Ljava/lang/String;

.field private mSig:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lattach/message;-><init>()V

    return-void
.end method


# virtual methods
.method public SetBodyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0
    .parameter "putFileURL"
    .parameter "MD5"
    .parameter "Etag"
    .parameter "authorizePutTime"
    .parameter "putFileTime"
    .parameter "fileSize"

    .prologue
    .line 40
    iput-wide p4, p0, Lattach/putComplete;->mAuthorizePutTime:J

    .line 41
    iput-wide p6, p0, Lattach/putComplete;->mPutFileTime:J

    .line 42
    iput p8, p0, Lattach/putComplete;->mFileSize:I

    .line 43
    iput-object p1, p0, Lattach/putComplete;->mPutFileURL:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lattach/putComplete;->mMD5:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lattach/putComplete;->mEtag:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public getHeader()Ljava/util/Map;
    .locals 4
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
    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "Accept"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "Content-Type"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "x-apple-mmcs-proto-version"

    const-string v2, "3.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "x-mme-client-info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "x-apple-mme-dsid"

    iget-object v2, p0, Lattach/putComplete;->mDsid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "x-apple-mmcs-auth"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lattach/putComplete;->mSig:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lattach/putComplete;->mFileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lattach/putComplete;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "x-apple-request-uuid"

    invoke-static {}, Lattach/CreateUUID;->Create8_4_4_4_12UUIDString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "coreBuffer"

    .prologue
    .line 143
    const/4 v0, 0x1

    iput v0, p0, Lattach/putComplete;->m_ResponseStatus:I

    .line 144
    return-void
.end method

.method public handleResponseHeaders(Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter "coreBuffer"

    .prologue
    .line 147
    return-void
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 18

    .prologue
    .line 53
    const/16 v14, 0x1f4

    new-array v12, v14, [B

    .line 55
    .local v12, tbuf:[B
    new-instance v8, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v8, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 57
    .local v8, lastBuf:Lcom/common/CoreBuffer;
    new-instance v13, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 58
    .local v13, totalBuf:Lcom/common/CoreBuffer;
    new-instance v11, Lcom/common/CoreBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->mPutFileURL:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lattach/putComplete;->mPutFileURL:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 59
    .local v11, tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v13, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 61
    const/4 v14, 0x2

    const/16 v15, 0xc9

    invoke-static {v13, v14, v15}, Lattach/ProtoBuf;->PushInt(Lcom/common/CoreBuffer;II)V

    .line 64
    const-string v3, "Content-MD5"

    .line 65
    .local v3, Stmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->mMD5:Ljava/lang/String;

    if-eqz v14, :cond_0

    .line 66
    new-instance v2, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v2, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 68
    .local v2, MD5Buf:Lcom/common/CoreBuffer;
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 69
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v2, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 71
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->mMD5:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lattach/putComplete;->mMD5:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 72
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x2

    invoke-static {v2, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 74
    const/4 v14, 0x4

    invoke-static {v13, v14, v2}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 76
    .end local v2           #MD5Buf:Lcom/common/CoreBuffer;
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->mEtag:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 77
    new-instance v1, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v1, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 78
    .local v1, EtagBuf:Lcom/common/CoreBuffer;
    const-string v3, "Etag"

    .line 79
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 80
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v1, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 81
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->mEtag:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lattach/putComplete;->mEtag:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 82
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x2

    invoke-static {v1, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 83
    const/4 v14, 0x4

    invoke-static {v13, v14, v1}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 86
    .end local v1           #EtagBuf:Lcom/common/CoreBuffer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->mMD5:Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 87
    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->mMD5:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    .line 88
    .local v7, imd5:[B
    const/4 v14, 0x7

    new-instance v15, Lcom/common/CoreBuffer;

    array-length v0, v7

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v15, v7, v0}, Lcom/common/CoreBuffer;-><init>([BI)V

    invoke-static {v13, v14, v15}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 90
    .end local v7           #imd5:[B
    :cond_2
    new-instance v6, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v6, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 91
    .local v6, contentLenBuf:Lcom/common/CoreBuffer;
    const-string v3, "contentlength.bytes"

    .line 92
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 93
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v6, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 94
    move-object/from16 v0, p0

    iget v14, v0, Lattach/putComplete;->mFileSize:I

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 96
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x2

    invoke-static {v6, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 98
    const/16 v14, 0x8

    invoke-static {v13, v14, v6}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 100
    new-instance v9, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v9, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 101
    .local v9, putFileTimeBuf:Lcom/common/CoreBuffer;
    const-string v3, "vendor.roundtrip.millis"

    .line 102
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 103
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v9, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 104
    move-object/from16 v0, p0

    iget-wide v14, v0, Lattach/putComplete;->mPutFileTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 105
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 106
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x2

    invoke-static {v9, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 108
    const/16 v14, 0x8

    invoke-static {v13, v14, v9}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 110
    new-instance v4, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v4, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 111
    .local v4, authorizePutTimeBuf:Lcom/common/CoreBuffer;
    const-string v3, "authorizePut.millis"

    .line 112
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 113
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v4, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 114
    move-object/from16 v0, p0

    iget-wide v14, v0, Lattach/putComplete;->mAuthorizePutTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 116
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x2

    invoke-static {v4, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 118
    const/16 v14, 0x9

    invoke-static {v13, v14, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 120
    new-instance v5, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v5, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 121
    .local v5, chunkBuf:Lcom/common/CoreBuffer;
    const-string v3, "chunking.time.millis"

    .line 122
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 123
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v5, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 124
    move-object/from16 v0, p0

    iget v14, v0, Lattach/putComplete;->mFileSize:I

    div-int/lit8 v14, v14, 0x64

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 125
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #tTmp:Lcom/common/CoreBuffer;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    invoke-direct {v11, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 126
    .restart local v11       #tTmp:Lcom/common/CoreBuffer;
    const/4 v14, 0x2

    invoke-static {v5, v14, v11}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 128
    const/16 v14, 0x9

    invoke-static {v13, v14, v5}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 130
    const/16 v14, 0xa

    new-instance v15, Lcom/common/CoreBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/putComplete;->mToken:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/putComplete;->mToken:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-direct/range {v15 .. v17}, Lcom/common/CoreBuffer;-><init>([BI)V

    invoke-static {v13, v14, v15}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 132
    new-instance v10, Lcom/common/CoreBuffer;

    const/4 v14, 0x1

    new-array v14, v14, [B

    const/4 v15, 0x0

    invoke-direct {v10, v14, v15}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 134
    .local v10, result:Lcom/common/CoreBuffer;
    const/4 v14, 0x1

    invoke-static {v10, v14, v13}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 136
    move-object/from16 v0, p0

    iput-object v10, v0, Lattach/putComplete;->Body:Lcom/common/CoreBuffer;

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lattach/putComplete;->Body:Lcom/common/CoreBuffer;

    return-object v14
.end method

.method public setHeaderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sig"
    .parameter "dsid"
    .parameter "token"

    .prologue
    .line 34
    iput-object p1, p0, Lattach/putComplete;->mSig:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lattach/putComplete;->mDsid:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lattach/putComplete;->mToken:Ljava/lang/String;

    .line 37
    return-void
.end method
