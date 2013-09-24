.class public Lorg/htmlparser/util/sort/Sort;
.super Ljava/lang/Object;
.source "Sort.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static QuickSort(Ljava/util/Vector;)V
    .locals 2
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/htmlparser/util/sort/Sort;->QuickSort(Ljava/util/Vector;II)V

    .line 67
    return-void
.end method

.method public static QuickSort(Ljava/util/Vector;II)V
    .locals 6
    .parameter "v"
    .parameter "lo0"
    .parameter "hi0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 86
    move v2, p1

    .line 87
    .local v2, lo:I
    move v0, p2

    .line 90
    .local v0, hi:I
    if-le p2, p1, :cond_3

    .line 92
    add-int v5, p1, p2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlparser/util/sort/Ordered;

    .line 95
    .local v4, mid:Lorg/htmlparser/util/sort/Ordered;
    :goto_0
    if-gt v2, v0, :cond_1

    move v3, v2

    .line 99
    .end local v2           #lo:I
    .local v3, lo:I
    :goto_1
    if-ge v3, p2, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/htmlparser/util/sort/Ordered;

    invoke-interface {v5, v4}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    .line 100
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    move v3, v2

    .end local v2           #lo:I
    .restart local v3       #lo:I
    goto :goto_1

    .line 104
    .end local v0           #hi:I
    .local v1, hi:I
    :goto_2
    if-le v1, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/htmlparser/util/sort/Ordered;

    invoke-interface {v5, v4}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_0

    .line 105
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2

    .line 108
    :cond_0
    if-gt v3, v1, :cond_4

    .line 109
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    invoke-static {p0, v3, v1}, Lorg/htmlparser/util/sort/Sort;->swap(Ljava/util/Vector;II)V

    goto :goto_0

    .line 114
    :cond_1
    if-ge p1, v0, :cond_2

    .line 115
    invoke-static {p0, p1, v0}, Lorg/htmlparser/util/sort/Sort;->QuickSort(Ljava/util/Vector;II)V

    .line 119
    :cond_2
    if-ge v2, p2, :cond_3

    .line 120
    invoke-static {p0, v2, p2}, Lorg/htmlparser/util/sort/Sort;->QuickSort(Ljava/util/Vector;II)V

    .line 122
    .end local v4           #mid:Lorg/htmlparser/util/sort/Ordered;
    :cond_3
    return-void

    .end local v0           #hi:I
    .end local v2           #lo:I
    .restart local v1       #hi:I
    .restart local v3       #lo:I
    .restart local v4       #mid:Lorg/htmlparser/util/sort/Ordered;
    :cond_4
    move v0, v1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v2, v3

    .end local v3           #lo:I
    .restart local v2       #lo:I
    goto :goto_0

    .end local v2           #lo:I
    .restart local v3       #lo:I
    :cond_5
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2
.end method

.method public static QuickSort(Lorg/htmlparser/util/sort/Sortable;)V
    .locals 2
    .parameter "sortable"

    .prologue
    .line 351
    invoke-interface {p0}, Lorg/htmlparser/util/sort/Sortable;->first()I

    move-result v0

    invoke-interface {p0}, Lorg/htmlparser/util/sort/Sortable;->last()I

    move-result v1

    invoke-static {p0, v0, v1}, Lorg/htmlparser/util/sort/Sort;->QuickSort(Lorg/htmlparser/util/sort/Sortable;II)V

    .line 352
    return-void
.end method

.method public static QuickSort(Lorg/htmlparser/util/sort/Sortable;II)V
    .locals 8
    .parameter "sortable"
    .parameter "lo0"
    .parameter "hi0"

    .prologue
    .line 298
    move v2, p1

    .line 299
    .local v2, lo:I
    move v0, p2

    .line 303
    .local v0, hi:I
    if-le p2, p1, :cond_3

    .line 305
    add-int v6, p1, p2

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-interface {p0, v6, v7}, Lorg/htmlparser/util/sort/Sortable;->fetch(ILorg/htmlparser/util/sort/Ordered;)Lorg/htmlparser/util/sort/Ordered;

    move-result-object v4

    .line 306
    .local v4, mid:Lorg/htmlparser/util/sort/Ordered;
    const/4 v5, 0x0

    .line 309
    .local v5, test:Lorg/htmlparser/util/sort/Ordered;
    :goto_0
    if-gt v2, v0, :cond_1

    move v3, v2

    .line 313
    .end local v2           #lo:I
    .local v3, lo:I
    :goto_1
    if-ge v3, p2, :cond_5

    invoke-interface {p0, v3, v5}, Lorg/htmlparser/util/sort/Sortable;->fetch(ILorg/htmlparser/util/sort/Ordered;)Lorg/htmlparser/util/sort/Ordered;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_5

    .line 314
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    move v3, v2

    .end local v2           #lo:I
    .restart local v3       #lo:I
    goto :goto_1

    .line 318
    .end local v0           #hi:I
    .local v1, hi:I
    :goto_2
    if-le v1, p1, :cond_0

    invoke-interface {p0, v1, v5}, Lorg/htmlparser/util/sort/Sortable;->fetch(ILorg/htmlparser/util/sort/Ordered;)Lorg/htmlparser/util/sort/Ordered;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v6

    if-lez v6, :cond_0

    .line 319
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2

    .line 322
    :cond_0
    if-gt v3, v1, :cond_4

    .line 323
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    invoke-interface {p0, v3, v1}, Lorg/htmlparser/util/sort/Sortable;->swap(II)V

    goto :goto_0

    .line 328
    :cond_1
    if-ge p1, v0, :cond_2

    .line 329
    invoke-static {p0, p1, v0}, Lorg/htmlparser/util/sort/Sort;->QuickSort(Lorg/htmlparser/util/sort/Sortable;II)V

    .line 333
    :cond_2
    if-ge v2, p2, :cond_3

    .line 334
    invoke-static {p0, v2, p2}, Lorg/htmlparser/util/sort/Sort;->QuickSort(Lorg/htmlparser/util/sort/Sortable;II)V

    .line 336
    .end local v4           #mid:Lorg/htmlparser/util/sort/Ordered;
    .end local v5           #test:Lorg/htmlparser/util/sort/Ordered;
    :cond_3
    return-void

    .end local v0           #hi:I
    .end local v2           #lo:I
    .restart local v1       #hi:I
    .restart local v3       #lo:I
    .restart local v4       #mid:Lorg/htmlparser/util/sort/Ordered;
    .restart local v5       #test:Lorg/htmlparser/util/sort/Ordered;
    :cond_4
    move v0, v1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v2, v3

    .end local v3           #lo:I
    .restart local v2       #lo:I
    goto :goto_0

    .end local v2           #lo:I
    .restart local v3       #lo:I
    :cond_5
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2
.end method

.method public static QuickSort([Ljava/lang/String;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 230
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Ljava/lang/String;II)V

    .line 231
    return-void
.end method

.method public static QuickSort([Ljava/lang/String;II)V
    .locals 6
    .parameter "a"
    .parameter "lo0"
    .parameter "hi0"

    .prologue
    .line 248
    move v2, p1

    .line 249
    .local v2, lo:I
    move v0, p2

    .line 252
    .local v0, hi:I
    if-le p2, p1, :cond_3

    .line 255
    add-int v5, p1, p2

    div-int/lit8 v5, v5, 0x2

    aget-object v4, p0, v5

    .line 258
    .local v4, mid:Ljava/lang/String;
    :goto_0
    if-gt v2, v0, :cond_1

    move v3, v2

    .line 262
    .end local v2           #lo:I
    .local v3, lo:I
    :goto_1
    if-ge v3, p2, :cond_5

    aget-object v5, p0, v3

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_5

    .line 263
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    move v3, v2

    .end local v2           #lo:I
    .restart local v3       #lo:I
    goto :goto_1

    .line 267
    .end local v0           #hi:I
    .local v1, hi:I
    :goto_2
    if-le v1, p1, :cond_0

    aget-object v5, p0, v1

    invoke-virtual {v5, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 268
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2

    .line 271
    :cond_0
    if-gt v3, v1, :cond_4

    .line 272
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    invoke-static {p0, v3, v1}, Lorg/htmlparser/util/sort/Sort;->swap([Ljava/lang/Object;II)V

    goto :goto_0

    .line 277
    :cond_1
    if-ge p1, v0, :cond_2

    .line 278
    invoke-static {p0, p1, v0}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Ljava/lang/String;II)V

    .line 282
    :cond_2
    if-ge v2, p2, :cond_3

    .line 283
    invoke-static {p0, v2, p2}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Ljava/lang/String;II)V

    .line 285
    .end local v4           #mid:Ljava/lang/String;
    :cond_3
    return-void

    .end local v0           #hi:I
    .end local v2           #lo:I
    .restart local v1       #hi:I
    .restart local v3       #lo:I
    .restart local v4       #mid:Ljava/lang/String;
    :cond_4
    move v0, v1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v2, v3

    .end local v3           #lo:I
    .restart local v2       #lo:I
    goto :goto_0

    .end local v2           #lo:I
    .restart local v3       #lo:I
    :cond_5
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2
.end method

.method public static QuickSort([Lorg/htmlparser/util/sort/Ordered;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 146
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Lorg/htmlparser/util/sort/Ordered;II)V

    .line 147
    return-void
.end method

.method public static QuickSort([Lorg/htmlparser/util/sort/Ordered;II)V
    .locals 6
    .parameter "a"
    .parameter "lo0"
    .parameter "hi0"

    .prologue
    .line 164
    move v2, p1

    .line 165
    .local v2, lo:I
    move v0, p2

    .line 168
    .local v0, hi:I
    if-le p2, p1, :cond_3

    .line 171
    add-int v5, p1, p2

    div-int/lit8 v5, v5, 0x2

    aget-object v4, p0, v5

    .line 174
    .local v4, mid:Lorg/htmlparser/util/sort/Ordered;
    :goto_0
    if-gt v2, v0, :cond_1

    move v3, v2

    .line 178
    .end local v2           #lo:I
    .local v3, lo:I
    :goto_1
    if-ge v3, p2, :cond_5

    aget-object v5, p0, v3

    invoke-interface {v5, v4}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_5

    .line 179
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    move v3, v2

    .end local v2           #lo:I
    .restart local v3       #lo:I
    goto :goto_1

    .line 183
    .end local v0           #hi:I
    .local v1, hi:I
    :goto_2
    if-le v1, p1, :cond_0

    aget-object v5, p0, v1

    invoke-interface {v5, v4}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v5

    if-lez v5, :cond_0

    .line 184
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2

    .line 187
    :cond_0
    if-gt v3, v1, :cond_4

    .line 188
    add-int/lit8 v2, v3, 0x1

    .end local v3           #lo:I
    .restart local v2       #lo:I
    add-int/lit8 v0, v1, -0x1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    invoke-static {p0, v3, v1}, Lorg/htmlparser/util/sort/Sort;->swap([Ljava/lang/Object;II)V

    goto :goto_0

    .line 193
    :cond_1
    if-ge p1, v0, :cond_2

    .line 194
    invoke-static {p0, p1, v0}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Lorg/htmlparser/util/sort/Ordered;II)V

    .line 198
    :cond_2
    if-ge v2, p2, :cond_3

    .line 199
    invoke-static {p0, v2, p2}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Lorg/htmlparser/util/sort/Ordered;II)V

    .line 201
    .end local v4           #mid:Lorg/htmlparser/util/sort/Ordered;
    :cond_3
    return-void

    .end local v0           #hi:I
    .end local v2           #lo:I
    .restart local v1       #hi:I
    .restart local v3       #lo:I
    .restart local v4       #mid:Lorg/htmlparser/util/sort/Ordered;
    :cond_4
    move v0, v1

    .end local v1           #hi:I
    .restart local v0       #hi:I
    move v2, v3

    .end local v3           #lo:I
    .restart local v2       #lo:I
    goto :goto_0

    .end local v2           #lo:I
    .restart local v3       #lo:I
    :cond_5
    move v1, v0

    .end local v0           #hi:I
    .restart local v1       #hi:I
    goto :goto_2
.end method

.method public static QuickSort(Ljava/util/Hashtable;)[Ljava/lang/Object;
    .locals 5
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v4

    new-array v3, v4, [Lorg/htmlparser/util/sort/Ordered;

    .line 369
    .local v3, ret:[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 370
    .local v1, e:Ljava/util/Enumeration;
    const/4 v0, 0x1

    .line 371
    .local v0, are_strings:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 373
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    .line 374
    if-eqz v0, :cond_0

    aget-object v4, v3, v2

    instance-of v4, v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 371
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 379
    :cond_1
    if-eqz v0, :cond_2

    move-object v4, v3

    .line 380
    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Ljava/lang/String;)V

    .line 384
    :goto_1
    return-object v3

    :cond_2
    move-object v4, v3

    .line 382
    check-cast v4, [Lorg/htmlparser/util/sort/Ordered;

    check-cast v4, [Lorg/htmlparser/util/sort/Ordered;

    invoke-static {v4}, Lorg/htmlparser/util/sort/Sort;->QuickSort([Lorg/htmlparser/util/sort/Ordered;)V

    goto :goto_1
.end method

.method public static bsearch(Ljava/util/Vector;Lorg/htmlparser/util/sort/Ordered;)I
    .locals 2
    .parameter "vector"
    .parameter "ref"

    .prologue
    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Ljava/util/Vector;Lorg/htmlparser/util/sort/Ordered;II)I

    move-result v0

    return v0
.end method

.method public static bsearch(Ljava/util/Vector;Lorg/htmlparser/util/sort/Ordered;II)I
    .locals 7
    .parameter "vector"
    .parameter "ref"
    .parameter "lo"
    .parameter "hi"

    .prologue
    const/4 v6, -0x1

    .line 458
    const/4 v4, -0x1

    .line 460
    .local v4, ret:I
    sub-int v5, p3, p2

    add-int/lit8 v2, v5, 0x1

    .line 461
    .local v2, num:I
    :goto_0
    if-ne v6, v4, :cond_4

    if-gt p2, p3, :cond_4

    .line 463
    div-int/lit8 v0, v2, 0x2

    .line 464
    .local v0, half:I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    move v5, v0

    :goto_1
    add-int v1, p2, v5

    .line 465
    .local v1, mid:I
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v3

    .line 466
    .local v3, result:I
    if-nez v3, :cond_1

    .line 467
    move v4, v1

    goto :goto_0

    .line 464
    .end local v1           #mid:I
    .end local v3           #result:I
    :cond_0
    add-int/lit8 v5, v0, -0x1

    goto :goto_1

    .line 468
    .restart local v1       #mid:I
    .restart local v3       #result:I
    :cond_1
    if-gez v3, :cond_3

    .line 470
    add-int/lit8 p3, v1, -0x1

    .line 471
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_2

    move v2, v0

    .line 472
    :goto_2
    goto :goto_0

    .line 471
    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_2

    .line 475
    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 476
    move v2, v0

    .line 478
    goto :goto_0

    .line 479
    .end local v0           #half:I
    .end local v1           #mid:I
    .end local v3           #result:I
    :cond_4
    if-ne v6, v4, :cond_5

    .line 480
    move v4, p2

    .line 482
    :cond_5
    return v4
.end method

.method public static bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;)I
    .locals 2
    .parameter "set"
    .parameter "ref"

    .prologue
    .line 440
    invoke-interface {p0}, Lorg/htmlparser/util/sort/Sortable;->first()I

    move-result v0

    invoke-interface {p0}, Lorg/htmlparser/util/sort/Sortable;->last()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lorg/htmlparser/util/sort/Sort;->bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;II)I

    move-result v0

    return v0
.end method

.method public static bsearch(Lorg/htmlparser/util/sort/Sortable;Lorg/htmlparser/util/sort/Ordered;II)I
    .locals 8
    .parameter "set"
    .parameter "ref"
    .parameter "lo"
    .parameter "hi"

    .prologue
    const/4 v7, -0x1

    .line 403
    const/4 v5, -0x1

    .line 405
    .local v5, ret:I
    sub-int v6, p3, p2

    add-int/lit8 v2, v6, 0x1

    .line 406
    .local v2, num:I
    const/4 v3, 0x0

    .line 407
    .local v3, ordered:Lorg/htmlparser/util/sort/Ordered;
    :goto_0
    if-ne v7, v5, :cond_4

    if-gt p2, p3, :cond_4

    .line 409
    div-int/lit8 v0, v2, 0x2

    .line 410
    .local v0, half:I
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_0

    move v6, v0

    :goto_1
    add-int v1, p2, v6

    .line 411
    .local v1, mid:I
    invoke-interface {p0, v1, v3}, Lorg/htmlparser/util/sort/Sortable;->fetch(ILorg/htmlparser/util/sort/Ordered;)Lorg/htmlparser/util/sort/Ordered;

    move-result-object v3

    .line 412
    invoke-interface {p1, v3}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v4

    .line 413
    .local v4, result:I
    if-nez v4, :cond_1

    .line 414
    move v5, v1

    goto :goto_0

    .line 410
    .end local v1           #mid:I
    .end local v4           #result:I
    :cond_0
    add-int/lit8 v6, v0, -0x1

    goto :goto_1

    .line 415
    .restart local v1       #mid:I
    .restart local v4       #result:I
    :cond_1
    if-gez v4, :cond_3

    .line 417
    add-int/lit8 p3, v1, -0x1

    .line 418
    and-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_2

    move v2, v0

    .line 419
    :goto_2
    goto :goto_0

    .line 418
    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_2

    .line 422
    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 423
    move v2, v0

    .line 425
    goto :goto_0

    .line 426
    .end local v0           #half:I
    .end local v1           #mid:I
    .end local v4           #result:I
    :cond_4
    if-ne v7, v5, :cond_5

    .line 427
    move v5, p2

    .line 429
    :cond_5
    return v5
.end method

.method public static bsearch([Lorg/htmlparser/util/sort/Ordered;Lorg/htmlparser/util/sort/Ordered;)I
    .locals 2
    .parameter "array"
    .parameter "ref"

    .prologue
    .line 546
    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/htmlparser/util/sort/Sort;->bsearch([Lorg/htmlparser/util/sort/Ordered;Lorg/htmlparser/util/sort/Ordered;II)I

    move-result v0

    return v0
.end method

.method public static bsearch([Lorg/htmlparser/util/sort/Ordered;Lorg/htmlparser/util/sort/Ordered;II)I
    .locals 7
    .parameter "array"
    .parameter "ref"
    .parameter "lo"
    .parameter "hi"

    .prologue
    const/4 v6, -0x1

    .line 511
    const/4 v4, -0x1

    .line 513
    .local v4, ret:I
    sub-int v5, p3, p2

    add-int/lit8 v2, v5, 0x1

    .line 514
    .local v2, num:I
    :goto_0
    if-ne v6, v4, :cond_4

    if-gt p2, p3, :cond_4

    .line 516
    div-int/lit8 v0, v2, 0x2

    .line 517
    .local v0, half:I
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_0

    move v5, v0

    :goto_1
    add-int v1, p2, v5

    .line 518
    .local v1, mid:I
    aget-object v5, p0, v1

    invoke-interface {p1, v5}, Lorg/htmlparser/util/sort/Ordered;->compare(Ljava/lang/Object;)I

    move-result v3

    .line 519
    .local v3, result:I
    if-nez v3, :cond_1

    .line 520
    move v4, v1

    goto :goto_0

    .line 517
    .end local v1           #mid:I
    .end local v3           #result:I
    :cond_0
    add-int/lit8 v5, v0, -0x1

    goto :goto_1

    .line 521
    .restart local v1       #mid:I
    .restart local v3       #result:I
    :cond_1
    if-gez v3, :cond_3

    .line 523
    add-int/lit8 p3, v1, -0x1

    .line 524
    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_2

    move v2, v0

    .line 525
    :goto_2
    goto :goto_0

    .line 524
    :cond_2
    add-int/lit8 v2, v0, -0x1

    goto :goto_2

    .line 528
    :cond_3
    add-int/lit8 p2, v1, 0x1

    .line 529
    move v2, v0

    .line 531
    goto :goto_0

    .line 532
    .end local v0           #half:I
    .end local v1           #mid:I
    .end local v3           #result:I
    :cond_4
    if-ne v6, v4, :cond_5

    .line 533
    move v4, p2

    .line 535
    :cond_5
    return v4
.end method

.method private static swap(Ljava/util/Vector;II)V
    .locals 2
    .parameter "v"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, o:Ljava/lang/Object;
    invoke-virtual {p0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 130
    invoke-virtual {p0, v0, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 131
    return-void
.end method

.method private static swap([Ljava/lang/Object;II)V
    .locals 2
    .parameter "a"
    .parameter "i"
    .parameter "j"

    .prologue
    .line 212
    aget-object v0, p0, p1

    .line 213
    .local v0, o:Ljava/lang/Object;
    aget-object v1, p0, p2

    aput-object v1, p0, p1

    .line 214
    aput-object v0, p0, p2

    .line 215
    return-void
.end method
