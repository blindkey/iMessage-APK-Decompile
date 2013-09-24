.class Lactivity/RecentChatDeleteAdapter$2;
.super Ljava/lang/Object;
.source "RecentChatDeleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lactivity/RecentChatDeleteAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter$2;->this$0:Lactivity/RecentChatDeleteAdapter;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, -0x1

    .line 204
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter$2;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v0}, Lactivity/RecentChatDeleteAdapter;->access$9(Lactivity/RecentChatDeleteAdapter;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 205
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter$2;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;
    invoke-static {v0}, Lactivity/RecentChatDeleteAdapter;->access$0(Lactivity/RecentChatDeleteAdapter;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lactivity/RecentChatDeleteAdapter$2;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v1}, Lactivity/RecentChatDeleteAdapter;->access$9(Lactivity/RecentChatDeleteAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->setifdeleteDown()V

    .line 206
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter$2;->this$0:Lactivity/RecentChatDeleteAdapter;

    #setter for: Lactivity/RecentChatDeleteAdapter;->pre:I
    invoke-static {v0, v2}, Lactivity/RecentChatDeleteAdapter;->access$8(Lactivity/RecentChatDeleteAdapter;I)V

    .line 207
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter$2;->this$0:Lactivity/RecentChatDeleteAdapter;

    invoke-virtual {v0}, Lactivity/RecentChatDeleteAdapter;->notifyDataSetChanged()V

    .line 209
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
