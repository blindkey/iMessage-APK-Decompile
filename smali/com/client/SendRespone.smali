.class public Lcom/client/SendRespone;
.super Ljava/lang/Object;
.source "SendRespone.java"


# instance fields
.field private ResponeStatue:Z

.field private ResponeType:I

.field private m_guid:[B

.field private msgid:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/client/SendRespone;->m_guid:[B

    .line 6
    return-void
.end method


# virtual methods
.method public ResGuid()J
    .locals 5

    .prologue
    .line 45
    iget-object v2, p0, Lcom/client/SendRespone;->m_guid:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lcom/client/SendRespone;->m_guid:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/client/SendRespone;->m_guid:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lcom/client/SendRespone;->m_guid:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    or-int/2addr v2, v3

    int-to-long v0, v2

    .line 46
    .local v0, tmsgid:J
    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    .line 47
    return-wide v0
.end method

.method public ResType()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/client/SendRespone;->ResponeType:I

    return v0
.end method

.method public RessponeMsgId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/client/SendRespone;->msgid:J

    return-wide v0
.end method

.method public SendSuccess()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/client/SendRespone;->ResponeStatue:Z

    return v0
.end method

.method public body(Lcom/common/CoreBuffer;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 12
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/client/SendRespone;->ResponeStatue:Z

    .line 13
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v3

    .line 14
    .local v3, tmp:[B
    const/4 v0, 0x7

    .line 15
    .local v0, index:I
    :goto_0
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 34
    return-void

    .line 17
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v4, v3, v0

    sparse-switch v4, :sswitch_data_0

    :goto_1
    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0

    .line 19
    .end local v0           #index:I
    .restart local v1       #index:I
    :sswitch_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v2, v3, v1

    .line 20
    .local v2, len:I
    iget-object v4, p0, Lcom/client/SendRespone;->m_guid:[B

    const/4 v5, 0x0

    invoke-static {v3, v0, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    add-int/2addr v0, v2

    .line 22
    goto :goto_0

    .line 24
    .end local v0           #index:I
    .end local v2           #len:I
    .restart local v1       #index:I
    :sswitch_1
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v2, v3, v1

    .line 25
    .restart local v2       #len:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v4, v3, v0

    shl-int/lit8 v4, v4, 0x18

    const/high16 v5, -0x100

    and-int/2addr v4, v5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v5, v3, v1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v5, v3, v0

    shl-int/lit8 v5, v5, 0x8

    const v6, 0xff00

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget-byte v5, v3, v1

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/client/SendRespone;->msgid:J

    goto :goto_0

    .line 28
    .end local v0           #index:I
    .end local v2           #len:I
    .restart local v1       #index:I
    :sswitch_2
    add-int/lit8 v0, v1, 0x1

    .line 29
    .end local v1           #index:I
    .restart local v0       #index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget-byte v4, v3, v0

    iput v4, p0, Lcom/client/SendRespone;->ResponeType:I

    goto :goto_1

    .line 17
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method
