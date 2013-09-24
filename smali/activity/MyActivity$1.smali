.class Lactivity/MyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/MyActivity;


# direct methods
.method constructor <init>(Lactivity/MyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    .line 93
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->util:Lcom/setting/SharePreferenceUtil;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, action:Ljava/lang/String;
    const-string v17, "com.way.message"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 102
    const-string v17, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    .line 101
    check-cast v13, Lcom/common/TranObject;

    .line 103
    .local v13, msg:Lcom/common/TranObject;
    if-eqz v13, :cond_4

    .line 104
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "MyActivity:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v13}, Lcom/common/TranObject;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 191
    .end local v13           #msg:Lcom/common/TranObject;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v13       #msg:Lcom/common/TranObject;
    :pswitch_0
    invoke-virtual {v13}, Lcom/common/TranObject;->getByte()[B

    move-result-object v17

    const/16 v18, 0x8

    aget-byte v17, v17, v18

    packed-switch v17, :pswitch_data_1

    .line 117
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Lcom/common/TranObject;->getByte()[B

    move-result-object v18

    const/16 v19, 0x8

    aget-byte v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lactivity/MyActivity;->UpdateStatus(B)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->messageDB:Lcom/DB/MessageDB;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/DB/MessageDB;->setError(Ljava/lang/String;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lactivity/MyActivity;->UpdateMsgUI(B)V

    goto :goto_0

    .line 109
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f070011

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f070077

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 109
    invoke-static/range {v17 .. v19}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 113
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f070011

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f070078

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 113
    invoke-static/range {v17 .. v19}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    :pswitch_3
    invoke-virtual {v13}, Lcom/common/TranObject;->getByte()[B

    move-result-object v17

    const/16 v18, 0x6

    aget-byte v17, v17, v18

    packed-switch v17, :pswitch_data_2

    :pswitch_4
    goto/16 :goto_0

    .line 149
    :cond_1
    :goto_2
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Lcom/common/TranObject;->getByte()[B

    move-result-object v18

    const/16 v19, 0x6

    aget-byte v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lactivity/MyActivity;->UpdateMsgUI(B)V

    goto/16 :goto_0

    .line 125
    :pswitch_6
    invoke-virtual {v13}, Lcom/common/TranObject;->out()Lcom/common/recMsgType;

    move-result-object v12

    .line 126
    .local v12, mType:Lcom/common/recMsgType;
    if-eqz v12, :cond_0

    .line 128
    iget-object v9, v12, Lcom/common/recMsgType;->fromUser:Ljava/lang/String;

    .line 129
    .local v9, from:Ljava/lang/String;
    iget-object v7, v12, Lcom/common/recMsgType;->context:Ljava/lang/String;

    .line 131
    .local v7, content:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->mActiId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 132
    const/4 v5, 0x0

    .line 133
    .local v5, begin:I
    const-string v6, ""

    .line 135
    .local v6, con:Ljava/lang/String;
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_3

    .line 144
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 146
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f070079

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    .line 145
    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    .line 146
    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 136
    :cond_3
    const-string v17, "STARTFILE:"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v15

    .line 137
    .local v15, start:I
    const-string v17, ":ENDFILE"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 138
    .local v8, end:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_2

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_2

    .line 140
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v18, v15, 0xa

    move/from16 v0, v18

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 142
    add-int/lit8 v5, v8, 0x8

    goto/16 :goto_3

    .line 156
    .end local v5           #begin:I
    .end local v6           #con:Ljava/lang/String;
    .end local v7           #content:Ljava/lang/String;
    .end local v8           #end:I
    .end local v9           #from:Ljava/lang/String;
    .end local v12           #mType:Lcom/common/recMsgType;
    .end local v15           #start:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lactivity/MyActivity;->close()V

    goto/16 :goto_0

    .line 158
    .end local v13           #msg:Lcom/common/TranObject;
    :cond_5
    const-string v17, "com.way.update"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 160
    const-string v17, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    .line 159
    check-cast v14, Lcom/common/TranProcess;

    .line 161
    .local v14, process:Lcom/common/TranProcess;
    if-eqz v14, :cond_0

    .line 164
    invoke-virtual {v14}, Lcom/common/TranProcess;->getType()I

    move-result v17

    packed-switch v17, :pswitch_data_3

    goto/16 :goto_0

    .line 166
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->messageDB:Lcom/DB/MessageDB;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/DB/MessageDB;->setError(Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lactivity/MyActivity;->UpdateMsgUI(B)V

    goto/16 :goto_0

    .line 172
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->messageDB:Lcom/DB/MessageDB;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/common/TranProcess;->getMsgid()J

    move-result-wide v18

    const/16 v20, 0x7

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/DB/MessageDB;->setSendTypeMsg(Ljava/lang/String;JI)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Lactivity/MyActivity;->UpdateMsgUI(B)V

    goto/16 :goto_0

    .line 177
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->messageDB:Lcom/DB/MessageDB;

    move-object/from16 v17, v0

    invoke-virtual {v14}, Lcom/common/TranProcess;->getMsgid()J

    move-result-wide v18

    invoke-virtual {v14}, Lcom/common/TranProcess;->getProcess()I

    move-result v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move/from16 v3, v20

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/DB/MessageDB;->UpdateMsgRate(Ljava/lang/String;JI)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lactivity/MyActivity;->UpdateProcess()V

    goto/16 :goto_0

    .line 182
    .end local v14           #process:Lcom/common/TranProcess;
    :cond_6
    const-string v17, "com.way.querystatus"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 184
    const-string v17, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v16

    .line 183
    check-cast v16, Ljava/lang/String;

    .line 185
    .local v16, status:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 186
    .local v11, istatus:I
    const/16 v17, 0x13a8

    move/from16 v0, v17

    if-ne v11, v0, :cond_0

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f07007a

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/MyActivity$1;->this$0:Lactivity/MyActivity;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f07007b

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 187
    invoke-static/range {v17 .. v19}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 107
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 123
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 164
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
