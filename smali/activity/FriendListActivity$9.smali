.class Lactivity/FriendListActivity$9;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/FriendListActivity;->readContactDialog()V
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
    iput-object p1, p0, Lactivity/FriendListActivity$9;->this$0:Lactivity/FriendListActivity;

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 821
    new-instance v0, Lcom/client/ReadPhoneContact;

    iget-object v1, p0, Lactivity/FriendListActivity$9;->this$0:Lactivity/FriendListActivity;

    iget-object v1, v1, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lactivity/FriendListActivity$9;->this$0:Lactivity/FriendListActivity;

    #getter for: Lactivity/FriendListActivity;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lactivity/FriendListActivity;->access$4(Lactivity/FriendListActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lactivity/FriendListActivity$9;->this$0:Lactivity/FriendListActivity;

    iget-object v3, v3, Lactivity/FriendListActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-direct {v0, v1, v2, v3}, Lcom/client/ReadPhoneContact;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/DB/ContactDB;)V

    .line 822
    .local v0, con:Lcom/client/ReadPhoneContact;
    invoke-virtual {v0}, Lcom/client/ReadPhoneContact;->start()V

    .line 823
    return-void
.end method
