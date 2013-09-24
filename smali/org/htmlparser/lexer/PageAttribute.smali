.class public Lorg/htmlparser/lexer/PageAttribute;
.super Lorg/htmlparser/Attribute;
.source "PageAttribute.java"


# instance fields
.field protected mNameEnd:I

.field protected mNameStart:I

.field protected mPage:Lorg/htmlparser/lexer/Page;

.field protected mValueEnd:I

.field protected mValueStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/htmlparser/Attribute;-><init>()V

    .line 192
    invoke-direct {p0}, Lorg/htmlparser/lexer/PageAttribute;->init()V

    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-direct {p0}, Lorg/htmlparser/lexer/PageAttribute;->init()V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Lorg/htmlparser/lexer/PageAttribute;->init()V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .parameter "quote"

    .prologue
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    .line 140
    invoke-direct {p0}, Lorg/htmlparser/lexer/PageAttribute;->init()V

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "assignment"
    .parameter "value"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lorg/htmlparser/lexer/PageAttribute;->init()V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .parameter "name"
    .parameter "assignment"
    .parameter "value"
    .parameter "quote"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 125
    invoke-direct {p0}, Lorg/htmlparser/lexer/PageAttribute;->init()V

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;IIIIC)V
    .locals 1
    .parameter "page"
    .parameter "name_start"
    .parameter "name_end"
    .parameter "value_start"
    .parameter "value_end"
    .parameter "quote"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lorg/htmlparser/Attribute;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    .line 90
    iput p2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    .line 91
    iput p3, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    .line 92
    iput p4, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    .line 93
    iput p5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    .line 94
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setName(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setAssignment(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, p6}, Lorg/htmlparser/Attribute;->setQuote(C)V

    .line 98
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    .line 107
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    .line 108
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    .line 109
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    .line 110
    iput v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    .line 111
    return-void
.end method


# virtual methods
.method public getAssignment()Ljava/lang/String;
    .locals 4

    .prologue
    .line 248
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getAssignment()Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 251
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v1, :cond_2

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v1, :cond_2

    .line 253
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    invoke-virtual {v1, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setAssignment(Ljava/lang/String;)V

    .line 262
    :cond_2
    return-object v0
.end method

.method public getAssignment(Ljava/lang/StringBuffer;)V
    .locals 6
    .parameter "buffer"

    .prologue
    .line 276
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getAssignment()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, assignment:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 279
    iget-object v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v3, :cond_1

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v3, :cond_1

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v3, :cond_1

    .line 281
    iget-object v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v4, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    invoke-virtual {v3, p1, v4, v5}, Lorg/htmlparser/lexer/Page;->getText(Ljava/lang/StringBuffer;II)V

    .line 284
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 285
    .local v2, length:I
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    .line 286
    .local v1, ch:C
    const/16 v3, 0x27

    if-eq v3, v1, :cond_0

    const/16 v3, 0x22

    if-ne v3, v1, :cond_1

    .line 287
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 292
    .end local v1           #ch:C
    .end local v2           #length:I
    :cond_1
    :goto_0
    return-void

    .line 291
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getLength()I
    .locals 7

    .prologue
    .line 563
    const/4 v3, 0x0

    .line 564
    .local v3, ret:I
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 566
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 569
    :cond_0
    :goto_0
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getAssignment()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, assignment:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 571
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 574
    :cond_1
    :goto_1
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 575
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 576
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 579
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getQuote()C

    move-result v2

    .line 580
    .local v2, quote:C
    if-eqz v2, :cond_3

    .line 581
    add-int/lit8 v3, v3, 0x2

    .line 583
    :cond_3
    return v3

    .line 567
    .end local v0           #assignment:Ljava/lang/String;
    .end local v2           #quote:C
    .end local v4           #value:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    if-ltz v5, :cond_0

    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v5, :cond_0

    .line 568
    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    iget v6, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_0

    .line 572
    .restart local v0       #assignment:Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v5, :cond_1

    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v5, :cond_1

    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v5, :cond_1

    .line 573
    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v6, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_1

    .line 577
    .restart local v4       #value:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v5, :cond_2

    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v5, :cond_2

    .line 578
    iget v5, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    iget v6, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 206
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 209
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    if-ltz v1, :cond_0

    .line 211
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    invoke-virtual {v1, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setName(Ljava/lang/String;)V

    .line 216
    :cond_0
    return-object v0
.end method

.method public getName(Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 228
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 231
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    if-ltz v1, :cond_0

    .line 232
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    invoke-virtual {v1, p1, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(Ljava/lang/StringBuffer;II)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getNameEndPosition()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    return v0
.end method

.method public getNameStartPosition()I
    .locals 1

    .prologue
    .line 426
    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    return v0
.end method

.method public getPage()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, ret:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getQuote()C

    move-result v1

    .local v1, quote:C
    if-eqz v1, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 357
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #quote:C
    :cond_0
    return-object v2
.end method

.method public getRawValue(Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 377
    iget-object v1, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 379
    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v1, :cond_2

    .line 381
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getQuote()C

    move-result v0

    .local v0, quote:C
    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 383
    :cond_0
    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-eq v1, v2, :cond_1

    .line 384
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    invoke-virtual {v1, p1, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(Ljava/lang/StringBuffer;II)V

    .line 385
    :cond_1
    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 397
    .end local v0           #quote:C
    :cond_2
    :goto_0
    return-void

    .line 391
    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getQuote()C

    move-result v0

    .restart local v0       #quote:C
    if-eqz v0, :cond_4

    .line 392
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 393
    :cond_4
    iget-object v1, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 308
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 311
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v1, :cond_0

    .line 313
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    invoke-virtual {v1, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-object v0
.end method

.method public getValue(Ljava/lang/StringBuffer;)V
    .locals 4
    .parameter "buffer"

    .prologue
    .line 330
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 333
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v1, :cond_0

    .line 334
    iget-object v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    iget v2, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    iget v3, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    invoke-virtual {v1, p1, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(Ljava/lang/StringBuffer;II)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getValueEndPosition()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    return v0
.end method

.method public getValueStartPosition()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 531
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->isStandAlone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandAlone()Z
    .locals 1

    .prologue
    .line 516
    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->isWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lorg/htmlparser/Attribute;->getAssignment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/lexer/PageAttribute;->isValued()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValued()Z
    .locals 2

    .prologue
    .line 546
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-ltz v0, :cond_1

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    iget v1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhitespace()Z
    .locals 1

    .prologue
    .line 505
    invoke-super {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNameEndPosition(I)V
    .locals 1
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 454
    iput p1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameEnd:I

    .line 455
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setName(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setAssignment(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public setNameStartPosition(I)V
    .locals 1
    .parameter "start"

    .prologue
    .line 435
    iput p1, p0, Lorg/htmlparser/lexer/PageAttribute;->mNameStart:I

    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setName(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method public setPage(Lorg/htmlparser/lexer/Page;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 417
    iput-object p1, p0, Lorg/htmlparser/lexer/PageAttribute;->mPage:Lorg/htmlparser/lexer/Page;

    .line 418
    return-void
.end method

.method public setValueEndPosition(I)V
    .locals 1
    .parameter "end"

    .prologue
    .line 494
    iput p1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueEnd:I

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method public setValueStartPosition(I)V
    .locals 1
    .parameter "start"

    .prologue
    const/4 v0, 0x0

    .line 474
    iput p1, p0, Lorg/htmlparser/lexer/PageAttribute;->mValueStart:I

    .line 475
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setAssignment(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 477
    return-void
.end method
