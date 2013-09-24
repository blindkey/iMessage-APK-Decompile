.class public Lcom/client/NewsRes;
.super Ljava/lang/Object;
.source "NewsRes.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static body(J)Lcom/common/CoreBuffer;
    .locals 7
    .parameter "messageid"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 8
    const/16 v3, 0xd

    new-array v0, v3, [B

    .line 9
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 10
    .local v1, index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    const/4 v3, 0x5

    aput-byte v3, v0, v1

    .line 11
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v5, v0, v2

    .line 12
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v5, v0, v1

    .line 13
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v5, v0, v2

    .line 14
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v6, v0, v1

    .line 15
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 16
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v3, 0x1

    aput-byte v3, v0, v1

    .line 17
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v3, 0x2

    aput-byte v3, v0, v2

    .line 18
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v3, 0x4

    aput-byte v3, v0, v1

    .line 19
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/16 v3, 0x18

    shr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 20
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/16 v3, 0x10

    shr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 21
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    shr-long v3, p0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 22
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    shr-long v3, p0, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 23
    new-instance v3, Lcom/common/CoreBuffer;

    invoke-direct {v3, v0, v2}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v3
.end method

.method public static m_body(J)Lcom/common/CoreBuffer;
    .locals 7
    .parameter "messageid"

    .prologue
    const/16 v6, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 26
    const/16 v3, 0xd

    new-array v0, v3, [B

    .line 27
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 28
    .local v1, index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    const/4 v3, 0x5

    aput-byte v3, v0, v1

    .line 29
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v5, v0, v2

    .line 30
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v5, v0, v1

    .line 31
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v5, v0, v2

    .line 32
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v6, v0, v1

    .line 33
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v3, 0x3

    aput-byte v3, v0, v2

    .line 34
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v4, v0, v1

    .line 35
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v4, v0, v2

    .line 36
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/4 v3, 0x4

    aput-byte v3, v0, v1

    .line 37
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/16 v3, 0x18

    shr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 38
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    const/16 v3, 0x10

    shr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 39
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    shr-long v3, p0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 40
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    shr-long v3, p0, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 41
    new-instance v3, Lcom/common/CoreBuffer;

    invoke-direct {v3, v0, v2}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v3
.end method
