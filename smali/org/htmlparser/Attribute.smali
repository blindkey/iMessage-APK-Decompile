.class public Lorg/htmlparser/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected mAssignment:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mQuote:C

.field protected mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v1, v0}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 334
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "non whitespace value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    invoke-virtual {p0, v1}, Lorg/htmlparser/Attribute;->setName(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0, v1}, Lorg/htmlparser/Attribute;->setAssignment(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->setQuote(C)V

    .line 299
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 311
    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 312
    return-void

    .line 311
    :cond_0
    const-string v0, "="

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .parameter "name"
    .parameter "value"
    .parameter "quote"

    .prologue
    .line 277
    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 278
    return-void

    .line 277
    :cond_0
    const-string v0, "="

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "assignment"
    .parameter "value"

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V

    .line 324
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 0
    .parameter "name"
    .parameter "assignment"
    .parameter "value"
    .parameter "quote"

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->setName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0, p2}, Lorg/htmlparser/Attribute;->setAssignment(Ljava/lang/String;)V

    .line 257
    if-nez p4, :cond_0

    .line 258
    invoke-virtual {p0, p3}, Lorg/htmlparser/Attribute;->setRawValue(Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p0, p3}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0, p4}, Lorg/htmlparser/Attribute;->setQuote(C)V

    goto :goto_0
.end method


# virtual methods
.method public getAssignment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    return-object v0
.end method

.method public getAssignment(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 396
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :cond_0
    return-void
.end method

.method public getLength()I
    .locals 6

    .prologue
    .line 695
    const/4 v3, 0x0

    .line 696
    .local v3, ret:I
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 697
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 699
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getAssignment()Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, assignment:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 701
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 702
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 703
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 704
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 705
    :cond_2
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getQuote()C

    move-result v2

    .line 706
    .local v2, quote:C
    if-eqz v2, :cond_3

    .line 707
    add-int/lit8 v3, v3, 0x2

    .line 709
    :cond_3
    return v3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getName(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 357
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    :cond_0
    return-void
.end method

.method public getQuote()C
    .locals 1

    .prologue
    .line 467
    iget-char v0, p0, Lorg/htmlparser/Attribute;->mQuote:C

    return v0
.end method

.method public getQuote(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 478
    iget-char v0, p0, Lorg/htmlparser/Attribute;->mQuote:C

    if-eqz v0, :cond_0

    .line 479
    iget-char v0, p0, Lorg/htmlparser/Attribute;->mQuote:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    :cond_0
    return-void
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 510
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->isValued()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getQuote()C

    move-result v1

    .line 513
    .local v1, quote:C
    if-eqz v1, :cond_0

    .line 515
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 516
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 517
    invoke-virtual {p0, v0}, Lorg/htmlparser/Attribute;->getValue(Ljava/lang/StringBuffer;)V

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 519
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 527
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v1           #quote:C
    .local v2, ret:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 522
    .end local v2           #ret:Ljava/lang/String;
    .restart local v1       #quote:C
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 523
    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 525
    .end local v1           #quote:C
    .end local v2           #ret:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getRawValue(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->getQuote(Ljava/lang/StringBuffer;)V

    .line 541
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->getValue(Ljava/lang/StringBuffer;)V

    .line 542
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->getQuote(Ljava/lang/StringBuffer;)V

    .line 543
    return-void
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "buffer"

    .prologue
    .line 439
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 670
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getAssignment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStandAlone()Z
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getAssignment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValued()Z
    .locals 1

    .prologue
    .line 680
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhitespace()Z
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAssignment(Ljava/lang/String;)V
    .locals 0
    .parameter "assignment"

    .prologue
    .line 412
    iput-object p1, p0, Lorg/htmlparser/Attribute;->mAssignment:Ljava/lang/String;

    .line 413
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 373
    iput-object p1, p0, Lorg/htmlparser/Attribute;->mName:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setQuote(C)V
    .locals 0
    .parameter "quote"

    .prologue
    .line 493
    iput-char p1, p0, Lorg/htmlparser/Attribute;->mQuote:C

    .line 494
    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 11
    .parameter "value"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 568
    const/4 v5, 0x0

    .line 569
    .local v5, quote:C
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 571
    const-string v8, "\'"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "\'"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v10, v8, :cond_1

    .line 574
    const/16 v5, 0x27

    .line 575
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 639
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0, v5}, Lorg/htmlparser/Attribute;->setQuote(C)V

    .line 641
    return-void

    .line 577
    :cond_1
    const-string v8, "\""

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "\""

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v10, v8, :cond_2

    .line 580
    const/16 v5, 0x22

    .line 581
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 582
    goto :goto_0

    .line 587
    :cond_2
    const/4 v4, 0x0

    .line 588
    .local v4, needed:Z
    const/4 v7, 0x1

    .line 589
    .local v7, singleq:Z
    const/4 v2, 0x1

    .line 590
    .local v2, doubleq:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 592
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 593
    .local v1, ch:C
    const/16 v8, 0x27

    if-ne v8, v1, :cond_4

    .line 595
    const/4 v7, 0x0

    .line 596
    const/4 v4, 0x1

    .line 590
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 598
    :cond_4
    const/16 v8, 0x22

    if-ne v8, v1, :cond_5

    .line 600
    const/4 v2, 0x0

    .line 601
    const/4 v4, 0x1

    .line 602
    goto :goto_2

    .line 603
    :cond_5
    const/16 v8, 0x2d

    if-eq v8, v1, :cond_3

    const/16 v8, 0x2e

    if-eq v8, v1, :cond_3

    const/16 v8, 0x5f

    if-eq v8, v1, :cond_3

    const/16 v8, 0x3a

    if-eq v8, v1, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_3

    .line 606
    const/4 v4, 0x1

    goto :goto_2

    .line 611
    .end local v1           #ch:C
    :cond_6
    if-eqz v4, :cond_0

    .line 613
    if-eqz v2, :cond_7

    .line 614
    const/16 v5, 0x22

    goto :goto_0

    .line 615
    :cond_7
    if-eqz v7, :cond_8

    .line 616
    const/16 v5, 0x27

    goto :goto_0

    .line 621
    :cond_8
    const/16 v5, 0x22

    .line 622
    const-string v6, "&quot;"

    .line 624
    .local v6, ref:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    mul-int/2addr v8, v9

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 626
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_a

    .line 628
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 629
    .restart local v1       #ch:C
    if-ne v5, v1, :cond_9

    .line 630
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 632
    :cond_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 634
    .end local v1           #ch:C
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 456
    iput-object p1, p0, Lorg/htmlparser/Attribute;->mValue:Ljava/lang/String;

    .line 457
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 734
    invoke-virtual {p0}, Lorg/htmlparser/Attribute;->getLength()I

    move-result v0

    .line 735
    .local v0, length:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 736
    .local v1, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v1}, Lorg/htmlparser/Attribute;->toString(Ljava/lang/StringBuffer;)V

    .line 738
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 748
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->getName(Ljava/lang/StringBuffer;)V

    .line 749
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->getAssignment(Ljava/lang/StringBuffer;)V

    .line 750
    invoke-virtual {p0, p1}, Lorg/htmlparser/Attribute;->getRawValue(Ljava/lang/StringBuffer;)V

    .line 751
    return-void
.end method
