.class public Lactivity/aboutactivity;
.super Lactivity/MyActivity;
.source "aboutactivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBtnBack:Landroid/widget/Button;

.field private mCurVersion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateMsgUI(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 53
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public UpdateStatus(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 38
    :goto_0
    return-void

    .line 35
    :pswitch_0
    invoke-virtual {p0}, Lactivity/aboutactivity;->finish()V

    goto :goto_0

    .line 33
    :pswitch_data_0
    .packed-switch 0x7f0b0002
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lactivity/aboutactivity;->requestWindowFeature(I)Z

    .line 22
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lactivity/aboutactivity;->setContentView(I)V

    .line 23
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lactivity/aboutactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/aboutactivity;->mBtnBack:Landroid/widget/Button;

    .line 24
    iget-object v0, p0, Lactivity/aboutactivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lactivity/aboutactivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lactivity/aboutactivity;->mCurVersion:Landroid/widget/TextView;

    .line 27
    iget-object v0, p0, Lactivity/aboutactivity;->mCurVersion:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const v2, 0x7f070090

    invoke-virtual {p0, v2}, Lactivity/aboutactivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Lactivity/aboutactivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 47
    iget-object v0, p0, Lactivity/aboutactivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 42
    iget-object v0, p0, Lactivity/aboutactivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 43
    return-void
.end method
