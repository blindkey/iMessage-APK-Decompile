.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "HasParentFilterWrapper.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field protected mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

.field protected mFilter:Lorg/htmlparser/filters/HasParentFilter;

.field protected mRecursive:Ljavax/swing/JCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 70
    new-instance v0, Lorg/htmlparser/filters/HasParentFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/HasParentFilter;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    .line 73
    new-instance v0, Ljavax/swing/JCheckBox;

    const-string v1, "Recursive"

    invoke-direct {v0, v1}, Ljavax/swing/JCheckBox;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mRecursive:Ljavax/swing/JCheckBox;

    .line 74
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mRecursive:Ljavax/swing/JCheckBox;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 75
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mRecursive:Ljavax/swing/JCheckBox;

    invoke-virtual {v0, p0}, Ljavax/swing/JCheckBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 76
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mRecursive:Ljavax/swing/JCheckBox;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasParentFilter;->getRecursive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 79
    new-instance v0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    const-string v1, "Parent Filter"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;-><init>(Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 80
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mContainer:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 81
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 227
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/HasParentFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 243
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 244
    .local v1, source:Ljava/lang/Object;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mRecursive:Ljavax/swing/JCheckBox;

    if-ne v1, v2, :cond_0

    .line 246
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mRecursive:Ljavax/swing/JCheckBox;

    invoke-virtual {v2}, Ljavax/swing/JCheckBox;->isSelected()Z

    move-result v0

    .line 247
    .local v0, recursive:Z
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v2, v0}, Lorg/htmlparser/filters/HasParentFilter;->setRecursive(Z)V

    .line 249
    .end local v0           #recursive:Z
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "Has Parent"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "images/HasParentFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 3

    .prologue
    .line 114
    new-instance v1, Lorg/htmlparser/filters/HasParentFilter;

    invoke-direct {v1}, Lorg/htmlparser/filters/HasParentFilter;-><init>()V

    .line 116
    .local v1, ret:Lorg/htmlparser/filters/HasParentFilter;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/HasParentFilter;->getRecursive()Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/filters/HasParentFilter;->setRecursive(Z)V

    .line 117
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/HasParentFilter;->getParentFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v0

    .line 118
    .local v0, filter:Lorg/htmlparser/NodeFilter;
    if-eqz v0, :cond_0

    .line 119
    check-cast v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .end local v0           #filter:Lorg/htmlparser/NodeFilter;
    invoke-virtual {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getNodeFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/filters/HasParentFilter;->setParentFilter(Lorg/htmlparser/NodeFilter;)V

    .line 121
    :cond_0
    return-object v1
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 147
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/HasParentFilter;->getParentFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v0

    .line 148
    .local v0, filter:Lorg/htmlparser/NodeFilter;
    if-eqz v0, :cond_0

    .line 149
    const/4 v2, 0x1

    new-array v1, v2, [Lorg/htmlparser/NodeFilter;

    aput-object v0, v1, v3

    .line 153
    .local v1, ret:[Lorg/htmlparser/NodeFilter;
    :goto_0
    return-object v1

    .line 151
    .end local v1           #ret:[Lorg/htmlparser/NodeFilter;
    :cond_0
    new-array v1, v3, [Lorg/htmlparser/NodeFilter;

    .restart local v1       #ret:[Lorg/htmlparser/NodeFilter;
    goto :goto_0
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 2
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 134
    check-cast p1, Lorg/htmlparser/filters/HasParentFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    .line 135
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mRecursive:Ljavax/swing/JCheckBox;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasParentFilter;->getRecursive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 136
    return-void
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 2
    .parameter "filters"

    .prologue
    .line 162
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/HasParentFilter;->setParentFilter(Lorg/htmlparser/NodeFilter;)V

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/HasParentFilter;->setParentFilter(Lorg/htmlparser/NodeFilter;)V

    goto :goto_0
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 7
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 183
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/HasParentFilter;->getParentFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/HasParentFilter;->getParentFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v2, p1, p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;

    move-result-object v0

    .line 187
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

    .line 188
    .local v1, ret:Ljava/lang/String;
    aget v2, p2, v6

    invoke-static {p1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 189
    const-string v2, "HasParentFilter "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v2, " = new HasParentFilter ();"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 193
    aget v2, p2, v6

    invoke-static {p1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 194
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v2, ".setRecursive ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasParentFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/HasParentFilter;->getRecursive()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v2, ");"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 199
    if-eqz v0, :cond_0

    .line 201
    aget v2, p2, v6

    invoke-static {p1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    const-string v2, ".setParentFilter ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v2, ");"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasParentFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 209
    :cond_0
    return-object v1

    .line 186
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #ret:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #name:Ljava/lang/String;
    goto :goto_0

    .line 196
    .restart local v1       #ret:Ljava/lang/String;
    :cond_2
    const-string v2, "false"

    goto :goto_1
.end method
