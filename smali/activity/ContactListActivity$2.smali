.class Lactivity/ContactListActivity$2;
.super Ljava/lang/Object;
.source "ContactListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ContactListActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lactivity/ContactListActivity;


# direct methods
.method constructor <init>(Lactivity/ContactListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ContactListActivity$2;->this$0:Lactivity/ContactListActivity;

    .line 59
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
    .line 66
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p3, :cond_0

    .line 67
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

    .line 68
    check-cast v2, Landroid/widget/ListView;

    .line 70
    .local v2, listView:Landroid/widget/ListView;
    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Lactivity/ContactListEntity;

    .line 72
    .local v0, entity:Lactivity/ContactListEntity;
    new-instance v3, Lcom/common/User;

    invoke-direct {v3}, Lcom/common/User;-><init>()V

    .line 73
    .local v3, tuser:Lcom/common/User;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "user"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 77
    iget-object v4, p0, Lactivity/ContactListActivity$2;->this$0:Lactivity/ContactListActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v1}, Lactivity/ContactListActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    iget-object v4, p0, Lactivity/ContactListActivity$2;->this$0:Lactivity/ContactListActivity;

    invoke-virtual {v4}, Lactivity/ContactListActivity;->finish()V

    .line 80
    .end local v0           #entity:Lactivity/ContactListEntity;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #listView:Landroid/widget/ListView;
    .end local v3           #tuser:Lcom/common/User;
    :cond_0
    return-void
.end method
