.class public Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;
.super Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.source "StringFilterWrapper.java"

# interfaces
.implements Ljava/awt/event/ActionListener;
.implements Ljavax/swing/event/DocumentListener;
.implements Ljava/lang/Runnable;


# static fields
.field protected static mLocales:[Ljava/util/Locale;


# instance fields
.field protected mCaseSensitivity:Ljavax/swing/JCheckBox;

.field protected mFilter:Lorg/htmlparser/filters/StringFilter;

.field protected mLocale:Ljavax/swing/JComboBox;

.field protected mPattern:Ljavax/swing/JTextArea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;-><init>()V

    .line 91
    new-instance v3, Lorg/htmlparser/filters/StringFilter;

    invoke-direct {v3}, Lorg/htmlparser/filters/StringFilter;-><init>()V

    iput-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    .line 92
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v3, v1}, Lorg/htmlparser/filters/StringFilter;->setCaseSensitive(Z)V

    .line 95
    new-instance v3, Ljavax/swing/JTextArea;

    const/4 v4, 0x2

    const/16 v5, 0x14

    invoke-direct {v3, v4, v5}, Ljavax/swing/JTextArea;-><init>(II)V

    iput-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    .line 96
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    new-instance v4, Ljavax/swing/border/BevelBorder;

    invoke-direct {v4, v1}, Ljavax/swing/border/BevelBorder;-><init>(I)V

    invoke-virtual {v3, v4}, Ljavax/swing/JTextArea;->setBorder(Ljavax/swing/border/Border;)V

    .line 97
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 98
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    invoke-virtual {v3}, Ljavax/swing/JTextArea;->getDocument()Ljavax/swing/text/Document;

    move-result-object v3

    invoke-interface {v3, p0}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 99
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v4}, Lorg/htmlparser/filters/StringFilter;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 102
    new-instance v3, Ljavax/swing/JCheckBox;

    const-string v4, "Case Sensitive"

    invoke-direct {v3, v4}, Ljavax/swing/JCheckBox;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mCaseSensitivity:Ljavax/swing/JCheckBox;

    .line 103
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mCaseSensitivity:Ljavax/swing/JCheckBox;

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 104
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mCaseSensitivity:Ljavax/swing/JCheckBox;

    invoke-virtual {v3, p0}, Ljavax/swing/JCheckBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 105
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mCaseSensitivity:Ljavax/swing/JCheckBox;

    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v4}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 108
    new-instance v3, Ljavax/swing/JComboBox;

    invoke-direct {v3}, Ljavax/swing/JComboBox;-><init>()V

    iput-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    .line 109
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    monitor-enter v3

    .line 111
    :try_start_0
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v5}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 112
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    .local v0, thread:Ljava/lang/Thread;
    const-string v4, "locale_getter"

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 114
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/Thread;->setPriority(I)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    .line 116
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 118
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    invoke-virtual {v3, p0}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 119
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    invoke-virtual {v3, v2}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    .line 120
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v4}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v3, v1}, Ljavax/swing/JComboBox;->setVisible(Z)V

    .line 121
    return-void

    .line 116
    .end local v0           #thread:Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .restart local v0       #thread:Ljava/lang/Thread;
    :cond_0
    move v1, v2

    .line 120
    goto :goto_0
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 257
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v0, p1}, Lorg/htmlparser/filters/StringFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method

.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 275
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    .line 276
    .local v4, source:Ljava/lang/Object;
    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mCaseSensitivity:Ljavax/swing/JCheckBox;

    if-ne v4, v6, :cond_2

    .line 278
    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mCaseSensitivity:Ljavax/swing/JCheckBox;

    invoke-virtual {v6}, Ljavax/swing/JCheckBox;->isSelected()Z

    move-result v3

    .line 279
    .local v3, sensitive:Z
    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v6, v3}, Lorg/htmlparser/filters/StringFilter;->setCaseSensitive(Z)V

    .line 280
    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    if-nez v3, :cond_0

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v6, v5}, Ljavax/swing/JComboBox;->setVisible(Z)V

    .line 281
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v6}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 297
    .end local v3           #sensitive:Z
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    if-ne v4, v5, :cond_1

    .line 285
    iget-object v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    monitor-enter v6

    .line 287
    :try_start_0
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    invoke-virtual {v5}, Ljavax/swing/JComboBox;->getSelectedObjects()[Ljava/lang/Object;

    move-result-object v2

    .line 288
    .local v2, selection:[Ljava/lang/Object;
    if-eqz v2, :cond_4

    array-length v5, v2

    if-eqz v5, :cond_4

    .line 290
    const/4 v5, 0x0

    aget-object v1, v2, v5

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, locale:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v5, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 292
    sget-object v5, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 293
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    sget-object v7, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    aget-object v7, v7, v0

    invoke-virtual {v5, v7}, Lorg/htmlparser/filters/StringFilter;->setLocale(Ljava/util/Locale;)V

    .line 291
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 295
    .end local v0           #i:I
    .end local v1           #locale:Ljava/lang/String;
    :cond_4
    monitor-exit v6

    goto :goto_0

    .end local v2           #selection:[Ljava/lang/Object;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 370
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "Nodes containing string"

    return-object v0
.end method

.method public getIconSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "images/StringFilter.gif"

    return-object v0
.end method

.method public getNodeFilter()Lorg/htmlparser/NodeFilter;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Lorg/htmlparser/filters/StringFilter;

    invoke-direct {v0}, Lorg/htmlparser/filters/StringFilter;-><init>()V

    .line 154
    .local v0, ret:Lorg/htmlparser/filters/StringFilter;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/StringFilter;->setCaseSensitive(Z)V

    .line 155
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/StringFilter;->setLocale(Ljava/util/Locale;)V

    .line 156
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/filters/StringFilter;->setPattern(Ljava/lang/String;)V

    .line 158
    return-object v0
.end method

.method public getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 333
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    .line 336
    .local v1, doc:Ljavax/swing/text/Document;
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljavax/swing/text/Document;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/filters/StringFilter;->setPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, ble:Ljavax/swing/text/BadLocationException;
    invoke-virtual {v0}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 352
    invoke-interface {p1}, Ljavax/swing/event/DocumentEvent;->getDocument()Ljavax/swing/text/Document;

    move-result-object v1

    .line 355
    .local v1, doc:Ljavax/swing/text/Document;
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljavax/swing/text/Document;->getLength()I

    move-result v4

    invoke-interface {v1, v3, v4}, Ljavax/swing/text/Document;->getText(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/filters/StringFilter;->setPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/swing/text/BadLocationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 359
    .local v0, ble:Ljavax/swing/text/BadLocationException;
    invoke-virtual {v0}, Ljavax/swing/text/BadLocationException;->printStackTrace()V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 310
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    monitor-enter v3

    .line 312
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    sput-object v2, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    .line 313
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v2}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, locale:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 315
    sget-object v2, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 316
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    sget-object v4, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocales:[Ljava/util/Locale;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/swing/JComboBox;->addItem(Ljava/lang/Object;)V

    .line 314
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_1
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    invoke-virtual {v2}, Ljavax/swing/JComboBox;->invalidate()V

    .line 318
    monitor-exit v3

    .line 319
    return-void

    .line 318
    .end local v0           #i:I
    .end local v1           #locale:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
    .locals 2
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 171
    check-cast p1, Lorg/htmlparser/filters/StringFilter;

    .end local p1
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    .line 172
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mPattern:Ljavax/swing/JTextArea;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mCaseSensitivity:Ljavax/swing/JCheckBox;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 174
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v0}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljavax/swing/JComboBox;->setVisible(Z)V

    .line 175
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mLocale:Ljavax/swing/JComboBox;

    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 176
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filters"

    .prologue
    .line 194
    return-void
.end method

.method public toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
    .locals 6
    .parameter "out"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 210
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

    .line 211
    .local v0, ret:Ljava/lang/String;
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 212
    const-string v1, "StringFilter "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v1, " = new StringFilter ();"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 216
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 217
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v1, ".setCaseSensitive ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v1, ");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 222
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v1, ".setLocale (new java.util.Locale (\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    const-string v1, "\", \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    const-string v1, "\", \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    const-string v1, "\"));"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 232
    aget v1, p2, v5

    invoke-static {p1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->spaces(Ljava/lang/StringBuffer;I)V

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string v1, ".setPattern (\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->mFilter:Lorg/htmlparser/filters/StringFilter;

    invoke-virtual {v1}, Lorg/htmlparser/filters/StringFilter;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 236
    const-string v1, "\");"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/wrappers/StringFilterWrapper;->newline(Ljava/lang/StringBuffer;)V

    .line 239
    return-object v0

    .line 219
    :cond_0
    const-string v1, "false"

    goto :goto_0
.end method
