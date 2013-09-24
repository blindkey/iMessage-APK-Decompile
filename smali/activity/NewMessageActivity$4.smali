.class Lactivity/NewMessageActivity$4;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lactivity/NewMessageActivity$4;->this$0:Lactivity/NewMessageActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 250
    iget-object v1, p0, Lactivity/NewMessageActivity$4;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;
    invoke-static {v1}, Lactivity/NewMessageActivity;->access$7(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, string:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 252
    iget-object v1, p0, Lactivity/NewMessageActivity$4;->this$0:Lactivity/NewMessageActivity;

    const/4 v2, 0x1

    #setter for: Lactivity/NewMessageActivity;->HasText:Z
    invoke-static {v1, v2}, Lactivity/NewMessageActivity;->access$8(Lactivity/NewMessageActivity;Z)V

    .line 253
    iget-object v1, p0, Lactivity/NewMessageActivity$4;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v1}, Lactivity/NewMessageActivity;->enableSend()V

    .line 261
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lactivity/NewMessageActivity$4;->this$0:Lactivity/NewMessageActivity;

    const/4 v2, 0x0

    #setter for: Lactivity/NewMessageActivity;->HasText:Z
    invoke-static {v1, v2}, Lactivity/NewMessageActivity;->access$8(Lactivity/NewMessageActivity;Z)V

    .line 257
    iget-object v1, p0, Lactivity/NewMessageActivity$4;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v1}, Lactivity/NewMessageActivity;->disableSend()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 270
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 276
    return-void
.end method
