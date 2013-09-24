.class public Lcom/client/Attach$AttachThread;
.super Ljava/lang/Thread;
.source "Attach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/client/Attach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachThread"
.end annotation


# instance fields
.field private in:Lcom/client/AttachReciveThread;

.field private out:Lcom/client/AttachSendThread;

.field final synthetic this$0:Lcom/client/Attach;


# direct methods
.method public constructor <init>(Lcom/client/Attach;)V
    .locals 5
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/client/Attach$AttachThread;->this$0:Lcom/client/Attach;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 76
    new-instance v0, Lcom/client/AttachReciveThread;

    #getter for: Lcom/client/Attach;->client:Lcom/client/Client;
    invoke-static {p1}, Lcom/client/Attach;->access$0(Lcom/client/Attach;)Lcom/client/Client;

    move-result-object v1

    #getter for: Lcom/client/Attach;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/client/Attach;->access$1(Lcom/client/Attach;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/client/AttachReciveThread;-><init>(Lcom/client/Client;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/client/Attach$AttachThread;->in:Lcom/client/AttachReciveThread;

    .line 77
    new-instance v0, Lcom/client/AttachSendThread;

    #getter for: Lcom/client/Attach;->client:Lcom/client/Client;
    invoke-static {p1}, Lcom/client/Attach;->access$0(Lcom/client/Attach;)Lcom/client/Client;

    move-result-object v1

    #getter for: Lcom/client/Attach;->Alist:Ljava/util/ArrayList;
    invoke-static {p1}, Lcom/client/Attach;->access$2(Lcom/client/Attach;)Ljava/util/ArrayList;

    move-result-object v2

    #getter for: Lcom/client/Attach;->Alock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Lcom/client/Attach;->access$3(Lcom/client/Attach;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    #getter for: Lcom/client/Attach;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/client/Attach;->access$1(Lcom/client/Attach;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/client/AttachSendThread;-><init>(Lcom/client/Client;Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/client/Attach$AttachThread;->out:Lcom/client/AttachSendThread;

    .line 79
    iget-object v0, p0, Lcom/client/Attach$AttachThread;->in:Lcom/client/AttachReciveThread;

    #getter for: Lcom/client/Attach;->mMessageListener:Lcom/client/MessageListener;
    invoke-static {p1}, Lcom/client/Attach;->access$4(Lcom/client/Attach;)Lcom/client/MessageListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/client/AttachReciveThread;->setAttachListener(Lcom/client/MessageListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getIn()Lcom/client/AttachReciveThread;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/client/Attach$AttachThread;->in:Lcom/client/AttachReciveThread;

    return-object v0
.end method

.method public getOut()Lcom/client/AttachSendThread;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/client/Attach$AttachThread;->out:Lcom/client/AttachSendThread;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/client/Attach$AttachThread;->in:Lcom/client/AttachReciveThread;

    invoke-virtual {v0}, Lcom/client/AttachReciveThread;->start()V

    .line 86
    iget-object v0, p0, Lcom/client/Attach$AttachThread;->out:Lcom/client/AttachSendThread;

    invoke-virtual {v0}, Lcom/client/AttachSendThread;->start()V

    .line 87
    iget-object v0, p0, Lcom/client/Attach$AttachThread;->this$0:Lcom/client/Attach;

    const/4 v1, 0x1

    #setter for: Lcom/client/Attach;->flag:Z
    invoke-static {v0, v1}, Lcom/client/Attach;->access$5(Lcom/client/Attach;Z)V

    .line 88
    return-void
.end method
