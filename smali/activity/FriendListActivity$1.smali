.class Lactivity/FriendListActivity$1;
.super Landroid/os/Handler;
.source "FriendListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/FriendListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    .line 145
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lactivity/FriendListActivity$1;)Lactivity/FriendListActivity;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x1

    .line 148
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    .local v0, data:Ljava/lang/String;
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5, v0}, Lactivity/FriendListActivity;->ReadMsgDB(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0           #data:Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "msg"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lactivity/FriendListActivity;->mContactSearch:Ljava/lang/String;
    invoke-static {v6, v5}, Lactivity/FriendListActivity;->access$0(Lactivity/FriendListActivity;Ljava/lang/String;)V

    .line 155
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5}, Lactivity/FriendListActivity;->ReadContactDB()V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5}, Lactivity/FriendListActivity;->exitLoginDialog()V

    goto :goto_0

    .line 162
    :pswitch_3
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    #calls: Lactivity/FriendListActivity;->UpdateSetting()V
    invoke-static {v5}, Lactivity/FriendListActivity;->access$1(Lactivity/FriendListActivity;)V

    goto :goto_0

    .line 165
    :pswitch_4
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5}, Lactivity/FriendListActivity;->clearDataDialog()V

    goto :goto_0

    .line 168
    :pswitch_5
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v5, v5, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v5}, Lcom/setting/SharePreferenceUtil;->getLinkStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 169
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    #calls: Lactivity/FriendListActivity;->readContactDialog()V
    invoke-static {v5}, Lactivity/FriendListActivity;->access$2(Lactivity/FriendListActivity;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    #calls: Lactivity/FriendListActivity;->readContactErrDialog()V
    invoke-static {v5}, Lactivity/FriendListActivity;->access$3(Lactivity/FriendListActivity;)V

    goto :goto_0

    .line 175
    :pswitch_6
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5}, Lactivity/FriendListActivity;->ReadContactDB()V

    .line 176
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v5, v5, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    .line 177
    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f070056

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 176
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 180
    :pswitch_7
    new-instance v4, LVerisonControl/UpdateVersion;

    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v5, v5, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    #getter for: Lactivity/FriendListActivity;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/FriendListActivity;->access$4(Lactivity/FriendListActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-direct {v4, v5, v6}, LVerisonControl/UpdateVersion;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 181
    .local v4, update:LVerisonControl/UpdateVersion;
    invoke-virtual {v4}, LVerisonControl/UpdateVersion;->start()V

    goto/16 :goto_0

    .line 184
    .end local v4           #update:LVerisonControl/UpdateVersion;
    :pswitch_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 185
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v5, v5, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const-class v6, Lactivity/aboutactivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5, v2}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 189
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_9
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v5, v5, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f07008a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 193
    :pswitch_a
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v5, v5, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f070076

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 197
    :pswitch_b
    iget-object v5, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v5}, Lactivity/FriendListActivity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 199
    .local v3, strUrl:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f07008b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 200
    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f07008c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 201
    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f070042

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    new-instance v7, Lactivity/FriendListActivity$1$1;

    invoke-direct {v7, p0, v3}, Lactivity/FriendListActivity$1$1;-><init>(Lactivity/FriendListActivity$1;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 209
    iget-object v6, p0, Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f070043

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    new-instance v7, Lactivity/FriendListActivity$1$2;

    invoke-direct {v7, p0}, Lactivity/FriendListActivity$1$2;-><init>(Lactivity/FriendListActivity$1;)V

    .line 209
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 215
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 217
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method
