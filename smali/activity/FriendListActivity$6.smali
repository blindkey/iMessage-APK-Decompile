.class Lactivity/FriendListActivity$6;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/FriendListActivity;->clearDataDialog()V
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
    iput-object p1, p0, Lactivity/FriendListActivity$6;->this$0:Lactivity/FriendListActivity;

    .line 745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 750
    iget-object v0, p0, Lactivity/FriendListActivity$6;->this$0:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v1, p0, Lactivity/FriendListActivity$6;->this$0:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v1}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/DB/MessageDB;->deleteMsg(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lactivity/FriendListActivity$6;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->ReadMsgDB()V

    .line 752
    return-void
.end method
