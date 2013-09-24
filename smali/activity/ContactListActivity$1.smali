.class Lactivity/ContactListActivity$1;
.super Landroid/os/Handler;
.source "ContactListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/ContactListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/ContactListActivity;


# direct methods
.method constructor <init>(Lactivity/ContactListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ContactListActivity$1;->this$0:Lactivity/ContactListActivity;

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v1, p0, Lactivity/ContactListActivity$1;->this$0:Lactivity/ContactListActivity;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lactivity/ContactListActivity;->mContactSearch:Ljava/lang/String;
    invoke-static {v1, v0}, Lactivity/ContactListActivity;->access$0(Lactivity/ContactListActivity;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lactivity/ContactListActivity$1;->this$0:Lactivity/ContactListActivity;

    #calls: Lactivity/ContactListActivity;->ReadContactDB()V
    invoke-static {v0}, Lactivity/ContactListActivity;->access$1(Lactivity/ContactListActivity;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1234568
        :pswitch_0
    .end packed-switch
.end method
