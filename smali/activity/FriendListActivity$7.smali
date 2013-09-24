.class Lactivity/FriendListActivity$7;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/FriendListActivity;->exitLoginDialog()V
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
    iput-object p1, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    .line 758
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

    .line 763
    new-instance v2, Landroid/content/Intent;

    .line 764
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    .line 765
    const-class v4, Lactivity/GetMsgService;

    .line 763
    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 766
    .local v2, service:Landroid/content/Intent;
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v3, v2}, Lactivity/FriendListActivity;->stopService(Landroid/content/Intent;)Z

    .line 768
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v3, v5}, Lactivity/MyApplication;->setServiceStart(Z)V

    .line 769
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v0

    .line 770
    .local v0, client:Lcom/client/Client;
    invoke-virtual {v0}, Lcom/client/Client;->overThread()V

    .line 772
    const-string v3, "FriendActivity"

    const-string v4, "LogOut"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v3, v5}, Lcom/setting/SharePreferenceUtil;->setIsBack(Z)V

    .line 774
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->tokenDB:Lcom/DB/TokenDB;

    iget-object v4, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    iget-object v4, v4, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v4}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/DB/TokenDB;->clear(Ljava/lang/String;)V

    .line 775
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v3, v5}, Lcom/setting/SharePreferenceUtil;->setAutoLogin(Z)V

    .line 777
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v3}, Lactivity/FriendListActivity;->close()V

    .line 778
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 779
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "status"

    const-string v4, "EXIT"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v1}, Lactivity/FriendListActivity;->setResult(ILandroid/content/Intent;)V

    .line 781
    iget-object v3, p0, Lactivity/FriendListActivity$7;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v3}, Lactivity/FriendListActivity;->finish()V

    .line 783
    return-void
.end method
