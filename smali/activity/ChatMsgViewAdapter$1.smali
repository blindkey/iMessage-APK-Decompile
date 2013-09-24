.class Lactivity/ChatMsgViewAdapter$1;
.super Ljava/lang/Object;
.source "ChatMsgViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatMsgViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/ChatMsgViewAdapter;

.field private final synthetic val$entity:Lactivity/ChatMsgEntity;


# direct methods
.method constructor <init>(Lactivity/ChatMsgViewAdapter;Lactivity/ChatMsgEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ChatMsgViewAdapter$1;->this$0:Lactivity/ChatMsgViewAdapter;

    iput-object p2, p0, Lactivity/ChatMsgViewAdapter$1;->val$entity:Lactivity/ChatMsgEntity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 149
    .local v1, vid:I
    const-string v2, "Touch ReSend"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lactivity/ChatMsgViewAdapter$1;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v4}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lactivity/ChatMsgViewAdapter$1;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v4}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v2, p0, Lactivity/ChatMsgViewAdapter$1;->this$0:Lactivity/ChatMsgViewAdapter;

    #getter for: Lactivity/ChatMsgViewAdapter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lactivity/ChatMsgViewAdapter;->access$0(Lactivity/ChatMsgViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 151
    .local v0, message:Landroid/os/Message;
    const v2, 0x12131

    iput v2, v0, Landroid/os/Message;->what:I

    .line 153
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "msg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lactivity/ChatMsgViewAdapter$1;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v5}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 154
    iget-object v2, p0, Lactivity/ChatMsgViewAdapter$1;->this$0:Lactivity/ChatMsgViewAdapter;

    #getter for: Lactivity/ChatMsgViewAdapter;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lactivity/ChatMsgViewAdapter;->access$0(Lactivity/ChatMsgViewAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method
