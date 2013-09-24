.class Lactivity/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatActivity;->reSendMsg(I)V
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
    iput-object p1, p0, Lactivity/ChatActivity$2;->this$0:Lactivity/ChatActivity;

    iput p2, p0, Lactivity/ChatActivity$2;->val$idt:I

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    iget-object v1, p0, Lactivity/ChatActivity$2;->this$0:Lactivity/ChatActivity;

    iget-object v1, v1, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v2, p0, Lactivity/ChatActivity$2;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->CurUser:Lcom/common/User;
    invoke-static {v2}, Lactivity/ChatActivity;->access$2(Lactivity/ChatActivity;)Lcom/common/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lactivity/ChatActivity$2;->val$idt:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/DB/MessageDB;->getMsgById(Ljava/lang/String;J)Lactivity/ChatMsgEntity;

    move-result-object v0

    .line 171
    .local v0, entity:Lactivity/ChatMsgEntity;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, v5}, Lactivity/ChatMsgEntity;->setMsgType(Z)V

    .line 173
    invoke-virtual {v0, v6}, Lactivity/ChatMsgEntity;->setisRead(Z)V

    .line 174
    invoke-virtual {v0, v5}, Lactivity/ChatMsgEntity;->setisDate(Z)V

    .line 175
    invoke-virtual {v0, v6}, Lactivity/ChatMsgEntity;->setType(I)V

    .line 176
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 182
    iget-object v1, p0, Lactivity/ChatActivity$2;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v1, v0}, Lactivity/ChatActivity;->SendMsg(Lactivity/ChatMsgEntity;)V

    .line 183
    const-string v1, "setRate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lactivity/ChatActivity$2;->this$0:Lactivity/ChatActivity;

    iget-object v1, v1, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v2, p0, Lactivity/ChatActivity$2;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->CurUser:Lcom/common/User;
    invoke-static {v2}, Lactivity/ChatActivity;->access$2(Lactivity/ChatActivity;)Lcom/common/User;

    move-result-object v2

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    .line 187
    iget-object v1, p0, Lactivity/ChatActivity$2;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v1}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 189
    :cond_0
    return-void
.end method
