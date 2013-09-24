.class Lactivity/ChatActivity$5;
.super Landroid/support/v4/view/PagerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatActivity;->initChooseView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ChatActivity$5;->this$0:Lactivity/ChatActivity;

    .line 340
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 1
    .parameter "container"
    .parameter "position"
    .parameter "object"

    .prologue
    .line 353
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lactivity/ChatActivity$5;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->choosegrids:Ljava/util/ArrayList;
    invoke-static {v0}, Lactivity/ChatActivity;->access$6(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 354
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lactivity/ChatActivity$5;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->choosegrids:Ljava/util/ArrayList;
    invoke-static {v0}, Lactivity/ChatActivity;->access$6(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 1
    .parameter "container"
    .parameter "position"

    .prologue
    .line 358
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    iget-object v0, p0, Lactivity/ChatActivity$5;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->choosegrids:Ljava/util/ArrayList;
    invoke-static {v0}, Lactivity/ChatActivity;->access$6(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 359
    iget-object v0, p0, Lactivity/ChatActivity$5;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->choosegrids:Ljava/util/ArrayList;
    invoke-static {v0}, Lactivity/ChatActivity;->access$6(Lactivity/ChatActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 343
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
