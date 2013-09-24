.class Lactivity/FriendListActivity$GuidePageChangeListener;
.super Ljava/lang/Object;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/FriendListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GuidePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/FriendListActivity;


# direct methods
.method constructor <init>(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lactivity/FriendListActivity$GuidePageChangeListener;->this$0:Lactivity/FriendListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 846
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 850
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 855
    const-string v0, "Page chage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    packed-switch p1, :pswitch_data_0

    .line 867
    :goto_0
    return-void

    .line 858
    :pswitch_0
    iget-object v0, p0, Lactivity/FriendListActivity$GuidePageChangeListener;->this$0:Lactivity/FriendListActivity;

    #calls: Lactivity/FriendListActivity;->ChatBtnDown()V
    invoke-static {v0}, Lactivity/FriendListActivity;->access$5(Lactivity/FriendListActivity;)V

    goto :goto_0

    .line 861
    :pswitch_1
    iget-object v0, p0, Lactivity/FriendListActivity$GuidePageChangeListener;->this$0:Lactivity/FriendListActivity;

    #calls: Lactivity/FriendListActivity;->ContactBtnDown()V
    invoke-static {v0}, Lactivity/FriendListActivity;->access$6(Lactivity/FriendListActivity;)V

    goto :goto_0

    .line 864
    :pswitch_2
    iget-object v0, p0, Lactivity/FriendListActivity$GuidePageChangeListener;->this$0:Lactivity/FriendListActivity;

    #calls: Lactivity/FriendListActivity;->SettingBtnDown()V
    invoke-static {v0}, Lactivity/FriendListActivity;->access$7(Lactivity/FriendListActivity;)V

    goto :goto_0

    .line 856
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
