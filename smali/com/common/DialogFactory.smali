.class public Lcom/common/DialogFactory;
.super Ljava/lang/Object;
.source "DialogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 34
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 35
    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 36
    return-void
.end method

.method public static creatRequestDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 9
    .parameter "context"
    .parameter "tip"

    .prologue
    .line 16
    new-instance v0, Landroid/app/Dialog;

    const v5, 0x7f090001

    invoke-direct {v0, p0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 17
    .local v0, dialog:Landroid/app/Dialog;
    const v5, 0x7f030010

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 19
    .local v4, window:Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 20
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {p0}, Lcom/common/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v3

    .line 21
    .local v3, width:I
    const-wide v5, 0x3fe3333333333333L

    int-to-double v7, v3

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    const v5, 0x7f0b0045

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 24
    .local v2, titleTxtv:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 25
    :cond_0
    const v5, 0x7f07001b

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 30
    :goto_0
    return-object v0

    .line 27
    :cond_1
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
