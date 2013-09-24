.class public Lcom/client/Heart;
.super Ljava/lang/Object;
.source "Heart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/client/Heart$HeartBeat;
    }
.end annotation


# instance fields
.field private beat:Lcom/client/Heart$HeartBeat;

.field private client:Lcom/client/Client;

.field private flag:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/client/Client;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/client/Heart;->beat:Lcom/client/Heart$HeartBeat;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/client/Heart;->flag:Z

    .line 17
    iput-object p2, p0, Lcom/client/Heart;->client:Lcom/client/Client;

    .line 18
    iput-object p1, p0, Lcom/client/Heart;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method

.method static synthetic access$0(Lcom/client/Heart;)Z
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/client/Heart;->flag:Z

    return v0
.end method

.method static synthetic access$1(Lcom/client/Heart;)Lcom/client/Client;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/client/Heart;->client:Lcom/client/Client;

    return-object v0
.end method


# virtual methods
.method public body()Lcom/common/CoreBuffer;
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v4, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 70
    new-array v0, v5, [B

    const/4 v1, 0x0

    aput-byte v4, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v1, v0, v2

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    aput-byte v3, v0, v4

    const/16 v1, 0x9

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    .line 72
    .local v0, buf:[B
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-direct {v1, v0, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/client/Heart;->beat:Lcom/client/Heart$HeartBeat;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/client/Heart;->beat:Lcom/client/Heart$HeartBeat;

    invoke-virtual {v0}, Lcom/client/Heart$HeartBeat;->destroy()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/client/Heart;->beat:Lcom/client/Heart$HeartBeat;

    .line 25
    :cond_0
    return-void
.end method

.method public overThread()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/Heart;->flag:Z

    .line 28
    monitor-enter p0

    .line 29
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 28
    monitor-exit p0

    .line 31
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/client/Heart$HeartBeat;

    invoke-direct {v0, p0}, Lcom/client/Heart$HeartBeat;-><init>(Lcom/client/Heart;)V

    iput-object v0, p0, Lcom/client/Heart;->beat:Lcom/client/Heart$HeartBeat;

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/client/Heart;->flag:Z

    .line 35
    iget-object v0, p0, Lcom/client/Heart;->beat:Lcom/client/Heart$HeartBeat;

    invoke-virtual {v0}, Lcom/client/Heart$HeartBeat;->start()V

    .line 36
    return-void
.end method
