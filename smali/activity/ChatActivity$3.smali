.class Lactivity/ChatActivity$3;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatActivity;->reRecMsg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/ChatActivity;

.field private final synthetic val$idt:I


# direct methods
.method constructor <init>(Lactivity/ChatActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ChatActivity$3;->this$0:Lactivity/ChatActivity;

    iput p2, p0, Lactivity/ChatActivity$3;->val$idt:I

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 200
    iget-object v2, p0, Lactivity/ChatActivity$3;->this$0:Lactivity/ChatActivity;

    iget-object v2, v2, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v3, p0, Lactivity/ChatActivity$3;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->CurUser:Lcom/common/User;
    invoke-static {v3}, Lactivity/ChatActivity;->access$2(Lactivity/ChatActivity;)Lcom/common/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lactivity/ChatActivity$3;->val$idt:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/DB/MessageDB;->getMsgById(Ljava/lang/String;J)Lactivity/ChatMsgEntity;

    move-result-object v0

    .line 201
    .local v0, entity:Lactivity/ChatMsgEntity;
    new-instance v1, Lcom/common/TranObject;

    invoke-direct {v1}, Lcom/common/TranObject;-><init>()V

    .line 202
    .local v1, msg:Lcom/common/TranObject;
    invoke-virtual {v1, v0}, Lcom/common/TranObject;->CreateReciver(Lactivity/ChatMsgEntity;)V

    .line 203
    iget-object v2, p0, Lactivity/ChatActivity$3;->this$0:Lactivity/ChatActivity;

    iget-object v2, v2, Lactivity/ChatActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v2}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/client/Attach;->pushRecAttach(Lcom/common/TranObject;)V

    .line 204
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 205
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 206
    const-string v2, "setRate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v2, "..."

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setMessage(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lactivity/ChatActivity$3;->this$0:Lactivity/ChatActivity;

    iget-object v2, v2, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v3, p0, Lactivity/ChatActivity$3;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->CurUser:Lcom/common/User;
    invoke-static {v3}, Lactivity/ChatActivity;->access$2(Lactivity/ChatActivity;)Lcom/common/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    .line 209
    iget-object v2, p0, Lactivity/ChatActivity$3;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v2}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 210
    return-void
.end method
