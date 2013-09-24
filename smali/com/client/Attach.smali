.class public Lcom/client/Attach;
.super Ljava/lang/Object;
.source "Attach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/client/Attach$AttachThread;
    }
.end annotation


# instance fields
.field private Alist:Ljava/util/ArrayList;

.field private Alock:Ljava/util/concurrent/locks/ReentrantLock;

.field private attachThread:Lcom/client/Attach$AttachThread;

.field private client:Lcom/client/Client;

.field private flag:Z

.field private mContext:Landroid/content/Context;

.field private mMessageListener:Lcom/client/MessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/client/Client;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/Attach;->flag:Z

    .line 28
    iput-object p2, p0, Lcom/client/Attach;->client:Lcom/client/Client;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/client/Attach;->Alist:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/client/Attach;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 31
    iput-object p1, p0, Lcom/client/Attach;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/client/Attach;)Lcom/client/Client;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/client/Attach;->client:Lcom/client/Client;

    return-object v0
.end method

.method static synthetic access$1(Lcom/client/Attach;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/client/Attach;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/client/Attach;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/client/Attach;->Alist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3(Lcom/client/Attach;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/client/Attach;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$4(Lcom/client/Attach;)Lcom/client/MessageListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/client/Attach;->mMessageListener:Lcom/client/MessageListener;

    return-object v0
.end method

.method static synthetic access$5(Lcom/client/Attach;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/client/Attach;->flag:Z

    return-void
.end method


# virtual methods
.method public getReciveMRU()Lattach/ReciveAttachMRU;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    invoke-virtual {v0}, Lcom/client/Attach$AttachThread;->getIn()Lcom/client/AttachReciveThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/client/AttachReciveThread;->getMRU()Lattach/ReciveAttachMRU;

    move-result-object v0

    return-object v0
.end method

.method public getSendMRU()Lattach/SendAttachMRU;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    invoke-virtual {v0}, Lcom/client/Attach$AttachThread;->getOut()Lcom/client/AttachSendThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/client/AttachSendThread;->getMRU()Lattach/SendAttachMRU;

    move-result-object v0

    return-object v0
.end method

.method public overThread()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    invoke-virtual {v0}, Lcom/client/Attach$AttachThread;->getIn()Lcom/client/AttachReciveThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/client/AttachReciveThread;->overThread()V

    .line 105
    iget-object v0, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    invoke-virtual {v0}, Lcom/client/Attach$AttachThread;->getOut()Lcom/client/AttachSendThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/client/AttachSendThread;->overThread()V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/client/Attach;->Alist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/Attach;->flag:Z

    .line 111
    return-void
.end method

.method public pushAttach(Lcom/common/TranObject;)V
    .locals 8
    .parameter "tranObject"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 119
    iget-boolean v4, p0, Lcom/client/Attach;->flag:Z

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    invoke-virtual {v4}, Lcom/client/Attach$AttachThread;->getOut()Lcom/client/AttachSendThread;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/client/AttachSendThread;->pushAttach(Lcom/common/TranObject;)V

    .line 136
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v3, Lcom/common/TranObject;

    invoke-direct {v3}, Lcom/common/TranObject;-><init>()V

    .line 124
    .local v3, msg:Lcom/common/TranObject;
    const/16 v4, 0x9

    new-array v1, v4, [B

    const/4 v4, 0x0

    aput-byte v6, v1, v4

    aput-byte v7, v1, v7

    const/4 v4, 0x5

    aput-byte v6, v1, v4

    const/4 v4, 0x6

    aput-byte v5, v1, v4

    const/4 v4, 0x7

    aput-byte v5, v1, v4

    const/16 v4, 0x8

    aput-byte v5, v1, v4

    .line 125
    .local v1, buf:[B
    new-instance v2, Lcom/common/CoreBuffer;

    array-length v4, v1

    invoke-direct {v2, v1, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 126
    .local v2, coreBuffer:Lcom/common/CoreBuffer;
    invoke-virtual {v3, v2}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 127
    invoke-virtual {v3}, Lcom/common/TranObject;->CreateLoginRespone()V

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v0, broadCast:Landroid/content/Intent;
    const-string v4, "com.way.message"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    iget-object v4, p0, Lcom/client/Attach;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pushRecAttach(Lcom/common/TranObject;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 46
    iget-boolean v4, p0, Lcom/client/Attach;->flag:Z

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    invoke-virtual {v4}, Lcom/client/Attach$AttachThread;->getIn()Lcom/client/AttachReciveThread;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/client/AttachReciveThread;->pushAttach(Lcom/common/TranObject;)V

    .line 62
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v3, Lcom/common/TranObject;

    invoke-direct {v3}, Lcom/common/TranObject;-><init>()V

    .line 51
    .local v3, msgt:Lcom/common/TranObject;
    const/16 v4, 0x9

    new-array v1, v4, [B

    const/4 v4, 0x0

    aput-byte v6, v1, v4

    aput-byte v7, v1, v7

    const/4 v4, 0x5

    aput-byte v6, v1, v4

    const/4 v4, 0x6

    aput-byte v5, v1, v4

    const/4 v4, 0x7

    aput-byte v5, v1, v4

    const/16 v4, 0x8

    aput-byte v5, v1, v4

    .line 52
    .local v1, buf:[B
    new-instance v2, Lcom/common/CoreBuffer;

    array-length v4, v1

    invoke-direct {v2, v1, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 53
    .local v2, coreBuffer:Lcom/common/CoreBuffer;
    invoke-virtual {v3, v2}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 54
    invoke-virtual {v3}, Lcom/common/TranObject;->CreateLoginRespone()V

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 57
    .local v0, broadCast:Landroid/content/Intent;
    const-string v4, "com.way.message"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v4, "message"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 60
    iget-object v4, p0, Lcom/client/Attach;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setAttachListener(Lcom/client/MessageListener;)V
    .locals 0
    .parameter "messageListener"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/client/Attach;->mMessageListener:Lcom/client/MessageListener;

    .line 115
    return-void
.end method

.method public setIsStart(Z)V
    .locals 0
    .parameter "isStart"

    .prologue
    .line 68
    return-void
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/client/Attach$AttachThread;

    invoke-direct {v0, p0}, Lcom/client/Attach$AttachThread;-><init>(Lcom/client/Attach;)V

    iput-object v0, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    .line 35
    iget-object v0, p0, Lcom/client/Attach;->attachThread:Lcom/client/Attach$AttachThread;

    invoke-virtual {v0}, Lcom/client/Attach$AttachThread;->start()V

    .line 36
    const/4 v0, 0x1

    return v0
.end method
