.class Lactivity/GetMsgService$2;
.super Landroid/os/Handler;
.source "GetMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/GetMsgService;
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
    iput-object p1, p0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 94
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "msg"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    .line 96
    check-cast v8, Lcom/common/TranObject;

    .line 99
    .local v8, textObject:Lcom/common/TranObject;
    if-eqz v8, :cond_0

    .line 101
    invoke-virtual {v8}, Lcom/common/TranObject;->getRecive()Lcom/client/Recive;

    move-result-object v6

    .line 102
    .local v6, mRecive:Lcom/client/Recive;
    invoke-virtual {v6}, Lcom/client/Recive;->getFromUser()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, from:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/client/Recive;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, content:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->application:Lactivity/MyApplication;
    invoke-static {v12}, Lactivity/GetMsgService;->access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lactivity/MyApplication;->addRecentNum(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->application:Lactivity/MyApplication;
    invoke-static {v12}, Lactivity/GetMsgService;->access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v12

    invoke-virtual {v12}, Lactivity/MyApplication;->getRecentNum()I

    move-result v7

    .line 110
    .local v7, newMsgNum:I
    const v4, 0x7f02022a

    .line 111
    .local v4, icon:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 112
    .local v9, tickerText:Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 113
    .local v10, when:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13, v4, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    #setter for: Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;
    invoke-static {v12, v13}, Lactivity/GetMsgService;->access$2(Lactivity/GetMsgService;Landroid/app/Notification;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;
    invoke-static {v12}, Lactivity/GetMsgService;->access$3(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v12

    const/16 v13, 0x20

    iput v13, v12, Landroid/app/Notification;->flags:I

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;
    invoke-static {v12}, Lactivity/GetMsgService;->access$3(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v12

    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x1

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;
    invoke-static {v12}, Lactivity/GetMsgService;->access$3(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v12

    iget v13, v12, Landroid/app/Notification;->defaults:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v12, Landroid/app/Notification;->defaults:I

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;
    invoke-static {v12}, Lactivity/GetMsgService;->access$3(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v12

    const/4 v13, 0x0

    iput-object v13, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 122
    new-instance v5, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lactivity/GetMsgService;->access$4(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v12

    .line 123
    const-class v13, Lactivity/FriendListActivity;

    .line 122
    invoke-direct {v5, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v5, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lactivity/GetMsgService;->access$4(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 124
    invoke-static {v12, v13, v5, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 126
    .local v2, contentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;
    invoke-static {v12}, Lactivity/GetMsgService;->access$3(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lactivity/GetMsgService;->access$4(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v15}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v15

    invoke-virtual {v15}, Lcom/setting/SharePreferenceUtil;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mContext:Landroid/content/Context;
    invoke-static {v15}, Lactivity/GetMsgService;->access$4(Lactivity/GetMsgService;)Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f070069

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 126
    invoke-virtual {v12, v13, v14, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v12}, Lactivity/GetMsgService;->access$6(Lactivity/GetMsgService;)Landroid/app/NotificationManager;

    move-result-object v12

    const/16 v13, 0x911

    move-object/from16 v0, p0

    iget-object v14, v0, Lactivity/GetMsgService$2;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;
    invoke-static {v14}, Lactivity/GetMsgService;->access$3(Lactivity/GetMsgService;)Landroid/app/Notification;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
