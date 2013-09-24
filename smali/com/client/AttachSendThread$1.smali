.class Lcom/client/AttachSendThread$1;
.super Ljava/lang/Object;
.source "AttachSendThread.java"

# interfaces
.implements Lcom/client/MessageRateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/client/AttachSendThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/client/AttachSendThread;


# direct methods
.method constructor <init>(Lcom/client/AttachSendThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Message(IIF)V
    .locals 6
    .parameter "con"
    .parameter "type"
    .parameter "rate"

    .prologue
    const/4 v3, 0x3

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, process:I
    const/4 v1, 0x0

    .line 123
    .local v1, object:Lcom/common/TranProcess;
    packed-switch p2, :pswitch_data_0

    .line 197
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->preProcess:I
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$2(Lcom/client/AttachSendThread;)I

    move-result v3

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 198
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #setter for: Lcom/client/AttachSendThread;->preProcess:I
    invoke-static {v3, v2}, Lcom/client/AttachSendThread;->access$0(Lcom/client/AttachSendThread;I)V

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v0, broadCast:Landroid/content/Intent;
    const-string v3, "com.way.update"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    const-string v3, "message"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 202
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$3(Lcom/client/AttachSendThread;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 203
    const-string v3, "send rate"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0           #broadCast:Landroid/content/Intent;
    :cond_1
    return-void

    .line 126
    :pswitch_0
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    const/4 v4, 0x0

    #setter for: Lcom/client/AttachSendThread;->preProcess:I
    invoke-static {v3, v4}, Lcom/client/AttachSendThread;->access$0(Lcom/client/AttachSendThread;I)V

    .line 127
    const/high16 v3, 0x4120

    mul-float/2addr v3, p3

    float-to-int v2, v3

    .line 128
    new-instance v1, Lcom/common/TranProcess;

    .end local v1           #object:Lcom/common/TranProcess;
    invoke-direct {v1}, Lcom/common/TranProcess;-><init>()V

    .line 129
    .restart local v1       #object:Lcom/common/TranProcess;
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->curMsgid:I
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$1(Lcom/client/AttachSendThread;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/common/TranProcess;->setUpdateThe(JI)V

    goto :goto_0

    .line 139
    :pswitch_1
    if-ne p1, v3, :cond_0

    .line 140
    const/16 v2, 0x14

    .line 141
    new-instance v1, Lcom/common/TranProcess;

    .end local v1           #object:Lcom/common/TranProcess;
    invoke-direct {v1}, Lcom/common/TranProcess;-><init>()V

    .line 142
    .restart local v1       #object:Lcom/common/TranProcess;
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->curMsgid:I
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$1(Lcom/client/AttachSendThread;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/common/TranProcess;->setUpdateThe(JI)V

    goto :goto_0

    .line 152
    :pswitch_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 153
    const/high16 v3, 0x4270

    mul-float/2addr v3, p3

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x14

    .line 154
    new-instance v1, Lcom/common/TranProcess;

    .end local v1           #object:Lcom/common/TranProcess;
    invoke-direct {v1}, Lcom/common/TranProcess;-><init>()V

    .line 155
    .restart local v1       #object:Lcom/common/TranProcess;
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->curMsgid:I
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$1(Lcom/client/AttachSendThread;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/common/TranProcess;->setUpdateThe(JI)V

    goto/16 :goto_0

    .line 165
    :pswitch_3
    if-ne p1, v3, :cond_0

    .line 166
    const/16 v2, 0x5a

    .line 167
    new-instance v1, Lcom/common/TranProcess;

    .end local v1           #object:Lcom/common/TranProcess;
    invoke-direct {v1}, Lcom/common/TranProcess;-><init>()V

    .line 168
    .restart local v1       #object:Lcom/common/TranProcess;
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->curMsgid:I
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$1(Lcom/client/AttachSendThread;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/common/TranProcess;->setUpdateThe(JI)V

    goto/16 :goto_0

    .line 179
    :pswitch_4
    const/16 v2, 0x5f

    .line 180
    new-instance v1, Lcom/common/TranProcess;

    .end local v1           #object:Lcom/common/TranProcess;
    invoke-direct {v1}, Lcom/common/TranProcess;-><init>()V

    .line 181
    .restart local v1       #object:Lcom/common/TranProcess;
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->curMsgid:I
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$1(Lcom/client/AttachSendThread;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/common/TranProcess;->setUpdateThe(JI)V

    goto/16 :goto_0

    .line 191
    :pswitch_5
    const/16 v2, -0x64

    .line 192
    new-instance v1, Lcom/common/TranProcess;

    .end local v1           #object:Lcom/common/TranProcess;
    invoke-direct {v1}, Lcom/common/TranProcess;-><init>()V

    .line 193
    .restart local v1       #object:Lcom/common/TranProcess;
    iget-object v3, p0, Lcom/client/AttachSendThread$1;->this$0:Lcom/client/AttachSendThread;

    #getter for: Lcom/client/AttachSendThread;->curMsgid:I
    invoke-static {v3}, Lcom/client/AttachSendThread;->access$1(Lcom/client/AttachSendThread;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/common/TranProcess;->setTheError(J)V

    goto/16 :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
