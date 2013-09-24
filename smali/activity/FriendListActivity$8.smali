.class Lactivity/FriendListActivity$8;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/FriendListActivity;->exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    .line 789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x0

    .line 793
    new-instance v2, Landroid/content/Intent;

    .line 794
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    .line 795
    const-class v4, Lactivity/GetMsgService;

    .line 793
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 796
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v3, v2}, Lactivity/FriendListActivity;->stopService(Landroid/content/Intent;)Z

    .line 798
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v3, v5}, Lactivity/MyApplication;->setServiceStart(Z)V

    .line 799
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v0

    .line 800
    .local v0, client:Lcom/client/Client;
    invoke-virtual {v0}, Lcom/client/Client;->overThread()V

    .line 801
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v3, v5}, Lcom/setting/SharePreferenceUtil;->setIsBack(Z)V

    .line 802
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/setting/SharePreferenceUtil;->setLinkStatus(I)V

    .line 803
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v3}, Lactivity/FriendListActivity;->close()V

    .line 804
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 805
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "status"

    const-string v4, "EXIT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 806
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lactivity/FriendListActivity;->setResult(ILandroid/content/Intent;)V

    .line 808
    iget-object v3, p0, Lactivity/FriendListActivity$8;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v3}, Lactivity/FriendListActivity;->finish()V

    .line 811
    return-void
.end method
