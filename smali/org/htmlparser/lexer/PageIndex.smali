.class public Lorg/htmlparser/lexer/PageIndex;
.super Ljava/lang/Object;
.source "PageIndex.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/util/sort/Sortable;


# static fields
.field protected static final mStartIncrement:I = 0x64


# instance fields
.field protected mCount:I

.field protected mIncrement:I

.field protected mIndices:[I

.field protected mPage:Lorg/htmlparser/lexer/Page;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;)V
    .locals 1
    .parameter "page"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/htmlparser/lexer/PageIndex;->mPage:Lorg/htmlparser/lexer/Page;

    .line 78
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 80
    const/16 v0, 0xc8

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;I)V
    .locals 2
    .parameter "page"
    .parameter "cursor"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    .line 91
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 93
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;[I)V
    .locals 1
    .parameter "page"
    .parameter "cursors"

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/htmlparser/lexer/PageIndex;->mPage:Lorg/htmlparser/lexer/Page;

    .line 104
    iput-object p2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    .line 105
    array-length v0, p2

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 106
    return-void
.end method


# virtual methods
.method public add(I)I
    .locals 2
    .parameter "cursor"

    .prologue
    .line 186
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageIndex;->add(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public add(Lorg/htmlparser/lexer/Cursor;)I
    .locals 5
    .parameter "cursor"

    .prologue
    .line 147
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    .line 148
    .local v1, position:I
    iget v3, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-nez v3, :cond_1

    .line 150
    const/4 v2, 0x0

    .line 151
    .local v2, ret:I
    invoke-virtual {p0, v1, v2}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    .line 175
    :cond_0
    :goto_0
    return v2

    .line 155
    .end local v2           #ret:I
    :cond_1
    iget-object v3, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    iget v4, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v4, v4, -0x1

    aget v0, v3, v4

    .line 156
    .local v0, last:I
    if-ne v1, v0, :cond_2

    .line 157
    iget v3, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v2, v3, -0x1

    .restart local v2       #ret:I
    goto :goto_0

    .line 159
    .end local v2           #ret:I
    :cond_2
    if-le v1, v0, :cond_3

    .line 161
    iget v2, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 162
    .restart local v2       #ret:I
    invoke-virtual {p0, v1, v2}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    goto :goto_0

    .line 167
    .end local v2           #ret:I
    :cond_3
    invoke-static {p0, p1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I

    move-result v2

    .line 170
    .restart local v2       #ret:I
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v3, v3, v2

    if-eq v1, v3, :cond_0

    .line 171
    :cond_4
    invoke-virtual {p0, v1, v2}, Lorg/htmlparser/lexer/PageIndex;->insertElementAt(II)V

    goto :goto_0
.end method

.method protected bsearch(I)I
    .locals 2
    .parameter "cursor"

    .prologue
    .line 306
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-static {p0, v0}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I

    move-result v0

    return v0
.end method

.method protected bsearch(III)I
    .locals 2
    .parameter "cursor"
    .parameter "first"
    .parameter "last"

    .prologue
    .line 318
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-static {p0, v0, p2, p3}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;II)I

    move-result v0

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    array-length v0, v0

    return v0
.end method

.method public column(I)I
    .locals 2
    .parameter "cursor"

    .prologue
    .line 283
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageIndex;->column(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public column(Lorg/htmlparser/lexer/Cursor;)I
    .locals 3
    .parameter "cursor"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lorg/htmlparser/lexer/PageIndex;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    .line 268
    .local v1, row:I
    if-eqz v1, :cond_0

    .line 269
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/PageIndex;->elementAt(I)I

    move-result v0

    .line 273
    .local v0, previous:I
    :goto_0
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    sub-int/2addr v2, v0

    return v2

    .line 271
    .end local v0           #previous:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #previous:I
    goto :goto_0
.end method

.method public elementAt(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 221
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-lt p1, v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " beyond current limit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v0, v0, p1

    return v0
.end method

.method public fetch(ILorg/htmlparser/util/sort/Ordered;)Lorg/htmlparser/util/sort/Ordered;
    .locals 3
    .parameter "index"
    .parameter "reuse"

    .prologue
    .line 402
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 404
    check-cast v0, Lorg/htmlparser/lexer/Cursor;

    .line 405
    .local v0, ret:Lorg/htmlparser/lexer/Cursor;
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v1, v1, p1

    iput v1, v0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 406
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    iput-object v1, v0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    .line 411
    :goto_0
    return-object v0

    .line 409
    .end local v0           #ret:Lorg/htmlparser/lexer/Cursor;
    :cond_0
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, p1

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .restart local v0       #ret:Lorg/htmlparser/lexer/Cursor;
    goto :goto_0
.end method

.method public first()I
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    return v0
.end method

.method public get()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v1

    new-array v0, v1, [I

    .line 294
    .local v0, ret:[I
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    return-object v0
.end method

.method public getPage()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method protected insertElementAt(II)V
    .locals 6
    .parameter "cursor"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 332
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    iget v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [I

    .line 333
    .local v0, new_values:[I
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIncrement:I

    .line 334
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    if-ge p2, v1, :cond_2

    .line 337
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-static {v1, v3, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 338
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 342
    :goto_0
    iput-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    .line 347
    .end local v0           #new_values:[I
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aput p1, v1, p2

    .line 348
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 349
    return-void

    .line 341
    .restart local v0       #new_values:[I
    :cond_2
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 344
    .end local v0           #new_values:[I
    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 346
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v4

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    invoke-static {v1, p2, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method public last()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove(I)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 211
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageIndex;->remove(Lorg/htmlparser/lexer/Cursor;)V

    .line 212
    return-void
.end method

.method public remove(Lorg/htmlparser/lexer/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 198
    invoke-static {p0, p1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I

    move-result v0

    .line 201
    .local v0, i:I
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageIndex;->removeElementAt(I)V

    .line 203
    :cond_0
    return-void
.end method

.method protected removeElementAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 358
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v3

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 359
    iget-object v0, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->capacity()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 360
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    .line 361
    return-void
.end method

.method public row(I)I
    .locals 2
    .parameter "cursor"

    .prologue
    .line 254
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageIndex;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/PageIndex;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public row(Lorg/htmlparser/lexer/Cursor;)I
    .locals 3
    .parameter "cursor"

    .prologue
    .line 236
    invoke-static {p0, p1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I

    move-result v0

    .line 241
    .local v0, ret:I
    iget v1, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 242
    add-int/lit8 v0, v0, 0x1

    .line 244
    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/htmlparser/lexer/PageIndex;->mCount:I

    return v0
.end method

.method public swap(II)V
    .locals 3
    .parameter "i"
    .parameter "j"

    .prologue
    .line 421
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v0, v1, p1

    .line 422
    .local v0, temp:I
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    iget-object v2, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aget v2, v2, p2

    aput v2, v1, p1

    .line 423
    iget-object v1, p0, Lorg/htmlparser/lexer/PageIndex;->mIndices:[I

    aput v0, v1, p2

    .line 424
    return-void
.end method
