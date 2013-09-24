.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "HasAttributeFilterWrapper.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/swing/event/DocumentListener;


# instance fields
.field protected mAttributeName:Ljavax/swing/JComboBox;

.field protected mAttributeValue:Ljavax/swing/JTextArea;

.field protected mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

.field protected mValued:Ljavax/swing/JCheckBox;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 91
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 94
    new-instance v1, Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-direct {v1}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>()V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    .line 97
    new-instance v1, Ljavax/swing/JComboBox;

    invoke-direct {v1}, Ljavax/swing/JComboBox;-><init>()V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    .line 98
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    invoke-virtual {v1, v2}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 99
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 100
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v4}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    invoke-virtual {v1, p0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 104
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, value:Ljava/lang/String;
    new-instance v1, Ljavax/swing/JCheckBox;

    const-string v4, "Has Value"

    invoke-direct {v1, v4}, Ljavax/swing/JCheckBox;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    .line 106
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 107
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 108
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    invoke-virtual {v1, p0}, Ljavax/swing/JCheckBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 111
    new-instance v1, Ljavax/swing/JTextArea;

    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-direct {v1, v4, v5}, Ljavax/swing/JTextArea;-><init>(II)V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    .line 112
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    new-instance v4, Ljavax/swing/border/BevelBorder;

    invoke-direct {v4, v2}, Ljavax/swing/border/BevelBorder;-><init>(I)V

    invoke-virtual {v1, v4}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    .line 113
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 114
    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v0}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 118
    :goto_1
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v1}, Ljavax/swing/JTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    invoke-interface {v1, p0}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 119
    return-void

    :cond_0
    move v1, v3

    .line 107
    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v1, v3}, Ljavax/swing/JTextArea;->setVisible(Z)V

    goto :goto_1
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 346
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/HasAttributeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 363
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 364
    .local v1, source:Ljava/lang/Object;
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    if-ne v1, v3, :cond_1

    .line 366
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    invoke-virtual {v3}, Ljavax/swing/JComboBox;->getSelectedObjects()[Ljava/lang/Object;

    move-result-object v0

    .line 367
    .local v0, selection:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    .line 368
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    aget-object v3, v0, v5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lorg/htmlparser/filters/HasAttributeFilter;->setAttributeName(Ljava/lang/String;)V

    .line 385
    .end local v0           #selection:[Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    if-ne v1, v3, :cond_0

    .line 372
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    invoke-virtual {v3}, Ljavax/swing/JCheckBox;->isSelected()Z

    move-result v2

    .line 373
    .local v2, valued:Z
    if-eqz v2, :cond_2

    .line 375
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v4}, Ljavax/swing/JTextArea;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/htmlparser/filters/HasAttributeFilter;->setAttributeValue(Ljava/lang/String;)V

    .line 376
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavax/swing/JTextArea;->setVisible(Z)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v3, v5}, Ljavax/swing/JTextArea;->setVisible(Z)V

    .line 381
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 382
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/htmlparser/filters/HasAttributeFilter;->setAttributeValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected addAttributeValues(Ljava/util/Set;Lorg/htmlparser/Node;)V
    .locals 6
    .parameter "set"
    .parameter "node"

    .prologue
    .line 169
    instance-of v5, p2, Lorg/htmlparser/Tag;

    if-eqz v5, :cond_2

    move-object v5, p2

    .line 171
    check-cast v5, Lorg/htmlparser/Tag;

    invoke-interface {v5}, Lorg/htmlparser/Tag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 172
    .local v1, attributes:Ljava/util/Vector;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 174
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 175
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 177
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 179
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    :cond_1
    instance-of v5, p2, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v5, :cond_2

    .line 184
    check-cast p2, Lorg/htmlparser/tags/CompositeTag;

    .end local p2
    invoke-virtual {p2}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 185
    .local v2, children:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_2

    .line 186
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 187
    invoke-virtual {v2, v3}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->addAttributeValues(Ljava/util/Set;Lorg/htmlparser/Node;)V

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    .end local v1           #attributes:Ljava/util/Vector;
    .end local v2           #children:Lorg/htmlparser/util/NodeList;
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method protected addAttributes(Ljava/util/Set;Lorg/htmlparser/Node;)V
    .locals 6
    .parameter "set"
    .parameter "node"

    .prologue
    .line 137
    instance-of v5, p2, Lorg/htmlparser/Tag;

    if-eqz v5, :cond_2

    move-object v5, p2

    .line 139
    check-cast v5, Lorg/htmlparser/Tag;

    invoke-interface {v5}, Lorg/htmlparser/Tag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 140
    .local v1, attributes:Ljava/util/Vector;
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 142
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 143
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, name:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 145
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 147
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    instance-of v5, p2, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v5, :cond_2

    .line 149
    check-cast p2, Lorg/htmlparser/tags/CompositeTag;

    .end local p2
    invoke-virtual {p2}, Lorg/htmlparser/tags/CompositeTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 150
    .local v2, children:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_2

    .line 151
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 152
    invoke-virtual {v2, v3}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->addAttributes(Ljava/util/Set;Lorg/htmlparser/Node;)V

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v1           #attributes:Ljava/util/Vector;
    .end local v2           #children:Lorg/htmlparser/util/NodeList;
    .end local v3           #i:I
    :cond_2
    return-void
.end method

.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 436
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const-string v0, "Has attribute"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "images/HasAttributeFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>()V

    .line 223
    .local v0, ret:Lorg/htmlparser/filters/HasAttributeFilter;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/HasAttributeFilter;->setAttributeName(Ljava/lang/String;)V

    .line 224
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/HasAttributeFilter;->setAttributeValue(Ljava/lang/String;)V

    .line 226
    return-object v0
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 399
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    .line 402
    .local v1, doc:Ljavax/swing/text/Document;
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljavax/swing/text/Document;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/filters/HasAttributeFilter;->setAttributeValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .line 406
    .local v0, ble:Ljavax/swing/text/BadLocationException;
    invoke-virtual {v0}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 418
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    .line 421
    .local v1, doc:Ljavax/swing/text/Document;
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljavax/swing/text/Document;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/filters/HasAttributeFilter;->setAttributeValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 425
    .local v0, ble:Ljavax/swing/text/BadLocationException;
    invoke-virtual {v0}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 8
    .parameter "filter"
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 243
    check-cast p1, Lorg/htmlparser/filters/HasAttributeFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    .line 244
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 245
    .local v2, set:Ljava/util/Set;
    invoke-virtual {p2}, Lorg/htmlparser/Parser;->reset()V

    .line 248
    :try_start_0
    invoke-virtual {p2}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v0

    .local v0, iterator:Lorg/htmlparser/util/NodeIterator;
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-interface {v0}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->addAttributes(Ljava/util/Set;Lorg/htmlparser/Node;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v0           #iterator:Lorg/htmlparser/util/NodeIterator;
    :catch_0
    move-exception v4

    .line 255
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    goto :goto_1

    .line 257
    :cond_1
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v4}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, name:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 259
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeName:Ljavax/swing/JComboBox;

    invoke-virtual {v4, v1}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 260
    :cond_2
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v4}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeValue()Ljava/lang/String;

    move-result-object v3

    .line 261
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 263
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    invoke-virtual {v4, v7}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 264
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v4, v7}, Ljavax/swing/JTextArea;->setVisible(Z)V

    .line 265
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v4, v3}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 272
    :goto_2
    return-void

    .line 269
    :cond_3
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mValued:Ljavax/swing/JCheckBox;

    invoke-virtual {v4, v6}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 270
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mAttributeValue:Ljavax/swing/JTextArea;

    invoke-virtual {v4, v6}, Ljavax/swing/JTextArea;->setVisible(Z)V

    goto :goto_2
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filters"

    .prologue
    .line 290
    return-void
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 6
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 306
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

    .line 307
    .local v0, ret:Ljava/lang/String;
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 308
    const-string v1, "HasAttributeFilter "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    const-string v1, " = new HasAttributeFilter ();"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 312
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    const-string v1, ".setAttributeName (\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 316
    const-string v1, "\");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 318
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 320
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 321
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, ".setAttributeValue (\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->mFilter:Lorg/htmlparser/filters/HasAttributeFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/HasAttributeFilter;->getAttributeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v1, "\");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/HasAttributeFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 328
    :cond_0
    return-object v0
.end method
