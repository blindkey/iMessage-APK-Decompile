.class public Lcom/client/QueryUserRespone;
.super Ljava/lang/Object;
.source "QueryUserRespone.java"


# instance fields
.field private ResponeType:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBody(Z)Lcom/common/CoreBuffer;
    .locals 6
    .parameter "exit"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-array v0, v5, [B

    .line 10
    .local v0, tmp:[B
    const/16 v1, 0x3f

    aput-byte v1, v0, v2

    .line 11
    aput-byte v2, v0, v3

    .line 12
    const/4 v1, 0x2

    aput-byte v2, v0, v1

    .line 13
    const/4 v1, 0x3

    aput-byte v2, v0, v1

    .line 14
    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 15
    if-eqz p0, :cond_0

    .line 16
    const/16 v1, 0x11

    aput-byte v1, v0, v4

    .line 19
    :goto_0
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-direct {v1, v0, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v1

    .line 18
    :cond_0
    const/16 v1, 0x12

    aput-byte v1, v0, v4

    goto :goto_0
.end method


# virtual methods
.method public UserExit()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/client/QueryUserRespone;->ResponeType:Z

    return v0
.end method

.method public body(Lcom/common/CoreBuffer;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 23
    .local v0, tmp:[B
    const/4 v1, 0x5

    aget-byte v1, v0, v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 24
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/client/QueryUserRespone;->ResponeType:Z

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/client/QueryUserRespone;->ResponeType:Z

    goto :goto_0
.end method
