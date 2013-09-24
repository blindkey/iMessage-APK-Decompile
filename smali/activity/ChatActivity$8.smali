.class Lactivity/ChatActivity$8;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lactivity/ChatActivity$8;->this$0:Lactivity/ChatActivity;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 555
    if-eqz p2, :cond_0

    .line 556
    iget-object v0, p0, Lactivity/ChatActivity$8;->this$0:Lactivity/ChatActivity;

    invoke-virtual {v0}, Lactivity/ChatActivity;->CloseFacePicture()V

    .line 561
    :cond_0
    return-void
.end method
