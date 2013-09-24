.class public Lattach/SendAttachKey;
.super Ljava/lang/Object;
.source "SendAttachKey.java"


# instance fields
.field private ResponeSucc:Z

.field private ResponeType:I

.field private mBody:Lcom/common/CoreBuffer;

.field private m_User:Ljava/lang/String;

.field private m_guid:[B

.field private m_messageID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lattach/SendAttachKey;->m_guid:[B

    .line 18
    return-void
.end method


# virtual methods
.method public Respone(Lcom/common/CoreBuffer;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 51
    const/4 v0, 0x5

    .line 52
    .local v0, i:I
    const/4 v1, 0x1

    iput-boolean v1, p0, Lattach/SendAttachKey;->ResponeSucc:Z

    .line 53
    const/16 v1, 0x11

    iput v1, p0, Lattach/SendAttachKey;->ResponeType:I

    .line 54
    return-void
.end method

.method public getRespone()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lattach/SendAttachKey;->ResponeSucc:Z

    return v0
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 14

    .prologue
    .line 61
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 63
    .local v7, random:Ljava/util/Random;
    :cond_0
    iget-object v10, p0, Lattach/SendAttachKey;->m_guid:[B

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextBytes([B)V

    .line 64
    iget-object v10, p0, Lattach/SendAttachKey;->m_guid:[B

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x18

    iget-object v11, p0, Lattach/SendAttachKey;->m_guid:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    iget-object v11, p0, Lattach/SendAttachKey;->m_guid:[B

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    iget-object v11, p0, Lattach/SendAttachKey;->m_guid:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    or-int/2addr v10, v11

    int-to-long v10, v10

    iput-wide v10, p0, Lattach/SendAttachKey;->m_messageID:J

    .line 65
    iget-wide v10, p0, Lattach/SendAttachKey;->m_messageID:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    .line 70
    iget-object v10, p0, Lattach/SendAttachKey;->m_User:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    .line 71
    .local v6, lengthuser:I
    iget-object v10, p0, Lattach/SendAttachKey;->mBody:Lcom/common/CoreBuffer;

    invoke-virtual {v10}, Lcom/common/CoreBuffer;->getLen()I

    move-result v5

    .line 72
    .local v5, lengthmsg:I
    add-int v10, v6, v5

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x10

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v8, v10, 0x8

    .line 73
    .local v8, size:I
    add-int/lit8 v10, v8, 0x1

    new-array v0, v10, [B

    .line 75
    .local v0, buf:[B
    const/4 v2, 0x0

    .line 76
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    const/16 v10, 0x23

    aput-byte v10, v0, v2

    .line 77
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v3

    .line 78
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v2

    .line 79
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v3

    .line 80
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/16 v10, 0x10

    aput-byte v10, v0, v2

    .line 81
    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    const/16 v10, 0x10

    if-lt v4, v10, :cond_1

    .line 84
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v3

    .line 85
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v2

    .line 86
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v3

    .line 87
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/16 v10, 0x8

    aput-byte v10, v0, v2

    .line 89
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v3

    .line 90
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v2

    .line 91
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v3

    .line 92
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v10, 0x0

    aput-byte v10, v0, v2

    .line 94
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget-wide v10, p0, Lattach/SendAttachKey;->m_messageID:J

    const/16 v12, 0x18

    shr-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 95
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget-wide v10, p0, Lattach/SendAttachKey;->m_messageID:J

    const/16 v12, 0x10

    shr-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 96
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget-wide v10, p0, Lattach/SendAttachKey;->m_messageID:J

    const/16 v12, 0x8

    shr-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 97
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget-wide v10, p0, Lattach/SendAttachKey;->m_messageID:J

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 99
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v10, v6, 0x18

    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 100
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v10, v6, 0x10

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 101
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v10, v6, 0x8

    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 102
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v10, v6

    aput-byte v10, v0, v2

    .line 103
    iget-object v10, p0, Lattach/SendAttachKey;->m_User:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 104
    .local v9, tmp:[B
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v6, :cond_2

    .line 107
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v10, v5, 0x18

    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 108
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v10, v5, 0x10

    int-to-byte v10, v10

    aput-byte v10, v0, v2

    .line 109
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v10, v5, 0x8

    int-to-byte v10, v10

    aput-byte v10, v0, v3

    .line 110
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v10, v5

    aput-byte v10, v0, v2

    .line 111
    iget-object v10, p0, Lattach/SendAttachKey;->mBody:Lcom/common/CoreBuffer;

    invoke-virtual {v10}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v9

    .line 112
    const/4 v4, 0x0

    :goto_2
    if-lt v4, v5, :cond_3

    .line 115
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-direct {v1, v0, v3}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 116
    .local v1, coreBuffer:Lcom/common/CoreBuffer;
    return-object v1

    .line 82
    .end local v1           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v9           #tmp:[B
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget-object v10, p0, Lattach/SendAttachKey;->m_guid:[B

    aget-byte v10, v10, v4

    aput-byte v10, v0, v3

    .line 81
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto/16 :goto_0

    .line 105
    .restart local v9       #tmp:[B
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v10, v9, v4

    aput-byte v10, v0, v3

    .line 104
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 113
    :cond_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v10, v9, v4

    aput-byte v10, v0, v3

    .line 112
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_2
.end method

.method public pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "to"
    .parameter "head"
    .parameter "data"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFileInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "size"
    .parameter "type"
    .parameter "utitype"
    .parameter "owner"
    .parameter "url"
    .parameter "sig"
    .parameter "key"

    .prologue
    .line 25
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, sLen:Ljava/lang/String;
    const-string v0, "<html><body style=\"background-color:#e9e9e9;color:#000000;\"><FILE"

    .line 29
    .local v0, sBuf:Ljava/lang/String;
    const-string v3, " name"

    invoke-virtual {p0, v0, v3, p1}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v3, " width"

    const-string v4, "0"

    invoke-virtual {p0, v0, v3, v4}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v3, " height"

    const-string v4, "0"

    invoke-virtual {p0, v0, v3, v4}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v3, " datasize"

    invoke-virtual {p0, v0, v3, v1}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v3, " mime-type"

    invoke-virtual {p0, v0, v3, p3}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v3, " uti-type"

    invoke-virtual {p0, v0, v3, p4}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v3, " mmcs-owner"

    invoke-virtual {p0, v0, v3, p5}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    const-string v3, " mmcs-url"

    invoke-virtual {p0, v0, v3, p6}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v3, " mmcs-signature-hex"

    invoke-virtual {p0, v0, v3, p7}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v3, " file-size"

    invoke-virtual {p0, v0, v3, v1}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, tkey:Ljava/lang/String;
    const-string v3, " decryption-key"

    invoke-virtual {p0, v0, v3, v2}, Lattach/SendAttachKey;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/></body><html>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    new-instance v3, Lcom/common/CoreBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v3, p0, Lattach/SendAttachKey;->mBody:Lcom/common/CoreBuffer;

    .line 45
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 20
    iput-object p1, p0, Lattach/SendAttachKey;->m_User:Ljava/lang/String;

    .line 21
    return-void
.end method
