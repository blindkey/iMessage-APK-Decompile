.class public Lcom/common/SlideButton;
.super Landroid/view/View;
.source "SlideButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/common/SlideButton$OnChangedListener;
    }
.end annotation


# instance fields
.field private bg_off:Landroid/graphics/Bitmap;

.field private bg_on:Landroid/graphics/Bitmap;

.field private btn_off:Landroid/graphics/Rect;

.field private btn_on:Landroid/graphics/Rect;

.field private changedLis:Lcom/common/SlideButton$OnChangedListener;

.field private downX:F

.field private isChgLsnOn:Z

.field private nowChoose:Z

.field private nowX:F

.field private onSlip:Z

.field private slip_btn:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v0, p0, Lcom/common/SlideButton;->nowChoose:Z

    .line 20
    iput-boolean v0, p0, Lcom/common/SlideButton;->onSlip:Z

    .line 24
    iput-boolean v0, p0, Lcom/common/SlideButton;->isChgLsnOn:Z

    .line 36
    invoke-direct {p0}, Lcom/common/SlideButton;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput-boolean v0, p0, Lcom/common/SlideButton;->nowChoose:Z

    .line 20
    iput-boolean v0, p0, Lcom/common/SlideButton;->onSlip:Z

    .line 24
    iput-boolean v0, p0, Lcom/common/SlideButton;->isChgLsnOn:Z

    .line 31
    invoke-direct {p0}, Lcom/common/SlideButton;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-virtual {p0}, Lcom/common/SlideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const v1, 0x7f02024a

    .line 41
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p0}, Lcom/common/SlideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    const v1, 0x7f020249

    .line 43
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/common/SlideButton;->bg_off:Landroid/graphics/Bitmap;

    .line 45
    invoke-virtual {p0}, Lcom/common/SlideButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    const v1, 0x7f02024b

    .line 45
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/common/SlideButton;->btn_on:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/common/SlideButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 50
    iget-object v2, p0, Lcom/common/SlideButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 49
    iput-object v0, p0, Lcom/common/SlideButton;->btn_off:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p0, p0}, Lcom/common/SlideButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    return-void
.end method


# virtual methods
.method public SetOnChangedListener(Lcom/common/SlideButton$OnChangedListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/common/SlideButton;->isChgLsnOn:Z

    .line 127
    iput-object p1, p0, Lcom/common/SlideButton;->changedLis:Lcom/common/SlideButton$OnChangedListener;

    .line 128
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v0, matrix:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v1, paint:Landroid/graphics/Paint;
    iget v3, p0, Lcom/common/SlideButton;->nowX:F

    iget-object v4, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 67
    iget-object v3, p0, Lcom/common/SlideButton;->bg_off:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    :goto_0
    iget-boolean v3, p0, Lcom/common/SlideButton;->onSlip:Z

    if-eqz v3, :cond_3

    .line 72
    iget v3, p0, Lcom/common/SlideButton;->nowX:F

    iget-object v4, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 83
    .local v2, x:F
    :goto_1
    cmpg-float v3, v2, v5

    if-gez v3, :cond_5

    .line 84
    const/4 v2, 0x0

    .line 88
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v2, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 90
    return-void

    .line 69
    .end local v2           #x:F
    :cond_1
    iget-object v3, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 75
    :cond_2
    iget v3, p0, Lcom/common/SlideButton;->nowX:F

    iget-object v4, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v2, v3, v4

    .restart local v2       #x:F
    goto :goto_1

    .line 77
    .end local v2           #x:F
    :cond_3
    iget-boolean v3, p0, Lcom/common/SlideButton;->nowChoose:Z

    if-eqz v3, :cond_4

    .line 78
    iget-object v3, p0, Lcom/common/SlideButton;->btn_off:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v3

    .restart local v2       #x:F
    goto :goto_1

    .line 80
    .end local v2           #x:F
    :cond_4
    iget-object v3, p0, Lcom/common/SlideButton;->btn_on:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v2, v3

    .restart local v2       #x:F
    goto :goto_1

    .line 85
    :cond_5
    iget-object v3, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 86
    iget-object v3, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/common/SlideButton;->slip_btn:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/common/SlideButton;->invalidate()V

    move v1, v2

    .line 121
    :cond_1
    return v1

    .line 98
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/common/SlideButton;->nowX:F

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 103
    iput-boolean v2, p0, Lcom/common/SlideButton;->onSlip:Z

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/common/SlideButton;->downX:F

    .line 105
    iget v1, p0, Lcom/common/SlideButton;->downX:F

    iput v1, p0, Lcom/common/SlideButton;->nowX:F

    goto :goto_0

    .line 108
    :pswitch_2
    iput-boolean v1, p0, Lcom/common/SlideButton;->onSlip:Z

    .line 109
    iget-boolean v0, p0, Lcom/common/SlideButton;->nowChoose:Z

    .line 110
    .local v0, lastChoose:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/common/SlideButton;->bg_on:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 111
    iput-boolean v2, p0, Lcom/common/SlideButton;->nowChoose:Z

    .line 114
    :goto_1
    iget-boolean v1, p0, Lcom/common/SlideButton;->isChgLsnOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/common/SlideButton;->nowChoose:Z

    if-eq v0, v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/common/SlideButton;->changedLis:Lcom/common/SlideButton$OnChangedListener;

    iget-boolean v3, p0, Lcom/common/SlideButton;->nowChoose:Z

    invoke-interface {v1, v3}, Lcom/common/SlideButton$OnChangedListener;->OnChanged(Z)V

    goto :goto_0

    .line 113
    :cond_2
    iput-boolean v1, p0, Lcom/common/SlideButton;->nowChoose:Z

    goto :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
