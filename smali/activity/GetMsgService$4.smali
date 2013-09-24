.class Lactivity/GetMsgService$4;
.super Ljava/lang/Object;
.source "GetMsgService.java"

# interfaces
.implements Lcom/client/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/GetMsgService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/GetMsgService;


# direct methods
.method constructor <init>(Lactivity/GetMsgService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Message(Lcom/common/TranObject;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 474
    invoke-virtual {p1}, Lcom/common/TranObject;->getRecive()Lcom/client/Recive;

    move-result-object v9

    .line 475
    .local v9, mRecive:Lcom/client/Recive;
    invoke-virtual {v9}, Lcom/client/Recive;->getFromUser()Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, from:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/client/Recive;->getContext()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, content:Ljava/lang/String;
    invoke-virtual {v9}, Lcom/client/Recive;->getResMessageID()J

    move-result-wide v7

    .line 480
    .local v7, id:J
    new-instance v11, Lcom/common/TranObject;

    invoke-direct {v11}, Lcom/common/TranObject;-><init>()V

    .line 481
    .local v11, tranObject:Lcom/common/TranObject;
    invoke-static {v7, v8}, Lcom/client/NewsRes;->m_body(J)Lcom/common/CoreBuffer;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 482
    iget-object v2, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v2}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    .line 484
    new-instance v12, Lcom/common/User;

    invoke-direct {v12}, Lcom/common/User;-><init>()V

    .line 485
    .local v12, user:Lcom/common/User;
    invoke-virtual {v12, v1}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->userDB:Lcom/DB/UserDB;
    invoke-static {v2}, Lactivity/GetMsgService;->access$12(Lactivity/GetMsgService;)Lcom/DB/UserDB;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 488
    new-instance v0, Lactivity/ChatMsgEntity;

    .line 489
    invoke-static {}, Lcom/DB/MyDate;->getDateEN()Ljava/lang/String;

    move-result-object v2

    move v5, v4

    .line 488
    invoke-direct/range {v0 .. v5}, Lactivity/ChatMsgEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 490
    .local v0, entity:Lactivity/ChatMsgEntity;
    invoke-virtual {p1}, Lcom/common/TranObject;->getRecStatus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 491
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 495
    :goto_0
    invoke-virtual {v9}, Lcom/client/Recive;->getxContext()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setxMessage(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v9}, Lcom/client/Recive;->getmsgid()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 497
    invoke-virtual {v9}, Lcom/client/Recive;->getm_guid()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setguid([B)V

    .line 498
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 499
    iget-object v2, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;
    invoke-static {v2}, Lactivity/GetMsgService;->access$10(Lactivity/GetMsgService;)Lcom/DB/MessageDB;

    move-result-object v2

    iget-object v4, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->curUser:Lcom/common/User;
    invoke-static {v4}, Lactivity/GetMsgService;->access$11(Lactivity/GetMsgService;)Lcom/common/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    .line 502
    iget-object v2, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v2}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/setting/SharePreferenceUtil;->getIsBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 503
    iget-object v2, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lactivity/GetMsgService;->access$13(Lactivity/GetMsgService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    .line 504
    .local v10, message:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v10, Landroid/os/Message;->what:I

    .line 505
    invoke-virtual {v10}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "msg"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 506
    iget-object v2, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lactivity/GetMsgService;->access$13(Lactivity/GetMsgService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    .end local v10           #message:Landroid/os/Message;
    :goto_1
    return-void

    .line 493
    :cond_0
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lactivity/ChatMsgEntity;->setSendType(I)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p1}, Lcom/common/TranObject;->push()V

    .line 509
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v6, broadCast:Landroid/content/Intent;
    const-string v2, "com.way.message"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 511
    const-string v2, "message"

    invoke-virtual {v6, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 513
    iget-object v2, p0, Lactivity/GetMsgService$4;->this$0:Lactivity/GetMsgService;

    invoke-virtual {v2, v6}, Lactivity/GetMsgService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
