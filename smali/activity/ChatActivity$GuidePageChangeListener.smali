.class Lactivity/ChatActivity$GuidePageChangeListener;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuidePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/ChatActivity;


# direct methods
.method constructor <init>(Lactivity/ChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1324
    iput-object p1, p0, Lactivity/ChatActivity$GuidePageChangeListener;->this$0:Lactivity/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 1330
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 1335
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 1340
    const-string v3, "Page chage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lactivity/ChatActivity$GuidePageChangeListener;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->face_pagenum:I
    invoke-static {v3}, Lactivity/ChatActivity;->access$0(Lactivity/ChatActivity;)I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 1351
    return-void

    .line 1342
    :cond_0
    iget-object v3, p0, Lactivity/ChatActivity$GuidePageChangeListener;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->start_page_id:I
    invoke-static {v3}, Lactivity/ChatActivity;->access$1(Lactivity/ChatActivity;)I

    move-result v3

    add-int v1, v3, v0

    .line 1343
    .local v1, id:I
    iget-object v3, p0, Lactivity/ChatActivity$GuidePageChangeListener;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v3, v1}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1344
    .local v2, page:Landroid/widget/ImageView;
    if-ne p1, v0, :cond_1

    .line 1345
    const v3, 0x7f02022c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1341
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1348
    :cond_1
    const v3, 0x7f02022d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
