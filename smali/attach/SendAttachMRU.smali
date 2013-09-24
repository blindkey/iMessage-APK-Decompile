.class public Lattach/SendAttachMRU;
.super Ljava/lang/Object;
.source "SendAttachMRU.java"


# instance fields
.field public ResponeSucc:Z

.field private ResponeType:I

.field private attachLen:I

.field private attachSignature:Lcom/common/CoreBuffer;

.field private attachmA:Lcom/common/CoreBuffer;

.field private attachmR:Lcom/common/CoreBuffer;

.field private attachmU:Lcom/common/CoreBuffer;

.field private m_guid:[B

.field private m_messageID:J

.field private res_messageID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lattach/SendAttachMRU;->m_guid:[B

    .line 20
    return-void
.end method


# virtual methods
.method public Respone(Lcom/common/CoreBuffer;)V
    .locals 14
    .parameter "data"

    .prologue
    .line 58
    const/4 v10, 0x1

    iput-boolean v10, p0, Lattach/SendAttachMRU;->ResponeSucc:Z

    .line 59
    const/16 v10, 0x11

    iput v10, p0, Lattach/SendAttachMRU;->ResponeType:I

    .line 61
    const/4 v2, 0x7

    .line 62
    .local v2, index:I
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 63
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v10

    if-lt v2, v10, :cond_0

    .line 105
    const-string v8, "https://p06-content.icloud.com"

    .line 107
    .local v8, tt:Ljava/lang/String;
    const-string v9, "MD9FAE1A649F86BECBDD5960E8AFB2F27B3416C0250BC4BA7E8560E3A32549260.S10USN00/"

    .line 110
    .local v9, ttp:Ljava/lang/String;
    const-string v10, "Attach In"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mA "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/String;

    iget-object v13, p0, Lattach/SendAttachMRU;->attachmA:Lcom/common/CoreBuffer;

    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v10, "Attach In"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mR "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/String;

    iget-object v13, p0, Lattach/SendAttachMRU;->attachmR:Lcom/common/CoreBuffer;

    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v10, "Attach In"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "mU "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/String;

    iget-object v13, p0, Lattach/SendAttachMRU;->attachmU:Lcom/common/CoreBuffer;

    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 64
    .end local v8           #tt:Ljava/lang/String;
    .end local v9           #ttp:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-byte v10, v0, v2

    packed-switch v10, :pswitch_data_0

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 66
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    .line 67
    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v10, v0, v2

    shl-int/lit8 v10, v10, 0x18

    const/high16 v11, -0x100

    and-int/2addr v10, v11

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v11, v0, v3

    shl-int/lit8 v11, v11, 0x10

    const/high16 v12, 0xff

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    .line 68
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v11, v0, v2

    shl-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v11, v0, v3

    shl-int/lit8 v11, v11, 0x0

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v10, v11

    int-to-long v10, v10

    .line 67
    iput-wide v10, p0, Lattach/SendAttachMRU;->res_messageID:J

    goto/16 :goto_0

    .line 71
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    .line 72
    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v10, v0, v2

    shl-int/lit8 v10, v10, 0x18

    const/high16 v11, -0x100

    and-int/2addr v10, v11

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v11, v0, v3

    shl-int/lit8 v11, v11, 0x10

    const/high16 v12, 0xff

    and-int/2addr v11, v12

    or-int/2addr v10, v11

    .line 73
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v11, v0, v2

    shl-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    .line 72
    or-int/2addr v10, v11

    .line 73
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v11, v0, v3

    shl-int/lit8 v11, v11, 0x0

    and-int/lit16 v11, v11, 0xff

    .line 72
    or-int v1, v10, v11

    .line 74
    .local v1, fileid:I
    goto/16 :goto_0

    .line 76
    .end local v1           #fileid:I
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_2
    add-int/lit8 v2, v3, 0x1

    .line 77
    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v10, v0, v2

    if-nez v10, :cond_1

    .line 78
    const/16 v10, 0x11

    iput v10, p0, Lattach/SendAttachMRU;->ResponeType:I

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto/16 :goto_0

    .line 80
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_1
    const/16 v10, 0x12

    iput v10, p0, Lattach/SendAttachMRU;->ResponeType:I

    move v2, v3

    .line 81
    .end local v3           #index:I
    .restart local v2       #index:I
    goto/16 :goto_0

    .line 83
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v4, v0, v3

    .line 84
    .local v4, len:I
    new-array v5, v4, [B

    .line 85
    .local v5, mA:[B
    const/4 v10, 0x0

    invoke-static {v0, v2, v5, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    new-instance v10, Lcom/common/CoreBuffer;

    invoke-direct {v10, v5, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v10, p0, Lattach/SendAttachMRU;->attachmA:Lcom/common/CoreBuffer;

    .line 87
    add-int/2addr v2, v4

    .line 88
    goto/16 :goto_0

    .line 90
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v5           #mA:[B
    .restart local v3       #index:I
    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v4, v0, v3

    .line 91
    .restart local v4       #len:I
    new-array v6, v4, [B

    .line 92
    .local v6, mR:[B
    const/4 v10, 0x0

    invoke-static {v0, v2, v6, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    new-instance v10, Lcom/common/CoreBuffer;

    invoke-direct {v10, v6, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v10, p0, Lattach/SendAttachMRU;->attachmR:Lcom/common/CoreBuffer;

    .line 94
    add-int/2addr v2, v4

    .line 95
    goto/16 :goto_0

    .line 97
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v6           #mR:[B
    .restart local v3       #index:I
    :pswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v4, v0, v3

    .line 98
    .restart local v4       #len:I
    new-array v7, v4, [B

    .line 99
    .local v7, mU:[B
    const/4 v10, 0x0

    invoke-static {v0, v2, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    new-instance v10, Lcom/common/CoreBuffer;

    invoke-direct {v10, v7, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v10, p0, Lattach/SendAttachMRU;->attachmU:Lcom/common/CoreBuffer;

    .line 101
    add-int/2addr v2, v4

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getMA()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lattach/SendAttachMRU;->attachmA:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getMR()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lattach/SendAttachMRU;->attachmR:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getMU()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lattach/SendAttachMRU;->attachmU:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getResMessageID()J
    .locals 2

    .prologue
    .line 54
    iget-wide v0, p0, Lattach/SendAttachMRU;->res_messageID:J

    return-wide v0
.end method

.method public getRespone()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lattach/SendAttachMRU;->ResponeSucc:Z

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 48
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lattach/SendAttachMRU;->attachmR:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lattach/SendAttachMRU;->attachmR:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 49
    .local v1, ser:Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lattach/SendAttachMRU;->attachmU:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lattach/SendAttachMRU;->attachmU:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-direct {v0, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 51
    .local v0, obj:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 12

    .prologue
    .line 117
    const/16 v8, 0x10

    new-array v5, v8, [B

    .line 118
    .local v5, m_guid:[B
    new-instance v6, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 119
    .local v6, rdm:Ljava/util/Random;
    invoke-virtual {v6, v5}, Ljava/util/Random;->nextBytes([B)V

    .line 122
    const/4 v8, 0x3

    aget-byte v8, v5, v8

    shl-int/lit8 v8, v8, 0x18

    const/4 v9, 0x2

    aget-byte v9, v5, v9

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    const/4 v9, 0x1

    aget-byte v9, v5, v9

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    const/4 v9, 0x0

    aget-byte v9, v5, v9

    or-int/2addr v8, v9

    int-to-long v8, v8

    iput-wide v8, p0, Lattach/SendAttachMRU;->m_messageID:J

    .line 123
    iget-wide v8, p0, Lattach/SendAttachMRU;->m_messageID:J

    const-wide/32 v10, 0x7fffffff

    and-long/2addr v8, v10

    iput-wide v8, p0, Lattach/SendAttachMRU;->m_messageID:J

    .line 126
    iget-object v8, p0, Lattach/SendAttachMRU;->attachSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getLen()I

    move-result v4

    .line 127
    .local v4, length:I
    add-int/lit8 v7, v4, 0x15

    .line 128
    .local v7, size:I
    new-array v0, v7, [B

    .line 130
    .local v0, buf:[B
    const/4 v2, 0x0

    .line 131
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    const/4 v8, 0x4

    aput-byte v8, v0, v2

    .line 132
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v8, v7, 0x18

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 133
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v8, v7, 0x10

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 134
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v8, v7, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 135
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v8, v7, 0x0

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 136
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v8, 0x3

    aput-byte v8, v0, v3

    .line 137
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v8, 0x5

    aput-byte v8, v0, v2

    .line 139
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v8, 0x2

    aput-byte v8, v0, v3

    .line 140
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v8, 0x4

    aput-byte v8, v0, v2

    .line 141
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget-wide v8, p0, Lattach/SendAttachMRU;->m_messageID:J

    const/16 v10, 0x18

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 142
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget-wide v8, p0, Lattach/SendAttachMRU;->m_messageID:J

    const/16 v10, 0x10

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 143
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget-wide v8, p0, Lattach/SendAttachMRU;->m_messageID:J

    const/16 v10, 0x8

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 144
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget-wide v8, p0, Lattach/SendAttachMRU;->m_messageID:J

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 146
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v8, 0x3

    aput-byte v8, v0, v3

    .line 147
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v8, 0x4

    aput-byte v8, v0, v2

    .line 148
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget v8, p0, Lattach/SendAttachMRU;->attachLen:I

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 149
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget v8, p0, Lattach/SendAttachMRU;->attachLen:I

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 150
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget v8, p0, Lattach/SendAttachMRU;->attachLen:I

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 151
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget v8, p0, Lattach/SendAttachMRU;->attachLen:I

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 153
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v8, 0x4

    aput-byte v8, v0, v3

    .line 154
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v8, v4

    aput-byte v8, v0, v2

    .line 155
    iget-object v8, p0, Lattach/SendAttachMRU;->attachSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    add-int/lit8 v2, v4, 0x15

    .line 158
    .end local v3           #i:I
    .restart local v2       #i:I
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-direct {v1, v0, v2}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 159
    .local v1, coreBuffer:Lcom/common/CoreBuffer;
    return-object v1
.end method

.method public setSignature(ILcom/common/CoreBuffer;)V
    .locals 6
    .parameter "len"
    .parameter "signature"

    .prologue
    const/4 v5, 0x0

    .line 23
    iput p1, p0, Lattach/SendAttachMRU;->attachLen:I

    .line 24
    iput-object p2, p0, Lattach/SendAttachMRU;->attachSignature:Lcom/common/CoreBuffer;

    .line 25
    iput-boolean v5, p0, Lattach/SendAttachMRU;->ResponeSucc:Z

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 28
    .local v0, random:Ljava/util/Random;
    :cond_0
    iget-object v1, p0, Lattach/SendAttachMRU;->m_guid:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 29
    iget-object v1, p0, Lattach/SendAttachMRU;->m_guid:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lattach/SendAttachMRU;->m_guid:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lattach/SendAttachMRU;->m_guid:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lattach/SendAttachMRU;->m_guid:[B

    aget-byte v2, v2, v5

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Lattach/SendAttachMRU;->m_messageID:J

    .line 30
    iget-wide v1, p0, Lattach/SendAttachMRU;->m_messageID:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 33
    return-void
.end method
