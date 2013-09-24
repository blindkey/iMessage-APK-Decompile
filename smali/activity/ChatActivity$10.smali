.class Lactivity/ChatActivity$10;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatActivity;->initView()V
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
.field final synthetic this$0:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ChatActivity$10;->this$0:Lactivity/ChatActivity;

    .line 601
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 607
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lactivity/ChatActivity$10;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->mBtnSuccess:Landroid/widget/Button;
    invoke-static {v2}, Lactivity/ChatActivity;->access$10(Lactivity/ChatActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 609
    const-string v2, "ChatActity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Item Press "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p1

    .line 610
    check-cast v1, Landroid/widget/ListView;

    .line 612
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 611
    check-cast v0, Lactivity/ChatMsgDeleteEntity;

    .line 613
    .local v0, entity:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->setIsPressed()V

    .line 614
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getIsPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 615
    iget-object v2, p0, Lactivity/ChatActivity$10;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->deleteNum:I
    invoke-static {v2}, Lactivity/ChatActivity;->access$11(Lactivity/ChatActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lactivity/ChatActivity;->deleteNum:I
    invoke-static {v2, v3}, Lactivity/ChatActivity;->access$12(Lactivity/ChatActivity;I)V

    .line 618
    :goto_0
    iget-object v2, p0, Lactivity/ChatActivity$10;->this$0:Lactivity/ChatActivity;

    #calls: Lactivity/ChatActivity;->changeButtonState()V
    invoke-static {v2}, Lactivity/ChatActivity;->access$13(Lactivity/ChatActivity;)V

    .line 620
    iget-object v2, p0, Lactivity/ChatActivity$10;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->mDeleteAdapter:Lactivity/ChatMsgDeleteViewAdapter;
    invoke-static {v2}, Lactivity/ChatActivity;->access$14(Lactivity/ChatActivity;)Lactivity/ChatMsgDeleteViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lactivity/ChatMsgDeleteViewAdapter;->notifyDataSetChanged()V

    .line 622
    .end local v0           #entity:Lactivity/ChatMsgDeleteEntity;
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_0
    return-void

    .line 617
    .restart local v0       #entity:Lactivity/ChatMsgDeleteEntity;
    .restart local v1       #listView:Landroid/widget/ListView;
    :cond_1
    iget-object v2, p0, Lactivity/ChatActivity$10;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->deleteNum:I
    invoke-static {v2}, Lactivity/ChatActivity;->access$11(Lactivity/ChatActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    #setter for: Lactivity/ChatActivity;->deleteNum:I
    invoke-static {v2, v3}, Lactivity/ChatActivity;->access$12(Lactivity/ChatActivity;I)V

    goto :goto_0
.end method
