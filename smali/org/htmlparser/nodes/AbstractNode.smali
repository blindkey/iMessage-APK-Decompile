.class public abstract Lorg/htmlparser/nodes/AbstractNode;
.super Ljava/lang/Object;
.source "AbstractNode.java"

# interfaces
.implements Lorg/htmlparser/Node;
.implements Ljava/io/Serializable;


# instance fields
.field protected children:Lorg/htmlparser/util/NodeList;

.field protected mPage:Lorg/htmlparser/lexer/Page;

.field protected nodeBegin:I

.field protected nodeEnd:I

.field protected parent:Lorg/htmlparser/Node;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;II)V
    .locals 1
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    .line 81
    iput p2, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 82
    iput p3, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 83
    iput-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/Node;

    .line 84
    iput-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    .line 85
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/htmlparser/visitors/NodeVisitor;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "list"
    .parameter "filter"

    .prologue
    .line 192
    invoke-interface {p2, p0}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p1, p0}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 194
    :cond_0
    return-void
.end method

.method public doSemanticAction()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 413
    return-void
.end method

.method public getChildren()Lorg/htmlparser/util/NodeList;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    return-object v0
.end method

.method public getEndPosition()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    return v0
.end method

.method public getFirstChild()Lorg/htmlparser/Node;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    if-nez v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-object v0

    .line 304
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastChild()Lorg/htmlparser/Node;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-object v2, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    if-nez v2, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :cond_1
    iget-object v2, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    .line 319
    .local v0, numChildren:I
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v1

    goto :goto_0
.end method

.method public getNextSibling()Lorg/htmlparser/Node;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 361
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getParent()Lorg/htmlparser/Node;

    move-result-object v2

    .line 362
    .local v2, parentNode:Lorg/htmlparser/Node;
    if-nez v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object v5

    .line 364
    :cond_1
    invoke-interface {v2}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 365
    .local v4, siblings:Lorg/htmlparser/util/NodeList;
    if-eqz v4, :cond_0

    .line 367
    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v1

    .line 368
    .local v1, numSiblings:I
    const/4 v6, 0x2

    if-lt v1, v6, :cond_0

    .line 370
    const/4 v3, -0x1

    .line 371
    .local v3, positionInParent:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 373
    invoke-virtual {v4, v0}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v6

    if-ne v6, p0, :cond_3

    .line 375
    move v3, v0

    .line 379
    :cond_2
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 381
    add-int/lit8 v6, v1, -0x1

    if-eq v3, v6, :cond_0

    .line 383
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    goto :goto_0

    .line 371
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getPage()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public getParent()Lorg/htmlparser/Node;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/Node;

    return-object v0
.end method

.method public getPreviousSibling()Lorg/htmlparser/Node;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 331
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getParent()Lorg/htmlparser/Node;

    move-result-object v2

    .line 332
    .local v2, parentNode:Lorg/htmlparser/Node;
    if-nez v2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-object v5

    .line 334
    :cond_1
    invoke-interface {v2}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 335
    .local v4, siblings:Lorg/htmlparser/util/NodeList;
    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v1

    .line 338
    .local v1, numSiblings:I
    const/4 v6, 0x2

    if-lt v1, v6, :cond_0

    .line 340
    const/4 v3, -0x1

    .line 341
    .local v3, positionInParent:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 343
    invoke-virtual {v4, v0}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v6

    if-ne v6, p0, :cond_3

    .line 345
    move v3, v0

    .line 349
    :cond_2
    const/4 v6, 0x1

    if-lt v3, v6, :cond_0

    .line 351
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    goto :goto_0

    .line 341
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getStartPosition()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method public setChildren(Lorg/htmlparser/util/NodeList;)V
    .locals 0
    .parameter "children"

    .prologue
    .line 292
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->children:Lorg/htmlparser/util/NodeList;

    .line 293
    return-void
.end method

.method public setEndPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 247
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 248
    return-void
.end method

.method public setPage(Lorg/htmlparser/lexer/Page;)V
    .locals 0
    .parameter "page"

    .prologue
    .line 211
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    .line 212
    return-void
.end method

.method public setParent(Lorg/htmlparser/Node;)V
    .locals 0
    .parameter "node"

    .prologue
    .line 274
    iput-object p1, p0, Lorg/htmlparser/nodes/AbstractNode;->parent:Lorg/htmlparser/Node;

    .line 275
    return-void
.end method

.method public setStartPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 229
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 230
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 401
    return-void
.end method

.method public toHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/nodes/AbstractNode;->toHtml(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toHtml(Z)Ljava/lang/String;
.end method

.method public abstract toPlainTextString()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
