.class public Lattach/getComplete;
.super Lattach/message;
.source "getComplete.java"


# instance fields
.field private Body:Lcom/common/CoreBuffer;

.field private mAuthorizeGetTime:J

.field private mDsid:Ljava/lang/String;

.field private mFileSize:I

.field private mGetFileTime:J

.field private mGetFileURL:Ljava/lang/String;

.field private mSig:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lattach/message;-><init>()V

    return-void
.end method


# virtual methods
.method public SetBodyData(Ljava/lang/String;JJI)V
    .locals 0
    .parameter "getFileURL"
    .parameter "authorizeGetTime"
    .parameter "getFileTime"
    .parameter "fileSize"

    .prologue
    .line 37
    iput-wide p2, p0, Lattach/getComplete;->mAuthorizeGetTime:J

    .line 38
    iput-wide p4, p0, Lattach/getComplete;->mGetFileTime:J

    .line 39
    iput p6, p0, Lattach/getComplete;->mFileSize:I

    .line 40
    iput-object p1, p0, Lattach/getComplete;->mGetFileURL:Ljava/lang/String;

    .line 41
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
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 16
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lattach/getComplete;->Body:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "Content-Type"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "x-apple-mmcs-proto-version"

    const-string v2, "3.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "x-mme-client-info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "x-apple-mme-dsid"

    iget-object v2, p0, Lattach/getComplete;->mDsid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "x-apple-mmcs-auth"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lattach/getComplete;->mSig:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lattach/getComplete;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "x-apple-request-uuid"

    invoke-static {}, Lattach/CreateUUID;->Create8_4_4_4_12UUIDString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "coreBuffer"

    .prologue
    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lattach/getComplete;->m_ResponseStatus:I

    .line 106
    return-void
.end method

.method public handleResponseHeaders(Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter "coreBuffer"

    .prologue
    .line 111
    return-void
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 51
    new-instance v7, Lcom/common/CoreBuffer;

    new-array v8, v10, [B

    invoke-direct {v7, v8, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 52
    .local v7, totalBuf:Lcom/common/CoreBuffer;
    const/16 v8, 0x1f4

    new-array v5, v8, [B

    .line 53
    .local v5, tb:[B
    iget-object v8, p0, Lattach/getComplete;->mGetFileURL:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    iget-object v9, p0, Lattach/getComplete;->mGetFileURL:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v11, v5, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance v4, Lcom/common/CoreBuffer;

    iget-object v8, p0, Lattach/getComplete;->mGetFileURL:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v4, v5, v8}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 55
    .local v4, tTmp:Lcom/common/CoreBuffer;
    invoke-static {v7, v10, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 57
    const/16 v8, 0xce

    invoke-static {v7, v12, v8}, Lattach/ProtoBuf;->PushInt(Lcom/common/CoreBuffer;II)V

    .line 59
    new-instance v2, Lcom/common/CoreBuffer;

    new-array v8, v10, [B

    invoke-direct {v2, v8, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 60
    .local v2, getFileTimeBuf:Lcom/common/CoreBuffer;
    const-string v6, "vendor.roundtrip.millis"

    .line 61
    .local v6, tmp:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 62
    invoke-static {v2, v10, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 64
    iget-wide v8, p0, Lattach/getComplete;->mGetFileTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 66
    invoke-static {v2, v12, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 68
    invoke-static {v7, v13, v2}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 70
    new-instance v1, Lcom/common/CoreBuffer;

    new-array v8, v10, [B

    invoke-direct {v1, v8, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 71
    .local v1, contentLenBuf:Lcom/common/CoreBuffer;
    const-string v6, "contentlength.byte"

    .line 72
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 73
    invoke-static {v1, v10, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 75
    iget v8, p0, Lattach/getComplete;->mFileSize:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 77
    invoke-static {v1, v12, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 79
    invoke-static {v7, v13, v1}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 81
    new-instance v0, Lcom/common/CoreBuffer;

    new-array v8, v10, [B

    invoke-direct {v0, v8, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 82
    .local v0, authorizeGetTimeBuf:Lcom/common/CoreBuffer;
    const-string v6, "authorizeGetForFiles.millis"

    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 84
    invoke-static {v0, v10, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 86
    iget-wide v8, p0, Lattach/getComplete;->mAuthorizeGetTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 88
    invoke-static {v0, v12, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 90
    const/16 v8, 0x9

    invoke-static {v7, v8, v0}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 92
    iget-object v8, p0, Lattach/getComplete;->mToken:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    iget-object v9, p0, Lattach/getComplete;->mToken:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 93
    const/16 v8, 0xa

    invoke-static {v7, v8, v4}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 95
    new-instance v3, Lcom/common/CoreBuffer;

    new-array v8, v10, [B

    invoke-direct {v3, v8, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 97
    .local v3, result:Lcom/common/CoreBuffer;
    invoke-static {v3, v10, v7}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 99
    iput-object v3, p0, Lattach/getComplete;->Body:Lcom/common/CoreBuffer;

    .line 100
    iget-object v8, p0, Lattach/getComplete;->Body:Lcom/common/CoreBuffer;

    return-object v8
.end method

.method public setHeaderData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sig"
    .parameter "dsid"
    .parameter "token"

    .prologue
    .line 32
    iput-object p1, p0, Lattach/getComplete;->mSig:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lattach/getComplete;->mDsid:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lattach/getComplete;->mToken:Ljava/lang/String;

    .line 35
    return-void
.end method
