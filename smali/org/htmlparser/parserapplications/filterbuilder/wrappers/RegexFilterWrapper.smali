.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "RegexFilterWrapper.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/swing/event/DocumentListener;


# static fields
.field public static mMap:[[Ljava/lang/Object;


# instance fields
.field protected mFilter:Lorg/htmlparser/filters/RegexFilter;

.field protected mPattern:Ljavax/swing/JTextArea;

.field protected mStrategy:Ljavax/swing/JComboBox;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 62
    new-array v0, v5, [[Ljava/lang/Object;

    sput-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    .line 63
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v1, v0, v4

    .line 64
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v0, v0, v4

    const-string v1, "MATCH"

    aput-object v1, v0, v4

    .line 65
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v0, v0, v4

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    .line 66
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v1, v0, v2

    .line 67
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v0, v0, v2

    const-string v1, "LOOKINGAT"

    aput-object v1, v0, v4

    .line 68
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v0, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    .line 69
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v1, v0, v3

    .line 70
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    const-string v1, "FIND"

    aput-object v1, v0, v4

    .line 71
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v0, v0, v3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 94
    new-instance v0, Lorg/htmlparser/filters/RegexFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/RegexFilter;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    .line 97
    new-instance v0, Ljavax/swing/JTextArea;

    const/4 v1, 0x2

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljavax/swing/JTextArea;-><init>(II)V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    .line 98
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    new-instance v1, Ljavax/swing/border/BevelBorder;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljavax/swing/border/BevelBorder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    .line 99
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 100
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    invoke-virtual {v0}, Ljavax/swing/JTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v0

    invoke-interface {v0, p0}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 101
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljavax/swing/JComboBox;

    invoke-direct {v0}, Ljavax/swing/JComboBox;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    .line 105
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    const-string v1, "MATCH"

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    const-string v1, "LOOKINGAT"

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    const-string v1, "FIND"

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 109
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    invoke-virtual {v0, p0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 110
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getStrategy()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->strategyToIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    .line 111
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 283
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/RegexFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 298
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 299
    .local v0, source:Ljava/lang/Object;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    if-ne v0, v1, :cond_0

    .line 300
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    invoke-virtual {v2}, Ljavax/swing/JComboBox;->getSelectedIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->indexToStrategy(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/filters/RegexFilter;->setStrategy(I)V

    .line 301
    :cond_0
    return-void
.end method

.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 352
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    const-string v0, "Nodes containing regex"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    const-string v0, "images/RegexFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lorg/htmlparser/filters/RegexFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/RegexFilter;-><init>()V

    .line 144
    .local v0, ret:Lorg/htmlparser/filters/RegexFilter;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getStrategy()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/RegexFilter;->setStrategy(I)V

    .line 145
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/RegexFilter;->setPattern(Ljava/lang/String;)V

    .line 147
    return-object v0
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public indexToStrategy(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 265
    sget-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 315
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    .line 318
    .local v1, doc:Ljavax/swing/text/Document;
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljavax/swing/text/Document;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/filters/RegexFilter;->setPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 322
    .local v0, ble:Ljavax/swing/text/BadLocationException;
    invoke-virtual {v0}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 334
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    .line 337
    .local v1, doc:Ljavax/swing/text/Document;
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljavax/swing/text/Document;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/filters/RegexFilter;->setPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v0

    .line 341
    .local v0, ble:Ljavax/swing/text/BadLocationException;
    invoke-virtual {v0}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    goto :goto_0
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 2
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 160
    check-cast p1, Lorg/htmlparser/filters/RegexFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    .line 161
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mStrategy:Ljavax/swing/JComboBox;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getStrategy()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->strategyToIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    .line 163
    return-void
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filters"

    .prologue
    .line 181
    return-void
.end method

.method public strategyToIndex(I)I
    .locals 4
    .parameter "strategy"

    .prologue
    .line 252
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 253
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 254
    return v0

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown strategy constant - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public strategyToString(I)Ljava/lang/String;
    .locals 4
    .parameter "strategy"

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 227
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 228
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 226
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown strategy constant - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stringToStrategy(Ljava/lang/String;)I
    .locals 4
    .parameter "strategy"

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 240
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mMap:[[Ljava/lang/Object;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unknown strategy constant - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 6
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 197
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

    .line 198
    .local v0, ret:Ljava/lang/String;
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 199
    const-string v1, "RegexFilter "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-string v1, " = new RegexFilter ();"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 203
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v1, ".setStrategy (RegexFilter."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getStrategy()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->strategyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v1, ");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 209
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 210
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v1, ".setPattern (\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->mFilter:Lorg/htmlparser/filters/RegexFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/RegexFilter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v1, "\");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/RegexFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 216
    return-object v0
.end method
