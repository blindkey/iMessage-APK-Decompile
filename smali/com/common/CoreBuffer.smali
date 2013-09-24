.class public Lcom/common/CoreBuffer;
.super Ljava/lang/Object;
.source "CoreBuffer.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x131bf5L


# instance fields
.field private buf:[B

.field private len:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/common/CoreBuffer;)V
    .locals 4
    .parameter "f"

    .prologue
    const/4 v3, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/common/CoreBuffer;->buf:[B

    .line 12
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v0

    iput v0, p0, Lcom/common/CoreBuffer;->len:I

    .line 13
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/common/CoreBuffer;->buf:[B

    iget v2, p0, Lcom/common/CoreBuffer;->len:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0
    .parameter "buf"
    .parameter "len"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/common/CoreBuffer;->buf:[B

    .line 17
    iput p2, p0, Lcom/common/CoreBuffer;->len:I

    .line 18
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/common/CoreBuffer;->buf:[B

    return-object v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/common/CoreBuffer;->len:I

    return v0
.end method

.method public getbyteLen()[B
    .locals 3

    .prologue
    .line 34
    const/4 v1, 0x5

    new-array v0, v1, [B

    .line 35
    .local v0, tlen:[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/common/CoreBuffer;->len:I

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 36
    const/4 v1, 0x1

    iget v2, p0, Lcom/common/CoreBuffer;->len:I

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    const/4 v1, 0x2

    iget v2, p0, Lcom/common/CoreBuffer;->len:I

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 38
    const/4 v1, 0x3

    iget v2, p0, Lcom/common/CoreBuffer;->len:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    return-object v0
.end method

.method public setBuf([BI)V
    .locals 0
    .parameter "buf"
    .parameter "len"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/common/CoreBuffer;->buf:[B

    .line 24
    iput p2, p0, Lcom/common/CoreBuffer;->len:I

    .line 25
    return-void
.end method

.method public toIntString()Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x9

    .line 66
    iget v5, p0, Lcom/common/CoreBuffer;->len:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    .line 67
    .local v4, tbuf:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Lcom/common/CoreBuffer;->len:I

    if-lt v0, v5, :cond_0

    .line 81
    new-instance v1, Ljava/lang/String;

    const/4 v5, 0x0

    iget v6, p0, Lcom/common/CoreBuffer;->len:I

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Ljava/lang/String;-><init>([BII)V

    .line 82
    .local v1, result:Ljava/lang/String;
    return-object v1

    .line 68
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/common/CoreBuffer;->buf:[B

    aget-byte v5, v5, v0

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    int-to-byte v2, v5

    .line 69
    .local v2, t1:B
    if-ltz v2, :cond_1

    if-gt v2, v7, :cond_1

    .line 70
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v2, 0x30

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 74
    :goto_1
    iget-object v5, p0, Lcom/common/CoreBuffer;->buf:[B

    aget-byte v5, v5, v0

    and-int/lit8 v5, v5, 0xf

    int-to-byte v3, v5

    .line 75
    .local v3, t2:B
    if-ltz v3, :cond_2

    if-gt v3, v7, :cond_2

    .line 76
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v3, 0x30

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 67
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v3           #t2:B
    :cond_1
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v6, v2, 0x61

    add-int/lit8 v6, v6, -0xa

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_1

    .line 78
    .restart local v3       #t2:B
    :cond_2
    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v3, 0x61

    add-int/lit8 v6, v6, -0xa

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    goto :goto_2
.end method

.method public turnToInt()V
    .locals 10

    .prologue
    const/16 v9, 0x61

    const/16 v8, 0x46

    const/16 v7, 0x41

    const/16 v6, 0x39

    const/16 v5, 0x30

    .line 43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/common/CoreBuffer;->len:I

    div-int/lit8 v3, v3, 0x2

    if-lt v0, v3, :cond_0

    .line 62
    iget v3, p0, Lcom/common/CoreBuffer;->len:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/common/CoreBuffer;->len:I

    .line 63
    return-void

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/common/CoreBuffer;->buf:[B

    mul-int/lit8 v4, v0, 0x2

    aget-byte v1, v3, v4

    .line 45
    .local v1, tp1:I
    iget-object v3, p0, Lcom/common/CoreBuffer;->buf:[B

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v2, v3, v4

    .line 46
    .local v2, tp2:I
    if-lt v1, v5, :cond_3

    if-gt v1, v6, :cond_3

    .line 47
    add-int/lit8 v1, v1, -0x30

    .line 53
    :cond_1
    :goto_1
    if-lt v2, v5, :cond_5

    if-gt v2, v6, :cond_5

    .line 54
    add-int/lit8 v2, v2, -0x30

    .line 60
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/common/CoreBuffer;->buf:[B

    shl-int/lit8 v4, v1, 0x4

    or-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_3
    if-lt v1, v9, :cond_4

    const/16 v3, 0x66

    if-gt v1, v3, :cond_4

    .line 49
    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v1, v3, 0xa

    goto :goto_1

    .line 50
    :cond_4
    if-lt v1, v7, :cond_1

    if-gt v1, v8, :cond_1

    .line 51
    add-int/lit8 v3, v1, -0x41

    add-int/lit8 v1, v3, 0xa

    goto :goto_1

    .line 55
    :cond_5
    if-lt v2, v9, :cond_6

    const/16 v3, 0x66

    if-gt v2, v3, :cond_6

    .line 56
    add-int/lit8 v3, v2, -0x61

    add-int/lit8 v2, v3, 0xa

    goto :goto_2

    .line 57
    :cond_6
    if-lt v2, v7, :cond_2

    if-gt v2, v8, :cond_2

    .line 58
    add-int/lit8 v3, v2, -0x41

    add-int/lit8 v2, v3, 0xa

    goto :goto_2
.end method
