.class public Lorg/htmlparser/filters/HasChildFilter;
.super Ljava/lang/Object;
.source "HasChildFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mChildFilter:Lorg/htmlparser/NodeFilter;

.field protected mRecursive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/htmlparser/filters/HasChildFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/filters/HasChildFilter;-><init>(Lorg/htmlparser/NodeFilter;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;Z)V
    .locals 0
    .parameter "filter"
    .parameter "recursive"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/HasChildFilter;->setChildFilter(Lorg/htmlparser/NodeFilter;)V

    .line 88
    invoke-virtual {p0, p2}, Lorg/htmlparser/filters/HasChildFilter;->setRecursive(Z)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 6
    .parameter "node"

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, ret:Z
    instance-of v4, p1, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v4, :cond_3

    move-object v3, p1

    .line 142
    check-cast v3, Lorg/htmlparser/tags/CompositeTag;

    .line 143
    .local v3, tag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v3}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 144
    .local v0, children:Lorg/htmlparser/util/NodeList;
    if-eqz v0, :cond_3

    .line 146
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 147
    invoke-virtual {p0}, Lorg/htmlparser/filters/HasChildFilter;->getChildFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 148
    const/4 v2, 0x1

    .line 146
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {p0}, Lorg/htmlparser/filters/HasChildFilter;->getRecursive()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    const/4 v1, 0x0

    :goto_1
    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 153
    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/htmlparser/filters/HasChildFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    const/4 v2, 0x1

    .line 152
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v0           #children:Lorg/htmlparser/util/NodeList;
    .end local v1           #i:I
    .end local v3           #tag:Lorg/htmlparser/tags/CompositeTag;
    :cond_3
    return v2
.end method

.method public getChildFilter()Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/htmlparser/filters/HasChildFilter;->mChildFilter:Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/htmlparser/filters/HasChildFilter;->mRecursive:Z

    return v0
.end method

.method public setChildFilter(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/htmlparser/filters/HasChildFilter;->mChildFilter:Lorg/htmlparser/NodeFilter;

    .line 106
    return-void
.end method

.method public setRecursive(Z)V
    .locals 0
    .parameter "recursive"

    .prologue
    .line 124
    iput-boolean p1, p0, Lorg/htmlparser/filters/HasChildFilter;->mRecursive:Z

    .line 125
    return-void
.end method
