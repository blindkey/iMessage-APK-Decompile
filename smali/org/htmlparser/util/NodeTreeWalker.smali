.class public Lorg/htmlparser/util/NodeTreeWalker;
.super Ljava/lang/Object;
.source "NodeTreeWalker.java"

# interfaces
.implements Lorg/htmlparser/util/NodeIterator;


# instance fields
.field protected mCurrentNode:Lorg/htmlparser/Node;

.field protected mDepthFirst:Z

.field protected mMaxDepth:I

.field protected mNextNode:Lorg/htmlparser/Node;

.field protected mRootNode:Lorg/htmlparser/Node;


# direct methods
.method public constructor <init>(Lorg/htmlparser/Node;)V
    .locals 2
    .parameter "rootNode"

    .prologue
    .line 85
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/htmlparser/util/NodeTreeWalker;-><init>(Lorg/htmlparser/Node;ZI)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/Node;Z)V
    .locals 1
    .parameter "rootNode"
    .parameter "depthFirst"

    .prologue
    .line 96
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/htmlparser/util/NodeTreeWalker;-><init>(Lorg/htmlparser/Node;ZI)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/Node;ZI)V
    .locals 2
    .parameter "rootNode"
    .parameter "depthFirst"
    .parameter "maxDepth"

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Paramater maxDepth must be > 0 or equal to -1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-virtual {p0, p1}, Lorg/htmlparser/util/NodeTreeWalker;->initRootNode(Lorg/htmlparser/Node;)V

    .line 113
    iput-boolean p2, p0, Lorg/htmlparser/util/NodeTreeWalker;->mDepthFirst:Z

    .line 114
    iput p3, p0, Lorg/htmlparser/util/NodeTreeWalker;->mMaxDepth:I

    .line 115
    return-void
.end method


# virtual methods
.method public getCurrentNode()Lorg/htmlparser/Node;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    return-object v0
.end method

.method public getCurrentNodeDepth()I
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x0

    .line 241
    .local v0, depth:I
    iget-object v2, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    if-eqz v2, :cond_0

    .line 243
    iget-object v1, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    .line 244
    .local v1, traverseNode:Lorg/htmlparser/Node;
    :goto_0
    iget-object v2, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    if-eq v1, v2, :cond_0

    .line 246
    add-int/lit8 v0, v0, 0x1

    .line 247
    invoke-interface {v1}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v1

    .line 248
    goto :goto_0

    .line 250
    .end local v1           #traverseNode:Lorg/htmlparser/Node;
    :cond_0
    return v0
.end method

.method public getMaxDepth()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mMaxDepth:I

    return v0
.end method

.method protected getNextNodeBreadthFirst()Lorg/htmlparser/Node;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 323
    iget-object v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    invoke-interface {v6}, Lorg/htmlparser/Node;->getNextSibling()Lorg/htmlparser/Node;

    move-result-object v3

    .line 324
    .local v3, traverseNode:Lorg/htmlparser/Node;
    if-eqz v3, :cond_1

    move-object v5, v3

    .line 407
    :cond_0
    :goto_0
    return-object v5

    .line 327
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeTreeWalker;->getCurrentNodeDepth()I

    move-result v1

    .line 334
    .local v1, depth:I
    iget-object v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    invoke-interface {v6}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v3

    .line 335
    add-int/lit8 v0, v1, -0x1

    .line 337
    .local v0, currentDepth:I
    :cond_2
    if-lez v0, :cond_4

    .line 339
    const/4 v2, 0x0

    .line 341
    .local v2, tempNextSibling:Lorg/htmlparser/Node;
    :goto_1
    invoke-interface {v3}, Lorg/htmlparser/Node;->getNextSibling()Lorg/htmlparser/Node;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    if-eq v3, v6, :cond_3

    .line 343
    invoke-interface {v3}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v3

    .line 344
    add-int/lit8 v0, v0, -0x1

    .line 345
    goto :goto_1

    .line 348
    :cond_3
    iget-object v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    if-ne v3, v6, :cond_7

    .line 372
    .end local v2           #tempNextSibling:Lorg/htmlparser/Node;
    :cond_4
    iget v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mMaxDepth:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 374
    iget v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mMaxDepth:I

    if-ge v1, v6, :cond_0

    .line 378
    :cond_5
    iget-object v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    invoke-interface {v6}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v3

    .line 379
    add-int/lit8 v1, v1, 0x1

    .line 380
    const/4 v0, 0x1

    .line 381
    :cond_6
    if-lez v0, :cond_0

    .line 384
    invoke-interface {v3}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 385
    .local v4, traverseNodeList:Lorg/htmlparser/util/NodeList;
    :goto_2
    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v6

    if-eqz v6, :cond_a

    .line 387
    invoke-interface {v3}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v3

    .line 388
    add-int/lit8 v0, v0, 0x1

    .line 389
    if-ne v0, v1, :cond_9

    move-object v5, v3

    .line 390
    goto :goto_0

    .line 351
    .end local v4           #traverseNodeList:Lorg/htmlparser/util/NodeList;
    .restart local v2       #tempNextSibling:Lorg/htmlparser/Node;
    :cond_7
    move-object v3, v2

    .line 353
    if-eqz v3, :cond_2

    .line 356
    invoke-interface {v3}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 357
    .restart local v4       #traverseNodeList:Lorg/htmlparser/util/NodeList;
    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    invoke-interface {v3}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v3

    .line 360
    add-int/lit8 v0, v0, 0x1

    .line 361
    if-ne v0, v1, :cond_8

    move-object v5, v3

    .line 362
    goto :goto_0

    .line 364
    :cond_8
    invoke-interface {v3}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 365
    goto :goto_3

    .line 392
    .end local v2           #tempNextSibling:Lorg/htmlparser/Node;
    :cond_9
    invoke-interface {v3}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .line 393
    goto :goto_2

    .line 396
    :cond_a
    :goto_4
    invoke-interface {v3}, Lorg/htmlparser/Node;->getNextSibling()Lorg/htmlparser/Node;

    move-result-object v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    if-eq v3, v6, :cond_b

    .line 398
    invoke-interface {v3}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v3

    .line 399
    add-int/lit8 v0, v0, -0x1

    .line 400
    goto :goto_4

    .line 401
    :cond_b
    invoke-interface {v3}, Lorg/htmlparser/Node;->getNextSibling()Lorg/htmlparser/Node;

    move-result-object v3

    .line 402
    if-nez v3, :cond_6

    goto/16 :goto_0
.end method

.method protected getNextNodeDepthFirst()Lorg/htmlparser/Node;
    .locals 5

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeTreeWalker;->getCurrentNodeDepth()I

    move-result v0

    .line 297
    .local v0, currentDepth:I
    const/4 v2, 0x0

    .line 298
    .local v2, traverseNode:Lorg/htmlparser/Node;
    iget v3, p0, Lorg/htmlparser/util/NodeTreeWalker;->mMaxDepth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/htmlparser/util/NodeTreeWalker;->mMaxDepth:I

    if-ge v0, v3, :cond_2

    .line 300
    :cond_0
    iget-object v3, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    invoke-interface {v3}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v2

    .line 301
    if-eqz v2, :cond_2

    move-object v1, v2

    .line 311
    :cond_1
    return-object v1

    .line 305
    :cond_2
    iget-object v2, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    .line 307
    const/4 v1, 0x0

    .line 308
    .local v1, tempNextSibling:Lorg/htmlparser/Node;
    :goto_0
    iget-object v3, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    if-eq v2, v3, :cond_1

    invoke-interface {v2}, Lorg/htmlparser/Node;->getNextSibling()Lorg/htmlparser/Node;

    move-result-object v1

    if-nez v1, :cond_1

    .line 309
    invoke-interface {v2}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public getRootNode()Lorg/htmlparser/Node;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    return-object v0
.end method

.method public hasMoreNodes()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    if-nez v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    invoke-interface {v0}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    .line 271
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 265
    :cond_1
    iget-boolean v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mDepthFirst:Z

    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeTreeWalker;->getNextNodeDepthFirst()Lorg/htmlparser/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeTreeWalker;->getNextNodeBreadthFirst()Lorg/htmlparser/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    goto :goto_0

    .line 271
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected initRootNode(Lorg/htmlparser/Node;)V
    .locals 2
    .parameter "rootNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Root Node cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    .line 285
    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    .line 286
    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    .line 287
    return-void
.end method

.method public isDepthFirst()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mDepthFirst:Z

    return v0
.end method

.method public nextNode()Lorg/htmlparser/Node;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    .line 229
    :goto_0
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    return-object v0

    .line 219
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mRootNode:Lorg/htmlparser/Node;

    invoke-interface {v0}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    goto :goto_0

    .line 223
    :cond_1
    iget-boolean v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mDepthFirst:Z

    if-eqz v0, :cond_2

    .line 224
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeTreeWalker;->getNextNodeDepthFirst()Lorg/htmlparser/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p0}, Lorg/htmlparser/util/NodeTreeWalker;->getNextNodeBreadthFirst()Lorg/htmlparser/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    goto :goto_0
.end method

.method public removeMaxDepthRestriction()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mMaxDepth:I

    .line 152
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    .line 202
    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    .line 203
    return-void
.end method

.method public setCurrentNodeAsRootNode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Current Node is null, cannot set as root Node."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mCurrentNode:Lorg/htmlparser/Node;

    invoke-virtual {p0, v0}, Lorg/htmlparser/util/NodeTreeWalker;->initRootNode(Lorg/htmlparser/Node;)V

    .line 182
    return-void
.end method

.method public setDepthFirst(Z)V
    .locals 1
    .parameter "depthFirst"

    .prologue
    .line 132
    iget-boolean v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mDepthFirst:Z

    if-eq v0, p1, :cond_0

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/util/NodeTreeWalker;->mNextNode:Lorg/htmlparser/Node;

    .line 134
    :cond_0
    iput-boolean p1, p0, Lorg/htmlparser/util/NodeTreeWalker;->mDepthFirst:Z

    .line 135
    return-void
.end method

.method public setRootNode(Lorg/htmlparser/Node;)V
    .locals 0
    .parameter "rootNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/htmlparser/util/NodeTreeWalker;->initRootNode(Lorg/htmlparser/Node;)V

    .line 193
    return-void
.end method
