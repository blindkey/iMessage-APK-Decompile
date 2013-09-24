.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "NodeClassFilterWrapper.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field protected mClass:Ljavax/swing/JComboBox;

.field protected mFilter:Lorg/htmlparser/filters/NodeClassFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 75
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/NodeClassFilter;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mFilter:Lorg/htmlparser/filters/NodeClassFilter;

    .line 78
    new-instance v0, Ljavax/swing/JComboBox;

    invoke-direct {v0}, Ljavax/swing/JComboBox;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    .line 79
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 81
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    invoke-virtual {v0, p0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 82
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 218
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mFilter:Lorg/htmlparser/filters/NodeClassFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/NodeClassFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 233
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 234
    .local v1, source:Ljava/lang/Object;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    if-ne v1, v2, :cond_0

    .line 237
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mFilter:Lorg/htmlparser/filters/NodeClassFilter;

    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    invoke-virtual {v2}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/htmlparser/filters/NodeClassFilter;->setMatchClass(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 241
    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "Nodes of class"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "images/NodeClassFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/NodeClassFilter;-><init>()V

    .line 115
    .local v0, ret:Lorg/htmlparser/filters/NodeClassFilter;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mFilter:Lorg/htmlparser/filters/NodeClassFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/NodeClassFilter;->getMatchClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/NodeClassFilter;->setMatchClass(Ljava/lang/Class;)V

    .line 117
    return-object v0
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 8
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 136
    check-cast p1, Lorg/htmlparser/filters/NodeClassFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mFilter:Lorg/htmlparser/filters/NodeClassFilter;

    .line 138
    invoke-virtual {p2}, Lorg/htmlparser/Parser;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v0

    .line 139
    .local v0, factory:Lorg/htmlparser/NodeFactory;
    instance-of v6, v0, Lorg/htmlparser/PrototypicalNodeFactory;

    if-eqz v6, :cond_0

    move-object v4, v0

    .line 141
    check-cast v4, Lorg/htmlparser/PrototypicalNodeFactory;

    .line 143
    .local v4, proto:Lorg/htmlparser/PrototypicalNodeFactory;
    invoke-virtual {v4}, Lorg/htmlparser/PrototypicalNodeFactory;->getTagNames()Ljava/util/Set;

    move-result-object v3

    .line 144
    .local v3, names:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 147
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v4, v2}, Lorg/htmlparser/PrototypicalNodeFactory;->get(Ljava/lang/String;)Lorg/htmlparser/Tag;

    move-result-object v5

    .line 148
    .local v5, tag:Lorg/htmlparser/Tag;
    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    .end local v1           #iterator:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #names:Ljava/util/Set;
    .end local v4           #proto:Lorg/htmlparser/PrototypicalNodeFactory;
    .end local v5           #tag:Lorg/htmlparser/Tag;
    :cond_0
    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mClass:Ljavax/swing/JComboBox;

    iget-object v7, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mFilter:Lorg/htmlparser/filters/NodeClassFilter;

    invoke-virtual {v7}, Lorg/htmlparser/filters/NodeClassFilter;->getMatchClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filters"

    .prologue
    .line 170
    return-void
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 6
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 186
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

    .line 187
    .local v0, ret:Ljava/lang/String;
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 188
    const-string v1, "NodeClassFilter "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v1, " = new NodeClassFilter ();"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 192
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 193
    const-string v1, "try { "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v1, ".setMatchClass (Class.forName (\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->mFilter:Lorg/htmlparser/filters/NodeClassFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/NodeClassFilter;->getMatchClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    const-string v1, "\")); } catch (ClassNotFoundException cnfe) { cnfe.printStackTrace (); }"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/NodeClassFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 200
    return-object v0
.end method
