.class public LUserLogin/authenticateUser;
.super Ljava/lang/Object;
.source "authenticateUser.java"


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
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleResponseHeaders(Ljava/util/Map;)V
    .locals 0
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
    .line 43
    .local p1, responeHeader:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    return-void
.end method


# virtual methods
.method public GetResponeBody()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, LUserLogin/authenticateUser;->ResponeBody:Lcom/common/CoreBuffer;

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
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "com.apple.invitation-registration [Mac OS X,10.8.2,12C54,Macmini5,1]"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v1, "x-protocol-version"

    const-string v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v1, "Accept-Language"

    const-string v2, "zh-cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "Content-Type"

    const-string v2, "application/x-apple-plist"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "x-ds-client-id"

    const-string v2, "t:982450B522CC995FB3B2FBA6FAC184D5D590BCB1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v1, "Proxy-Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LUserLogin/authenticateUser;->Body:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "https://service.ess.apple.com/WebObjects/VCProfileService.woa/wa/authenticateUser"

    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 2
    .parameter "coreBuffer"

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    invoke-static {v1}, LdataEncode/gZip;->uncompressToString([B)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, res:Ljava/lang/String;
    iput-object p1, p0, LUserLogin/authenticateUser;->ResponeBody:Lcom/common/CoreBuffer;

    .line 84
    return-void
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 5

    .prologue
    .line 64
    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n<plist version=\"1.0\">\n<dict>\n<key>password</key>\n<string>HPLE1901wm</string>\n<key>username</key>\n<string>liruokemx@126.com</string>\n</dict>\n</plist>"

    .line 76
    .local v1, tmp:Ljava/lang/String;
    invoke-static {v1}, LdataEncode/gZip;->compressToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 78
    .local v0, buf:[B
    new-instance v2, Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v2, p0, LUserLogin/authenticateUser;->Body:Lcom/common/CoreBuffer;

    .line 79
    iget-object v2, p0, LUserLogin/authenticateUser;->Body:Lcom/common/CoreBuffer;

    return-object v2
.end method

.method public start()Z
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v4, 0x1

    .line 21
    invoke-virtual {p0}, LUserLogin/authenticateUser;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v0

    .line 22
    .local v0, Body:Lcom/common/CoreBuffer;
    invoke-virtual {p0}, LUserLogin/authenticateUser;->getHeader()Ljava/util/Map;

    move-result-object v1

    .line 25
    .local v1, Header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lattach/HttpsConnect;

    invoke-virtual {p0}, LUserLogin/authenticateUser;->getURL()Ljava/lang/String;

    move-result-object v5

    const-string v6, "POST"

    invoke-direct {v2, v5, v6}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .local v2, client:Lattach/HttpsConnect;
    new-instance v3, Lcom/common/CoreBuffer;

    new-array v5, v7, [B

    invoke-direct {v3, v5, v7}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 27
    .local v3, rec:Lcom/common/CoreBuffer;
    invoke-virtual {v2, v4, v4}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 28
    invoke-virtual {v2, v1}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 29
    invoke-virtual {v2, v0, v3}, Lattach/HttpsConnect;->setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 30
    invoke-virtual {v2}, Lattach/HttpsConnect;->execute()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    const-string v5, "authenticateUser"

    const-string v6, "Succ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0, v3}, LUserLogin/authenticateUser;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 33
    invoke-virtual {v2}, Lattach/HttpsConnect;->getResponeHeader()Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v5}, LUserLogin/authenticateUser;->handleResponseHeaders(Ljava/util/Map;)V

    .line 38
    :goto_0
    return v4

    .line 37
    :cond_0
    const-string v4, "authenticateUser"

    const-string v5, "Err"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/4 v4, 0x0

    goto :goto_0
.end method
