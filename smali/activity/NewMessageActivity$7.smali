.class Lactivity/NewMessageActivity$7;
.super Ljava/lang/Object;
.source "NewMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/NewMessageActivity;->initFace()V
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

.field private final synthetic val$start:I


# direct methods
.method constructor <init>(Lactivity/NewMessageActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    iput p2, p0, Lactivity/NewMessageActivity$7;->val$start:I

    .line 518
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
    .line 522
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->perpagenum:I
    invoke-static {v4}, Lactivity/NewMessageActivity;->access$13(Lactivity/NewMessageActivity;)I

    move-result v4

    if-ge p3, v4, :cond_1

    iget v4, p0, Lactivity/NewMessageActivity$7;->val$start:I

    add-int/2addr v4, p3

    sget-object v5, Lcom/common/emoji;->emojiImgs:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    invoke-virtual {v4}, Lactivity/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/common/emoji;->emojiImgs:[I

    iget v6, p0, Lactivity/NewMessageActivity$7;->val$start:I

    add-int/2addr v6, p3

    aget v5, v5, v6

    const v6, 0x3f2aaaab

    invoke-static {v4, v5, v6}, Lcom/common/VideoThumBnail;->getImageThumbnail(Landroid/content/res/Resources;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v4, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    invoke-direct {v2, v4, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 528
    .local v2, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v3, Landroid/text/SpannableString;

    sget-object v4, Lcom/common/emoji;->and:[Ljava/lang/String;

    iget v5, p0, Lactivity/NewMessageActivity$7;->val$start:I

    add-int/2addr v5, p3

    aget-object v4, v4, v5

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 529
    .local v3, spannableString:Landroid/text/SpannableString;
    const/4 v4, 0x0

    sget-object v5, Lcom/common/emoji;->and:[Ljava/lang/String;

    iget v6, p0, Lactivity/NewMessageActivity$7;->val$start:I

    add-int/2addr v6, p3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    .line 530
    const/16 v6, 0x21

    .line 529
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 536
    iget-object v4, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;
    invoke-static {v4}, Lactivity/NewMessageActivity;->access$7(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 537
    .local v1, cur:I
    iget-object v4, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;
    invoke-static {v4}, Lactivity/NewMessageActivity;->access$7(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 543
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #imageSpan:Landroid/text/style/ImageSpan;
    .end local v3           #spannableString:Landroid/text/SpannableString;
    :cond_0
    :goto_0
    return-void

    .line 539
    .end local v1           #cur:I
    :cond_1
    iget-object v4, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;
    invoke-static {v4}, Lactivity/NewMessageActivity;->access$7(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 540
    .restart local v1       #cur:I
    if-lez v1, :cond_0

    .line 541
    iget-object v4, p0, Lactivity/NewMessageActivity$7;->this$0:Lactivity/NewMessageActivity;

    #getter for: Lactivity/NewMessageActivity;->mEditTextMsg:Landroid/widget/EditText;
    invoke-static {v4}, Lactivity/NewMessageActivity;->access$7(Lactivity/NewMessageActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0
.end method
