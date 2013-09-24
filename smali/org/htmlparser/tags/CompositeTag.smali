.class public Lorg/htmlparser/tags/CompositeTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "CompositeTag.java"


# static fields
.field protected static final mDefaultCompositeScanner:Lorg/htmlparser/scanners/CompositeTagScanner;


# instance fields
.field protected mEndTag:Lorg/htmlparser/Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lorg/htmlparser/scanners/CompositeTagScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    sput-object v0, Lorg/htmlparser/tags/CompositeTag;->mDefaultCompositeScanner:Lorg/htmlparser/scanners/CompositeTagScanner;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 67
    sget-object v0, Lorg/htmlparser/tags/CompositeTag;->mDefaultCompositeScanner:Lorg/htmlparser/scanners/CompositeTagScanner;

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/CompositeTag;->setThisScanner(Lorg/htmlparser/scanners/Scanner;)V

    .line 68
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/visitors/NodeVisitor;)V
    .locals 3
    .parameter "visitor"

    .prologue
    .line 469
    invoke-virtual {p1}, Lorg/htmlparser/visitors/NodeVisitor;->shouldRecurseSelf()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    invoke-virtual {p1, p0}, Lorg/htmlparser/visitors/NodeVisitor;->visitTag(Lorg/htmlparser/Tag;)V

    .line 471
    :cond_0
    invoke-virtual {p1}, Lorg/htmlparser/visitors/NodeVisitor;->shouldRecurseChildren()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 473
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 475
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v1

    .line 476
    .local v1, children:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v0

    .line 479
    .local v0, child:Lorg/htmlparser/Node;
    invoke-interface {v0, p1}, Lorg/htmlparser/Node;->accept(Lorg/htmlparser/visitors/NodeVisitor;)V

    goto :goto_0

    .line 482
    .end local v0           #child:Lorg/htmlparser/Node;
    .end local v1           #children:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v2

    if-eq p0, v2, :cond_2

    .line 483
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/htmlparser/Tag;->accept(Lorg/htmlparser/visitors/NodeVisitor;)V

    .line 485
    :cond_2
    return-void
.end method

.method public childAt(I)Lorg/htmlparser/Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 394
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public children()Lorg/htmlparser/util/SimpleNodeIterator;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .line 83
    .local v0, ret:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    return-object v0

    .line 81
    .end local v0           #ret:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    new-instance v1, Lorg/htmlparser/util/NodeList;

    invoke-direct {v1}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .restart local v0       #ret:Lorg/htmlparser/util/SimpleNodeIterator;
    goto :goto_0
.end method

.method public collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V
    .locals 2
    .parameter "list"
    .parameter "filter"

    .prologue
    .line 434
    invoke-super {p0, p1, p2}, Lorg/htmlparser/nodes/TagNode;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    .line 435
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/htmlparser/Node;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    if-eq p0, v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/htmlparser/Tag;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    .line 439
    :cond_1
    return-void
.end method

.method public digupStringNode(Ljava/lang/String;)[Lorg/htmlparser/Text;
    .locals 9
    .parameter "searchText"

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lorg/htmlparser/tags/CompositeTag;->searchFor(Ljava/lang/String;)Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 534
    .local v4, nodeList:Lorg/htmlparser/util/NodeList;
    new-instance v7, Lorg/htmlparser/util/NodeList;

    invoke-direct {v7}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 535
    .local v7, stringNodes:Lorg/htmlparser/util/NodeList;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 536
    invoke-virtual {v4, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v3

    .line 537
    .local v3, node:Lorg/htmlparser/Node;
    instance-of v8, v3, Lorg/htmlparser/Text;

    if-eqz v8, :cond_1

    .line 538
    invoke-virtual {v7, v3}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 535
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    :cond_1
    instance-of v8, v3, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v8, :cond_0

    move-object v0, v3

    .line 541
    check-cast v0, Lorg/htmlparser/tags/CompositeTag;

    .line 542
    .local v0, ctag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v0, p1}, Lorg/htmlparser/tags/CompositeTag;->digupStringNode(Ljava/lang/String;)[Lorg/htmlparser/Text;

    move-result-object v5

    .line 543
    .local v5, nodes:[Lorg/htmlparser/Text;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v8, v5

    if-ge v2, v8, :cond_0

    .line 544
    aget-object v8, v5, v2

    invoke-virtual {v7, v8}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 543
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 548
    .end local v0           #ctag:Lorg/htmlparser/tags/CompositeTag;
    .end local v2           #j:I
    .end local v3           #node:Lorg/htmlparser/Node;
    .end local v5           #nodes:[Lorg/htmlparser/Text;
    :cond_2
    invoke-virtual {v7}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v8

    new-array v6, v8, [Lorg/htmlparser/Text;

    .line 549
    .local v6, stringNode:[Lorg/htmlparser/Text;
    const/4 v1, 0x0

    :goto_2
    array-length v8, v6

    if-ge v1, v8, :cond_3

    .line 550
    invoke-virtual {v7, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v8

    check-cast v8, Lorg/htmlparser/Text;

    aput-object v8, v6, v1

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 552
    :cond_3
    return-object v6
.end method

.method public elements()Lorg/htmlparser/util/SimpleNodeIterator;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public findPositionOf(Ljava/lang/String;)I
    .locals 1
    .parameter "text"

    .prologue
    .line 334
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/tags/CompositeTag;->findPositionOf(Ljava/lang/String;Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public findPositionOf(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 5
    .parameter "text"
    .parameter "locale"

    .prologue
    const/4 v3, -0x1

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, loc:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    .line 357
    .local v2, node:Lorg/htmlparser/Node;
    invoke-interface {v2}, Lorg/htmlparser/Node;->toPlainTextString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 361
    .end local v1           #loc:I
    .end local v2           #node:Lorg/htmlparser/Node;
    :goto_1
    return v1

    .line 359
    .restart local v1       #loc:I
    .restart local v2       #node:Lorg/htmlparser/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 360
    goto :goto_0

    .end local v2           #node:Lorg/htmlparser/Node;
    :cond_1
    move v1, v3

    .line 361
    goto :goto_1
.end method

.method public findPositionOf(Lorg/htmlparser/Node;)I
    .locals 4
    .parameter "searchNode"

    .prologue
    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, loc:I
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    .line 379
    .local v2, node:Lorg/htmlparser/Node;
    if-ne v2, p1, :cond_0

    .line 384
    .end local v1           #loc:I
    .end local v2           #node:Lorg/htmlparser/Node;
    :goto_1
    return v1

    .line 382
    .restart local v1       #loc:I
    .restart local v2       #node:Lorg/htmlparser/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 383
    goto :goto_0

    .line 384
    .end local v2           #node:Lorg/htmlparser/Node;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getChild(I)Lorg/htmlparser/Node;
    .locals 1
    .parameter "index"

    .prologue
    .line 93
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 495
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 497
    .local v0, children:Lorg/htmlparser/util/NodeList;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getChildrenAsNodeArray()[Lorg/htmlparser/Node;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/htmlparser/Node;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->toNodeArray()[Lorg/htmlparser/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildrenHTML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 446
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v1

    .local v1, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/nodes/AbstractNode;

    .line 449
    .local v2, node:Lorg/htmlparser/nodes/AbstractNode;
    invoke-virtual {v2}, Lorg/htmlparser/nodes/AbstractNode;->toHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 451
    .end local v2           #node:Lorg/htmlparser/nodes/AbstractNode;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getEndTag()Lorg/htmlparser/Tag;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    return-object v0
.end method

.method public getStringText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 590
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndPosition()I

    move-result v2

    .line 591
    .local v2, start:I
    iget-object v3, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    invoke-interface {v3}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v0

    .line 592
    .local v0, end:I
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, ret:Ljava/lang/String;
    return-object v1
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 577
    invoke-super {p0, v2}, Lorg/htmlparser/nodes/TagNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, ret:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 580
    return-object v0
.end method

.method protected putChildrenInto(Ljava/lang/StringBuffer;Z)V
    .locals 4
    .parameter "sb"
    .parameter "verbatim"

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    .line 156
    .local v1, node:Lorg/htmlparser/Node;
    if-eqz p2, :cond_1

    invoke-interface {v1}, Lorg/htmlparser/Node;->getStartPosition()I

    move-result v2

    invoke-interface {v1}, Lorg/htmlparser/Node;->getEndPosition()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 157
    :cond_1
    invoke-interface {v1}, Lorg/htmlparser/Node;->toHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 159
    .end local v1           #node:Lorg/htmlparser/Node;
    :cond_2
    return-void
.end method

.method protected putEndTagInto(Ljava/lang/StringBuffer;Z)V
    .locals 2
    .parameter "sb"
    .parameter "verbatim"

    .prologue
    .line 170
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    invoke-interface {v0}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    invoke-interface {v1}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v0

    invoke-interface {v0}, Lorg/htmlparser/Tag;->toHtml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    :cond_1
    return-void
.end method

.method public removeChild(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    .line 117
    :cond_0
    return-void
.end method

.method public searchByName(Ljava/lang/String;)Lorg/htmlparser/Tag;
    .locals 6
    .parameter "name"

    .prologue
    .line 203
    const/4 v4, 0x0

    .line 204
    .local v4, tag:Lorg/htmlparser/Tag;
    const/4 v1, 0x0

    .line 205
    .local v1, found:Z
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v1, :cond_1

    .line 206
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v3

    .line 207
    .local v3, node:Lorg/htmlparser/Node;
    instance-of v5, v3, Lorg/htmlparser/Tag;

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 209
    check-cast v4, Lorg/htmlparser/Tag;

    .line 210
    const-string v5, "NAME"

    invoke-interface {v4, v5}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, nameAttribute:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    const/4 v1, 0x1

    goto :goto_0

    .line 215
    .end local v2           #nameAttribute:Ljava/lang/String;
    .end local v3           #node:Lorg/htmlparser/Node;
    :cond_1
    if-eqz v1, :cond_2

    .line 218
    .end local v4           #tag:Lorg/htmlparser/Tag;
    :goto_1
    return-object v4

    .restart local v4       #tag:Lorg/htmlparser/Tag;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public searchFor(Ljava/lang/Class;Z)Lorg/htmlparser/util/NodeList;
    .locals 3
    .parameter "classType"
    .parameter "recursive"

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 313
    .local v0, children:Lorg/htmlparser/util/NodeList;
    if-nez v0, :cond_0

    .line 314
    new-instance v1, Lorg/htmlparser/util/NodeList;

    invoke-direct {v1}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 319
    .local v1, ret:Lorg/htmlparser/util/NodeList;
    :goto_0
    return-object v1

    .line 316
    .end local v1           #ret:Lorg/htmlparser/util/NodeList;
    :cond_0
    new-instance v2, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v2, p1}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2, p2}, Lorg/htmlparser/util/NodeList;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v1

    .restart local v1       #ret:Lorg/htmlparser/util/NodeList;
    goto :goto_0
.end method

.method public searchFor(Ljava/lang/String;)Lorg/htmlparser/util/NodeList;
    .locals 1
    .parameter "searchString"

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/tags/CompositeTag;->searchFor(Ljava/lang/String;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public searchFor(Ljava/lang/String;Z)Lorg/htmlparser/util/NodeList;
    .locals 1
    .parameter "searchString"
    .parameter "caseSensitive"

    .prologue
    .line 257
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlparser/tags/CompositeTag;->searchFor(Ljava/lang/String;ZLjava/util/Locale;)Lorg/htmlparser/util/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public searchFor(Ljava/lang/String;ZLjava/util/Locale;)Lorg/htmlparser/util/NodeList;
    .locals 6
    .parameter "searchString"
    .parameter "caseSensitive"
    .parameter "locale"

    .prologue
    .line 282
    new-instance v2, Lorg/htmlparser/util/NodeList;

    invoke-direct {v2}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 284
    .local v2, ret:Lorg/htmlparser/util/NodeList;
    if-nez p2, :cond_0

    .line 285
    invoke-virtual {p1, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 286
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    .line 289
    .local v1, node:Lorg/htmlparser/Node;
    invoke-interface {v1}, Lorg/htmlparser/Node;->toPlainTextString()Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, text:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 291
    invoke-virtual {v3, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 292
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 293
    invoke-virtual {v2, v1}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    goto :goto_0

    .line 296
    .end local v1           #node:Lorg/htmlparser/Node;
    .end local v3           #text:Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public setEndTag(Lorg/htmlparser/Tag;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 522
    iput-object p1, p0, Lorg/htmlparser/tags/CompositeTag;->mEndTag:Lorg/htmlparser/Tag;

    .line 523
    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 2
    .parameter "verbatim"

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    .local v0, ret:Ljava/lang/StringBuffer;
    invoke-super {p0, p1}, Lorg/htmlparser/nodes/TagNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->isEmptyXmlTag()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/CompositeTag;->putChildrenInto(Ljava/lang/StringBuffer;Z)V

    .line 190
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/CompositeTag;->putEndTagInto(Ljava/lang/StringBuffer;Z)V

    .line 193
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toPlainTextString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 137
    .local v1, stringRepresentation:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/htmlparser/Node;->toPlainTextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 564
    .local v0, ret:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/tags/CompositeTag;->toString(ILjava/lang/StringBuffer;)V

    .line 566
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(ILjava/lang/StringBuffer;)V
    .locals 4
    .parameter "level"
    .parameter "buffer"

    .prologue
    .line 606
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 607
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    invoke-super {p0}, Lorg/htmlparser/nodes/TagNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_1
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 612
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    .line 613
    .local v2, node:Lorg/htmlparser/Node;
    instance-of v3, v2, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v3, :cond_1

    .line 614
    check-cast v2, Lorg/htmlparser/tags/CompositeTag;

    .end local v2           #node:Lorg/htmlparser/Node;
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3, p2}, Lorg/htmlparser/tags/CompositeTag;->toString(ILjava/lang/StringBuffer;)V

    goto :goto_1

    .line 617
    .restart local v2       #node:Lorg/htmlparser/Node;
    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-gt v1, p1, :cond_2

    .line 618
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 619
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 620
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 624
    .end local v2           #node:Lorg/htmlparser/Node;
    :cond_3
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v3

    if-eq p0, v3, :cond_5

    .line 628
    const/4 v1, 0x0

    :goto_3
    if-gt v1, p1, :cond_4

    .line 629
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 630
    :cond_4
    invoke-virtual {p0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    :cond_5
    return-void
.end method
