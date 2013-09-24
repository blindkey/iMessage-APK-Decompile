.class public Lattach/ReciveAttachMRU;
.super Ljava/lang/Object;
.source "ReciveAttachMRU.java"


# instance fields
.field private ResponeSucc:Z

.field private ResponeType:I

.field private attachMA:Lcom/common/CoreBuffer;

.field private attachMR:Lcom/common/CoreBuffer;

.field private attachMU:Lcom/common/CoreBuffer;

.field private attachObject:Lcom/common/CoreBuffer;

.field private attachSignature:Lcom/common/CoreBuffer;

.field private m_guid:[B

.field private m_messageID:J

.field private res_messagID:J

.field private resfileID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lattach/ReciveAttachMRU;->m_guid:[B

    .line 21
    return-void
.end method


# virtual methods
.method public Respone(Lcom/common/CoreBuffer;)V
    .locals 13
    .parameter "data"

    .prologue
    const/high16 v12, 0xff

    const v11, 0xff00

    const/16 v10, 0x11

    const/4 v9, 0x0

    const/high16 v8, -0x100

    .line 44
    const/4 v6, 0x1

    iput-boolean v6, p0, Lattach/ReciveAttachMRU;->ResponeSucc:Z

    .line 45
    iput v10, p0, Lattach/ReciveAttachMRU;->ResponeType:I

    .line 47
    const/4 v1, 0x7

    .line 48
    .local v1, index:I
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 49
    .local v0, buf:[B
    :goto_0
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 85
    const-string v6, "Attach In"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mA "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lattach/ReciveAttachMRU;->attachMA:Lcom/common/CoreBuffer;

    invoke-virtual {v9}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v6, "Attach In"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mU "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lattach/ReciveAttachMRU;->attachMU:Lcom/common/CoreBuffer;

    invoke-virtual {v9}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 50
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aget-byte v6, v0, v1

    packed-switch v6, :pswitch_data_0

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 52
    .end local v1           #index:I
    .restart local v2       #index:I
    :pswitch_0
    add-int/lit8 v1, v2, 0x1

    .line 53
    .end local v2           #index:I
    .restart local v1       #index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v6, v8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v7, v0, v2

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v7, v12

    or-int/2addr v6, v7

    .line 54
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-byte v7, v0, v1

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v11

    or-int/2addr v6, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v7, v0, v2

    shl-int/lit8 v7, v7, 0x0

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-long v6, v6

    .line 53
    iput-wide v6, p0, Lattach/ReciveAttachMRU;->res_messagID:J

    goto :goto_0

    .line 57
    .end local v1           #index:I
    .restart local v2       #index:I
    :pswitch_1
    add-int/lit8 v1, v2, 0x1

    .line 58
    .end local v2           #index:I
    .restart local v1       #index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-byte v6, v0, v1

    shl-int/lit8 v6, v6, 0x18

    and-int/2addr v6, v8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v7, v0, v2

    shl-int/lit8 v7, v7, 0x10

    and-int/2addr v7, v12

    or-int/2addr v6, v7

    .line 59
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-byte v7, v0, v1

    shl-int/lit8 v7, v7, 0x8

    and-int/2addr v7, v11

    or-int/2addr v6, v7

    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v7, v0, v2

    shl-int/lit8 v7, v7, 0x0

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    int-to-long v6, v6

    .line 58
    iput-wide v6, p0, Lattach/ReciveAttachMRU;->resfileID:J

    goto/16 :goto_0

    .line 62
    .end local v1           #index:I
    .restart local v2       #index:I
    :pswitch_2
    add-int/lit8 v1, v2, 0x1

    .line 63
    .end local v2           #index:I
    .restart local v1       #index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-byte v6, v0, v1

    if-nez v6, :cond_1

    .line 64
    iput v10, p0, Lattach/ReciveAttachMRU;->ResponeType:I

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto/16 :goto_0

    .line 66
    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_1
    const/16 v6, 0x12

    iput v6, p0, Lattach/ReciveAttachMRU;->ResponeType:I

    move v1, v2

    .line 67
    .end local v2           #index:I
    .restart local v1       #index:I
    goto/16 :goto_0

    .line 69
    .end local v1           #index:I
    .restart local v2       #index:I
    :pswitch_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v3, v0, v2

    .line 70
    .local v3, len:I
    new-array v4, v3, [B

    .line 71
    .local v4, mA:[B
    invoke-static {v0, v1, v4, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    new-instance v6, Lcom/common/CoreBuffer;

    invoke-direct {v6, v4, v3}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v6, p0, Lattach/ReciveAttachMRU;->attachMA:Lcom/common/CoreBuffer;

    .line 73
    add-int/2addr v1, v3

    .line 74
    goto/16 :goto_0

    .line 76
    .end local v1           #index:I
    .end local v3           #len:I
    .end local v4           #mA:[B
    .restart local v2       #index:I
    :pswitch_4
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget-byte v3, v0, v2

    .line 77
    .restart local v3       #len:I
    new-array v5, v3, [B

    .line 78
    .local v5, mU:[B
    invoke-static {v0, v1, v5, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    new-instance v6, Lcom/common/CoreBuffer;

    invoke-direct {v6, v5, v3}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v6, p0, Lattach/ReciveAttachMRU;->attachMU:Lcom/common/CoreBuffer;

    .line 80
    add-int/2addr v1, v3

    goto/16 :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMA()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lattach/ReciveAttachMRU;->attachMA:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getMR()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lattach/ReciveAttachMRU;->attachMR:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getMU()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lattach/ReciveAttachMRU;->attachMU:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getResMessageID()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lattach/ReciveAttachMRU;->res_messagID:J

    return-wide v0
.end method

.method public getRespone()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lattach/ReciveAttachMRU;->ResponeSucc:Z

    return v0
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x4

    .line 90
    iget-object v8, p0, Lattach/ReciveAttachMRU;->attachObject:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    .line 91
    .local v3, oblen:I
    iget-object v8, p0, Lattach/ReciveAttachMRU;->attachSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getLen()I

    move-result v4

    .line 92
    .local v4, siglen:I
    add-int/lit8 v8, v3, 0xf

    add-int/lit8 v8, v8, 0x2

    add-int v5, v8, v4

    .line 93
    .local v5, size:I
    iget-object v8, p0, Lattach/ReciveAttachMRU;->attachObject:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v6

    .line 94
    .local v6, tob:[B
    iget-object v8, p0, Lattach/ReciveAttachMRU;->attachSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v7

    .line 96
    .local v7, tsig:[B
    new-array v0, v5, [B

    .line 98
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 99
    .local v1, index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aput-byte v11, v0, v1

    .line 100
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    shr-int/lit8 v8, v5, 0x18

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 101
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    shr-int/lit8 v8, v5, 0x10

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 102
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    shr-int/lit8 v8, v5, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 103
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    shr-int/lit8 v8, v5, 0x0

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 105
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v13, v0, v2

    .line 106
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v8, 0x7

    aput-byte v8, v0, v1

    .line 108
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v8, 0x2

    aput-byte v8, v0, v2

    .line 109
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v11, v0, v1

    .line 110
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    iget-wide v8, p0, Lattach/ReciveAttachMRU;->m_messageID:J

    const/16 v10, 0x18

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 111
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    iget-wide v8, p0, Lattach/ReciveAttachMRU;->m_messageID:J

    const/16 v10, 0x10

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 112
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    iget-wide v8, p0, Lattach/ReciveAttachMRU;->m_messageID:J

    const/16 v10, 0x8

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 113
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    iget-wide v8, p0, Lattach/ReciveAttachMRU;->m_messageID:J

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 115
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v13, v0, v2

    .line 116
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    int-to-byte v8, v3

    aput-byte v8, v0, v1

    .line 117
    invoke-static {v6, v12, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    add-int/lit8 v1, v3, 0xf

    .line 120
    .end local v2           #index:I
    .restart local v1       #index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v11, v0, v1

    .line 121
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    int-to-byte v8, v4

    aput-byte v8, v0, v2

    .line 122
    invoke-static {v7, v12, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    add-int/2addr v1, v4

    .line 125
    new-instance v8, Lcom/common/CoreBuffer;

    invoke-direct {v8, v0, v1}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v8
.end method

.method public setSignature(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V
    .locals 6
    .parameter "sig"
    .parameter "ob"

    .prologue
    const/4 v5, 0x0

    .line 23
    iput-object p1, p0, Lattach/ReciveAttachMRU;->attachSignature:Lcom/common/CoreBuffer;

    .line 24
    iput-object p2, p0, Lattach/ReciveAttachMRU;->attachObject:Lcom/common/CoreBuffer;

    .line 25
    iput-boolean v5, p0, Lattach/ReciveAttachMRU;->ResponeSucc:Z

    .line 26
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 28
    .local v0, random:Ljava/util/Random;
    :cond_0
    iget-object v1, p0, Lattach/ReciveAttachMRU;->m_guid:[B

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 29
    iget-object v1, p0, Lattach/ReciveAttachMRU;->m_guid:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lattach/ReciveAttachMRU;->m_guid:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lattach/ReciveAttachMRU;->m_guid:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lattach/ReciveAttachMRU;->m_guid:[B

    aget-byte v2, v2, v5

    or-int/2addr v1, v2

    int-to-long v1, v1

    iput-wide v1, p0, Lattach/ReciveAttachMRU;->m_messageID:J

    .line 30
    iget-wide v1, p0, Lattach/ReciveAttachMRU;->m_messageID:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 33
    return-void
.end method
