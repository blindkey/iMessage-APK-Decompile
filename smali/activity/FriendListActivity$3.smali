.class Lactivity/FriendListActivity$3;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/FriendListActivity;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/FriendListActivity$3;->this$0:Lactivity/FriendListActivity;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    .line 513
    const-string v3, "ContactListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contact Long Down"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 514
    check-cast v1, Landroid/widget/ListView;

    .line 516
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 515
    check-cast v0, Lactivity/ContactListEntity;

    .line 518
    .local v0, entity:Lactivity/ContactListEntity;
    new-instance v2, Lcom/common/User;

    invoke-direct {v2}, Lcom/common/User;-><init>()V

    .line 519
    .local v2, tuser:Lcom/common/User;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Lactivity/FriendListActivity$3;->this$0:Lactivity/FriendListActivity;

    iget-object v4, p0, Lactivity/FriendListActivity$3;->this$0:Lactivity/FriendListActivity;

    const/4 v5, 0x0

    iget-object v6, p0, Lactivity/FriendListActivity$3;->this$0:Lactivity/FriendListActivity;

    iget-object v6, v6, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f070059

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v7

    #calls: Lactivity/FriendListActivity;->deleteContactDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v4, v5, v6, v7}, Lactivity/FriendListActivity;->access$8(Lactivity/FriendListActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .end local v0           #entity:Lactivity/ContactListEntity;
    .end local v1           #listView:Landroid/widget/ListView;
    .end local v2           #tuser:Lcom/common/User;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
