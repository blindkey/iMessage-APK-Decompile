.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "NotFilterWrapper.java"


# instance fields
.field protected mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

.field protected mFilter:Lorg/htmlparser/filters/NotFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 58
    new-instance v0, Lorg/htmlparser/filters/NotFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/NotFilter;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    .line 61
    new-instance v0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    const-string v1, "Predicate"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;-><init>(Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 62
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 201
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/NotFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Not"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "images/NotFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 3

    .prologue
    .line 96
    new-instance v1, Lorg/htmlparser/filters/NotFilter;

    invoke-direct {v1}, Lorg/htmlparser/filters/NotFilter;-><init>()V

    .line 98
    .local v1, ret:Lorg/htmlparser/filters/NotFilter;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/NotFilter;->getPredicate()Lorg/htmlparser/NodeFilter;

    move-result-object v0

    .line 99
    .local v0, predicate:Lorg/htmlparser/NodeFilter;
    if-eqz v0, :cond_0

    .line 100
    check-cast v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .end local v0           #predicate:Lorg/htmlparser/NodeFilter;
    invoke-virtual {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getNodeFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/filters/NotFilter;->setPredicate(Lorg/htmlparser/NodeFilter;)V

    .line 102
    :cond_0
    return-object v1
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/NotFilter;->getPredicate()Lorg/htmlparser/NodeFilter;

    move-result-object v0

    .line 128
    .local v0, predicate:Lorg/htmlparser/NodeFilter;
    if-eqz v0, :cond_0

    .line 129
    const/4 v2, 0x1

    new-array v1, v2, [Lorg/htmlparser/NodeFilter;

    aput-object v0, v1, v3

    .line 133
    .local v1, ret:[Lorg/htmlparser/NodeFilter;
    :goto_0
    return-object v1

    .line 131
    .end local v1           #ret:[Lorg/htmlparser/NodeFilter;
    :cond_0
    new-array v1, v3, [Lorg/htmlparser/NodeFilter;

    .restart local v1       #ret:[Lorg/htmlparser/NodeFilter;
    goto :goto_0
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 0
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 115
    check-cast p1, Lorg/htmlparser/filters/NotFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    .line 116
    return-void
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 2
    .parameter "filters"

    .prologue
    .line 142
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/NotFilter;->setPredicate(Lorg/htmlparser/NodeFilter;)V

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/NotFilter;->setPredicate(Lorg/htmlparser/NodeFilter;)V

    goto :goto_0
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 7
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 163
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/NotFilter;->getPredicate()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 164
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->mFilter:Lorg/htmlparser/filters/NotFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/NotFilter;->getPredicate()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v2, p1, p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, name:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "filter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v3, 0x1

    aget v4, p2, v3

    add-int/lit8 v5, v4, 0x1

    aput v5, p2, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, ret:Ljava/lang/String;
    aget v2, p2, v6

    invoke-static {p1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 169
    const-string v2, "NotFilter "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    const-string v2, " = new NotFilter ();"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 173
    if-eqz v0, :cond_0

    .line 175
    aget v2, p2, v6

    invoke-static {p1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v2, ".setPredicate ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const-string v2, ");"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NotFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 183
    :cond_0
    return-object v1

    .line 166
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #ret:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0
.end method
