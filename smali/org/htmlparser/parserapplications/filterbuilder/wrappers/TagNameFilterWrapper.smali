.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "TagNameFilterWrapper.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field protected mFilter:Lorg/htmlparser/filters/TagNameFilter;

.field protected mName:Ljavax/swing/JComboBox;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 72
    new-instance v0, Lorg/htmlparser/filters/TagNameFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/TagNameFilter;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    .line 75
    new-instance v0, Ljavax/swing/JComboBox;

    invoke-direct {v0}, Ljavax/swing/JComboBox;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    .line 76
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 77
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 78
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/TagNameFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    invoke-virtual {v0, p0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 80
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 231
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/TagNameFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 247
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 248
    .local v1, source:Ljava/lang/Object;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    if-ne v1, v2, :cond_0

    .line 250
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    invoke-virtual {v2}, Ljavax/swing/JComboBox;->getSelectedObjects()[Ljava/lang/Object;

    move-result-object v0

    .line 251
    .local v0, selection:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-eqz v2, :cond_0

    .line 252
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lorg/htmlparser/filters/TagNameFilter;->setName(Ljava/lang/String;)V

    .line 254
    .end local v0           #selection:[Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method protected addName(Ljava/util/Set;Lorg/htmlparser/Node;)V
    .locals 3
    .parameter "set"
    .parameter "node"

    .prologue
    .line 204
    instance-of v2, p2, Lorg/htmlparser/Tag;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 206
    check-cast v2, Lorg/htmlparser/Tag;

    invoke-interface {v2}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    instance-of v2, p2, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v2, :cond_0

    .line 209
    check-cast p2, Lorg/htmlparser/tags/CompositeTag;

    .end local p2
    invoke-virtual {p2}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 210
    .local v0, children:Lorg/htmlparser/util/NodeList;
    if-eqz v0, :cond_0

    .line 211
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->addName(Ljava/util/Set;Lorg/htmlparser/Node;)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 215
    .end local v0           #children:Lorg/htmlparser/util/NodeList;
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "Tag named"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    const-string v0, "images/TagNameFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lorg/htmlparser/filters/TagNameFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/TagNameFilter;-><init>()V

    .line 113
    .local v0, ret:Lorg/htmlparser/filters/TagNameFilter;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/TagNameFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/TagNameFilter;->setName(Ljava/lang/String;)V

    .line 115
    return-object v0
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 4
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 130
    check-cast p1, Lorg/htmlparser/filters/TagNameFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    .line 131
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v1, set:Ljava/util/Set;
    invoke-virtual {p2}, Lorg/htmlparser/Parser;->reset()V

    .line 135
    :try_start_0
    invoke-virtual {p2}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v0

    .local v0, iterator:Lorg/htmlparser/util/NodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->addName(Ljava/util/Set;Lorg/htmlparser/Node;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v0           #iterator:Lorg/htmlparser/util/NodeIterator;
    :catch_0
    move-exception v2

    .line 142
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    goto :goto_1

    .line 144
    :cond_1
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mName:Ljavax/swing/JComboBox;

    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    invoke-virtual {v3}, Lorg/htmlparser/filters/TagNameFilter;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filters"

    .prologue
    .line 163
    return-void
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 6
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 179
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "filter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x1

    aget v3, p2, v2

    add-int/lit8 v4, v3, 0x1

    aput v4, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, ret:Ljava/lang/String;
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 181
    const-string v1, "TagNameFilter "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    const-string v1, " = new TagNameFilter ();"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 185
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v1, ".setName (\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->mFilter:Lorg/htmlparser/filters/TagNameFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/TagNameFilter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v1, "\");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/TagNameFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 192
    return-object v0
.end method
