.class public Lactivity/ChatMsgDeleteViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChatMsgDeleteViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private coll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgDeleteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgDeleteEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, coll:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgDeleteEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p2, p0, Lactivity/ChatMsgDeleteViewAdapter;->coll:Ljava/util/List;

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/ChatMsgDeleteViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p1, p0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method private deleteEntity(Lactivity/ChatMsgEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 293
    iget-object v0, p0, Lactivity/ChatMsgDeleteViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 294
    invoke-virtual {p0}, Lactivity/ChatMsgDeleteViewAdapter;->notifyDataSetChanged()V

    .line 295
    return-void
.end method

.method private setEmoji(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 10
    .parameter "text"
    .parameter "message"

    .prologue
    .line 180
    const/4 v3, 0x0

    .line 182
    .local v3, index:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_1

    .line 225
    return-void

    .line 183
    :cond_1
    const/4 v1, 0x0

    .line 184
    .local v1, find:Z
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    sget-object v7, Lcom/common/emoji;->emojiImgs:[I

    array-length v7, v7

    if-lt v4, v7, :cond_2

    .line 219
    :goto_2
    if-nez v1, :cond_0

    .line 220
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 221
    .local v6, sub:Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v6           #sub:Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/common/emoji;->and:[Ljava/lang/String;

    aget-object v6, v7, v4

    .line 186
    .restart local v6       #sub:Ljava/lang/String;
    invoke-virtual {p2, v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 187
    const/4 v1, 0x1

    .line 189
    const/4 v0, 0x0

    .line 191
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/common/emoji;->emojiImgs:[I

    aget v8, v8, v4

    const v9, 0x3f2aaaab

    invoke-static {v7, v8, v9}, Lcom/common/VideoThumBnail;->getImageThumbnail(Landroid/content/res/Resources;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v7, p0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    invoke-direct {v2, v7, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 206
    .local v2, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v5, Landroid/text/SpannableString;

    const-string v7, "tttt"

    invoke-direct {v5, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 207
    .local v5, spannableString:Landroid/text/SpannableString;
    const/4 v7, 0x0

    const/4 v8, 0x4

    .line 208
    const/16 v9, 0x21

    .line 207
    invoke-virtual {v5, v2, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 213
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 215
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v3, v7

    .line 216
    goto :goto_2

    .line 184
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
    .line 228
    const/4 v5, 0x0

    .line 229
    .local v5, begin:I
    const-string v21, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v5, v0, :cond_1

    .line 289
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lactivity/ChatMsgDeleteViewAdapter;->setEmoji(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 291
    return-void

    .line 231
    :cond_1
    const-string v21, "STARTFILE:"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v18

    .line 232
    .local v18, start:I
    const-string v21, ":ENDFILE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 233
    .local v10, end:I
    const/16 v21, -0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v10, v0, :cond_0

    .line 235
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lactivity/ChatMsgDeleteViewAdapter;->setEmoji(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 238
    add-int/lit8 v21, v18, 0xa

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 241
    .local v11, file:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    .local v8, currentPath:Ljava/io/File;
    const/4 v9, 0x0

    .line 243
    .local v9, drawable:Landroid/graphics/Bitmap;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_2

    .line 245
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, fileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 247
    const v22, 0x7f050002

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 246
    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 248
    const v21, 0x3e99999a

    const/16 v22, 0x15e

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v11, v0, v1}, Lcom/common/VideoThumBnail;->getImageThumbnail(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 254
    .end local v12           #fileName:Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v9, :cond_4

    .line 255
    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 256
    .local v15, index:I
    add-int/lit8 v21, v15, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, FileName:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 287
    .end local v4           #FileName:Ljava/lang/String;
    .end local v15           #index:I
    :goto_2
    add-int/lit8 v5, v10, 0x8

    goto/16 :goto_0

    .line 249
    .restart local v12       #fileName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 250
    const v22, 0x7f050004

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 249
    move-object/from16 v0, v21

    invoke-static {v12, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 251
    const/16 v21, 0x96

    const/16 v22, 0x64

    const/16 v23, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v11, v0, v1, v2}, Lcom/common/VideoThumBnail;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_1

    .line 260
    .end local v12           #fileName:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 261
    .local v20, width:I
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 272
    .local v13, height:I
    sget-object v21, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 271
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 273
    .local v6, bmp:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7}, Landroid/graphics/Canvas;-><init>()V

    .line 274
    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 275
    .local v16, paint:Landroid/graphics/Paint;
    invoke-virtual {v7, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 276
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v7, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 278
    new-instance v14, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v14, v0, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 279
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

    .line 280
    .local v19, str:Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 281
    .local v17, spannableString:Landroid/text/SpannableString;
    const/16 v21, 0x0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v22

    .line 282
    const/16 v23, 0x21

    .line 281
    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 284
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lactivity/ChatMsgDeleteViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 51
    iget-object v0, p0, Lactivity/ChatMsgDeleteViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 55
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    iget-object v1, p0, Lactivity/ChatMsgDeleteViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgDeleteEntity;

    .line 61
    .local v0, entity:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getType()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 70
    iget-object v4, p0, Lactivity/ChatMsgDeleteViewAdapter;->coll:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgDeleteEntity;

    .line 71
    .local v0, entity:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getIsPressed()Z

    move-result v1

    .line 72
    .local v1, isPressed:Z
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getType()I

    move-result v3

    .line 73
    .local v3, viewType:I
    const/4 v2, 0x0

    .line 76
    .local v2, viewHolder:Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;
    if-nez p2, :cond_7

    .line 77
    new-instance v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;

    .end local v2           #viewHolder:Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;
    invoke-direct {v2}, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;-><init>()V

    .line 78
    .restart local v2       #viewHolder:Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;
    if-ne v3, v9, :cond_1

    .line 79
    iget-object v4, p0, Lactivity/ChatMsgDeleteViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    const v5, 0x7f03000b

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    const v4, 0x7f0b0039

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 81
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 136
    :goto_0
    iput v3, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->viewType:I

    .line 137
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 142
    :goto_1
    iget v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->viewType:I

    if-ne v4, v9, :cond_8

    .line 143
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getDate()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_0
    :goto_2
    iget v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->viewType:I

    packed-switch v4, :pswitch_data_0

    .line 176
    :goto_3
    return-object p2

    .line 85
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 86
    iget-object v4, p0, Lactivity/ChatMsgDeleteViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    const v5, 0x7f030005

    .line 86
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 89
    const v4, 0x7f0b002d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 88
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 91
    const v4, 0x7f0b002c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 90
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 93
    const v4, 0x7f0b002b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 92
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->deleteSelect:Landroid/widget/ImageView;

    .line 96
    const v4, 0x7f0b002a

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 95
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 99
    :cond_2
    if-ne v3, v8, :cond_3

    .line 100
    iget-object v4, p0, Lactivity/ChatMsgDeleteViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 101
    const v5, 0x7f030006

    .line 100
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 103
    const v4, 0x7f0b0032

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 102
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 105
    const v4, 0x7f0b0030

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 104
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 107
    const v4, 0x7f0b002f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 106
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->deleteSelect:Landroid/widget/ImageView;

    .line 110
    const v4, 0x7f0b002e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 109
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 113
    :cond_3
    if-nez v3, :cond_4

    .line 114
    iget-object v4, p0, Lactivity/ChatMsgDeleteViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 115
    const v5, 0x7f030004

    .line 114
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 117
    const v4, 0x7f0b0029

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 116
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 119
    const v4, 0x7f0b0028

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 118
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    .line 121
    const v4, 0x7f0b0027

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 120
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->deleteSelect:Landroid/widget/ImageView;

    .line 124
    const v4, 0x7f0b0026

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 123
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 126
    :cond_4
    if-eq v3, v10, :cond_5

    .line 127
    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    .line 128
    const/4 v4, 0x7

    if-eq v3, v4, :cond_5

    .line 129
    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 130
    const/16 v4, 0x9

    if-ne v3, v4, :cond_6

    .line 131
    :cond_5
    iget-object v4, p0, Lactivity/ChatMsgDeleteViewAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 132
    const v5, 0x7f030003

    .line 131
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 134
    const v4, 0x7f0b0025

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    iput-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 135
    :cond_6
    :goto_4
    goto/32 :goto_4

    .line 139
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #viewHolder:Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;
    check-cast v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;

    .restart local v2       #viewHolder:Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;
    goto/16 :goto_1

    .line 146
    :cond_8
    if-eq v3, v10, :cond_0

    .line 147
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lactivity/ChatMsgDeleteViewAdapter;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 149
    if-eqz v1, :cond_9

    .line 151
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->deleteSelect:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const v5, 0xc7d6eb0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 156
    :cond_9
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->delete:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->deleteSelect:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_2

    .line 164
    :pswitch_0
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v5, p0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    const v6, 0x7f070053

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 167
    :pswitch_1
    iget-object v4, v2, Lactivity/ChatMsgDeleteViewAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    iget-object v5, p0, Lactivity/ChatMsgDeleteViewAdapter;->context:Landroid/content/Context;

    const v6, 0x7f070054

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xb

    return v0
.end method
