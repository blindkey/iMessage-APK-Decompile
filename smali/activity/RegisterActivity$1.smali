.class Lactivity/RegisterActivity$1;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/RegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/RegisterActivity;


# direct methods
.method constructor <init>(Lactivity/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    .line 462
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 464
    iget-object v1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    #getter for: Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lactivity/RegisterActivity;->access$0(Lactivity/RegisterActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    #getter for: Lactivity/RegisterActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lactivity/RegisterActivity;->access$0(Lactivity/RegisterActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 466
    :cond_0
    const-string v0, ""

    .line 467
    .local v0, resmsg:Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 481
    :goto_0
    iget-object v1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    iget-object v2, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    iget-object v3, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    const v4, 0x7f070040

    invoke-virtual {v3, v4}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lactivity/RegisterActivity;->exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lactivity/RegisterActivity;->access$1(Lactivity/RegisterActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    return-void

    .line 469
    :pswitch_0
    iget-object v1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    goto :goto_0

    .line 472
    :pswitch_1
    iget-object v1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    const v2, 0x7f070087

    invoke-virtual {v1, v2}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    goto :goto_0

    .line 475
    :pswitch_2
    iget-object v1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    const v2, 0x7f070088

    invoke-virtual {v1, v2}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 476
    goto :goto_0

    .line 478
    :pswitch_3
    iget-object v1, p0, Lactivity/RegisterActivity$1;->this$0:Lactivity/RegisterActivity;

    const v2, 0x7f070089

    invoke-virtual {v1, v2}, Lactivity/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
