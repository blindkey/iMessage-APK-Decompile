.class public Lorg/htmlparser/lexer/StringSource;
.super Lorg/htmlparser/lexer/Source;
.source "StringSource.java"


# instance fields
.field protected mEncoding:Ljava/lang/String;

.field protected mMark:I

.field protected mOffset:I

.field protected mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 67
    const-string v0, "ISO-8859-1"

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/StringSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "string"
    .parameter "character_set"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/htmlparser/lexer/Source;-><init>()V

    .line 78
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 80
    iput-object p2, p0, Lorg/htmlparser/lexer/StringSource;->mEncoding:Ljava/lang/String;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    .line 82
    return-void
.end method


# virtual methods
.method public available()I
    .locals 3

    .prologue
    .line 431
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 432
    const/4 v0, 0x0

    .line 436
    .local v0, ret:I
    :goto_0
    return v0

    .line 434
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

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
    .line 118
    return-void
.end method

.method public destroy()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    .line 403
    return-void
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
    .line 308
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 309
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 310
    :cond_0
    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-lt p1, v1, :cond_1

    .line 311
    new-instance v1, Ljava/io/IOException;

    const-string v2, "read beyond current offset"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 315
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
    .line 379
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    add-int v0, p2, p3

    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-le v0, v1, :cond_1

    .line 384
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond end of string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
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
    .line 331
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-le p4, v0, :cond_1

    .line 336
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read beyond current offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v0, p3, p4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 340
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mEncoding:Ljava/lang/String;

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
    .line 355
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 356
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :cond_0
    add-int v1, p1, p2

    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-le v1, v2, :cond_1

    .line 360
    new-instance v1, Ljava/io/IOException;

    const-string v2, "read beyond end of string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 365
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
    .line 240
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    .line 243
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public offset()I
    .locals 2

    .prologue
    .line 414
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 415
    const/4 v0, -0x1

    .line 419
    .local v0, ret:I
    :goto_0
    return v0

    .line 417
    .end local v0           #ret:I
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iget-object v2, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 133
    const/4 v0, -0x1

    .line 140
    .local v0, ret:I
    :goto_0
    return v0

    .line 136
    .end local v0           #ret:I
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 137
    .restart local v0       #ret:I
    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

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
    .line 187
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlparser/lexer/StringSource;->read([CII)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 5
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Ljava/io/IOException;

    const-string v3, "source is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 162
    .local v0, length:I
    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-lt v2, v0, :cond_1

    .line 163
    const/4 v1, -0x1

    .line 174
    .local v1, ret:I
    :goto_0
    return v1

    .line 166
    .end local v1           #ret:I
    :cond_1
    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int v2, v0, v2

    if-le p3, v2, :cond_2

    .line 167
    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int p3, v0, v2

    .line 168
    :cond_2
    iget-object v2, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    iget v3, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iget v4, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, v4, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    .line 169
    iget v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/2addr v2, p3

    iput v2, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 170
    move v1, p3

    .restart local v1       #ret:I
    goto :goto_0
.end method

.method public ready()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    iget-object v1, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

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
    .line 212
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_0
    const/4 v0, -0x1

    iget v1, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    if-eq v0, v1, :cond_1

    .line 216
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mMark:I

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    goto :goto_0
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "character_set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 103
    iput-object p1, p0, Lorg/htmlparser/lexer/StringSource;->mEncoding:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public skip(J)J
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v3, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 262
    new-instance v3, Ljava/io/IOException;

    const-string v4, "source is closed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v3, p1

    if-lez v3, :cond_1

    .line 264
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "cannot skip backwards"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 267
    :cond_1
    iget-object v3, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    .local v0, length:I
    iget v3, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-lt v3, v0, :cond_3

    .line 269
    const-wide/16 p1, 0x0

    .line 272
    :cond_2
    :goto_0
    iget v3, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v3, v3

    iput v3, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 273
    move-wide v1, p1

    .line 276
    .local v1, ret:J
    return-wide v1

    .line 270
    .end local v1           #ret:J
    :cond_3
    iget v3, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int v3, v0, v3

    int-to-long v3, v3

    cmp-long v3, p1, v3

    if-lez v3, :cond_2

    .line 271
    iget v3, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    sub-int v3, v0, v3

    int-to-long p1, v3

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
    .line 289
    iget-object v0, p0, Lorg/htmlparser/lexer/StringSource;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    if-gtz v0, :cond_1

    .line 292
    new-instance v0, Ljava/io/IOException;

    const-string v1, "can\'t unread no characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    iget v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/StringSource;->mOffset:I

    .line 295
    return-void
.end method
