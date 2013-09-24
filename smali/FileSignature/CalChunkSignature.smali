.class public LFileSignature/CalChunkSignature;
.super Ljava/lang/Object;
.source "CalChunkSignature.java"


# instance fields
.field private mChunkSignatureList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;"
        }
    .end annotation
.end field

.field private mLen:I

.field private md:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LFileSignature/CalChunkSignature;->mChunkSignatureList:Ljava/util/Vector;

    .line 17
    return-void
.end method


# virtual methods
.method public GeneratorChunkSignatureCreate()Z
    .locals 2

    .prologue
    .line 22
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, LFileSignature/CalChunkSignature;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, LFileSignature/CalChunkSignature;->mLen:I

    .line 28
    const/4 v1, 0x1

    return v1

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public GeneratorChunkSignatureFinal()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 40
    iget v7, p0, LFileSignature/CalChunkSignature;->mLen:I

    if-nez v7, :cond_0

    .line 53
    :goto_0
    return v5

    .line 43
    :cond_0
    iget-object v7, p0, LFileSignature/CalChunkSignature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 44
    .local v4, md2:[B
    iget-object v7, p0, LFileSignature/CalChunkSignature;->md:Ljava/security/MessageDigest;

    invoke-virtual {v7, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 46
    .local v3, last:[B
    const/16 v7, 0x20

    new-array v0, v7, [B

    .line 47
    .local v0, buf:[B
    aput-byte v6, v0, v5

    .line 48
    const/16 v7, 0x14

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    new-instance v1, Lcom/common/CoreBuffer;

    const/16 v5, 0x15

    invoke-direct {v1, v0, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 51
    .local v1, chunk:Lcom/common/CoreBuffer;
    new-instance v2, LFileSignature/ChunkSignature;

    iget v5, p0, LFileSignature/CalChunkSignature;->mLen:I

    invoke-direct {v2, v1, v5}, LFileSignature/ChunkSignature;-><init>(Lcom/common/CoreBuffer;I)V

    .line 52
    .local v2, chunksig:LFileSignature/ChunkSignature;
    iget-object v5, p0, LFileSignature/CalChunkSignature;->mChunkSignatureList:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v5, v6

    .line 53
    goto :goto_0
.end method

.method public GeneratorChunkSignatureUpdate(Lcom/common/CoreBuffer;)Z
    .locals 4
    .parameter "data"

    .prologue
    .line 34
    iget-object v0, p0, LFileSignature/CalChunkSignature;->md:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 35
    iget v0, p0, LFileSignature/CalChunkSignature;->mLen:I

    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, LFileSignature/CalChunkSignature;->mLen:I

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method GetChunkSignatureList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, LFileSignature/CalChunkSignature;->mChunkSignatureList:Ljava/util/Vector;

    return-object v0
.end method
