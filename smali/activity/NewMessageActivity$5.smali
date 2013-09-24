.class Lactivity/NewMessageActivity$5;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/NewMessageActivity;->initChooseView()V
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
.field final synthetic this$0:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    .line 371
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

    .line 378
    const-string v3, "Choose"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "id = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    packed-switch p3, :pswitch_data_0

    .line 409
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v3, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v3}, Lactivity/NewMessageActivity;->startTakePhoto()V

    goto :goto_0

    .line 384
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 385
    .local v2, intentv:Landroid/content/Intent;
    const-string v3, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    iget-object v3, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    const v4, 0x11002

    invoke-virtual {v3, v2, v4}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 389
    .end local v2           #intentv:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "*/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v3, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    :try_start_0
    iget-object v3, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    iget-object v4, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    iget-object v4, v4, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f070049

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 394
    const v5, 0x11000

    .line 393
    invoke-virtual {v3, v4, v5}, Lactivity/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v0

    .line 399
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    iget-object v4, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    iget-object v4, v4, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f07004a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 400
    iget-object v5, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    iget-object v5, v5, Lactivity/NewMessageActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f07004e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {v3, v4, v5}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3
    iget-object v3, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->chooseview:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lactivity/NewMessageActivity;->access$9(Lactivity/NewMessageActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 405
    iget-object v3, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lactivity/NewMessageActivity;->access$10(Lactivity/NewMessageActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 406
    iget-object v3, p0, Lactivity/NewMessageActivity$5;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->page_select:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lactivity/NewMessageActivity;->access$11(Lactivity/NewMessageActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
