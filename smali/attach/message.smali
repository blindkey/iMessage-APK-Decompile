.class public Lattach/message;
.super Ljava/lang/Object;
.source "message.java"


# instance fields
.field private et:J

.field protected m_ResponseStatus:I

.field protected pt:J

.field private st:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbsTime()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lattach/message;->pt:J

    return-wide v0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lattach/message;->m_ResponseStatus:I

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public timeend()V
    .locals 4

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lattach/message;->et:J

    .line 12
    iget-wide v0, p0, Lattach/message;->et:J

    iget-wide v2, p0, Lattach/message;->st:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lattach/message;->pt:J

    .line 13
    return-void
.end method

.method public timeinit()V
    .locals 2

    .prologue
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lattach/message;->st:J

    .line 9
    return-void
.end method
