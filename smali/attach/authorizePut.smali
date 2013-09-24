.class public Lattach/authorizePut;
.super Lattach/message;
.source "authorizePut.java"


# instance fields
.field private mChunkSignature:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;"
        }
    .end annotation
.end field

.field private mDsid:Ljava/lang/String;

.field private mFileSignature:Lcom/common/CoreBuffer;

.field private mFileSize:I

.field private mResponeBody:Lcom/common/CoreBuffer;

.field private mSig:Ljava/lang/String;

.field private mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lattach/message;-><init>()V

    return-void
.end method


# virtual methods
.method public GetResponeBody()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lattach/authorizePut;->mResponeBody:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public SetBodyData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "sig"
    .parameter "dsid"
    .parameter "token"
    .parameter "filesize"

    .prologue
    .line 38
    iput-object p1, p0, Lattach/authorizePut;->mSig:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lattach/authorizePut;->mDsid:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lattach/authorizePut;->mToken:Ljava/lang/String;

    .line 41
    iput p4, p0, Lattach/authorizePut;->mFileSize:I

    .line 42
    return-void
.end method

.method public SetSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter
    .parameter "filesig"
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
    .line 17
    .local p1, mchunkSignature:Ljava/util/Vector;,"Ljava/util/Vector<LFileSignature/ChunkSignature;>;"
    iput-object p1, p0, Lattach/authorizePut;->mChunkSignature:Ljava/util/Vector;

    .line 18
    iput-object p2, p0, Lattach/authorizePut;->mFileSignature:Lcom/common/CoreBuffer;

    .line 19
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
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 23
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "x-apple-mmcs-proto-version"

    const-string v2, "3.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "Accept"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "Content-Type"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "x-apple-mmcs-auth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lattach/authorizePut;->mSig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lattach/authorizePut;->mFileSize:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lattach/authorizePut;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "x-mme-client-info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "x-apple-request-uuid"

    invoke-static {}, Lattach/CreateUUID;->Create8_4_4_4_12UUIDString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "x-apple-mme-dsid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lattach/authorizePut;->mDsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "coreBuffer"

    .prologue
    .line 100
    iput-object p1, p0, Lattach/authorizePut;->mResponeBody:Lcom/common/CoreBuffer;

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lattach/authorizePut;->m_ResponseStatus:I

    .line 102
    return-void
.end method

.method public handleResponseHeaders(Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter "coreBuffer"

    .prologue
    .line 109
    return-void
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 46
    new-instance v0, Lcom/common/CoreBuffer;

    new-array v6, v10, [B

    invoke-direct {v0, v6, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 48
    .local v0, coreBuf:Lcom/common/CoreBuffer;
    iget-object v6, p0, Lattach/authorizePut;->mFileSignature:Lcom/common/CoreBuffer;

    invoke-static {v0, v10, v6}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 49
    const/4 v6, 0x2

    new-instance v7, Lcom/common/CoreBuffer;

    iget-object v8, p0, Lattach/authorizePut;->mToken:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    iget-object v9, p0, Lattach/authorizePut;->mToken:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/common/CoreBuffer;-><init>([BI)V

    invoke-static {v0, v6, v7}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 52
    new-instance v5, Lcom/common/CoreBuffer;

    new-array v6, v10, [B

    invoke-direct {v5, v6, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 53
    .local v5, tTmp:Lcom/common/CoreBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v6, p0, Lattach/authorizePut;->mChunkSignature:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 60
    new-instance v4, Lcom/common/CoreBuffer;

    new-array v6, v10, [B

    invoke-direct {v4, v6, v11}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 62
    .local v4, result:Lcom/common/CoreBuffer;
    invoke-static {v4, v10, v0}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 64
    invoke-virtual {v4}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    .line 95
    .local v3, mBodyLen:I
    return-object v4

    .line 54
    .end local v3           #mBodyLen:I
    .end local v4           #result:Lcom/common/CoreBuffer;
    :cond_0
    iget-object v6, p0, Lattach/authorizePut;->mChunkSignature:Ljava/util/Vector;

    invoke-virtual {v6, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LFileSignature/ChunkSignature;

    .line 55
    .local v2, iter:LFileSignature/ChunkSignature;
    invoke-virtual {v2}, LFileSignature/ChunkSignature;->getChunkSignature()Lcom/common/CoreBuffer;

    move-result-object v6

    invoke-static {v5, v10, v6}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 56
    invoke-virtual {v2}, LFileSignature/ChunkSignature;->getChunkSize()I

    move-result v6

    invoke-static {v5, v12, v6}, Lattach/ProtoBuf;->PushInt(Lcom/common/CoreBuffer;II)V

    .line 57
    invoke-static {v0, v12, v5}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
