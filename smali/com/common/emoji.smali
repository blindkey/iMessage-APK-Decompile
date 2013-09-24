.class public Lcom/common/emoji;
.super Ljava/lang/Object;
.source "emoji.java"


# static fields
.field private static final MASK2BYTES:I = 0xc0

.field private static final MASK3BYTES:I = 0xe0

.field private static final MASK4BYTES:I = 0xc0

.field private static final MASK5BYTES:I = 0xf0

.field private static final MASKBITS:I = 0x3f

.field private static final MASKBYTE:I = 0x80

.field public static and:[Ljava/lang/String;

.field private static andemoji:[I

.field private static andemojid:[I

.field public static emojiImgs:[I

.field private static index:I

.field public static ios:[Ljava/lang/String;

.field private static iosemoji:[I

.field private static iosemojid:[I

.field public static no_and:[Ljava/lang/String;

.field public static no_ios:[Ljava/lang/String;

.field private static no_iosemoji:[I

.field private static special:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/common/emoji;->index:I

    .line 50
    const/16 v0, 0x2051

    sput v0, Lcom/common/emoji;->special:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CalUTF8(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x0

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05000d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    sput-object v11, Lcom/common/emoji;->iosemoji:[I

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f050001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    sput-object v11, Lcom/common/emoji;->andemoji:[I

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    sput-object v11, Lcom/common/emoji;->iosemojid:[I

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f05

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    sput-object v11, Lcom/common/emoji;->andemojid:[I

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f05000e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    sput-object v11, Lcom/common/emoji;->no_iosemoji:[I

    .line 191
    sget-object v11, Lcom/common/emoji;->andemoji:[I

    array-length v11, v11

    sget-object v12, Lcom/common/emoji;->andemojid:[I

    array-length v12, v12

    add-int v10, v11, v12

    .line 192
    .local v10, totLen:I
    new-array v11, v10, [I

    sput-object v11, Lcom/common/emoji;->emojiImgs:[I

    .line 193
    sput v13, Lcom/common/emoji;->index:I

    .line 194
    sget-object v11, Lcom/common/emoji;->andemoji:[I

    invoke-static {v11}, Lcom/common/emoji;->GetImage([I)V

    .line 195
    sget-object v11, Lcom/common/emoji;->andemojid:[I

    invoke-static {v11}, Lcom/common/emoji;->GetImage([I)V

    .line 197
    move v5, v10

    .line 198
    .local v5, len:I
    const/4 v3, 0x0

    .line 200
    .local v3, index:I
    new-array v11, v5, [Ljava/lang/String;

    sput-object v11, Lcom/common/emoji;->ios:[Ljava/lang/String;

    .line 201
    new-array v11, v5, [Ljava/lang/String;

    sput-object v11, Lcom/common/emoji;->and:[Ljava/lang/String;

    .line 203
    sget-object v11, Lcom/common/emoji;->no_iosemoji:[I

    array-length v11, v11

    new-array v11, v11, [Ljava/lang/String;

    sput-object v11, Lcom/common/emoji;->no_ios:[Ljava/lang/String;

    .line 204
    sget-object v11, Lcom/common/emoji;->no_iosemoji:[I

    array-length v11, v11

    new-array v11, v11, [Ljava/lang/String;

    sput-object v11, Lcom/common/emoji;->no_and:[Ljava/lang/String;

    .line 208
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v11, Lcom/common/emoji;->iosemoji:[I

    array-length v11, v11

    if-lt v2, v11, :cond_0

    .line 222
    const/4 v2, 0x0

    :goto_1
    sget-object v11, Lcom/common/emoji;->andemojid:[I

    array-length v11, v11

    if-lt v2, v11, :cond_1

    .line 236
    const-string v6, "X"

    .line 237
    .local v6, sutf:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    sget-object v11, Lcom/common/emoji;->no_iosemoji:[I

    array-length v11, v11

    if-lt v2, v11, :cond_2

    .line 244
    return-void

    .line 210
    .end local v6           #sutf:Ljava/lang/String;
    :cond_0
    sget-object v11, Lcom/common/emoji;->iosemoji:[I

    aget v11, v11, v2

    invoke-static {v11}, Lcom/common/emoji;->intToBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/common/emoji;->UNICODE_TO_UTF8([B)[B

    move-result-object v7

    .line 211
    .local v7, t:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 212
    .local v0, a:Ljava/lang/String;
    sget-object v11, Lcom/common/emoji;->ios:[Ljava/lang/String;

    aput-object v0, v11, v3

    .line 213
    sget-object v11, Lcom/common/emoji;->andemoji:[I

    aget v11, v11, v2

    invoke-static {v11}, Lcom/common/emoji;->intToBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/common/emoji;->UNICODE_TO_UTF8([B)[B

    move-result-object v7

    .line 214
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 217
    .local v1, b:Ljava/lang/String;
    sget-object v11, Lcom/common/emoji;->and:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aput-object v1, v11, v3

    .line 208
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 223
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #b:Ljava/lang/String;
    .end local v7           #t:[B
    :cond_1
    sget-object v11, Lcom/common/emoji;->iosemojid:[I

    mul-int/lit8 v12, v2, 0x2

    aget v11, v11, v12

    invoke-static {v11}, Lcom/common/emoji;->intToBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/common/emoji;->UNICODE_TO_UTF8([B)[B

    move-result-object v7

    .line 224
    .restart local v7       #t:[B
    sget-object v11, Lcom/common/emoji;->iosemojid:[I

    mul-int/lit8 v12, v2, 0x2

    add-int/lit8 v12, v12, 0x1

    aget v11, v11, v12

    invoke-static {v11}, Lcom/common/emoji;->intToBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/common/emoji;->UNICODE_TO_UTF8([B)[B

    move-result-object v8

    .line 225
    .local v8, t1:[B
    array-length v11, v7

    array-length v12, v8

    add-int/2addr v11, v12

    new-array v9, v11, [B

    .line 226
    .local v9, tot:[B
    array-length v11, v7

    invoke-static {v7, v13, v9, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    array-length v11, v7

    array-length v12, v8

    invoke-static {v8, v13, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    .line 229
    .restart local v0       #a:Ljava/lang/String;
    sget-object v11, Lcom/common/emoji;->ios:[Ljava/lang/String;

    aput-object v0, v11, v3

    .line 231
    sget-object v11, Lcom/common/emoji;->andemojid:[I

    aget v11, v11, v2

    invoke-static {v11}, Lcom/common/emoji;->intToBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/common/emoji;->UNICODE_TO_UTF8([B)[B

    move-result-object v7

    .line 232
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 234
    .restart local v1       #b:Ljava/lang/String;
    sget-object v11, Lcom/common/emoji;->and:[Ljava/lang/String;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aput-object v1, v11, v3

    .line 222
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_1

    .line 238
    .end local v0           #a:Ljava/lang/String;
    .end local v1           #b:Ljava/lang/String;
    .end local v7           #t:[B
    .end local v8           #t1:[B
    .end local v9           #tot:[B
    .restart local v6       #sutf:Ljava/lang/String;
    :cond_2
    sget-object v11, Lcom/common/emoji;->no_iosemoji:[I

    aget v11, v11, v2

    invoke-static {v11}, Lcom/common/emoji;->intToBytes(I)[B

    move-result-object v11

    invoke-static {v11}, Lcom/common/emoji;->UNICODE_TO_UTF8([B)[B

    move-result-object v7

    .line 239
    .restart local v7       #t:[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    .line 240
    .restart local v0       #a:Ljava/lang/String;
    sget-object v11, Lcom/common/emoji;->no_ios:[Ljava/lang/String;

    aput-object v0, v11, v2

    .line 242
    sget-object v11, Lcom/common/emoji;->no_and:[Ljava/lang/String;

    aput-object v6, v11, v2

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method private static GetImage([I)V
    .locals 10
    .parameter "res"

    .prologue
    const v9, 0x7f020204

    .line 163
    const-class v0, Lcom/chat/R$drawable;

    .line 164
    .local v0, draw:Ljava/lang/Class;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, p0

    if-lt v3, v6, :cond_0

    .line 181
    return-void

    .line 165
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "emoji_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, p0, v3

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    .local v4, pic:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 169
    .local v2, field:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 170
    .local v5, test:I
    sget-object v6, Lcom/common/emoji;->emojiImgs:[I

    sget v7, Lcom/common/emoji;->index:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/common/emoji;->index:I

    aput v5, v6, v7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 164
    .end local v2           #field:Ljava/lang/reflect/Field;
    .end local v5           #test:I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/lang/SecurityException;
    sget-object v6, Lcom/common/emoji;->emojiImgs:[I

    sget v7, Lcom/common/emoji;->index:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/common/emoji;->index:I

    aput v9, v6, v7

    goto :goto_1

    .line 173
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/NoSuchFieldException;
    sget-object v6, Lcom/common/emoji;->emojiImgs:[I

    sget v7, Lcom/common/emoji;->index:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/common/emoji;->index:I

    aput v9, v6, v7

    goto :goto_1

    .line 175
    .end local v1           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v1

    .line 176
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/common/emoji;->emojiImgs:[I

    sget v7, Lcom/common/emoji;->index:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/common/emoji;->index:I

    aput v9, v6, v7

    goto :goto_1

    .line 177
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/common/emoji;->emojiImgs:[I

    sget v7, Lcom/common/emoji;->index:I

    add-int/lit8 v8, v7, 0x1

    sput v8, Lcom/common/emoji;->index:I

    aput v9, v6, v7

    goto :goto_1
.end method

.method public static UNICODE_TO_UTF8([B)[B
    .locals 13
    .parameter "b"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 122
    const/4 v1, 0x0

    .line 123
    .local v1, i:I
    const/4 v2, 0x0

    .line 124
    .local v2, j:I
    array-length v7, p0

    mul-int/lit8 v7, v7, 0x2

    new-array v6, v7, [B

    .line 125
    .local v6, utf8Byte:[B
    array-length v7, p0

    if-ge v1, v7, :cond_1

    .line 126
    new-array v0, v10, [B

    .line 127
    .local v0, bUTF:[B
    aget-byte v7, p0, v1

    and-int/lit16 v7, v7, 0xff

    aget-byte v8, p0, v10

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    aget-byte v8, p0, v11

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int v5, v7, v8

    .line 128
    .local v5, nCode:I
    const/16 v7, 0x80

    if-ge v5, v7, :cond_2

    .line 129
    new-array v0, v10, [B

    .line 130
    int-to-byte v7, v5

    aput-byte v7, v0, v9

    .line 153
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    array-length v7, v0

    if-lt v4, v7, :cond_5

    .line 158
    .end local v0           #bUTF:[B
    .end local v4           #k:I
    .end local v5           #nCode:I
    :cond_1
    new-array p0, v2, [B

    .line 159
    invoke-static {v6, v9, p0, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    return-object p0

    .line 133
    .restart local v0       #bUTF:[B
    .restart local v5       #nCode:I
    :cond_2
    const/16 v7, 0x800

    if-ge v5, v7, :cond_3

    .line 134
    new-array v0, v11, [B

    .line 135
    shr-int/lit8 v7, v5, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v0, v9

    .line 136
    and-int/lit8 v7, v5, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v10

    goto :goto_0

    .line 139
    :cond_3
    const/high16 v7, 0x1

    if-ge v5, v7, :cond_4

    .line 140
    new-array v0, v12, [B

    .line 141
    shr-int/lit8 v7, v5, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v0, v9

    .line 142
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v10

    .line 143
    and-int/lit8 v7, v5, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v11

    goto :goto_0

    .line 146
    :cond_4
    const/high16 v7, 0x11

    if-ge v5, v7, :cond_0

    .line 147
    const/4 v7, 0x4

    new-array v0, v7, [B

    .line 148
    shr-int/lit8 v7, v5, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v0, v9

    .line 149
    shr-int/lit8 v7, v5, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v10

    .line 150
    shr-int/lit8 v7, v5, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v11

    .line 151
    and-int/lit8 v7, v5, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v12

    goto :goto_0

    .line 154
    .restart local v4       #k:I
    :cond_5
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    aget-byte v7, v0, v4

    aput-byte v7, v6, v2

    .line 153
    add-int/lit8 v4, v4, 0x1

    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_1
.end method

.method public static intToBytes(I)[B
    .locals 3
    .parameter "nNum"

    .prologue
    .line 114
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 115
    .local v0, bytesRet:[B
    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 116
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 117
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 118
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 119
    return-object v0
.end method

.method public static transSBToIOS5emoji(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 253
    sget-object v0, Lcom/common/emoji;->and:[Ljava/lang/String;

    sget-object v1, Lcom/common/emoji;->ios:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transToAndroidemojiSB(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"

    .prologue
    .line 246
    sget-object v1, Lcom/common/emoji;->no_ios:[Ljava/lang/String;

    sget-object v2, Lcom/common/emoji;->no_and:[Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, no_emoji:Ljava/lang/String;
    sget-object v1, Lcom/common/emoji;->ios:[Ljava/lang/String;

    sget-object v2, Lcom/common/emoji;->and:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replaceEach(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
