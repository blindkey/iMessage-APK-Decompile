.class public Lattach/RegisterID;
.super Ljava/lang/Object;
.source "RegisterID.java"


# instance fields
.field private Body:Lcom/common/CoreBuffer;

.field private ResponeBody:Lcom/common/CoreBuffer;

.field private appleID:Ljava/lang/String;

.field private responeType:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ResponeType()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lattach/RegisterID;->responeType:Z

    return v0
.end method

.method public getBody()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lattach/RegisterID;->Body:Lcom/common/CoreBuffer;

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
    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "x-protocol-version"

    const-string v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "x-vc-ui-layout"

    const-string v2, "desktop-settings"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const-string v1, "Accept"

    const-string v2, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "Origin"

    const-string v2, "https://service.ess.apple.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "X-MMe-Client-Info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.iChat/7.0.1 (com.apple.iChat/7.0.1)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v1, "x-vc-service"

    const-string v2, "Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v1, "x-ds-client-id"

    const-string v2, "t:982450B522CC995FB3B2FBA6FAC184D5D590BCB1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "Referer"

    const-string v2, "https://service.ess.apple.com/WebObjects/VCProfileService.woa/wp/accountSetup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lattach/RegisterID;->Body:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "Accept-Language"

    const-string v2, "zh-cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "Cookie"

    const-string v2, "vc_ap=0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v1, "Proxy-Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "coreBuffer"

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lattach/RegisterID;->responeType:Z

    .line 49
    return-void
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lattach/RegisterID;->Body:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public setAppleID(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 13
    iput-object p1, p0, Lattach/RegisterID;->appleID:Ljava/lang/String;

    .line 14
    return-void
.end method
