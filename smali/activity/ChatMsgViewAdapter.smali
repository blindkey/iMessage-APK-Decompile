.class public Lactivity/ChatMsgViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatMsgViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/ChatMsgViewAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RERECMSG:I = 0x321323

.field private static final RESENDMSG:I = 0x12131


# instance fields
.field private coll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgEntity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "handler"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, coll:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p3, p0, Lactivity/ChatMsgViewAdapter;->coll:Ljava/util/List;

    .line 45
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    iput-object p2, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p1, p0, Lactivity/ChatMsgViewAdapter;->handler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lactivity/ChatMsgViewAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lactivity/ChatMsgViewAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lactivity/ChatMsgViewAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method private setEmoji(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 10
    .parameter "text"
    .parameter "message"

    .prologue
    .line 327
    const/4 v3, 0x0

    .line 329
    .local v3, index:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 372
    return-void

    .line 330
    :cond_1
    const/4 v1, 0x0

    .line 331
    .local v1, find:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    sget-object v7, Lcom/common/emoji;->emojiImgs:[I

    array-length v7, v7

    if-lt v4, v7, :cond_2

    .line 366
    :goto_2
    if-nez v1, :cond_0

    .line 367
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, sub:Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 369
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v6           #sub:Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/common/emoji;->and:[Ljava/lang/String;

    aget-object v6, v7, v4

    .line 333
    .restart local v6       #sub:Ljava/lang/String;
    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 334
    const/4 v1, 0x1

    .line 336
    const/4 v0, 0x0

    .line 338
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/common/emoji;->emojiImgs:[I

    aget v8, v8, v4

    const v9, 0x3f2aaaab

    invoke-static {v7, v8, v9}, Lcom/common/VideoThumBnail;->getImageThumbnail(Landroid/content/res/Resources;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v7, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v7, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 353
    .local v2, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v5, Landroid/text/SpannableString;

    const-string v7, "tttt"

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 354
    .local v5, spannableString:Landroid/text/SpannableString;
    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 355
    const/16 v9, 0x21

    .line 354
    invoke-virtual {v5, v2, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 360
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 363
    goto :goto_2

    .line 331
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #imageSpan:Landroid/text/style/ImageSpan;
    .end local v5           #spannableString:Landroid/text/SpannableString;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 24
    .parameter "text"
    .parameter "message"

    .prologue
    .line 375
    const/4 v5, 0x0

    .line 376
    .local v5, begin:I
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_1

    .line 439
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lactivity/ChatMsgViewAdapter;->setEmoji(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 441
    return-void

    .line 379
    :cond_1
    const-string v21, "STARTFILE:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    .line 380
    .local v18, start:I
    const-string v21, ":ENDFILE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 381
    .local v10, end:I
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_0

    .line 383
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lactivity/ChatMsgViewAdapter;->setEmoji(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 387
    add-int/lit8 v21, v18, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 390
    .local v11, file:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 391
    .local v8, currentPath:Ljava/io/File;
    const/4 v9, 0x0

    .line 392
    .local v9, drawable:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 394
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 396
    const v22, 0x7f050002

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 395
    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 397
    const v21, 0x3e99999a

    const/16 v22, 0x15e

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Lcom/common/VideoThumBnail;->getImageThumbnail(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 404
    .end local v12           #fileName:Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v9, :cond_4

    .line 405
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 406
    .local v15, index:I
    add-int/lit8 v21, v15, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, FileName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 437
    .end local v4           #FileName:Ljava/lang/String;
    .end local v15           #index:I
    :goto_2
    add-int/lit8 v5, v10, 0x8

    goto/16 :goto_0

    .line 398
    .restart local v12       #fileName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 399
    const v22, 0x7f050004

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 398
    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 400
    const/16 v21, 0x96

    const/16 v22, 0x64

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v11, v0, v1, v2}, Lcom/common/VideoThumBnail;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_1

    .line 410
    .end local v12           #fileName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 411
    .local v20, width:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 422
    .local v13, height:I
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 421
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 423
    .local v6, bmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    .line 424
    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 425
    .local v16, paint:Landroid/graphics/Paint;
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 426
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 428
    new-instance v14, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v14, v0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 429
    .local v14, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "STARTFILE:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":ENDFILE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 430
    .local v19, str:Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 431
    .local v17, spannableString:Landroid/text/SpannableString;
    const/16 v21, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v22

    .line 432
    const/16 v23, 0x21

    .line 431
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 434
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lactivity/ChatMsgViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 55
    iget-object v0, p0, Lactivity/ChatMsgViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 63
    iget-object v1, p0, Lactivity/ChatMsgViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgEntity;

    .line 65
    .local v0, entity:Lactivity/ChatMsgEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getType()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 139
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgEntity;

    .line 140
    .local v0, entity:Lactivity/ChatMsgEntity;
    move v3, p1

    .line 141
    .local v3, pos:I
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getType()I

    move-result v7

    .line 142
    .local v7, viewType:I
    const/4 v6, 0x0

    .line 143
    .local v6, viewHolder:Lactivity/ChatMsgViewAdapter$ViewHolder;
    new-instance v5, Lactivity/ChatMsgViewAdapter$1;

    invoke-direct {v5, p0, v0}, Lactivity/ChatMsgViewAdapter$1;-><init>(Lactivity/ChatMsgViewAdapter;Lactivity/ChatMsgEntity;)V

    .line 158
    .local v5, sendagainlistener:Landroid/view/View$OnClickListener;
    new-instance v4, Lactivity/ChatMsgViewAdapter$2;

    invoke-direct {v4, p0, v0}, Lactivity/ChatMsgViewAdapter$2;-><init>(Lactivity/ChatMsgViewAdapter;Lactivity/ChatMsgEntity;)V

    .line 172
    .local v4, recagainlistener:Landroid/view/View$OnClickListener;
    new-instance v2, Lactivity/ChatMsgViewAdapter$3;

    invoke-direct {v2, p0, v0}, Lactivity/ChatMsgViewAdapter$3;-><init>(Lactivity/ChatMsgViewAdapter;Lactivity/ChatMsgEntity;)V

    .line 193
    .local v2, msglistener:Landroid/view/View$OnClickListener;
    if-nez p2, :cond_2

    .line 194
    new-instance v6, Lactivity/ChatMsgViewAdapter$ViewHolder;

    .end local v6           #viewHolder:Lactivity/ChatMsgViewAdapter$ViewHolder;
    invoke-direct {v6}, Lactivity/ChatMsgViewAdapter$ViewHolder;-><init>()V

    .line 195
    .restart local v6       #viewHolder:Lactivity/ChatMsgViewAdapter$ViewHolder;
    packed-switch v7, :pswitch_data_0

    .line 276
    :goto_0
    iput v7, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->viewType:I

    .line 277
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 282
    :goto_1
    iget v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->viewType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 283
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 284
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    :cond_0
    :goto_2
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 290
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setClickable(Z)V

    .line 291
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    :cond_1
    iget v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->viewType:I

    packed-switch v8, :pswitch_data_1

    .line 323
    :goto_3
    :pswitch_0
    return-object p2

    .line 197
    :pswitch_1
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 198
    const v9, 0x7f03000b

    .line 197
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 201
    const v8, 0x7f0b0039

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 200
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 205
    const v9, 0x7f030009

    .line 204
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 207
    const v8, 0x7f0b0036

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 206
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 211
    const v9, 0x7f03000a

    .line 210
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 213
    const v8, 0x7f0b0038

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 212
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 215
    const v8, 0x7f0b0037

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 214
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0

    .line 218
    :pswitch_4
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 219
    const v9, 0x7f030008

    .line 218
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 221
    const v8, 0x7f0b0035

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 220
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 223
    const v8, 0x7f0b0034

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 222
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 227
    :pswitch_5
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    const v9, 0x7f030007

    .line 227
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 230
    const v8, 0x7f0b0033

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 229
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 233
    :pswitch_6
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 234
    const v9, 0x7f030011

    .line 233
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 236
    const v8, 0x7f0b0047

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 235
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->emailButton:Landroid/widget/Button;

    .line 238
    const v8, 0x7f0b0048

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 237
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->linkButton:Landroid/widget/Button;

    .line 239
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->linkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    new-instance v1, Lactivity/ChatMsgViewAdapter$4;

    invoke-direct {v1, p0, v0}, Lactivity/ChatMsgViewAdapter$4;-><init>(Lactivity/ChatMsgViewAdapter;Lactivity/ChatMsgEntity;)V

    .line 262
    .local v1, listener:Landroid/view/View$OnClickListener;
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->emailButton:Landroid/widget/Button;

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->linkButton:Landroid/widget/Button;

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 270
    .end local v1           #listener:Landroid/view/View$OnClickListener;
    :pswitch_7
    iget-object v8, p0, Lactivity/ChatMsgViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 271
    const v9, 0x7f030003

    .line 270
    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 273
    const v8, 0x7f0b0025

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 272
    iput-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 279
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #viewHolder:Lactivity/ChatMsgViewAdapter$ViewHolder;
    check-cast v6, Lactivity/ChatMsgViewAdapter$ViewHolder;

    .restart local v6       #viewHolder:Lactivity/ChatMsgViewAdapter$ViewHolder;
    goto/16 :goto_1

    .line 285
    :cond_3
    iget v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->viewType:I

    const/16 v9, 0xa

    if-ne v8, v9, :cond_0

    .line 286
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 287
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 296
    :pswitch_8
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 302
    :pswitch_9
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lactivity/ChatMsgViewAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 307
    :pswitch_a
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->linkButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 312
    :pswitch_b
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v9, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    const v10, 0x7f070053

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 315
    :pswitch_c
    iget-object v8, v6, Lactivity/ChatMsgViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v9, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    const v10, 0x7f070054

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
    .end packed-switch

    .line 294
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 69
    const/16 v0, 0xb

    return v0
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 3
    .parameter "file"

    .prologue
    const/16 v2, 0xa

    .line 127
    invoke-static {p1, v2, v2}, Lcom/common/VideoThumBnail;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    .local v0, drawable:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 129
    iget-object v1, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/common/getFileIntent;->getImageFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x3

    invoke-static {p1, v2, v2, v1}, Lcom/common/VideoThumBnail;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/common/getFileIntent;->getVideoFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public openFiles(Ljava/lang/String;)V
    .locals 6
    .parameter "file"

    .prologue
    .line 73
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, currentPath:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, fileName:Ljava/lang/String;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 79
    const v5, 0x7f050002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    invoke-static {v1}, Lcom/common/OpenFiles;->getImageFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 81
    .local v3, intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 125
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v2       #fileName:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 83
    const v5, 0x7f050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    invoke-static {v1}, Lcom/common/OpenFiles;->getHtmlFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 85
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 86
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 87
    const v5, 0x7f050005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 88
    invoke-static {v1}, Lcom/common/OpenFiles;->getApkFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 89
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    .end local v3           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 92
    const v5, 0x7f050003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    invoke-static {v1}, Lcom/common/OpenFiles;->getAudioFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 94
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    .end local v3           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 96
    const v5, 0x7f050004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 97
    invoke-static {v1}, Lcom/common/OpenFiles;->getVideoFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 98
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 99
    .end local v3           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 100
    const v5, 0x7f050007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 101
    invoke-static {v1}, Lcom/common/OpenFiles;->getTextFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 102
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 103
    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 104
    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 105
    invoke-static {v1}, Lcom/common/OpenFiles;->getPdfFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 106
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 107
    .end local v3           #intent:Landroid/content/Intent;
    :cond_7
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 108
    const v5, 0x7f050008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 109
    invoke-static {v1}, Lcom/common/OpenFiles;->getWordFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 110
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 111
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 112
    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 111
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 113
    invoke-static {v1}, Lcom/common/OpenFiles;->getExcelFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 114
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 115
    .end local v3           #intent:Landroid/content/Intent;
    :cond_9
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 116
    const v5, 0x7f05000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-static {v2, v4}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 117
    invoke-static {v1}, Lcom/common/OpenFiles;->getPPTFileIntent(Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    .line 118
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 120
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, chooser:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    const v5, 0x7f070055

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    .line 122
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v4, p0, Lactivity/ChatMsgViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
