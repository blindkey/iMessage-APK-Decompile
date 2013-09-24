.class public Lcom/client/ReciveRespone;
.super Ljava/lang/Object;
.source "ReciveRespone.java"


# instance fields
.field private RessponeType:Z

.field private m_guid:[B


# direct methods
.method public constructor <init>(Z[B)V
    .locals 0
    .parameter "Type"
    .parameter "m_guid"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/client/ReciveRespone;->RessponeType:Z

    .line 12
    iput-object p2, p0, Lcom/client/ReciveRespone;->m_guid:[B

    .line 13
    return-void
.end method


# virtual methods
.method public body()Lcom/common/CoreBuffer;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 17
    const/16 v6, 0xd

    new-array v3, v6, [B

    .line 18
    aput-byte v7, v3, v8

    .line 19
    const/16 v6, 0x8

    aput-byte v6, v3, v10

    const/4 v6, 0x5

    .line 20
    aput-byte v7, v3, v6

    const/4 v6, 0x6

    .line 21
    aput-byte v7, v3, v6

    const/4 v6, 0x7

    .line 22
    aput-byte v9, v3, v6

    const/16 v6, 0x8

    aput-byte v10, v3, v6

    const/16 v6, 0x9

    aput-byte v7, v3, v6

    const/16 v6, 0xa

    aput-byte v7, v3, v6

    const/16 v6, 0xb

    aput-byte v7, v3, v6

    const/16 v6, 0xc

    aput-byte v7, v3, v6

    .line 23
    .local v3, message:[B
    array-length v5, v3

    .line 25
    .local v5, size:I
    const/4 v6, 0x5

    aput-byte v6, v3, v8

    .line 26
    const/4 v1, 0x4

    .line 27
    .local v1, index:I
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    add-int/lit8 v6, v5, -0x5

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 28
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    const/4 v6, 0x3

    aput-byte v6, v3, v2

    .line 29
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v11, v3, v1

    .line 31
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aput-byte v9, v3, v2

    .line 32
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aput-byte v10, v3, v1

    .line 34
    iget-object v6, p0, Lcom/client/ReciveRespone;->m_guid:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    iget-object v7, p0, Lcom/client/ReciveRespone;->m_guid:[B

    aget-byte v7, v7, v9

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    iget-object v7, p0, Lcom/client/ReciveRespone;->m_guid:[B

    aget-byte v7, v7, v11

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    iget-object v7, p0, Lcom/client/ReciveRespone;->m_guid:[B

    aget-byte v7, v7, v8

    or-int v0, v6, v7

    .line 35
    .local v0, id:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    shr-int/lit8 v6, v0, 0x18

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 36
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    shr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    .line 37
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    .line 38
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    int-to-byte v6, v0

    aput-byte v6, v3, v1

    .line 40
    new-instance v4, Lcom/common/CoreBuffer;

    invoke-direct {v4, v3, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 41
    .local v4, out:Lcom/common/CoreBuffer;
    return-object v4
.end method
