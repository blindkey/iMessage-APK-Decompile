.class Lactivity/RecentChatDeleteAdapter$deleteButtonListener;
.super Ljava/lang/Object;
.source "RecentChatDeleteAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/RecentChatDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "deleteButtonListener"
.end annotation


# instance fields
.field private entity:Lactivity/RecentChatDeleteEntity;

.field final synthetic this$0:Lactivity/RecentChatDeleteAdapter;


# direct methods
.method constructor <init>(Lactivity/RecentChatDeleteAdapter;Lactivity/RecentChatDeleteEntity;)V
    .locals 0
    .parameter
    .parameter "entity"

    .prologue
    .line 308
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter$deleteButtonListener;->this$0:Lactivity/RecentChatDeleteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p2, p0, Lactivity/RecentChatDeleteAdapter$deleteButtonListener;->entity:Lactivity/RecentChatDeleteEntity;

    .line 310
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 317
    .local v0, vid:I
    const v1, 0x7f0b0087

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lactivity/RecentChatDeleteAdapter$deleteButtonListener;->this$0:Lactivity/RecentChatDeleteAdapter;

    #getter for: Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;
    invoke-static {v1}, Lactivity/RecentChatDeleteAdapter;->access$0(Lactivity/RecentChatDeleteAdapter;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lactivity/RecentChatDeleteAdapter$deleteButtonListener;->entity:Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v1, p0, Lactivity/RecentChatDeleteAdapter$deleteButtonListener;->this$0:Lactivity/RecentChatDeleteAdapter;

    invoke-virtual {v1}, Lactivity/RecentChatDeleteAdapter;->notifyDataSetChanged()V

    .line 321
    :cond_0
    return-void
.end method
