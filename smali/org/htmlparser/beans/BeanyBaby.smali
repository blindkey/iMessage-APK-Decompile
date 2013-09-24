.class public Lorg/htmlparser/beans/BeanyBaby;
.super Ljavax/swing/JFrame;
.source "BeanyBaby.java"

# interfaces
.implements Ljava/beans/PropertyChangeListener;
.implements Ljava/awt/event/ActionListener;
.implements Ljava/awt/event/MouseListener;


# instance fields
.field private mBack:Ljavax/swing/JMenuItem;

.field private mCollapse:Ljavax/swing/JCheckBoxMenuItem;

.field protected mCrumb:I

.field private mForward:Ljavax/swing/JMenuItem;

.field private mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

.field private mLinks:Ljavax/swing/JCheckBoxMenuItem;

.field private mNobreak:Ljavax/swing/JCheckBoxMenuItem;

.field private mSplitPane:Ljavax/swing/JSplitPane;

.field private mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

.field private mTextField:Ljavax/swing/JTextField;

.field protected mTrail:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    .line 70
    invoke-direct {p0}, Lorg/htmlparser/beans/BeanyBaby;->initComponents()V

    .line 71
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/htmlparser/beans/BeanyBaby;->setVisible(Z)V

    .line 76
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mSplitPane:Ljavax/swing/JSplitPane;

    const-wide/high16 v1, 0x3fe0

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/beans/BeanyBaby;->setVisible(Z)V

    .line 80
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v0, p0}, Lorg/htmlparser/beans/HTMLLinkBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 81
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v0, p0}, Lorg/htmlparser/beans/HTMLTextBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 83
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    invoke-virtual {v0, p0}, Ljavax/swing/JTextField;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 84
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v0, p0}, Lorg/htmlparser/beans/HTMLLinkBean;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 87
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    iget-object v1, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v1}, Lorg/htmlparser/beans/HTMLTextBean;->getLinks()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    .line 88
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    iget-object v1, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v1}, Lorg/htmlparser/beans/HTMLTextBean;->getCollapse()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    .line 89
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    iget-object v1, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v1}, Lorg/htmlparser/beans/HTMLTextBean;->getReplaceNonBreakingSpaces()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    .line 90
    return-void
.end method

.method static access$000(Lorg/htmlparser/beans/BeanyBaby;Ljava/awt/event/WindowEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/htmlparser/beans/BeanyBaby;->exitForm(Ljava/awt/event/WindowEvent;)V

    return-void
.end method

.method private exitForm(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 384
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 385
    return-void
.end method

.method private initComponents()V
    .locals 10

    .prologue
    .line 286
    new-instance v1, Ljavax/swing/JMenuBar;

    invoke-direct {v1}, Ljavax/swing/JMenuBar;-><init>()V

    .line 287
    .local v1, menubar:Ljavax/swing/JMenuBar;
    invoke-virtual {p0, v1}, Lorg/htmlparser/beans/BeanyBaby;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 288
    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    .line 289
    .local v0, go:Ljavax/swing/JMenu;
    new-instance v7, Ljavax/swing/JMenuItem;

    invoke-direct {v7}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    .line 290
    new-instance v7, Ljavax/swing/JMenuItem;

    invoke-direct {v7}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    .line 291
    new-instance v2, Ljavax/swing/JMenu;

    invoke-direct {v2}, Ljavax/swing/JMenu;-><init>()V

    .line 292
    .local v2, options:Ljavax/swing/JMenu;
    new-instance v7, Ljavax/swing/JCheckBoxMenuItem;

    invoke-direct {v7}, Ljavax/swing/JCheckBoxMenuItem;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    .line 293
    new-instance v7, Ljavax/swing/JCheckBoxMenuItem;

    invoke-direct {v7}, Ljavax/swing/JCheckBoxMenuItem;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    .line 294
    new-instance v7, Ljavax/swing/JCheckBoxMenuItem;

    invoke-direct {v7}, Ljavax/swing/JCheckBoxMenuItem;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    .line 295
    new-instance v5, Ljavax/swing/JPanel;

    invoke-direct {v5}, Ljavax/swing/JPanel;-><init>()V

    .line 296
    .local v5, panel:Ljavax/swing/JPanel;
    new-instance v7, Ljavax/swing/JSplitPane;

    invoke-direct {v7}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mSplitPane:Ljavax/swing/JSplitPane;

    .line 297
    new-instance v3, Ljavax/swing/JScrollPane;

    invoke-direct {v3}, Ljavax/swing/JScrollPane;-><init>()V

    .line 298
    .local v3, pane1:Ljavax/swing/JScrollPane;
    new-instance v7, Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-direct {v7}, Lorg/htmlparser/beans/HTMLLinkBean;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    .line 299
    new-instance v4, Ljavax/swing/JScrollPane;

    invoke-direct {v4}, Ljavax/swing/JScrollPane;-><init>()V

    .line 300
    .local v4, pane2:Ljavax/swing/JScrollPane;
    new-instance v7, Lorg/htmlparser/beans/HTMLTextBean;

    invoke-direct {v7}, Lorg/htmlparser/beans/HTMLTextBean;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    .line 301
    new-instance v7, Ljavax/swing/JTextField;

    invoke-direct {v7}, Ljavax/swing/JTextField;-><init>()V

    iput-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    .line 303
    const/16 v7, 0x47

    invoke-virtual {v0, v7}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 304
    const-string v7, "Go"

    invoke-virtual {v0, v7}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 305
    const-string v7, "crude URL navigation"

    invoke-virtual {v0, v7}, Ljavax/swing/JMenu;->setToolTipText(Ljava/lang/String;)V

    .line 306
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    const/16 v8, 0x42

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 307
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    const-string v8, "Back"

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 308
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    const-string v8, "back one URL"

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setToolTipText(Ljava/lang/String;)V

    .line 309
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    const-string v8, "Back"

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setName(Ljava/lang/String;)V

    .line 310
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    invoke-virtual {v7, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 311
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 313
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    const/16 v8, 0x46

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setMnemonic(C)V

    .line 314
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    const-string v8, "Forward"

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    const-string v8, "forward one URL"

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setToolTipText(Ljava/lang/String;)V

    .line 316
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    const-string v8, "Forward"

    invoke-virtual {v7, v8}, Ljavax/swing/JMenuItem;->setName(Ljava/lang/String;)V

    .line 317
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    invoke-virtual {v7, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 318
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 320
    invoke-virtual {v1, v0}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 322
    const/16 v7, 0x4f

    invoke-virtual {v2, v7}, Ljavax/swing/JMenu;->setMnemonic(C)V

    .line 323
    const-string v7, "Options"

    invoke-virtual {v2, v7}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 324
    const-string v7, "Bean settings"

    invoke-virtual {v2, v7}, Ljavax/swing/JMenu;->setToolTipText(Ljava/lang/String;)V

    .line 325
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v8, 0x4c

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    .line 326
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "Links"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setText(Ljava/lang/String;)V

    .line 327
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "show/hide links in text"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setToolTipText(Ljava/lang/String;)V

    .line 328
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "Links"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setName(Ljava/lang/String;)V

    .line 329
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v7, p0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 330
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v2, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 332
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v8, 0x43

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    .line 333
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "Collapse"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setText(Ljava/lang/String;)V

    .line 334
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "collapse/retain whitespace sequences"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setToolTipText(Ljava/lang/String;)V

    .line 335
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "Collapse"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setName(Ljava/lang/String;)V

    .line 336
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v7, p0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 337
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v2, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 339
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    const/16 v8, 0x4e

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setMnemonic(C)V

    .line 340
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "Non-breaking Spaces"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setText(Ljava/lang/String;)V

    .line 341
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "replace/retain non-breaking spaces"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setToolTipText(Ljava/lang/String;)V

    .line 342
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    const-string v8, "Nobreak"

    invoke-virtual {v7, v8}, Ljavax/swing/JCheckBoxMenuItem;->setName(Ljava/lang/String;)V

    .line 343
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v7, p0}, Ljavax/swing/JCheckBoxMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 344
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {v2, v7}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 346
    invoke-virtual {v1, v2}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 348
    const-string v7, "BeanyBaby"

    invoke-virtual {p0, v7}, Lorg/htmlparser/beans/BeanyBaby;->setTitle(Ljava/lang/String;)V

    .line 349
    new-instance v7, Lorg/htmlparser/beans/BeanyBaby$1;

    invoke-direct {v7, p0}, Lorg/htmlparser/beans/BeanyBaby$1;-><init>(Lorg/htmlparser/beans/BeanyBaby;)V

    invoke-virtual {p0, v7}, Lorg/htmlparser/beans/BeanyBaby;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 357
    new-instance v7, Ljava/awt/BorderLayout;

    invoke-direct {v7}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {v5, v7}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 359
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v3, v7}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    .line 361
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v7, v3}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    .line 363
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v4, v7}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    .line 365
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mSplitPane:Ljavax/swing/JSplitPane;

    invoke-virtual {v7, v4}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    .line 367
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mSplitPane:Ljavax/swing/JSplitPane;

    const-string v8, "Center"

    invoke-virtual {v5, v7, v8}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 369
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    const-string v8, "Enter the URL to view"

    invoke-virtual {v7, v8}, Ljavax/swing/JTextField;->setToolTipText(Ljava/lang/String;)V

    .line 370
    iget-object v7, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    const-string v8, "South"

    invoke-virtual {v5, v7, v8}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 372
    invoke-virtual {p0}, Lorg/htmlparser/beans/BeanyBaby;->getContentPane()Ljava/awt/Container;

    move-result-object v7

    const-string v8, "Center"

    invoke-virtual {v7, v5, v8}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0}, Lorg/htmlparser/beans/BeanyBaby;->pack()V

    .line 375
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v6

    .line 376
    .local v6, screenSize:Ljava/awt/Dimension;
    new-instance v7, Ljava/awt/Dimension;

    const/16 v8, 0x280

    const/16 v9, 0x1e0

    invoke-direct {v7, v8, v9}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v7}, Lorg/htmlparser/beans/BeanyBaby;->setSize(Ljava/awt/Dimension;)V

    .line 377
    iget v7, v6, Ljava/awt/Dimension;->width:I

    add-int/lit16 v7, v7, -0x280

    div-int/lit8 v7, v7, 0x2

    iget v8, v6, Ljava/awt/Dimension;->height:I

    add-int/lit16 v8, v8, -0x1e0

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {p0, v7, v8}, Lorg/htmlparser/beans/BeanyBaby;->setLocation(II)V

    .line 378
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 405
    new-instance v0, Lorg/htmlparser/beans/BeanyBaby;

    invoke-direct {v0}, Lorg/htmlparser/beans/BeanyBaby;-><init>()V

    .line 406
    .local v0, bb:Lorg/htmlparser/beans/BeanyBaby;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/htmlparser/beans/BeanyBaby;->setVisible(Z)V

    .line 407
    array-length v1, p0

    if-gtz v1, :cond_0

    .line 408
    const-string v1, "http://www.slashdot.org"

    invoke-virtual {v0, v1}, Lorg/htmlparser/beans/BeanyBaby;->setURL(Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/beans/BeanyBaby;->setURL(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 150
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    .line 151
    .local v2, source:Ljava/lang/Object;
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    if-ne v2, v4, :cond_1

    .line 153
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    invoke-virtual {v4}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    invoke-virtual {v4}, Ljavax/swing/JTextField;->selectAll()V

    .line 155
    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/BeanyBaby;->setURL(Ljava/lang/String;)V

    .line 193
    .end local v2           #source:Ljava/lang/Object;
    .end local v3           #url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local v2       #source:Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljavax/swing/JCheckBoxMenuItem;

    if-eqz v4, :cond_4

    move-object v0, v2

    .line 159
    check-cast v0, Ljavax/swing/JMenuItem;

    .line 160
    .local v0, item:Ljavax/swing/JMenuItem;
    invoke-virtual {v0}, Ljavax/swing/JMenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, name:Ljava/lang/String;
    const-string v4, "Links"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v0}, Ljavax/swing/JMenuItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/htmlparser/beans/HTMLTextBean;->setLinks(Z)V

    goto :goto_0

    .line 163
    :cond_2
    const-string v4, "Collapse"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 164
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v0}, Ljavax/swing/JMenuItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/htmlparser/beans/HTMLTextBean;->setCollapse(Z)V

    goto :goto_0

    .line 165
    :cond_3
    const-string v4, "Nobreak"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v0}, Ljavax/swing/JMenuItem;->isSelected()Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/htmlparser/beans/HTMLTextBean;->setReplaceNonBreakingSpaces(Z)V

    goto :goto_0

    .line 168
    .end local v0           #item:Ljavax/swing/JMenuItem;
    .end local v1           #name:Ljava/lang/String;
    :cond_4
    instance-of v4, v2, Ljavax/swing/JMenuItem;

    if-eqz v4, :cond_0

    .line 170
    check-cast v2, Ljavax/swing/JMenuItem;

    .end local v2           #source:Ljava/lang/Object;
    invoke-virtual {v2}, Ljavax/swing/JMenuItem;->getName()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1       #name:Ljava/lang/String;
    const-string v4, "Back"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 173
    iget v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    if-lez v4, :cond_0

    .line 175
    iget v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    .line 176
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    iget v5, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 177
    .restart local v3       #url:Ljava/lang/String;
    iget v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    .line 178
    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/BeanyBaby;->setURL(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v3           #url:Ljava/lang/String;
    :cond_5
    const-string v4, "Forward"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 183
    iget v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    iget-object v5, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 185
    iget v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    .line 186
    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    iget v5, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .restart local v3       #url:Ljava/lang/String;
    iget v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    .line 188
    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/BeanyBaby;->setURL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 209
    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getClickCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 211
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/beans/HTMLLinkBean;->locationToIndex(Ljava/awt/Point;)I

    move-result v0

    .line 212
    .local v0, index:I
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v2}, Lorg/htmlparser/beans/HTMLLinkBean;->getModel()Ljavax/swing/ListModel;

    move-result-object v2

    invoke-interface {v2, v0}, Ljavax/swing/ListModel;->getElementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/htmlparser/beans/BeanyBaby;->setURL(Ljava/lang/String;)V

    .line 215
    .end local v0           #index:I
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 223
    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 231
    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 239
    return-void
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 247
    return-void
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getSource()Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, source:Ljava/lang/Object;
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    if-ne v1, v2, :cond_1

    .line 111
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v2}, Lorg/htmlparser/beans/HTMLLinkBean;->getURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v3}, Lorg/htmlparser/beans/HTMLTextBean;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v3}, Lorg/htmlparser/beans/HTMLLinkBean;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/beans/HTMLTextBean;->setURL(Ljava/lang/String;)V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    if-ne v1, v2, :cond_0

    .line 116
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v2}, Lorg/htmlparser/beans/HTMLTextBean;->getURL()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v3}, Lorg/htmlparser/beans/HTMLLinkBean;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iget-object v2, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mStringBean:Lorg/htmlparser/beans/HTMLTextBean;

    invoke-virtual {v3}, Lorg/htmlparser/beans/HTMLTextBean;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/beans/HTMLLinkBean;->setURL(Ljava/lang/String;)V

    .line 119
    :cond_2
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, name:Ljava/lang/String;
    const-string v2, "links"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinks:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    goto :goto_0

    .line 123
    :cond_3
    const-string v2, "collapse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mCollapse:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    goto :goto_0

    .line 126
    :cond_4
    const-string v2, "replaceNonBreakingSpaces"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mNobreak:Ljavax/swing/JCheckBoxMenuItem;

    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Ljavax/swing/JCheckBoxMenuItem;->setSelected(Z)V

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 259
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mTextField:Ljavax/swing/JTextField;

    invoke-virtual {v0, p1}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 260
    iget v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    .line 261
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    if-gt v0, v3, :cond_0

    .line 262
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 265
    :goto_0
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mLinkBean:Lorg/htmlparser/beans/HTMLLinkBean;

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/HTMLLinkBean;->setURL(Ljava/lang/String;)V

    .line 268
    iget-object v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mBack:Ljavax/swing/JMenuItem;

    iget v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    .line 269
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mForward:Ljavax/swing/JMenuItem;

    iget v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setEnabled(Z)V

    .line 270
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby;->mTrail:Ljava/util/Vector;

    iget v3, p0, Lorg/htmlparser/beans/BeanyBaby;->mCrumb:I

    invoke-virtual {v0, p1, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 268
    goto :goto_1

    :cond_2
    move v1, v2

    .line 269
    goto :goto_2
.end method
