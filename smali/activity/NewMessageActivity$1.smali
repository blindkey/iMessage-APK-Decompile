.class Lactivity/NewMessageActivity$1;
.super Landroid/os/Handler;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/NewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    .line 598
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 600
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 619
    :goto_0
    return-void

    .line 602
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    .local v0, flag:Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    #setter for: Lactivity/NewMessageActivity;->UserExit:Z
    invoke-static {v1, v3}, Lactivity/NewMessageActivity;->access$0(Lactivity/NewMessageActivity;Z)V

    .line 605
    iget-object v1, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    #setter for: Lactivity/NewMessageActivity;->mQueryStatus:I
    invoke-static {v1, v3}, Lactivity/NewMessageActivity;->access$1(Lactivity/NewMessageActivity;I)V

    .line 607
    iget-object v1, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v1}, Lactivity/NewMessageActivity;->enableSend()V

    .line 616
    :goto_1
    iget-object v1, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    #calls: Lactivity/NewMessageActivity;->updateMark()V
    invoke-static {v1}, Lactivity/NewMessageActivity;->access$4(Lactivity/NewMessageActivity;)V

    goto :goto_0

    .line 612
    :cond_0
    iget-object v1, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    const/4 v2, 0x2

    #setter for: Lactivity/NewMessageActivity;->mQueryStatus:I
    invoke-static {v1, v2}, Lactivity/NewMessageActivity;->access$1(Lactivity/NewMessageActivity;I)V

    .line 613
    iget-object v1, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    iget-object v2, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    iget-object v3, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    iget-object v3, v3, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f07007f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->Reciver:Ljava/lang/String;
    invoke-static {v5}, Lactivity/NewMessageActivity;->access$2(Lactivity/NewMessageActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lactivity/NewMessageActivity$1;->this$0:Lactivity/NewMessageActivity;

    iget-object v5, v5, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f070080

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 613
    #calls: Lactivity/NewMessageActivity;->exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Lactivity/NewMessageActivity;->access$3(Lactivity/NewMessageActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
