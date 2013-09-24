.class public Lcom/client/DeloginResspone;
.super Ljava/lang/Object;
.source "DeloginResspone.java"


# instance fields
.field private ResponeType:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Lcom/common/CoreBuffer;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 10
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 11
    .local v0, tmp:[B
    const/4 v1, 0x5

    aget-byte v1, v0, v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    .line 12
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/client/DeloginResspone;->ResponeType:Z

    .line 15
    :goto_0
    return-void

    .line 14
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/client/DeloginResspone;->ResponeType:Z

    goto :goto_0
.end method

.method public deloginSuccess()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/client/DeloginResspone;->ResponeType:Z

    return v0
.end method
