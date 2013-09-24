.class Lactivity/ChatActivity$9;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatActivity;->initView()V
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
    iput-object p1, p0, Lactivity/ChatActivity$9;->this$0:Lactivity/ChatActivity;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 574
    iget-object v1, p0, Lactivity/ChatActivity$9;->this$0:Lactivity/ChatActivity;

    #getter for: Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;
    invoke-static {v1}, Lactivity/ChatActivity;->access$8(Lactivity/ChatActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, string:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 576
    iget-object v1, p0, Lactivity/ChatActivity$9;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v1}, Lactivity/ChatActivity;->enableSend()V

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v1, p0, Lactivity/ChatActivity$9;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v1}, Lactivity/ChatActivity;->disableSend()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 587
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 594
    return-void
.end method
