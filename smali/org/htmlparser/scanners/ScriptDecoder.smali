.class public Lorg/htmlparser/scanners/ScriptDecoder;
.super Ljava/lang/Object;
.source "ScriptDecoder.java"


# static fields
.field public static LAST_STATE:I = 0x0

.field protected static final STATE_CHECKSUM:I = 0x6

.field protected static final STATE_DECODE:I = 0x4

.field public static final STATE_DONE:I = 0x0

.field protected static final STATE_ESCAPE:I = 0x5

.field protected static final STATE_FINAL:I = 0x7

.field public static final STATE_INITIAL:I = 0x1

.field protected static final STATE_LENGTH:I = 0x2

.field protected static final STATE_PREFIX:I = 0x3

.field protected static mDigits:[I

.field protected static mEncodingIndex:[B

.field protected static mEscaped:[C

.field protected static mEscapes:[C

.field protected static mLeader:[C

.field protected static mLookupTable:[[C

.field protected static mPrefix:[C

.field protected static mTrailer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x61

    .line 90
    sput v3, Lorg/htmlparser/scanners/ScriptDecoder;->LAST_STATE:I

    .line 98
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mEncodingIndex:[B

    .line 111
    const/4 v1, 0x3

    new-array v1, v1, [[C

    new-array v2, v4, [C

    fill-array-data v2, :array_1

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-array v3, v4, [C

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v2, v4, [C

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mLookupTable:[[C

    .line 167
    const/16 v1, 0x7b

    new-array v1, v1, [I

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 170
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    add-int/lit8 v2, v0, 0x41

    aput v0, v1, v2

    .line 171
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0x1a

    aput v3, v1, v2

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 174
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    add-int/lit8 v2, v0, 0x30

    add-int/lit8 v3, v0, 0x34

    aput v3, v1, v2

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 175
    :cond_1
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput v3, v1, v2

    .line 176
    sget-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput v3, v1, v2

    .line 184
    const/4 v1, 0x4

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    .line 196
    new-array v1, v5, [C

    fill-array-data v1, :array_5

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mPrefix:[C

    .line 207
    const/4 v1, 0x6

    new-array v1, v1, [C

    fill-array-data v1, :array_6

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mTrailer:[C

    .line 220
    new-array v1, v6, [C

    fill-array-data v1, :array_7

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mEscapes:[C

    .line 232
    new-array v1, v6, [C

    fill-array-data v1, :array_8

    sput-object v1, Lorg/htmlparser/scanners/ScriptDecoder;->mEscaped:[C

    return-void

    .line 98
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x2t
        0x0t
        0x1t
        0x2t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x2t
        0x1t
        0x1t
        0x0t
        0x2t
        0x0t
        0x2t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
        0x1t
        0x0t
        0x2t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x0t
        0x1t
        0x1t
        0x2t
        0x0t
        0x1t
        0x0t
        0x2t
    .end array-data

    .line 111
    :array_1
    .array-data 0x2
        0x7bt 0x0t
        0x32t 0x0t
        0x30t 0x0t
        0x21t 0x0t
        0x29t 0x0t
        0x5bt 0x0t
        0x38t 0x0t
        0x33t 0x0t
        0x3dt 0x0t
        0x58t 0x0t
        0x3at 0x0t
        0x35t 0x0t
        0x65t 0x0t
        0x39t 0x0t
        0x5ct 0x0t
        0x56t 0x0t
        0x73t 0x0t
        0x66t 0x0t
        0x4et 0x0t
        0x45t 0x0t
        0x6bt 0x0t
        0x62t 0x0t
        0x59t 0x0t
        0x78t 0x0t
        0x5et 0x0t
        0x7dt 0x0t
        0x4at 0x0t
        0x6dt 0x0t
        0x71t 0x0t
        0x0t 0x0t
        0x60t 0x0t
        0x0t 0x0t
        0x53t 0x0t
        0x0t 0x0t
        0x42t 0x0t
        0x27t 0x0t
        0x48t 0x0t
        0x72t 0x0t
        0x75t 0x0t
        0x31t 0x0t
        0x37t 0x0t
        0x4dt 0x0t
        0x52t 0x0t
        0x22t 0x0t
        0x54t 0x0t
        0x6at 0x0t
        0x47t 0x0t
        0x64t 0x0t
        0x2dt 0x0t
        0x20t 0x0t
        0x7ft 0x0t
        0x2et 0x0t
        0x4ct 0x0t
        0x5dt 0x0t
        0x7et 0x0t
        0x6ct 0x0t
        0x6ft 0x0t
        0x79t 0x0t
        0x74t 0x0t
        0x43t 0x0t
        0x26t 0x0t
        0x76t 0x0t
        0x25t 0x0t
        0x24t 0x0t
        0x2bt 0x0t
        0x28t 0x0t
        0x23t 0x0t
        0x41t 0x0t
        0x34t 0x0t
        0x9t 0x0t
        0x2at 0x0t
        0x44t 0x0t
        0x3ft 0x0t
        0x77t 0x0t
        0x3bt 0x0t
        0x55t 0x0t
        0x69t 0x0t
        0x61t 0x0t
        0x63t 0x0t
        0x50t 0x0t
        0x67t 0x0t
        0x51t 0x0t
        0x49t 0x0t
        0x4ft 0x0t
        0x46t 0x0t
        0x68t 0x0t
        0x7ct 0x0t
        0x36t 0x0t
        0x70t 0x0t
        0x6et 0x0t
        0x7at 0x0t
        0x2ft 0x0t
        0x5ft 0x0t
        0x4bt 0x0t
        0x5at 0x0t
        0x2ct 0x0t
        0x57t 0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x57t 0x0t
        0x2et 0x0t
        0x47t 0x0t
        0x7at 0x0t
        0x56t 0x0t
        0x42t 0x0t
        0x6at 0x0t
        0x2ft 0x0t
        0x26t 0x0t
        0x49t 0x0t
        0x41t 0x0t
        0x34t 0x0t
        0x32t 0x0t
        0x5bt 0x0t
        0x76t 0x0t
        0x72t 0x0t
        0x43t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x70t 0x0t
        0x45t 0x0t
        0x68t 0x0t
        0x71t 0x0t
        0x4ft 0x0t
        0x9t 0x0t
        0x62t 0x0t
        0x44t 0x0t
        0x23t 0x0t
        0x75t 0x0t
        0x0t 0x0t
        0x7et 0x0t
        0x0t 0x0t
        0x5et 0x0t
        0x0t 0x0t
        0x77t 0x0t
        0x4at 0x0t
        0x61t 0x0t
        0x5dt 0x0t
        0x22t 0x0t
        0x4bt 0x0t
        0x6ft 0x0t
        0x4et 0x0t
        0x3bt 0x0t
        0x4ct 0x0t
        0x50t 0x0t
        0x67t 0x0t
        0x2at 0x0t
        0x7dt 0x0t
        0x74t 0x0t
        0x54t 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x2ct 0x0t
        0x30t 0x0t
        0x6et 0x0t
        0x6bt 0x0t
        0x66t 0x0t
        0x35t 0x0t
        0x25t 0x0t
        0x21t 0x0t
        0x64t 0x0t
        0x4dt 0x0t
        0x52t 0x0t
        0x63t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x78t 0x0t
        0x29t 0x0t
        0x28t 0x0t
        0x73t 0x0t
        0x59t 0x0t
        0x33t 0x0t
        0x7ft 0x0t
        0x6dt 0x0t
        0x55t 0x0t
        0x53t 0x0t
        0x7ct 0x0t
        0x3at 0x0t
        0x5ft 0x0t
        0x65t 0x0t
        0x46t 0x0t
        0x58t 0x0t
        0x31t 0x0t
        0x69t 0x0t
        0x6ct 0x0t
        0x5at 0x0t
        0x48t 0x0t
        0x27t 0x0t
        0x5ct 0x0t
        0x3dt 0x0t
        0x24t 0x0t
        0x79t 0x0t
        0x37t 0x0t
        0x60t 0x0t
        0x51t 0x0t
        0x20t 0x0t
        0x36t 0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x2
        0x6et 0x0t
        0x2dt 0x0t
        0x75t 0x0t
        0x52t 0x0t
        0x60t 0x0t
        0x71t 0x0t
        0x5et 0x0t
        0x49t 0x0t
        0x5ct 0x0t
        0x62t 0x0t
        0x7dt 0x0t
        0x29t 0x0t
        0x36t 0x0t
        0x20t 0x0t
        0x7ct 0x0t
        0x7at 0x0t
        0x7ft 0x0t
        0x6bt 0x0t
        0x63t 0x0t
        0x33t 0x0t
        0x2bt 0x0t
        0x68t 0x0t
        0x51t 0x0t
        0x66t 0x0t
        0x76t 0x0t
        0x31t 0x0t
        0x64t 0x0t
        0x54t 0x0t
        0x43t 0x0t
        0x0t 0x0t
        0x3at 0x0t
        0x0t 0x0t
        0x7et 0x0t
        0x0t 0x0t
        0x45t 0x0t
        0x2ct 0x0t
        0x2at 0x0t
        0x74t 0x0t
        0x27t 0x0t
        0x37t 0x0t
        0x44t 0x0t
        0x79t 0x0t
        0x59t 0x0t
        0x2ft 0x0t
        0x6ft 0x0t
        0x26t 0x0t
        0x72t 0x0t
        0x6at 0x0t
        0x39t 0x0t
        0x7bt 0x0t
        0x3ft 0x0t
        0x38t 0x0t
        0x77t 0x0t
        0x67t 0x0t
        0x53t 0x0t
        0x47t 0x0t
        0x34t 0x0t
        0x78t 0x0t
        0x5dt 0x0t
        0x30t 0x0t
        0x23t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x6ct 0x0t
        0x48t 0x0t
        0x55t 0x0t
        0x70t 0x0t
        0x69t 0x0t
        0x2et 0x0t
        0x4ct 0x0t
        0x21t 0x0t
        0x24t 0x0t
        0x4et 0x0t
        0x50t 0x0t
        0x9t 0x0t
        0x56t 0x0t
        0x73t 0x0t
        0x35t 0x0t
        0x61t 0x0t
        0x4bt 0x0t
        0x58t 0x0t
        0x3bt 0x0t
        0x57t 0x0t
        0x22t 0x0t
        0x6dt 0x0t
        0x4dt 0x0t
        0x25t 0x0t
        0x28t 0x0t
        0x46t 0x0t
        0x4at 0x0t
        0x32t 0x0t
        0x41t 0x0t
        0x3dt 0x0t
        0x5ft 0x0t
        0x4ft 0x0t
        0x42t 0x0t
        0x65t 0x0t
    .end array-data

    .line 184
    nop

    :array_4
    .array-data 0x2
        0x23t 0x0t
        0x40t 0x0t
        0x7et 0x0t
        0x5et 0x0t
    .end array-data

    .line 196
    :array_5
    .array-data 0x2
        0x3dt 0x0t
        0x3dt 0x0t
    .end array-data

    .line 207
    :array_6
    .array-data 0x2
        0x3dt 0x0t
        0x3dt 0x0t
        0x5et 0x0t
        0x23t 0x0t
        0x7et 0x0t
        0x40t 0x0t
    .end array-data

    .line 220
    :array_7
    .array-data 0x2
        0x23t 0x0t
        0x26t 0x0t
        0x21t 0x0t
        0x2at 0x0t
        0x24t 0x0t
    .end array-data

    .line 232
    nop

    :array_8
    .array-data 0x2
        0xdt 0x0t
        0xat 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Decode(Lorg/htmlparser/lexer/Page;Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;
    .locals 28
    .parameter "page"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 289
    const/16 v25, 0x6

    move/from16 v0, v25

    new-array v3, v0, [C

    .line 296
    .local v3, buffer:[C
    new-instance v18, Ljava/lang/StringBuffer;

    const/16 v25, 0x400

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 298
    .local v18, ret:Ljava/lang/StringBuffer;
    const/16 v19, 0x1

    .line 299
    .local v19, state:I
    const/16 v22, 0x0

    .line 300
    .local v22, substate_initial:I
    const/16 v23, 0x0

    .line 301
    .local v23, substate_length:I
    const/16 v24, 0x0

    .line 302
    .local v24, substate_prefix:I
    const/16 v20, 0x0

    .line 303
    .local v20, substate_checksum:I
    const/16 v21, 0x0

    .line 304
    .local v21, substate_final:I
    const-wide/16 v16, 0x0

    .line 305
    .local v16, length:J
    const-wide/16 v8, 0x0

    .line 306
    .local v8, checksum:J
    const/4 v12, 0x0

    .line 307
    .local v12, index:I
    :cond_0
    :goto_0
    if-eqz v19, :cond_11

    .line 309
    invoke-virtual/range {p0 .. p1}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v13

    .line 310
    .local v13, input_character:I
    int-to-char v5, v13

    .line 311
    .local v5, character:C
    const v25, 0xffff

    move/from16 v0, v25

    if-ne v0, v13, :cond_3

    .line 313
    const/16 v25, 0x1

    move/from16 v0, v25

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    if-nez v22, :cond_1

    if-nez v23, :cond_1

    if-nez v24, :cond_1

    if-nez v20, :cond_1

    if-eqz v21, :cond_2

    .line 319
    :cond_1
    new-instance v25, Lorg/htmlparser/util/ParserException;

    const-string v26, "illegal state for exit"

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 320
    :cond_2
    const/16 v19, 0x0

    .line 321
    goto :goto_0

    .line 323
    :cond_3
    packed-switch v19, :pswitch_data_0

    .line 449
    new-instance v25, Lorg/htmlparser/util/ParserException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "invalid state: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 326
    :pswitch_0
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    aget-char v25, v25, v22

    move/from16 v0, v25

    if-ne v5, v0, :cond_4

    .line 328
    add-int/lit8 v22, v22, 0x1

    .line 329
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 331
    const/16 v22, 0x0

    .line 332
    const/16 v19, 0x2

    .line 333
    goto :goto_0

    .line 338
    :cond_4
    const/4 v14, 0x0

    .local v14, k:I
    move v15, v14

    .end local v14           #k:I
    .local v15, k:I
    :goto_1
    if-lez v22, :cond_5

    .line 340
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mLeader:[C

    add-int/lit8 v14, v15, 0x1

    .end local v15           #k:I
    .restart local v14       #k:I
    aget-char v25, v25, v15

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    add-int/lit8 v22, v22, -0x1

    .line 338
    add-int/lit8 v14, v14, 0x1

    move v15, v14

    .end local v14           #k:I
    .restart local v15       #k:I
    goto :goto_1

    .line 343
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 348
    .end local v15           #k:I
    :pswitch_1
    aput-char v5, v3, v23

    .line 349
    add-int/lit8 v23, v23, 0x1

    .line 350
    array-length v0, v3

    move/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 352
    invoke-static {v3}, Lorg/htmlparser/scanners/ScriptDecoder;->decodeBase64([C)J

    move-result-wide v16

    .line 353
    const-wide/16 v25, 0x0

    cmp-long v25, v25, v16

    if-lez v25, :cond_6

    .line 354
    new-instance v25, Lorg/htmlparser/util/ParserException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "illegal length: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 355
    :cond_6
    const/16 v23, 0x0

    .line 356
    const/16 v19, 0x3

    .line 357
    goto/16 :goto_0

    .line 361
    :pswitch_2
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mPrefix:[C

    aget-char v25, v25, v24

    move/from16 v0, v25

    if-ne v5, v0, :cond_7

    .line 362
    add-int/lit8 v24, v24, 0x1

    .line 365
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mPrefix:[C

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 367
    const/16 v24, 0x0

    .line 368
    const/16 v19, 0x4

    .line 369
    goto/16 :goto_0

    .line 364
    :cond_7
    new-instance v25, Lorg/htmlparser/util/ParserException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "illegal character encountered: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, " (\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\')"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 373
    :pswitch_3
    const/16 v25, 0x40

    move/from16 v0, v25

    if-ne v0, v5, :cond_8

    .line 374
    const/16 v19, 0x5

    .line 393
    :goto_2
    const-wide/16 v25, 0x1

    sub-long v16, v16, v25

    .line 394
    const-wide/16 v25, 0x0

    cmp-long v25, v25, v16

    if-nez v25, :cond_0

    .line 396
    const/4 v12, 0x0

    .line 397
    const/16 v19, 0x6

    .line 398
    goto/16 :goto_0

    .line 377
    :cond_8
    const/16 v25, 0x80

    move/from16 v0, v25

    if-ge v13, v0, :cond_b

    .line 379
    const/16 v25, 0x9

    move/from16 v0, v25

    if-ne v13, v0, :cond_9

    .line 380
    const/4 v13, 0x0

    .line 385
    :goto_3
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mLookupTable:[[C

    sget-object v26, Lorg/htmlparser/scanners/ScriptDecoder;->mEncodingIndex:[B

    rem-int/lit8 v27, v12, 0x40

    aget-byte v26, v26, v27

    aget-object v25, v25, v26

    aget-char v4, v25, v13

    .line 386
    .local v4, ch:C
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    int-to-long v0, v4

    move-wide/from16 v25, v0

    add-long v8, v8, v25

    .line 388
    add-int/lit8 v12, v12, 0x1

    .line 389
    goto :goto_2

    .line 381
    .end local v4           #ch:C
    :cond_9
    const/16 v25, 0x20

    move/from16 v0, v25

    if-lt v13, v0, :cond_a

    .line 382
    add-int/lit8 v13, v13, -0x1f

    goto :goto_3

    .line 384
    :cond_a
    new-instance v25, Lorg/htmlparser/util/ParserException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "illegal encoded character: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, " (\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\')"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 391
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 402
    :pswitch_4
    const/4 v10, 0x0

    .line 403
    .local v10, found:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_4
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mEscapes:[C

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v11, v0, :cond_d

    .line 404
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mEscapes:[C

    aget-char v25, v25, v11

    move/from16 v0, v25

    if-ne v5, v0, :cond_c

    .line 406
    const/4 v10, 0x1

    .line 407
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mEscaped:[C

    aget-char v5, v25, v11

    .line 403
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 409
    :cond_d
    if-nez v10, :cond_e

    .line 410
    new-instance v25, Lorg/htmlparser/util/ParserException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "unexpected escape character: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, " (\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\')"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 411
    :cond_e
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 412
    int-to-long v0, v5

    move-wide/from16 v25, v0

    add-long v8, v8, v25

    .line 413
    add-int/lit8 v12, v12, 0x1

    .line 414
    const/16 v19, 0x4

    .line 415
    const-wide/16 v25, 0x1

    sub-long v16, v16, v25

    .line 416
    const-wide/16 v25, 0x0

    cmp-long v25, v25, v16

    if-nez v25, :cond_0

    .line 418
    const/4 v12, 0x0

    .line 419
    const/16 v19, 0x6

    .line 420
    goto/16 :goto_0

    .line 424
    .end local v10           #found:Z
    .end local v11           #i:I
    :pswitch_5
    aput-char v5, v3, v20

    .line 425
    add-int/lit8 v20, v20, 0x1

    .line 426
    array-length v0, v3

    move/from16 v25, v0

    move/from16 v0, v20

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 428
    invoke-static {v3}, Lorg/htmlparser/scanners/ScriptDecoder;->decodeBase64([C)J

    move-result-wide v6

    .line 429
    .local v6, check:J
    cmp-long v25, v6, v8

    if-eqz v25, :cond_f

    .line 430
    new-instance v25, Lorg/htmlparser/util/ParserException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "incorrect checksum, expected "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, ", calculated "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 431
    :cond_f
    const-wide/16 v8, 0x0

    .line 432
    const/16 v20, 0x0

    .line 433
    const/16 v19, 0x7

    .line 434
    goto/16 :goto_0

    .line 438
    .end local v6           #check:J
    :pswitch_6
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mTrailer:[C

    aget-char v25, v25, v21

    move/from16 v0, v25

    if-ne v5, v0, :cond_10

    .line 439
    add-int/lit8 v21, v21, 0x1

    .line 442
    sget-object v25, Lorg/htmlparser/scanners/ScriptDecoder;->mTrailer:[C

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_0

    .line 444
    const/16 v21, 0x0

    .line 445
    sget v19, Lorg/htmlparser/scanners/ScriptDecoder;->LAST_STATE:I

    .line 446
    goto/16 :goto_0

    .line 441
    :cond_10
    new-instance v25, Lorg/htmlparser/util/ParserException;

    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    const-string v27, "illegal character encountered: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, " (\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v26

    const-string v27, "\')"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 453
    .end local v5           #character:C
    .end local v13           #input_character:I
    :cond_11
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    return-object v25

    .line 323
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected static decodeBase64([C)J
    .locals 6
    .parameter "p"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 254
    const-wide/16 v0, 0x0

    .line 256
    .local v0, ret:J
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x0

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 257
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 258
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 259
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v5

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 260
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    aget-char v3, p0, v5

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x3

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 261
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x3

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 262
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x4

    aget-char v3, p0, v3

    aget v2, v2, v3

    shl-int/lit8 v2, v2, 0x2

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 263
    sget-object v2, Lorg/htmlparser/scanners/ScriptDecoder;->mDigits:[I

    const/4 v3, 0x5

    aget-char v3, p0, v3

    aget v2, v2, v3

    shr-int/lit8 v2, v2, 0x4

    shl-int/lit8 v2, v2, 0x18

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 265
    return-wide v0
.end method
