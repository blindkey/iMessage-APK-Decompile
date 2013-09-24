.class Lactivity/FriendListActivity$2;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
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
    iput-object p1, p0, Lactivity/FriendListActivity$2;->this$0:Lactivity/FriendListActivity;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    .line 488
    const-string v4, "ContactListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contact Down"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    .line 489
    check-cast v2, Landroid/widget/ListView;

    .line 491
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 490
    check-cast v0, Lactivity/ContactListEntity;

    .line 493
    .local v0, entity:Lactivity/ContactListEntity;
    new-instance v3, Lcom/common/User;

    invoke-direct {v3}, Lcom/common/User;-><init>()V

    .line 494
    .local v3, tuser:Lcom/common/User;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 497
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lactivity/FriendListActivity$2;->this$0:Lactivity/FriendListActivity;

    const-class v5, Lactivity/AddToContactActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 498
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 499
    const-string v4, "user"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 500
    iget-object v4, p0, Lactivity/FriendListActivity$2;->this$0:Lactivity/FriendListActivity;

    invoke-virtual {v4, v1}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    .line 502
    .end local v0           #entity:Lactivity/ContactListEntity;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #listView:Landroid/widget/ListView;
    .end local v3           #tuser:Lcom/common/User;
    :cond_0
    return-void
.end method
