.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "OrFilterWrapper.java"


# instance fields
.field protected mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

.field protected mFilter:Lorg/htmlparser/filters/OrFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 58
    new-instance v0, Lorg/htmlparser/filters/OrFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/OrFilter;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mFilter:Lorg/htmlparser/filters/OrFilter;

    .line 61
    new-instance v0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    const-string v1, "Predicates"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;-><init>(Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 62
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 63
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 219
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mFilter:Lorg/htmlparser/filters/OrFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/OrFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Or"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const-string v0, "images/OrFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 5

    .prologue
    .line 97
    new-instance v2, Lorg/htmlparser/filters/OrFilter;

    invoke-direct {v2}, Lorg/htmlparser/filters/OrFilter;-><init>()V

    .line 99
    .local v2, ret:Lorg/htmlparser/filters/OrFilter;
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mFilter:Lorg/htmlparser/filters/OrFilter;

    invoke-virtual {v4}, Lorg/htmlparser/filters/OrFilter;->getPredicates()[Lorg/htmlparser/NodeFilter;

    move-result-object v1

    .line 100
    .local v1, predicates:[Lorg/htmlparser/NodeFilter;
    array-length v4, v1

    new-array v3, v4, [Lorg/htmlparser/NodeFilter;

    .line 101
    .local v3, temp:[Lorg/htmlparser/NodeFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 102
    aget-object v4, v1, v0

    check-cast v4, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v4}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getNodeFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v4

    aput-object v4, v3, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v2, v3}, Lorg/htmlparser/filters/OrFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 105
    return-object v2
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mFilter:Lorg/htmlparser/filters/OrFilter;

    invoke-virtual {v0}, Lorg/htmlparser/filters/OrFilter;->getPredicates()[Lorg/htmlparser/NodeFilter;

    move-result-object v0

    return-object v0
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 0
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 118
    check-cast p1, Lorg/htmlparser/filters/OrFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mFilter:Lorg/htmlparser/filters/OrFilter;

    .line 119
    return-void
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "filters"

    .prologue
    .line 136
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mFilter:Lorg/htmlparser/filters/OrFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/OrFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 137
    return-void
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 10
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 156
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->mFilter:Lorg/htmlparser/filters/OrFilter;

    invoke-virtual {v5}, Lorg/htmlparser/filters/OrFilter;->getPredicates()[Lorg/htmlparser/NodeFilter;

    move-result-object v3

    .line 157
    .local v3, predicates:[Lorg/htmlparser/NodeFilter;
    const/4 v0, 0x0

    .line 158
    .local v0, array:Ljava/lang/String;
    array-length v5, v3

    if-eqz v5, :cond_1

    .line 160
    array-length v5, v3

    new-array v2, v5, [Ljava/lang/String;

    .line 161
    .local v2, names:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 163
    aget-object v5, v3, v1

    check-cast v5, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v5, p1, p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "array"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x2

    aget v7, p2, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, p2, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    aget v5, p2, v9

    invoke-static {p1, v5}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 167
    const-string v5, "NodeFilter[] "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    const-string v5, " = new NodeFilter["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    array-length v5, v3

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 171
    const-string v5, "];"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 173
    const/4 v1, 0x0

    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 175
    aget v5, p2, v9

    invoke-static {p1, v5}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 179
    const-string v5, "] = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    .end local v1           #i:I
    .end local v2           #names:[Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "filter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/4 v6, 0x1

    aget v7, p2, v6

    add-int/lit8 v8, v7, 0x1

    aput v8, p2, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, ret:Ljava/lang/String;
    aget v5, p2, v9

    invoke-static {p1, v5}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 187
    const-string v5, "OrFilter "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v5, " = new OrFilter ();"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 191
    array-length v5, v3

    if-eqz v5, :cond_2

    .line 193
    aget v5, p2, v9

    invoke-static {p1, v5}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 194
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v5, ".setPredicates ("

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v5, ");"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/OrFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 201
    :cond_2
    return-object v4
.end method
