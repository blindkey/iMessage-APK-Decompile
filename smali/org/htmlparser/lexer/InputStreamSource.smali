.class public Lorg/htmlparser/lexer/InputStreamSource;
.super Lorg/htmlparser/lexer/Source;
.source "InputStreamSource.java"


# static fields
.field public static BUFFER_SIZE:I


# instance fields
.field protected mBuffer:[C

.field protected mEncoding:Ljava/lang/String;

.field protected mLevel:I

.field protected mMark:I

.field protected mOffset:I

.field protected transient mReader:Ljava/io/InputStreamReader;

.field protected transient mStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x4000

    sput v0, Lorg/htmlparser/lexer/InputStreamSource;->BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    sget v1, Lorg/htmlparser/lexer/InputStreamSource;->BUFFER_SIZE:I

    invoke-direct {p0, p1, v0, v1}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "stream"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 113
    sget v0, Lorg/htmlparser/lexer/InputStreamSource;->BUFFER_SIZE:I

    invoke-direct {p0, p1, p2, v0}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 3
    .parameter "stream"
    .parameter "charset"
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Lorg/htmlparser/lexer/Source;-><init>()V

    .line 128
    if-nez p1, :cond_1

    .line 129
    new-instance p1, Lorg/htmlparser/lexer/Stream;

    .end local p1
    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/htmlparser/lexer/Stream;-><init>(Ljava/io/InputStream;)V

    .line 145
    .restart local p1
    :cond_0
    :goto_0
    iput-object p1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    .line 146
    if-nez p2, :cond_2

    .line 148
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    .line 149
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    .line 156
    :goto_1
    new-array v1, p3, [C

    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 157
    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    .line 158
    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 159
    const/4 v1, -0x1

    iput v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 160
    return-void

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 134
    new-instance v0, Lorg/htmlparser/lexer/Stream;

    invoke-direct {v0, p1}, Lorg/htmlparser/lexer/Stream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v0, stream:Ljava/io/InputStream;
    move-object p1, v0

    .end local v0           #stream:Ljava/io/InputStream;
    .restart local p1
    goto :goto_0

    .line 153
    :cond_2
    iput-object p2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    .line 154
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 202
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    .line 205
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    .line 181
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 182
    .local v1, offset:I
    const/16 v2, 0x1000

    new-array v0, v2, [C

    .line 183
    .local v0, buffer:[C
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/InputStreamSource;->read([C)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 185
    iput v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 188
    .end local v0           #buffer:[C
    .end local v1           #offset:I
    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 189
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3

    .prologue
    .line 692
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 697
    .local v0, ret:I
    :goto_0
    return v0

    .line 695
    .end local v0           #ret:I
    :cond_0
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int v0, v1, v2

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    return-void
.end method

.method public destroy()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 656
    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    .line 657
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 659
    :cond_0
    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    .line 660
    iput-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 661
    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    .line 662
    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 663
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 664
    return-void
.end method

.method protected fill(I)V
    .locals 6
    .parameter "min"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 325
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    if-eqz v3, :cond_0

    .line 327
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v3, v3

    iget v4, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    sub-int v2, v3, v4

    .line 328
    .local v2, size:I
    if-ge v2, p1, :cond_2

    .line 331
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v3, v3

    mul-int/lit8 v2, v3, 0x2

    .line 332
    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    add-int v1, v3, p1

    .line 333
    .local v1, read:I
    if-ge v2, v1, :cond_1

    .line 334
    move v2, v1

    .line 337
    :goto_0
    new-array v0, v2, [C

    .line 346
    .end local v1           #read:I
    .local v0, buffer:[C
    :goto_1
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    iget v4, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    invoke-virtual {v3, v0, v4, p1}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .line 347
    .restart local v1       #read:I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_3

    .line 349
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 350
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    .line 363
    .end local v0           #buffer:[C
    .end local v1           #read:I
    .end local v2           #size:I
    :cond_0
    :goto_2
    return-void

    .line 336
    .restart local v1       #read:I
    .restart local v2       #size:I
    :cond_1
    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    sub-int p1, v2, v3

    goto :goto_0

    .line 341
    .end local v1           #read:I
    :cond_2
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 342
    .restart local v0       #buffer:[C
    move p1, v2

    goto :goto_1

    .line 354
    .restart local v1       #read:I
    :cond_3
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    if-eq v3, v0, :cond_4

    .line 356
    iget-object v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v4, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 357
    iput-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 359
    :cond_4
    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    goto :goto_2
.end method

.method public getCharacter(I)C
    .locals 3
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 580
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_0
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v1, v1

    if-lt p1, v1, :cond_1

    .line 582
    new-instance v1, Ljava/io/IOException;

    const-string v2, "illegal read ahead"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    aget-char v0, v1, p1

    .line 586
    .local v0, ret:C
    return v0
.end method

.method public getCharacters(Ljava/lang/StringBuffer;II)V
    .locals 2
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 639
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 640
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    invoke-virtual {p1, v0, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 642
    return-void
.end method

.method public getCharacters([CIII)V
    .locals 2
    .parameter "array"
    .parameter "offset"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    sub-int v1, p4, p3

    invoke-static {v0, p3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 3
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 620
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_0
    add-int v1, p1, p2

    iget-object v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    .line 622
    new-instance v1, Ljava/io/IOException;

    const-string v2, "illegal read ahead"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 626
    .local v0, ret:Ljava/lang/String;
    return-object v0
.end method

.method public mark(I)V
    .locals 2
    .parameter "readAheadLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 494
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 495
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 496
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public offset()I
    .locals 2

    .prologue
    .line 675
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 676
    const/4 v0, -0x1

    .line 680
    .local v0, ret:I
    :goto_0
    return v0

    .line 678
    .end local v0           #ret:I
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 392
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v1, v2

    if-ge v1, v3, :cond_2

    .line 394
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 395
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    invoke-virtual {p0, v3}, Lorg/htmlparser/lexer/InputStreamSource;->fill(I)V

    .line 397
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    if-lt v1, v2, :cond_1

    .line 398
    const/4 v0, -0x1

    .line 405
    .local v0, ret:I
    :goto_0
    return v0

    .line 400
    .end local v0           #ret:I
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    aget-char v0, v1, v2

    .line 401
    .restart local v0       #ret:I
    goto :goto_0

    .line 403
    .end local v0           #ret:I
    :cond_2
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    aget-char v0, v1, v2

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public read([C)I
    .locals 2
    .parameter "cbuf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlparser/lexer/InputStreamSource;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 4
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    .line 424
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-gez p3, :cond_3

    .line 426
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "illegal argument read ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-nez p1, :cond_2

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v1, "cbuf"

    goto :goto_0

    .line 429
    :cond_3
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_4

    .line 430
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v1, v2

    sub-int v1, p3, v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/lexer/InputStreamSource;->fill(I)V

    .line 431
    :cond_4
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    if-lt v1, v2, :cond_5

    .line 432
    const/4 v0, -0x1

    .line 440
    .local v0, ret:I
    :goto_1
    return v0

    .line 435
    .end local v0           #ret:I
    :cond_5
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v1, v2

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 436
    .restart local v0       #ret:I
    iget-object v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    goto :goto_1
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 509
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 466
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    if-eq v0, v1, :cond_1

    .line 469
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 11
    .parameter "character_set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/htmlparser/lexer/InputStreamSource;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, encoding:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 259
    invoke-virtual {p0}, Lorg/htmlparser/lexer/InputStreamSource;->getStream()Ljava/io/InputStream;

    move-result-object v6

    .line 262
    .local v6, stream:Ljava/io/InputStream;
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 263
    .local v0, buffer:[C
    iget v5, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 264
    .local v5, offset:I
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :try_start_1
    iput-object p1, p0, Lorg/htmlparser/lexer/InputStreamSource;->mEncoding:Ljava/lang/String;

    .line 268
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v6, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/htmlparser/lexer/InputStreamSource;->mReader:Ljava/io/InputStreamReader;

    .line 269
    iget-object v7, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    array-length v7, v7

    new-array v7, v7, [C

    iput-object v7, p0, Lorg/htmlparser/lexer/InputStreamSource;->mBuffer:[C

    .line 270
    const/4 v7, 0x0

    iput v7, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    .line 271
    const/4 v7, 0x0

    iput v7, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 272
    const/4 v7, -0x1

    iput v7, p0, Lorg/htmlparser/lexer/InputStreamSource;->mMark:I

    .line 273
    if-eqz v5, :cond_2

    .line 275
    new-array v4, v5, [C

    .line 276
    .local v4, new_chars:[C
    invoke-virtual {p0, v4}, Lorg/htmlparser/lexer/InputStreamSource;->read([C)I

    move-result v7

    if-eq v5, v7, :cond_0

    .line 277
    new-instance v7, Lorg/htmlparser/util/ParserException;

    const-string v8, "reset stream failed"

    invoke-direct {v7, v8}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 296
    .end local v4           #new_chars:[C
    :catch_0
    move-exception v3

    .line 298
    .local v3, ioe:Ljava/io/IOException;
    :try_start_2
    new-instance v7, Lorg/htmlparser/util/ParserException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 301
    .end local v0           #buffer:[C
    .end local v3           #ioe:Ljava/io/IOException;
    .end local v5           #offset:I
    :catch_1
    move-exception v3

    .line 303
    .restart local v3       #ioe:Ljava/io/IOException;
    new-instance v7, Lorg/htmlparser/util/ParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Stream reset failed ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "), try wrapping it with a org.htmlparser.lexer.Stream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 278
    .end local v3           #ioe:Ljava/io/IOException;
    .restart local v0       #buffer:[C
    .restart local v4       #new_chars:[C
    .restart local v5       #offset:I
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 279
    :try_start_3
    aget-char v7, v4, v2

    aget-char v8, v0, v2

    if-eq v7, v8, :cond_1

    .line 280
    new-instance v7, Lorg/htmlparser/util/EncodingChangeException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "character mismatch (new: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    aget-char v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " [0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    aget-char v9, v4, v2

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "] != old: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " [0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    aget-char v9, v0, v2

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    aget-char v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "]) for encoding change from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " at character offset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/htmlparser/util/EncodingChangeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 278
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .end local v0           #buffer:[C
    .end local v2           #i:I
    .end local v4           #new_chars:[C
    .end local v5           #offset:I
    .end local v6           #stream:Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 529
    iget-object v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v2, :cond_0

    .line 530
    new-instance v2, Ljava/io/IOException;

    const-string v3, "source is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-lez v2, :cond_1

    .line 532
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "cannot skip backwards"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 535
    :cond_1
    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_2

    .line 536
    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    sub-long v2, p1, v2

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/InputStreamSource;->fill(I)V

    .line 537
    :cond_2
    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    if-lt v2, v3, :cond_3

    .line 538
    const-wide/16 v0, -0x1

    .line 546
    .local v0, ret:J
    :goto_0
    return-wide v0

    .line 541
    .end local v0           #ret:J
    :cond_3
    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mLevel:I

    iget v3, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 542
    .restart local v0       #ret:J
    iget v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    goto :goto_0
.end method

.method public unread()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 561
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    if-lez v0, :cond_1

    .line 563
    iget v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/InputStreamSource;->mOffset:I

    .line 566
    return-void

    .line 565
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t unread no characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
