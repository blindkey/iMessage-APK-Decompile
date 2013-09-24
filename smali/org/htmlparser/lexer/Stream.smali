.class public Lorg/htmlparser/lexer/Stream;
.super Ljava/io/InputStream;
.source "Stream.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final EOF:I = -0x1


# instance fields
.field public fills:I

.field public volatile mBuffer:[B

.field protected mContentLength:I

.field protected volatile mIn:Ljava/io/InputStream;

.field public volatile mLevel:I

.field protected mMark:I

.field protected mOffset:I

.field public reallocations:I

.field public synchronous:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/Stream;-><init>(Ljava/io/InputStream;I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "bytes"

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 42
    iput v0, p0, Lorg/htmlparser/lexer/Stream;->fills:I

    .line 48
    iput v0, p0, Lorg/htmlparser/lexer/Stream;->reallocations:I

    .line 54
    iput v0, p0, Lorg/htmlparser/lexer/Stream;->synchronous:I

    .line 114
    iput-object p1, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .line 116
    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    .line 117
    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    .line 118
    if-gez p2, :cond_0

    move p2, v0

    .end local p2
    :cond_0
    iput p2, p0, Lorg/htmlparser/lexer/Stream;->mContentLength:I

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mMark:I

    .line 120
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    iget v0, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    iget v1, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    .line 302
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .line 303
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    .line 304
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mContentLength:I

    .line 306
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mMark:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized fill(Z)Z
    .locals 8
    .parameter "force"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    monitor-enter p0

    const/4 v2, 0x0

    .line 143
    .local v2, ret:Z
    :try_start_0
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    if-eqz v4, :cond_2

    .line 145
    if-nez p1, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Stream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const/4 v4, 0x1

    .line 203
    :goto_0
    monitor-exit p0

    return v4

    .line 149
    :cond_0
    :try_start_1
    iget v4, p0, Lorg/htmlparser/lexer/Stream;->synchronous:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/htmlparser/lexer/Stream;->synchronous:I

    .line 153
    :cond_1
    iget v4, p0, Lorg/htmlparser/lexer/Stream;->mContentLength:I

    if-nez v4, :cond_5

    .line 155
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    if-nez v4, :cond_3

    .line 157
    const/16 v4, 0x1000

    iget-object v5, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .line 158
    iget-object v0, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .line 167
    .local v0, buffer:[B
    :goto_1
    array-length v4, v0

    iget v5, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    sub-int v3, v4, v5

    .line 178
    .local v3, size:I
    :goto_2
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    iget v5, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 179
    .local v1, read:I
    const/4 v4, -0x1

    if-ne v4, v1, :cond_7

    .line 181
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 182
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    .end local v0           #buffer:[B
    .end local v1           #read:I
    .end local v3           #size:I
    :cond_2
    :goto_3
    move v4, v2

    .line 203
    goto :goto_0

    .line 162
    :cond_3
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    array-length v4, v4

    iget v5, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    sub-int/2addr v4, v5

    const/16 v5, 0x800

    if-ge v4, v5, :cond_4

    .line 163
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    array-length v5, v5

    iget-object v6, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [B

    .restart local v0       #buffer:[B
    goto :goto_1

    .line 165
    .end local v0           #buffer:[B
    :cond_4
    iget-object v0, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .restart local v0       #buffer:[B
    goto :goto_1

    .line 171
    .end local v0           #buffer:[B
    :cond_5
    iget v4, p0, Lorg/htmlparser/lexer/Stream;->mContentLength:I

    iget v5, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    sub-int v3, v4, v5

    .line 172
    .restart local v3       #size:I
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    if-nez v4, :cond_6

    .line 173
    new-array v4, v3, [B

    iput-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .line 174
    :cond_6
    iget-object v0, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .restart local v0       #buffer:[B
    goto :goto_2

    .line 186
    .restart local v1       #read:I
    :cond_7
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    if-eq v4, v0, :cond_8

    .line 188
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iput-object v0, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    .line 190
    iget v4, p0, Lorg/htmlparser/lexer/Stream;->reallocations:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/htmlparser/lexer/Stream;->reallocations:I

    .line 192
    :cond_8
    iget v4, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    .line 193
    iget v4, p0, Lorg/htmlparser/lexer/Stream;->mContentLength:I

    if-eqz v4, :cond_9

    iget v4, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    iget v5, p0, Lorg/htmlparser/lexer/Stream;->mContentLength:I

    if-ne v4, v5, :cond_9

    .line 195
    iget-object v4, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 196
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/htmlparser/lexer/Stream;->mIn:Ljava/io/InputStream;

    .line 198
    :cond_9
    const/4 v2, 0x1

    .line 199
    iget v4, p0, Lorg/htmlparser/lexer/Stream;->fills:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/htmlparser/lexer/Stream;->fills:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 141
    .end local v0           #buffer:[B
    .end local v1           #read:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 399
    iget v0, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mMark:I

    .line 400
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    iget v1, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    sub-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 267
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/htmlparser/lexer/Stream;->fill(Z)Z

    .line 268
    :cond_0
    iget v1, p0, Lorg/htmlparser/lexer/Stream;->mLevel:I

    iget v2, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lorg/htmlparser/lexer/Stream;->mBuffer:[B

    iget v2, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 273
    .local v0, ret:I
    :goto_0
    return v0

    .line 271
    .end local v0           #ret:I
    :cond_1
    const/4 v0, -0x1

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, -0x1

    iget v1, p0, Lorg/htmlparser/lexer/Stream;->mMark:I

    if-eq v0, v1, :cond_0

    .line 354
    iget v0, p0, Lorg/htmlparser/lexer/Stream;->mMark:I

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/Stream;->mOffset:I

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 222
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/Stream;->fill(Z)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 232
    .local v0, filled:Z
    :goto_0
    if-nez v0, :cond_0

    .line 233
    return-void

    .line 224
    .end local v0           #filled:Z
    :catch_0
    move-exception v1

    .line 226
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 229
    const/4 v0, 0x0

    .restart local v0       #filled:Z
    goto :goto_0
.end method
