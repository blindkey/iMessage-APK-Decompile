.class Lactivity/FriendListActivity$1$1;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/FriendListActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lactivity/FriendListActivity$1;

.field private final synthetic val$strUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/FriendListActivity$1$1;->this$1:Lactivity/FriendListActivity$1;

    iput-object p2, p0, Lactivity/FriendListActivity$1$1;->val$strUrl:Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lactivity/FriendListActivity$1$1;->val$strUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    iget-object v1, p0, Lactivity/FriendListActivity$1$1;->this$1:Lactivity/FriendListActivity$1;

    #getter for: Lactivity/FriendListActivity$1;->this$0:Lactivity/FriendListActivity;
    invoke-static {v1}, Lactivity/FriendListActivity$1;->access$0(Lactivity/FriendListActivity$1;)Lactivity/FriendListActivity;

    move-result-object v1

    iget-object v1, v1, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 208
    return-void
.end method
