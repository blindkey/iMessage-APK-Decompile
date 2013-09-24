.class Lactivity/RecentChatDeleteAdapter$ifdeleteButtonListener;
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
    name = "ifdeleteButtonListener"
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
    .line 326
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter$ifdeleteButtonListener;->this$0:Lactivity/RecentChatDeleteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p2, p0, Lactivity/RecentChatDeleteAdapter$ifdeleteButtonListener;->entity:Lactivity/RecentChatDeleteEntity;

    .line 328
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 333
    .local v0, vid:I
    const v1, 0x7f0b0080

    if-ne v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lactivity/RecentChatDeleteAdapter$ifdeleteButtonListener;->entity:Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v1}, Lactivity/RecentChatDeleteEntity;->setifdeleteDown()V

    .line 335
    iget-object v1, p0, Lactivity/RecentChatDeleteAdapter$ifdeleteButtonListener;->this$0:Lactivity/RecentChatDeleteAdapter;

    invoke-virtual {v1}, Lactivity/RecentChatDeleteAdapter;->notifyDataSetChanged()V

    .line 337
    :cond_0
    return-void
.end method
