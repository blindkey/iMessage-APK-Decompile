.class public LdataEncode/gZip;
.super Ljava/lang/Object;
.source "gZip.java"


# static fields
.field private static encode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "utf-8"

    sput-object v0, LdataEncode/gZip;->encode:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compressToByte(Ljava/lang/String;)[B
    .locals 4
    .parameter "str"

    .prologue
    .line 33
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 34
    :cond_0
    const/4 v3, 0x0

    .line 45
    :goto_0
    return-object v3

    .line 36
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 39
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 40
    .local v1, gzip:Ljava/util/zip/GZIPOutputStream;
    sget-object v3, LdataEncode/gZip;->encode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 41
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v1           #gzip:Ljava/util/zip/GZIPOutputStream;
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static compressToByte(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .parameter "str"
    .parameter "encoding"

    .prologue
    .line 52
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 53
    :cond_0
    const/4 v3, 0x0

    .line 64
    :goto_0
    return-object v3

    .line 55
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 58
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 59
    .local v1, gzip:Ljava/util/zip/GZIPOutputStream;
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 60
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1           #gzip:Ljava/util/zip/GZIPOutputStream;
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static deflateToByte(Ljava/lang/String;)[B
    .locals 4
    .parameter "str"

    .prologue
    .line 67
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 70
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 71
    .local v1, dos:Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 72
    invoke-virtual {v1}, Ljava/util/zip/DeflaterOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #dos:Ljava/util/zip/DeflaterOutputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 73
    :catch_0
    move-exception v2

    .line 75
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static uncompressToString([B)Ljava/lang/String;
    .locals 7
    .parameter "b"

    .prologue
    .line 83
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    .line 84
    :cond_0
    const/4 v6, 0x0

    .line 99
    :goto_0
    return-object v6

    .line 86
    :cond_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 90
    .local v3, in:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 91
    .local v2, gunzip:Ljava/util/zip/GZIPInputStream;
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 93
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .local v4, n:I
    if-gez v4, :cond_2

    .line 99
    .end local v0           #buffer:[B
    .end local v2           #gunzip:Ljava/util/zip/GZIPInputStream;
    .end local v4           #n:I
    :goto_2
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 94
    .restart local v0       #buffer:[B
    .restart local v2       #gunzip:Ljava/util/zip/GZIPInputStream;
    .restart local v4       #n:I
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v0, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 96
    .end local v0           #buffer:[B
    .end local v2           #gunzip:Ljava/util/zip/GZIPInputStream;
    .end local v4           #n:I
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static uncompressToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "b"
    .parameter "encoding"

    .prologue
    const/4 v6, 0x0

    .line 106
    if-eqz p0, :cond_0

    array-length v7, p0

    if-nez v7, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-object v6

    .line 109
    :cond_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 110
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 113
    .local v3, in:Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 114
    .local v2, gunzip:Ljava/util/zip/GZIPInputStream;
    const/16 v7, 0x100

    new-array v0, v7, [B

    .line 116
    .local v0, buffer:[B
    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    .local v4, n:I
    if-gez v4, :cond_2

    .line 119
    invoke-virtual {v5, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 117
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    .end local v0           #buffer:[B
    .end local v2           #gunzip:Ljava/util/zip/GZIPInputStream;
    .end local v4           #n:I
    :catch_0
    move-exception v1

    .line 121
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getEncode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, LdataEncode/gZip;->encode:Ljava/lang/String;

    return-object v0
.end method

.method public setEncode(Ljava/lang/String;)V
    .locals 0
    .parameter "encode"

    .prologue
    .line 26
    sput-object p1, LdataEncode/gZip;->encode:Ljava/lang/String;

    .line 27
    return-void
.end method
