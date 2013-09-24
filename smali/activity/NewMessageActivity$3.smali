.class Lactivity/NewMessageActivity$3;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/NewMessageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/NewMessageActivity;


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/NewMessageActivity$3;->this$0:Lactivity/NewMessageActivity;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 199
    if-eqz p2, :cond_0

    .line 200
    iget-object v0, p0, Lactivity/NewMessageActivity$3;->this$0:Lactivity/NewMessageActivity;

    const/4 v1, 0x0

    #setter for: Lactivity/NewMessageActivity;->UserExit:Z
    invoke-static {v0, v1}, Lactivity/NewMessageActivity;->access$0(Lactivity/NewMessageActivity;Z)V

    .line 201
    iget-object v0, p0, Lactivity/NewMessageActivity$3;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->disableSend()V

    .line 202
    iget-object v0, p0, Lactivity/NewMessageActivity$3;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->CloseFacePicture()V

    .line 204
    iget-object v0, p0, Lactivity/NewMessageActivity$3;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v0}, Lactivity/NewMessageActivity;->SendQuery()V

    .line 211
    :cond_0
    return-void
.end method
