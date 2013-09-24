.class Lactivity/ChatMsgViewAdapter$4;
.super Ljava/lang/Object;
.source "ChatMsgViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatMsgViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/ChatMsgViewAdapter;

.field private final synthetic val$entity:Lactivity/ChatMsgEntity;


# direct methods
.method constructor <init>(Lactivity/ChatMsgViewAdapter;Lactivity/ChatMsgEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ChatMsgViewAdapter$4;->this$0:Lactivity/ChatMsgViewAdapter;

    iput-object p2, p0, Lactivity/ChatMsgViewAdapter$4;->val$entity:Lactivity/ChatMsgEntity;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 244
    .local v2, vid:I
    const v3, 0x7f0b0048

    if-ne v2, v3, :cond_0

    .line 245
    const-string v3, "ChatMsgViewAdapter"

    const-string v4, "AddToContact Down"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v1, Lcom/common/User;

    invoke-direct {v1}, Lcom/common/User;-><init>()V

    .line 247
    .local v1, u:Lcom/common/User;
    iget-object v3, p0, Lactivity/ChatMsgViewAdapter$4;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v3}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lactivity/ChatMsgViewAdapter$4;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v3}, Lactivity/ChatMsgEntity;->getImg()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/common/User;->setImg(I)V

    .line 250
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lactivity/ChatMsgViewAdapter$4;->this$0:Lactivity/ChatMsgViewAdapter;

    #getter for: Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lactivity/ChatMsgViewAdapter;->access$1(Lactivity/ChatMsgViewAdapter;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lactivity/AddToContactActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    const-string v3, "user"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    iget-object v3, p0, Lactivity/ChatMsgViewAdapter$4;->this$0:Lactivity/ChatMsgViewAdapter;

    #getter for: Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lactivity/ChatMsgViewAdapter;->access$1(Lactivity/ChatMsgViewAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 259
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #u:Lcom/common/User;
    :cond_0
    return-void
.end method
