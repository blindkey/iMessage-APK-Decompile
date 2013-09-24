.class public Lattach/authorizeGet;
.super Lattach/message;
.source "authorizeGet.java"


# instance fields
.field private Body:Lcom/common/CoreBuffer;

.field private ResponeBody:Lcom/common/CoreBuffer;

.field private dsid:Ljava/lang/String;

.field private sig:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lattach/message;-><init>()V

    return-void
.end method


# virtual methods
.method public GetResponeBody()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lattach/authorizeGet;->ResponeBody:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getBody()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lattach/authorizeGet;->Body:Lcom/common/CoreBuffer;

    return-object v0
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
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "x-apple-mmcs-proto-version"

    const-string v2, "3.3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "x-apple-mmcs-dataclass"

    const-string v2, "com.apple.Dataclass.Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "Accept"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "Content-Type"

    const-string v2, "application/vnd.com.apple.me.ubchunk+protobuf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "x-apple-mmcs-auth"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lattach/authorizeGet;->sig:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lattach/authorizeGet;->token:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "x-mme-client-info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.icloud.content/243.10 (com.apple.Messenger/1.0)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "x-apple-request-uuid"

    invoke-static {}, Lattach/CreateUUID;->Create8_4_4_4_12UUIDString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "x-apple-mme-dsid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lattach/authorizeGet;->dsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lattach/authorizeGet;->Body:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 5
    .parameter "coreBuffer"

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x0

    .line 49
    iput-object p1, p0, Lattach/authorizeGet;->ResponeBody:Lcom/common/CoreBuffer;

    .line 50
    const/16 v2, 0x64

    new-array v0, v2, [B

    .line 51
    .local v0, Succ:[B
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    invoke-static {v2, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    aput-byte v3, v0, v4

    .line 53
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 54
    .local v1, res:Ljava/lang/String;
    const-string v2, "user authorization failed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    const/4 v2, 0x1

    iput v2, p0, Lattach/authorizeGet;->m_ResponseStatus:I

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iput-object p1, p0, Lattach/authorizeGet;->ResponeBody:Lcom/common/CoreBuffer;

    .line 59
    iput v3, p0, Lattach/authorizeGet;->m_ResponseStatus:I

    goto :goto_0
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 36
    new-instance v0, Lcom/common/CoreBuffer;

    new-array v3, v5, [B

    invoke-direct {v0, v3, v6}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 37
    .local v0, coreBuf:Lcom/common/CoreBuffer;
    new-instance v1, Lcom/common/CoreBuffer;

    iget-object v3, p0, Lattach/authorizeGet;->sig:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lattach/authorizeGet;->sig:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 38
    .local v1, mFileSig:Lcom/common/CoreBuffer;
    invoke-virtual {v1}, Lcom/common/CoreBuffer;->turnToInt()V

    .line 39
    invoke-static {v0, v5, v1}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 40
    new-instance v2, Lcom/common/CoreBuffer;

    iget-object v3, p0, Lattach/authorizeGet;->token:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lattach/authorizeGet;->token:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 41
    .local v2, mToken:Lcom/common/CoreBuffer;
    const/4 v3, 0x2

    invoke-static {v0, v3, v2}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 43
    new-instance v3, Lcom/common/CoreBuffer;

    new-array v4, v5, [B

    invoke-direct {v3, v4, v6}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v3, p0, Lattach/authorizeGet;->Body:Lcom/common/CoreBuffer;

    .line 45
    iget-object v3, p0, Lattach/authorizeGet;->Body:Lcom/common/CoreBuffer;

    invoke-static {v3, v5, v0}, Lattach/ProtoBuf;->PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V

    .line 46
    iget-object v3, p0, Lattach/authorizeGet;->Body:Lcom/common/CoreBuffer;

    return-object v3
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sig"
    .parameter "token"
    .parameter "dsid"

    .prologue
    .line 12
    iput-object p1, p0, Lattach/authorizeGet;->sig:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lattach/authorizeGet;->token:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lattach/authorizeGet;->dsid:Ljava/lang/String;

    .line 15
    return-void
.end method
