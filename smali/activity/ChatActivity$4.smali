.class Lactivity/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatActivity;->initChooseView()V
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
    iput-object p1, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    .line 298
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 305
    const-string v3, "Choose"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    packed-switch p3, :pswitch_data_0

    .line 336
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v3, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v3}, Lactivity/ChatActivity;->startTakePhoto()V

    goto :goto_0

    .line 311
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, intentv:Landroid/content/Intent;
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 313
    iget-object v3, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    const v4, 0x11012

    invoke-virtual {v3, v2, v4}, Lactivity/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 316
    .end local v2           #intentv:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    :try_start_0
    iget-object v3, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    iget-object v4, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    iget-object v4, v4, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f070049

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 321
    const v5, 0x11010

    .line 320
    invoke-virtual {v3, v4, v5}, Lactivity/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 326
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    iget-object v4, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    iget-object v4, v4, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f07004a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 327
    iget-object v5, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    iget-object v5, v5, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 326
    invoke-static {v3, v4, v5}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lactivity/ChatActivity;->access$3(Lactivity/ChatActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 332
    iget-object v3, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lactivity/ChatActivity;->access$4(Lactivity/ChatActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 333
    iget-object v3, p0, Lactivity/ChatActivity$4;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->page_select:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lactivity/ChatActivity;->access$5(Lactivity/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
