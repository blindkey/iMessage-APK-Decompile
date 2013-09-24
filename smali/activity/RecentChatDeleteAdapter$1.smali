.class Lactivity/RecentChatDeleteAdapter$1;
.super Ljava/lang/Object;
.source "RecentChatDeleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/RecentChatDeleteAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/RecentChatDeleteAdapter;

.field private final synthetic val$entity:Lactivity/RecentChatDeleteEntity;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lactivity/RecentChatDeleteAdapter;Lactivity/RecentChatDeleteEntity;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    iput-object p2, p0, Lactivity/RecentChatDeleteAdapter$1;->val$entity:Lactivity/RecentChatDeleteEntity;

    iput p3, p0, Lactivity/RecentChatDeleteAdapter$1;->val$pos:I

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, -0x1

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 161
    .local v1, vid:I
    const v2, 0x7f0b0087

    if-ne v1, v2, :cond_1

    .line 163
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    iget-object v3, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->application:Lactivity/MyApplication;
    invoke-static {v3}, Lactivity/RecentChatDeleteAdapter;->access$1(Lactivity/RecentChatDeleteAdapter;)Lactivity/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lactivity/MyApplication;->getMessageDB()Lcom/DB/MessageDB;

    move-result-object v3

    #setter for: Lactivity/RecentChatDeleteAdapter;->messageDB:Lcom/DB/MessageDB;
    invoke-static {v2, v3}, Lactivity/RecentChatDeleteAdapter;->access$2(Lactivity/RecentChatDeleteAdapter;Lcom/DB/MessageDB;)V

    .line 164
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    iget-object v3, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->application:Lactivity/MyApplication;
    invoke-static {v3}, Lactivity/RecentChatDeleteAdapter;->access$1(Lactivity/RecentChatDeleteAdapter;)Lactivity/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lactivity/MyApplication;->getUserDB()Lcom/DB/UserDB;

    move-result-object v3

    #setter for: Lactivity/RecentChatDeleteAdapter;->userDB:Lcom/DB/UserDB;
    invoke-static {v2, v3}, Lactivity/RecentChatDeleteAdapter;->access$3(Lactivity/RecentChatDeleteAdapter;Lcom/DB/UserDB;)V

    .line 165
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    iget-object v3, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->application:Lactivity/MyApplication;
    invoke-static {v3}, Lactivity/RecentChatDeleteAdapter;->access$1(Lactivity/RecentChatDeleteAdapter;)Lactivity/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v3

    #setter for: Lactivity/RecentChatDeleteAdapter;->CurUser:Lcom/common/User;
    invoke-static {v2, v3}, Lactivity/RecentChatDeleteAdapter;->access$4(Lactivity/RecentChatDeleteAdapter;Lcom/common/User;)V

    .line 166
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->messageDB:Lcom/DB/MessageDB;
    invoke-static {v2}, Lactivity/RecentChatDeleteAdapter;->access$5(Lactivity/RecentChatDeleteAdapter;)Lcom/DB/MessageDB;

    move-result-object v2

    iget-object v3, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->CurUser:Lcom/common/User;
    invoke-static {v3}, Lactivity/RecentChatDeleteAdapter;->access$6(Lactivity/RecentChatDeleteAdapter;)Lcom/common/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/RecentChatDeleteAdapter$1;->val$entity:Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v4}, Lactivity/RecentChatDeleteEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/DB/MessageDB;->deleteUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->userDB:Lcom/DB/UserDB;
    invoke-static {v2}, Lactivity/RecentChatDeleteAdapter;->access$7(Lactivity/RecentChatDeleteAdapter;)Lcom/DB/UserDB;

    move-result-object v2

    iget-object v3, p0, Lactivity/RecentChatDeleteAdapter$1;->val$entity:Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v3}, Lactivity/RecentChatDeleteEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/DB/UserDB;->delete(Ljava/lang/String;)V

    .line 168
    new-instance v0, Lactivity/RecentChatDeleteEntity;

    invoke-direct {v0}, Lactivity/RecentChatDeleteEntity;-><init>()V

    .line 169
    .local v0, tmp:Lactivity/RecentChatDeleteEntity;
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->val$entity:Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v2}, Lactivity/RecentChatDeleteEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lactivity/RecentChatDeleteEntity;->setAppleId(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;
    invoke-static {v2}, Lactivity/RecentChatDeleteAdapter;->access$0(Lactivity/RecentChatDeleteAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    iget v3, p0, Lactivity/RecentChatDeleteAdapter$1;->val$pos:I

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 173
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #setter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v2, v5}, Lactivity/RecentChatDeleteAdapter;->access$8(Lactivity/RecentChatDeleteAdapter;I)V

    .line 174
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    invoke-virtual {v2}, Lactivity/RecentChatDeleteAdapter;->notifyDataSetChanged()V

    .line 194
    .end local v0           #tmp:Lactivity/RecentChatDeleteEntity;
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const v2, 0x7f0b0080

    if-ne v1, v2, :cond_0

    .line 183
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v2}, Lactivity/RecentChatDeleteAdapter;->access$9(Lactivity/RecentChatDeleteAdapter;)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 184
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;
    invoke-static {v2}, Lactivity/RecentChatDeleteAdapter;->access$0(Lactivity/RecentChatDeleteAdapter;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v3}, Lactivity/RecentChatDeleteAdapter;->access$9(Lactivity/RecentChatDeleteAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v2}, Lactivity/RecentChatDeleteEntity;->setifdeleteDown()V

    .line 185
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    #setter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v2, v5}, Lactivity/RecentChatDeleteAdapter;->access$8(Lactivity/RecentChatDeleteAdapter;I)V

    .line 192
    :goto_1
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    invoke-virtual {v2}, Lactivity/RecentChatDeleteAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 189
    :cond_2
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->this$0:Lactivity/RecentChatDeleteAdapter;

    iget v3, p0, Lactivity/RecentChatDeleteAdapter$1;->val$pos:I

    #setter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v2, v3}, Lactivity/RecentChatDeleteAdapter;->access$8(Lactivity/RecentChatDeleteAdapter;I)V

    .line 190
    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$1;->val$entity:Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v2}, Lactivity/RecentChatDeleteEntity;->setifdeleteDown()V

    goto :goto_1
.end method
