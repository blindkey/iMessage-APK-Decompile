.class Lactivity/FriendListActivity$5;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/FriendListActivity;->deleteContactDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/FriendListActivity;

.field private final synthetic val$appleID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/FriendListActivity$5;->this$0:Lactivity/FriendListActivity;

    iput-object p2, p0, Lactivity/FriendListActivity$5;->val$appleID:Ljava/lang/String;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 736
    iget-object v0, p0, Lactivity/FriendListActivity$5;->this$0:Lactivity/FriendListActivity;

    iget-object v0, v0, Lactivity/FriendListActivity;->contactDB:Lcom/DB/ContactDB;

    iget-object v1, p0, Lactivity/FriendListActivity$5;->val$appleID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/DB/ContactDB;->deleteContact(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lactivity/FriendListActivity$5;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->ReadContactDB()V

    .line 738
    iget-object v0, p0, Lactivity/FriendListActivity$5;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->ReadMsgDB()V

    .line 739
    return-void
.end method
