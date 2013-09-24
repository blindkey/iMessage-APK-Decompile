.class public Lcom/common/VideoThumBnail;
.super Ljava/lang/Object;
.source "VideoThumBnail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageThumbnail(Landroid/content/res/Resources;IF)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "id"
    .parameter "radio"

    .prologue
    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 145
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    invoke-static {p0, p1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 148
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 150
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 151
    .local v4, h:I
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 152
    .local v7, w:I
    int-to-float v9, v7

    mul-float/2addr v9, p2

    float-to-int v8, v9

    .line 153
    .local v8, width:I
    int-to-float v9, v4

    mul-float/2addr v9, p2

    float-to-int v5, v9

    .line 155
    .local v5, height:I
    div-int v2, v7, v8

    .line 156
    .local v2, beWidth:I
    div-int v1, v4, v5

    .line 157
    .local v1, beHeight:I
    const/4 v0, 0x1

    .line 158
    .local v0, be:I
    if-ge v2, v1, :cond_1

    .line 159
    move v0, v2

    .line 163
    :goto_0
    if-gtz v0, :cond_0

    .line 164
    const/4 v0, 0x1

    .line 166
    :cond_0
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 168
    invoke-static {p0, p1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 171
    const/4 v9, 0x2

    .line 170
    invoke-static {v3, v8, v5, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 172
    return-object v3

    .line 161
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getImageThumbnail(Ljava/lang/String;FI)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "imagePath"
    .parameter "radio"
    .parameter "maxWidth"

    .prologue
    .line 175
    const/4 v3, 0x0

    .line 176
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 177
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 179
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 180
    const/4 v9, 0x0

    iput-boolean v9, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 183
    .local v4, h:I
    iget v7, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 184
    .local v7, w:I
    int-to-float v9, v7

    mul-float/2addr v9, p1

    float-to-int v8, v9

    .line 185
    .local v8, width:I
    int-to-float v9, v4

    mul-float/2addr v9, p1

    float-to-int v5, v9

    .line 186
    .local v5, height:I
    const/16 v9, 0x28

    if-ge v8, v9, :cond_0

    .line 187
    int-to-float v9, v5

    const/high16 v10, 0x4220

    int-to-float v11, v8

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 188
    const/16 v8, 0x28

    .line 190
    :cond_0
    if-nez v8, :cond_1

    .line 191
    const/16 v8, 0x10

    .line 192
    :cond_1
    if-nez v5, :cond_2

    .line 193
    const/16 v5, 0x10

    .line 194
    :cond_2
    if-le v8, p2, :cond_3

    .line 195
    int-to-float v9, v5

    int-to-float v10, p2

    const/high16 v11, 0x3f80

    mul-float/2addr v10, v11

    int-to-float v11, v8

    div-float/2addr v10, v11

    mul-float/2addr v9, v10

    float-to-int v5, v9

    .line 196
    move v8, p2

    .line 200
    :cond_3
    div-int v2, v7, v8

    .line 201
    .local v2, beWidth:I
    div-int v1, v4, v5

    .line 202
    .local v1, beHeight:I
    const/4 v0, 0x1

    .line 203
    .local v0, be:I
    if-ge v2, v1, :cond_5

    .line 204
    move v0, v2

    .line 208
    :goto_0
    if-gtz v0, :cond_4

    .line 209
    const/4 v0, 0x1

    .line 211
    :cond_4
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    invoke-static {p0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 216
    const/4 v9, 0x2

    .line 215
    invoke-static {v3, v8, v5, v9}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 217
    return-object v3

    .line 206
    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "imagePath"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 224
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 225
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 227
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 228
    .local v4, h:I
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 229
    .local v6, w:I
    div-int v2, v6, p1

    .line 230
    .local v2, beWidth:I
    div-int v1, v4, p2

    .line 231
    .local v1, beHeight:I
    const/4 v0, 0x1

    .line 232
    .local v0, be:I
    if-ge v2, v1, :cond_1

    .line 233
    move v0, v2

    .line 237
    :goto_0
    if-gtz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 242
    invoke-static {p0, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 245
    const/4 v7, 0x2

    .line 244
    invoke-static {v3, p1, p2, v7}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 246
    return-object v3

    .line 235
    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getSpannableStringWithWorld(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 1
    .parameter "context"
    .parameter "msg"

    .prologue
    .line 35
    invoke-static {p0, p1, p1}, Lcom/common/VideoThumBnail;->getSpannableStringWithWorld(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    return-object v0
.end method

.method public static getSpannableStringWithWorld(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 15
    .parameter "context"
    .parameter "acttext"
    .parameter "showtext"

    .prologue
    .line 38
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 39
    .local v2, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 40
    .local v8, paint:Landroid/graphics/Paint;
    const/high16 v12, -0x100

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    const/high16 v12, 0x41c0

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v12

    float-to-int v5, v12

    .line 45
    .local v5, len:I
    int-to-float v12, v5

    invoke-static {}, Lcom/common/TelPhoneConstant;->getImageBarLeftSpace()F

    move-result v13

    add-float/2addr v12, v13

    float-to-int v7, v12

    .line 47
    .local v7, nptlen:I
    move v11, v7

    .line 48
    .local v11, width:I
    invoke-static {}, Lcom/common/TelPhoneConstant;->getToUserShowHeight()F

    move-result v12

    float-to-int v3, v12

    .line 51
    .local v3, height:I
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 50
    invoke-static {v11, v3, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 56
    .local v9, resources:Landroid/content/res/Resources;
    const v12, 0x7f020211

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    .line 57
    .local v6, ninepatch:Landroid/graphics/drawable/NinePatchDrawable;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13, v11, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 62
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    invoke-virtual {v6, v2}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 73
    sub-int v12, v7, v5

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-static {}, Lcom/common/TelPhoneConstant;->getToUserShowHeight()F

    move-result v13

    const/high16 v14, 0x4000

    div-float/2addr v13, v14

    const/high16 v14, 0x40e0

    add-float/2addr v13, v14

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12, v13, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    new-instance v4, Landroid/text/style/ImageSpan;

    invoke-direct {v4, p0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 76
    .local v4, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v10, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 77
    .local v10, spannableString:Landroid/text/SpannableString;
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    .line 78
    const/16 v14, 0x21

    .line 77
    invoke-virtual {v10, v4, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 79
    return-object v10
.end method

.method public static getVideoThumbnail(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "cr"
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 82
    const/4 v6, 0x0

    .line 83
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 84
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v8, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 85
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v8, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 86
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 87
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v3

    .line 90
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 91
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, videoId:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 96
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 98
    .local v10, videoIdLong:J
    const/4 v0, 0x3

    invoke-static {p0, v10, v11, v0, v8}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v3, v6

    .line 100
    goto :goto_0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;FI)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "videoPath"
    .parameter "radio"
    .parameter "kind"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, p2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 124
    const/4 v3, 0x0

    .line 140
    :goto_0
    return-object v3

    .line 125
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v2, v3

    .line 126
    .local v2, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-int v1, v3

    .line 127
    .local v1, height:I
    const/16 v3, 0x28

    if-ge v2, v3, :cond_1

    .line 128
    const/high16 v3, 0x4220

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 129
    const/16 v2, 0x28

    .line 132
    :cond_1
    if-nez v2, :cond_2

    .line 133
    const/16 v2, 0x28

    .line 134
    :cond_2
    if-nez v1, :cond_3

    .line 135
    const/16 v1, 0x28

    .line 139
    :cond_3
    const/4 v3, 0x2

    .line 138
    invoke-static {v0, v2, v1, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v3, v0

    .line 140
    goto :goto_0
.end method

.method public static getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "videoPath"
    .parameter "width"
    .parameter "height"
    .parameter "kind"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, p3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    .line 114
    :goto_0
    return-object v1

    .line 113
    :cond_0
    const/4 v1, 0x2

    .line 112
    invoke-static {v0, p1, p2, v1}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 114
    goto :goto_0
.end method

.method private static nextPowerOfTwo(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 26
    const/4 v0, 0x1

    .line 28
    .local v0, i:I
    :goto_0
    if-lt v0, p0, :cond_0

    .line 32
    return v0

    .line 30
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 27
    goto :goto_0
.end method
