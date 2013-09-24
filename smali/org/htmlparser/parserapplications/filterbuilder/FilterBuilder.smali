.class public Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;
.super Ljavax/swing/JFrame;
.source "FilterBuilder.java"

# interfaces
.implements Ljava/awt/event/WindowListener;
.implements Ljava/awt/event/ActionListener;
.implements Ljava/awt/event/MouseListener;
.implements Ljava/awt/event/MouseMotionListener;
.implements Ljava/awt/dnd/DragGestureListener;
.implements Ljava/awt/dnd/DragSourceListener;
.implements Ljava/awt/dnd/DropTargetListener;
.implements Ljava/awt/datatransfer/ClipboardOwner;


# static fields
.field static final TITLE:Ljava/lang/String; = "HTML Parser FilterBuilder"

.field static final mDocumentBase:Ljava/net/URL;

.field static mHomeDir:Ljava/lang/String;


# instance fields
.field protected mBasePoint:Ljava/awt/Point;

.field protected mCurrentComponent:Ljava/awt/Component;

.field protected mDragSource:Ljava/awt/dnd/DragSource;

.field protected mDropTarget:Ljava/awt/dnd/DropTarget;

.field protected mMainPanel:Ljavax/swing/JPanel;

.field protected mMainScroller:Ljavax/swing/JScrollPane;

.field protected mMoved:Z

.field protected mOutput:Ljavax/swing/JDesktopPane;

.field protected mSelection:Ljava/util/Vector;

.field protected mURLField:Ljavax/swing/JTextField;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x2f

    .line 151
    const-string v6, "user.dir"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, p:Ljava/lang/String;
    :try_start_0
    const-string v6, "file.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 156
    .local v5, ps:C
    if-eq v8, v5, :cond_0

    .line 157
    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 165
    .end local v5           #ps:C
    :cond_0
    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "file:///"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .local v0, base:Ljava/net/URL;
    :goto_1
    sput-object v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mDocumentBase:Ljava/net/URL;

    .line 181
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "user.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "file.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ".htmlparser"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 186
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 187
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "cannot create directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 167
    .end local v0           #base:Ljava/net/URL;
    .end local v1           #dir:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 169
    .local v3, murle:Ljava/net/MalformedURLException;
    const/4 v0, 0x0

    .restart local v0       #base:Ljava/net/URL;
    goto :goto_1

    .line 190
    .end local v3           #murle:Ljava/net/MalformedURLException;
    .restart local v1       #dir:Ljava/lang/String;
    .restart local v2       #file:Ljava/io/File;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mHomeDir:Ljava/lang/String;

    .line 191
    return-void

    .line 159
    .end local v0           #base:Ljava/net/URL;
    .end local v1           #dir:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 23

    .prologue
    .line 247
    invoke-direct/range {p0 .. p0}, Ljavax/swing/JFrame;-><init>()V

    .line 257
    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    .line 258
    new-instance v2, Ljava/awt/dnd/DropTarget;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0}, Ljava/awt/dnd/DropTarget;-><init>(Ljava/awt/Component;Ljava/awt/dnd/DropTargetListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mDropTarget:Ljava/awt/dnd/DropTarget;

    .line 259
    new-instance v2, Ljava/awt/dnd/DragSource;

    invoke-direct {v2}, Ljava/awt/dnd/DragSource;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mDragSource:Ljava/awt/dnd/DragSource;

    .line 262
    new-instance v19, Ljavax/swing/JMenuBar;

    invoke-direct/range {v19 .. v19}, Ljavax/swing/JMenuBar;-><init>()V

    .line 263
    .local v19, menubar:Ljavax/swing/JMenuBar;
    new-instance v8, Ljavax/swing/JToolBar;

    invoke-direct {v8}, Ljavax/swing/JToolBar;-><init>()V

    .line 264
    .local v8, toolbar:Ljavax/swing/JToolBar;
    const v2, 0x3e638e2a

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->setAlignmentY(F)V

    .line 267
    new-instance v9, Ljavax/swing/JMenu;

    invoke-direct {v9}, Ljavax/swing/JMenu;-><init>()V

    .line 268
    .local v9, menu:Ljavax/swing/JMenu;
    const-string v2, "File"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 269
    const-string v2, "File"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setActionCommand(Ljava/lang/String;)V

    .line 270
    const/16 v2, 0x46

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setMnemonic(I)V

    .line 271
    const-string v3, "New"

    const-string v4, "Create a new document"

    const-string v5, "New"

    const/16 v6, 0x4e

    const/16 v2, 0x4e

    const/4 v7, 0x2

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 272
    const-string v3, "Open"

    const-string v4, "Open an existing document"

    const-string v5, "Open..."

    const/16 v6, 0x4f

    const/16 v2, 0x4f

    const/4 v7, 0x2

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 273
    const-string v3, "Save"

    const-string v4, "Save the active document"

    const-string v5, "Save..."

    const/16 v6, 0x53

    const/16 v2, 0x53

    const/4 v7, 0x2

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 274
    const-string v11, "SaveAs"

    const-string v12, "Save the active document"

    const-string v13, "Save As..."

    const/16 v14, 0x41

    const/16 v2, 0x41

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 275
    new-instance v2, Ljavax/swing/JSeparator;

    invoke-direct {v2}, Ljavax/swing/JSeparator;-><init>()V

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 276
    const-string v11, "Exit"

    const-string v12, "Exit the program"

    const-string v13, "Exit"

    const/16 v14, 0x45

    const/16 v2, 0x45

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 277
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 279
    new-instance v2, Ljavax/swing/JToolBar$Separator;

    invoke-direct {v2}, Ljavax/swing/JToolBar$Separator;-><init>()V

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 282
    new-instance v9, Ljavax/swing/JMenu;

    .end local v9           #menu:Ljavax/swing/JMenu;
    invoke-direct {v9}, Ljavax/swing/JMenu;-><init>()V

    .line 283
    .restart local v9       #menu:Ljavax/swing/JMenu;
    const-string v2, "Edit"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 284
    const-string v2, "Edit"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setActionCommand(Ljava/lang/String;)V

    .line 285
    const/16 v2, 0x45

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setMnemonic(I)V

    .line 286
    const-string v3, "Cut"

    const-string v4, "Cut the selection and put it on the Clipboard"

    const-string v5, "Cut"

    const/16 v6, 0x54

    const/16 v2, 0x58

    const/4 v7, 0x2

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 287
    const-string v3, "Copy"

    const-string v4, "Copy the selection and put it on the Clipboard"

    const-string v5, "Copy"

    const/16 v6, 0x43

    const/16 v2, 0x43

    const/4 v7, 0x2

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 288
    const-string v3, "Paste"

    const-string v4, "Insert Clipboard contents"

    const-string v5, "Paste"

    const/16 v6, 0x50

    const/16 v2, 0x56

    const/4 v7, 0x2

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 289
    const-string v3, "Delete"

    const-string v4, "Delete the selection"

    const-string v5, "Delete"

    const/16 v6, 0x44

    const/16 v2, 0x7f

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 290
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 293
    new-instance v9, Ljavax/swing/JMenu;

    .end local v9           #menu:Ljavax/swing/JMenu;
    invoke-direct {v9}, Ljavax/swing/JMenu;-><init>()V

    .line 294
    .restart local v9       #menu:Ljavax/swing/JMenu;
    const-string v2, "Filter"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 295
    const-string v2, "Filter"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setActionCommand(Ljava/lang/String;)V

    .line 296
    const/16 v2, 0x46

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setMnemonic(I)V

    .line 297
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 299
    new-instance v2, Ljavax/swing/JToolBar$Separator;

    invoke-direct {v2}, Ljavax/swing/JToolBar$Separator;-><init>()V

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 302
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.AndFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 303
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.OrFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 304
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.NotFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v9}, Ljavax/swing/JMenu;->addSeparator()V

    .line 306
    new-instance v2, Ljavax/swing/JToolBar$Separator;

    invoke-direct {v2}, Ljavax/swing/JToolBar$Separator;-><init>()V

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 308
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.StringFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 309
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.RegexFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 310
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.TagNameFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 311
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.NodeClassFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 312
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.HasAttributeFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v9}, Ljavax/swing/JMenu;->addSeparator()V

    .line 314
    new-instance v2, Ljavax/swing/JToolBar$Separator;

    invoke-direct {v2}, Ljavax/swing/JToolBar$Separator;-><init>()V

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 316
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.HasParentFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 317
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.HasChildFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 318
    const-string v2, "org.htmlparser.parserapplications.filterbuilder.wrappers.HasSiblingFilterWrapper"

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V

    .line 319
    invoke-virtual {v9}, Ljavax/swing/JMenu;->addSeparator()V

    .line 320
    new-instance v2, Ljavax/swing/JToolBar$Separator;

    invoke-direct {v2}, Ljavax/swing/JToolBar$Separator;-><init>()V

    invoke-virtual {v8, v2}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 323
    new-instance v9, Ljavax/swing/JMenu;

    .end local v9           #menu:Ljavax/swing/JMenu;
    invoke-direct {v9}, Ljavax/swing/JMenu;-><init>()V

    .line 324
    .restart local v9       #menu:Ljavax/swing/JMenu;
    const-string v2, "Operation"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 325
    const-string v2, "Operation"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setActionCommand(Ljava/lang/String;)V

    .line 326
    const/16 v2, 0x72

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setMnemonic(I)V

    .line 327
    new-instance v18, Ljavax/swing/JMenuItem;

    invoke-direct/range {v18 .. v18}, Ljavax/swing/JMenuItem;-><init>()V

    .line 328
    .local v18, item:Ljavax/swing/JMenuItem;
    const-string v2, "Expand"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 329
    const-string v2, "expandAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 331
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 332
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    invoke-direct/range {v18 .. v18}, Ljavax/swing/JMenuItem;-><init>()V

    .line 333
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "Collapse"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 334
    const-string v2, "collapseAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 336
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 337
    invoke-virtual {v9}, Ljavax/swing/JMenu;->addSeparator()V

    .line 338
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    invoke-direct/range {v18 .. v18}, Ljavax/swing/JMenuItem;-><init>()V

    .line 339
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "Expand All"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 340
    const-string v2, "expandAllAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 342
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 343
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    invoke-direct/range {v18 .. v18}, Ljavax/swing/JMenuItem;-><init>()V

    .line 344
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "Collapse All"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 345
    const-string v2, "collapseAllAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 347
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 348
    invoke-virtual {v9}, Ljavax/swing/JMenu;->addSeparator()V

    .line 349
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Fetch Page"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "fetchAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 352
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 353
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Execute Filter"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 354
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "executeAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 356
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 357
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 360
    new-instance v9, Ljavax/swing/JMenu;

    .end local v9           #menu:Ljavax/swing/JMenu;
    invoke-direct {v9}, Ljavax/swing/JMenu;-><init>()V

    .line 361
    .restart local v9       #menu:Ljavax/swing/JMenu;
    const-string v2, "Help"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 362
    const-string v2, "Help"

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setActionCommand(Ljava/lang/String;)V

    .line 363
    const/16 v2, 0x48

    invoke-virtual {v9, v2}, Ljavax/swing/JMenu;->setMnemonic(I)V

    .line 364
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Filtering"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "filteringAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 366
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 367
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 368
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Instructions"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 369
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "instructionsAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 371
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 372
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Tutorial"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 373
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "tutorialAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 375
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 376
    new-instance v18, Ljavax/swing/JMenuItem;

    .end local v18           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Hints"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 377
    .restart local v18       #item:Ljavax/swing/JMenuItem;
    const-string v2, "hintsAction"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 379
    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 380
    const-string v3, "About"

    const-string v4, "Display program information, version number and copyright"

    const-string v5, "About"

    const/16 v6, 0x42

    const/16 v2, 0x48

    const/4 v7, 0x2

    invoke-static {v2, v7}, Ljavax/swing/KeyStroke;->getKeyStroke(II)Ljavax/swing/KeyStroke;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V

    .line 381
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 383
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 386
    new-instance v21, Ljavax/swing/JPanel;

    invoke-direct/range {v21 .. v21}, Ljavax/swing/JPanel;-><init>()V

    .line 387
    .local v21, panel:Ljavax/swing/JPanel;
    new-instance v2, Ljava/awt/FlowLayout;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/awt/FlowLayout;-><init>(III)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 388
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 389
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    new-instance v3, Ljava/awt/BorderLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/awt/BorderLayout;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/awt/Container;->setLayout(Ljava/awt/LayoutManager;)V

    .line 390
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "North"

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 393
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2}, Ljavax/swing/JTextField;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    .line 394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    const-string v3, "Enter the URL to view"

    invoke-virtual {v2, v3}, Ljavax/swing/JTextField;->setToolTipText(Ljava/lang/String;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    const-string v3, "http://sourceforge.org/projects/htmlparser"

    invoke-virtual {v2, v3}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "South"

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v2, v3, v4}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 400
    const-string v2, "HTML Parser FilterBuilder"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setTitle(Ljava/lang/String;)V

    .line 401
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setDefaultCloseOperation(I)V

    .line 402
    const/16 v2, 0x280

    const/16 v3, 0x1e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setSize(II)V

    .line 403
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setVisible(Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    new-instance v3, Lorg/htmlparser/parserapplications/filterbuilder/layouts/NullLayoutManager;

    invoke-direct {v3}, Lorg/htmlparser/parserapplications/filterbuilder/layouts/NullLayoutManager;-><init>()V

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 407
    new-instance v2, Ljavax/swing/JScrollPane;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    const/16 v4, 0x14

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v4, v5}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainScroller:Ljavax/swing/JScrollPane;

    .line 412
    new-instance v22, Ljavax/swing/JSplitPane;

    invoke-direct/range {v22 .. v22}, Ljavax/swing/JSplitPane;-><init>()V

    .line 413
    .local v22, split:Ljavax/swing/JSplitPane;
    new-instance v20, Ljavax/swing/JScrollPane;

    invoke-direct/range {v20 .. v20}, Ljavax/swing/JScrollPane;-><init>()V

    .line 414
    .local v20, pane:Ljavax/swing/JScrollPane;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainScroller:Ljavax/swing/JScrollPane;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljavax/swing/JScrollPane;->setViewportView(Ljava/awt/Component;)V

    .line 415
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setLeftComponent(Ljava/awt/Component;)V

    .line 417
    new-instance v2, Ljavax/swing/JDesktopPane;

    invoke-direct {v2}, Ljavax/swing/JDesktopPane;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mOutput:Ljavax/swing/JDesktopPane;

    .line 418
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mOutput:Ljavax/swing/JDesktopPane;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljavax/swing/JSplitPane;->setRightComponent(Ljava/awt/Component;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Ljava/awt/Container;->add(Ljava/lang/String;Ljava/awt/Component;)Ljava/awt/Component;

    .line 423
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setVisible(Z)V

    .line 424
    const-wide/high16 v2, 0x3fe0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Ljavax/swing/JSplitPane;->setDividerLocation(D)V

    .line 425
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setVisible(Z)V

    .line 428
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 429
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    const-string v3, "images/program16.gif"

    invoke-virtual {v2, v3}, Ljava/awt/Toolkit;->getImage(Ljava/lang/String;)Ljava/awt/Image;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setIconImage(Ljava/awt/Image;)V

    .line 430
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addMouseMotionListener(Ljava/awt/event/MouseMotionListener;)V

    .line 434
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    .line 435
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 444
    invoke-direct {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;-><init>()V

    .line 445
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setTitle(Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    .line 2487
    :try_start_0
    new-instance v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;

    invoke-direct {v0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;-><init>()V

    .line 2488
    .local v0, builder:Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;
    array-length v2, p0

    if-eqz v2, :cond_0

    .line 2489
    iget-object v2, v0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    .line 2490
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2498
    .end local v0           #builder:Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;
    :goto_0
    return-void

    .line 2492
    :catch_0
    move-exception v1

    .line 2494
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2496
    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method


# virtual methods
.method protected aboutAction()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 1448
    const-string v7, "Close"

    .line 1449
    .local v7, close:Ljava/lang/String;
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    const-string v1, "<html><center><font color=black>The HTML Parser <font color=blue><b>FilterBuilder</b></font><br><i>by Derrick Oswald</i>&nbsp;&nbsp;<b>DerrickOswald@users.sourceforge.net</b><br>http://htmlparser.org<br><br><font size=-2>Copyright &copy; 2005</font></center></html>"

    const-string v2, "About FilterBuilder"

    const/4 v3, -0x1

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v7}, Ljavax/swing/JOptionPane;->showOptionDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1461
    return-void
.end method

.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 2169
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v4

    .line 2177
    .local v4, object:Ljava/lang/Object;
    instance-of v5, v4, Ljavax/swing/JButton;

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 2178
    check-cast v5, Ljavax/swing/JButton;

    invoke-virtual {v5}, Ljavax/swing/JButton;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    .line 2184
    .local v0, action:Ljava/lang/String;
    :goto_0
    instance-of v5, v4, Ljava/awt/Component;

    if-eqz v5, :cond_0

    .line 2185
    check-cast v4, Ljava/awt/Component;

    .end local v4           #object:Ljava/lang/Object;
    iput-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mCurrentComponent:Ljava/awt/Component;

    .line 2187
    :cond_0
    if-eqz v0, :cond_1

    .line 2190
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 2191
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2201
    .end local v2           #method:Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    return-void

    .line 2179
    .end local v0           #action:Ljava/lang/String;
    .restart local v4       #object:Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, Ljavax/swing/JMenuItem;

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 2180
    check-cast v5, Ljavax/swing/JMenuItem;

    invoke-virtual {v5}, Ljavax/swing/JMenuItem;->getActionCommand()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_0

    .line 2182
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #action:Ljava/lang/String;
    goto :goto_0

    .line 2193
    .end local v4           #object:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 2195
    .local v3, nsme:Ljava/lang/NoSuchMethodException;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "no "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " method found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2197
    .end local v3           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 2199
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public addFilter(Ljavax/swing/JMenu;Ljavax/swing/JToolBar;Ljava/lang/String;)V
    .locals 7
    .parameter "menu"
    .parameter "toolbar"
    .parameter "class_name"

    .prologue
    .line 569
    invoke-static {p3}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->instantiate(Ljava/lang/String;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v1

    .line 570
    .local v1, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getNodeFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getIcon()Ljavax/swing/Icon;

    move-result-object v2

    .line 581
    .local v2, icon:Ljavax/swing/Icon;
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 583
    .local v5, text:Ljava/lang/String;
    new-instance v3, Ljavax/swing/JMenuItem;

    invoke-direct {v3}, Ljavax/swing/JMenuItem;-><init>()V

    .line 584
    .local v3, item:Ljavax/swing/JMenuItem;
    invoke-virtual {v3, p3}, Ljavax/swing/JMenuItem;->setName(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v3, v5}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 586
    const-string v6, "filterAction"

    invoke-virtual {v3, v6}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v3, v0}, Ljavax/swing/JMenuItem;->setToolTipText(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v3, v2}, Ljavax/swing/JMenuItem;->setIcon(Ljavax/swing/Icon;)V

    .line 591
    invoke-virtual {v3, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 592
    invoke-virtual {p1, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 594
    invoke-virtual {p0, p3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeFilterButton(Ljava/lang/String;)Ljavax/swing/JButton;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 596
    .end local v0           #description:Ljava/lang/String;
    .end local v2           #icon:Ljavax/swing/Icon;
    .end local v3           #item:Ljavax/swing/JMenuItem;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected addSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 1729
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->selectionContains(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1730
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1731
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSelected(Z)V

    .line 1732
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMoved:Z

    .line 1733
    return-void
.end method

.method protected classFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "file"

    .prologue
    const/4 v3, -0x1

    .line 873
    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, filesep:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 875
    .local v1, index:I
    if-eq v3, v1, :cond_0

    .line 876
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 878
    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 879
    if-eq v3, v1, :cond_1

    .line 880
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 882
    :cond_1
    return-object p1
.end method

.method protected clearSelection()V
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->selectSelection(Z)V

    .line 1769
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 1770
    return-void
.end method

.method public collapseAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1476
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setExpanded([Lorg/htmlparser/parserapplications/filterbuilder/Filter;ZZ)V

    .line 1477
    return-void
.end method

.method public collapseAllAction()V
    .locals 3

    .prologue
    .line 1492
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setExpanded([Lorg/htmlparser/parserapplications/filterbuilder/Filter;ZZ)V

    .line 1493
    return-void
.end method

.method protected copyAction()V
    .locals 4

    .prologue
    .line 1048
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->serializeSelection()Ljava/lang/String;

    move-result-object v2

    .line 1050
    .local v2, string:Ljava/lang/String;
    new-instance v1, Ljava/awt/datatransfer/StringSelection;

    invoke-direct {v1, v2}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 1051
    .local v1, contents:Ljava/awt/datatransfer/StringSelection;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v0

    .line 1052
    .local v0, cb:Ljava/awt/datatransfer/Clipboard;
    invoke-virtual {v0, v1, p0}, Ljava/awt/datatransfer/Clipboard;->setContents(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V

    .line 1053
    return-void
.end method

.method protected cutAction()V
    .locals 4

    .prologue
    .line 1028
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->serializeSelection()Ljava/lang/String;

    move-result-object v2

    .line 1030
    .local v2, string:Ljava/lang/String;
    new-instance v1, Ljava/awt/datatransfer/StringSelection;

    invoke-direct {v1, v2}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v1, contents:Ljava/awt/datatransfer/StringSelection;
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v0

    .line 1032
    .local v0, cb:Ljava/awt/datatransfer/Clipboard;
    invoke-virtual {v0, v1, p0}, Ljava/awt/datatransfer/Clipboard;->setContents(Ljava/awt/datatransfer/Transferable;Ljava/awt/datatransfer/ClipboardOwner;)V

    .line 1034
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->deleteSelection()V

    .line 1035
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->relayout()V

    .line 1036
    return-void
.end method

.method protected deleteAction()V
    .locals 0

    .prologue
    .line 1111
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->deleteSelection()V

    .line 1112
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->relayout()V

    .line 1113
    return-void
.end method

.method public deleteSelection()V
    .locals 5

    .prologue
    .line 1875
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    .line 1876
    .local v0, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 1878
    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosing(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v2

    .line 1879
    .local v2, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v2, :cond_0

    .line 1880
    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->removeFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1876
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1882
    :cond_0
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljavax/swing/JPanel;->remove(Ljava/awt/Component;)V

    goto :goto_1

    .line 1884
    .end local v2           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_1
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 1885
    return-void
.end method

.method public dragDropEnd(Ljava/awt/dnd/DragSourceDropEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2263
    invoke-virtual {p1}, Ljava/awt/dnd/DragSourceDropEvent;->getDropSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2267
    :cond_0
    return-void
.end method

.method public dragEnter(Ljava/awt/dnd/DragSourceDragEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2277
    return-void
.end method

.method public dragEnter(Ljava/awt/dnd/DropTargetDragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2326
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDragEvent;->getDropTargetContext()Ljava/awt/dnd/DropTargetContext;

    move-result-object v1

    .line 2327
    .local v1, context:Ljava/awt/dnd/DropTargetContext;
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetContext;->getComponent()Ljava/awt/Component;

    move-result-object v0

    .line 2330
    .local v0, component:Ljava/awt/Component;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    if-eq v0, v3, :cond_0

    .line 2331
    invoke-virtual {v0}, Ljava/awt/Component;->getParent()Ljava/awt/Container;

    move-result-object v0

    goto :goto_0

    .line 2332
    :cond_0
    instance-of v3, v0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 2333
    check-cast v2, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 2339
    .local v2, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :goto_1
    if-eqz v2, :cond_1

    .line 2340
    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->canAccept()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2341
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDragEvent;->rejectDrag()V

    .line 2344
    :cond_1
    :goto_2
    return-void

    .line 2335
    .end local v2           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    goto :goto_1

    .line 2343
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->setSelected(Z)V

    goto :goto_2
.end method

.method public dragExit(Ljava/awt/dnd/DragSourceEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2287
    return-void
.end method

.method public dragExit(Ljava/awt/dnd/DropTargetEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2360
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetEvent;->getDropTargetContext()Ljava/awt/dnd/DropTargetContext;

    move-result-object v1

    .line 2361
    .local v1, context:Ljava/awt/dnd/DropTargetContext;
    invoke-virtual {v1}, Ljava/awt/dnd/DropTargetContext;->getComponent()Ljava/awt/Component;

    move-result-object v0

    .line 2364
    .local v0, component:Ljava/awt/Component;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v3, v0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    if-eq v0, v3, :cond_0

    .line 2365
    invoke-virtual {v0}, Ljava/awt/Component;->getParent()Ljava/awt/Container;

    move-result-object v0

    goto :goto_0

    .line 2366
    :cond_0
    instance-of v3, v0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-eqz v3, :cond_2

    move-object v2, v0

    .line 2367
    check-cast v2, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 2373
    .local v2, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :goto_1
    if-eqz v2, :cond_1

    .line 2374
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->setSelected(Z)V

    .line 2375
    :cond_1
    return-void

    .line 2369
    .end local v2           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    goto :goto_1
.end method

.method public dragGestureRecognized(Ljava/awt/dnd/DragGestureEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 2235
    invoke-virtual {p1}, Ljava/awt/dnd/DragGestureEvent;->getComponent()Ljava/awt/Component;

    move-result-object v1

    .line 2238
    .local v1, component:Ljava/awt/Component;
    :try_start_0
    invoke-virtual {v1}, Ljava/awt/Component;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2239
    .local v0, cls:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2241
    invoke-static {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->instantiate(Ljava/lang/String;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v3

    .line 2242
    .local v3, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    new-instance v4, Ljava/awt/datatransfer/StringSelection;

    const/4 v5, 0x1

    new-array v5, v5, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v5}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->deconstitute([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/awt/datatransfer/StringSelection;-><init>(Ljava/lang/String;)V

    .line 2243
    .local v4, text:Ljava/awt/datatransfer/StringSelection;
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mDragSource:Ljava/awt/dnd/DragSource;

    sget-object v6, Ljava/awt/dnd/DragSource;->DefaultMoveDrop:Ljava/awt/Cursor;

    invoke-virtual {v5, p1, v6, v4, p0}, Ljava/awt/dnd/DragSource;->startDrag(Ljava/awt/dnd/DragGestureEvent;Ljava/awt/Cursor;Ljava/awt/datatransfer/Transferable;Ljava/awt/dnd/DragSourceListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2250
    .end local v0           #cls:Ljava/lang/String;
    .end local v3           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v4           #text:Ljava/awt/datatransfer/StringSelection;
    :cond_0
    :goto_0
    return-void

    .line 2246
    :catch_0
    move-exception v2

    .line 2248
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dragOver(Ljava/awt/dnd/DragSourceDragEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2297
    return-void
.end method

.method public dragOver(Ljava/awt/dnd/DropTargetDragEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2384
    return-void
.end method

.method public drop(Ljava/awt/dnd/DropTargetDropEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 2401
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->getDropTargetContext()Ljava/awt/dnd/DropTargetContext;

    move-result-object v2

    .line 2402
    .local v2, context:Ljava/awt/dnd/DropTargetContext;
    invoke-virtual {v2}, Ljava/awt/dnd/DropTargetContext;->getComponent()Ljava/awt/Component;

    move-result-object v1

    .line 2405
    .local v1, component:Ljava/awt/Component;
    :goto_0
    if-eqz v1, :cond_0

    instance-of v11, v1, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-nez v11, :cond_0

    iget-object v11, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    if-eq v1, v11, :cond_0

    .line 2406
    invoke-virtual {v1}, Ljava/awt/Component;->getParent()Ljava/awt/Container;

    move-result-object v1

    goto :goto_0

    .line 2407
    :cond_0
    instance-of v11, v1, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-eqz v11, :cond_3

    move-object v6, v1

    .line 2408
    check-cast v6, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 2416
    .local v6, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :goto_1
    const/4 v0, 0x0

    .line 2417
    .local v0, accept:Z
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->getTransferable()Ljava/awt/datatransfer/Transferable;

    move-result-object v9

    .line 2420
    .local v9, transferable:Ljava/awt/datatransfer/Transferable;
    sget-object v11, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v9, v11}, Ljava/awt/datatransfer/Transferable;->isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2422
    const/4 v0, 0x1

    .line 2423
    const/4 v11, 0x2

    invoke-virtual {p1, v11}, Ljava/awt/dnd/DropTargetDropEvent;->acceptDrop(I)V

    .line 2424
    sget-object v11, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v9, v11}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2425
    .local v8, s:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->getLocation()Ljava/awt/Point;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/awt/datatransfer/UnsupportedFlavorException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 2429
    .local v7, point:Ljava/awt/Point;
    :try_start_1
    new-instance v11, Lorg/htmlparser/Parser;

    iget-object v12, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v12}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v11}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->reconstitute(Ljava/lang/String;Lorg/htmlparser/Parser;)[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v5

    .line 2430
    .local v5, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    array-length v11, v5

    if-lez v11, :cond_1

    .line 2431
    invoke-virtual {p0, v5, v7, v6}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->insertFilters([Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/awt/Point;Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;)V

    .line 2432
    :cond_1
    if-eqz v6, :cond_2

    .line 2433
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->setSelected(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/awt/datatransfer/UnsupportedFlavorException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2440
    .end local v5           #filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/awt/dnd/DropTargetContext;->dropComplete(Z)V

    .line 2457
    .end local v7           #point:Ljava/awt/Point;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #transferable:Ljava/awt/datatransfer/Transferable;
    :goto_3
    return-void

    .line 2410
    .end local v0           #accept:Z
    .end local v6           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_3
    const/4 v6, 0x0

    .restart local v6       #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    goto :goto_1

    .line 2435
    .restart local v0       #accept:Z
    .restart local v7       #point:Ljava/awt/Point;
    .restart local v8       #s:Ljava/lang/String;
    .restart local v9       #transferable:Ljava/awt/datatransfer/Transferable;
    :catch_0
    move-exception v3

    .line 2437
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/awt/datatransfer/UnsupportedFlavorException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 2445
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #point:Ljava/awt/Point;
    .end local v8           #s:Ljava/lang/String;
    .end local v9           #transferable:Ljava/awt/datatransfer/Transferable;
    :catch_1
    move-exception v4

    .line 2447
    .local v4, exception:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 2448
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->rejectDrop()V

    goto :goto_3

    .line 2443
    .end local v4           #exception:Ljava/io/IOException;
    .restart local v9       #transferable:Ljava/awt/datatransfer/Transferable;
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->rejectDrop()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/awt/datatransfer/UnsupportedFlavorException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 2451
    .end local v9           #transferable:Ljava/awt/datatransfer/Transferable;
    :catch_2
    move-exception v10

    .line 2453
    .local v10, ufException:Ljava/awt/datatransfer/UnsupportedFlavorException;
    invoke-virtual {v10}, Ljava/awt/datatransfer/UnsupportedFlavorException;->printStackTrace()V

    .line 2454
    sget-object v11, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Exception"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v10}, Ljava/awt/datatransfer/UnsupportedFlavorException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p1}, Ljava/awt/dnd/DropTargetDropEvent;->rejectDrop()V

    goto :goto_3
.end method

.method public dropActionChanged(Ljava/awt/dnd/DragSourceDragEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2306
    return-void
.end method

.method public dropActionChanged(Ljava/awt/dnd/DropTargetDragEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2466
    return-void
.end method

.method protected executeAction()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1218
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v4

    .line 1219
    .local v4, selections:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    array-length v7, v4

    if-nez v7, :cond_0

    .line 1220
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v4

    .line 1221
    :cond_0
    array-length v7, v4

    if-eqz v7, :cond_1

    .line 1223
    new-instance v0, Lorg/htmlparser/beans/FilterBean;

    invoke-direct {v0}, Lorg/htmlparser/beans/FilterBean;-><init>()V

    .line 1224
    .local v0, bean:Lorg/htmlparser/beans/FilterBean;
    iget-object v7, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v7}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/htmlparser/beans/FilterBean;->setURL(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, v4}, Lorg/htmlparser/beans/FilterBean;->setFilters([Lorg/htmlparser/NodeFilter;)V

    .line 1228
    new-instance v2, Ljavax/swing/JInternalFrame;

    invoke-virtual {v0}, Lorg/htmlparser/beans/FilterBean;->getURL()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljavax/swing/JInternalFrame;-><init>(Ljava/lang/String;)V

    .line 1229
    .local v2, frame:Ljavax/swing/JInternalFrame;
    invoke-virtual {v2, v8}, Ljavax/swing/JInternalFrame;->setClosable(Z)V

    .line 1230
    invoke-virtual {v2, v8}, Ljavax/swing/JInternalFrame;->setResizable(Z)V

    .line 1231
    iget-object v7, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mOutput:Ljavax/swing/JDesktopPane;

    invoke-virtual {v7}, Ljavax/swing/JDesktopPane;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    .line 1232
    .local v1, dimension:Ljava/awt/Dimension;
    iget v7, v1, Ljava/awt/Dimension;->width:I

    iget v8, v1, Ljava/awt/Dimension;->height:I

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v2, v9, v9, v7, v8}, Ljavax/swing/JInternalFrame;->setBounds(IIII)V

    .line 1233
    new-instance v5, Ljavax/swing/JTree;

    new-instance v7, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;

    invoke-virtual {v0}, Lorg/htmlparser/beans/FilterBean;->getNodes()Lorg/htmlparser/util/NodeList;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;-><init>(Lorg/htmlparser/util/NodeList;)V

    invoke-direct {v5, v7}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeModel;)V

    .line 1234
    .local v5, tree:Ljavax/swing/JTree;
    invoke-virtual {v5, v9}, Ljavax/swing/JTree;->setRootVisible(Z)V

    .line 1235
    new-instance v7, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;

    invoke-direct {v7}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;-><init>()V

    invoke-virtual {v5, v7}, Ljavax/swing/JTree;->setCellRenderer(Ljavax/swing/tree/TreeCellRenderer;)V

    .line 1236
    new-instance v6, Ljavax/swing/JScrollPane;

    invoke-direct {v6, v5}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 1237
    .local v6, treeView:Ljavax/swing/JScrollPane;
    new-instance v7, Ljavax/swing/JScrollPane;

    const/16 v8, 0x14

    const/16 v9, 0x1e

    invoke-direct {v7, v6, v8, v9}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    invoke-virtual {v2, v7}, Ljavax/swing/JInternalFrame;->setContentPane(Ljava/awt/Container;)V

    .line 1247
    iget-object v7, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mOutput:Ljavax/swing/JDesktopPane;

    new-instance v8, Ljava/lang/Integer;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v2, v8}, Ljavax/swing/JDesktopPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 1250
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v2, v7}, Ljavax/swing/JInternalFrame;->setSelected(Z)V
    :try_end_0
    .catch Ljava/beans/PropertyVetoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :goto_0
    invoke-virtual {v2}, Ljavax/swing/JInternalFrame;->show()V

    .line 1258
    .end local v0           #bean:Lorg/htmlparser/beans/FilterBean;
    .end local v1           #dimension:Ljava/awt/Dimension;
    .end local v2           #frame:Ljavax/swing/JInternalFrame;
    .end local v5           #tree:Ljavax/swing/JTree;
    .end local v6           #treeView:Ljavax/swing/JScrollPane;
    :cond_1
    return-void

    .line 1252
    .restart local v0       #bean:Lorg/htmlparser/beans/FilterBean;
    .restart local v1       #dimension:Ljava/awt/Dimension;
    .restart local v2       #frame:Ljavax/swing/JInternalFrame;
    .restart local v5       #tree:Ljavax/swing/JTree;
    .restart local v6       #treeView:Ljavax/swing/JScrollPane;
    :catch_0
    move-exception v3

    .line 1254
    .local v3, pve:Ljava/beans/PropertyVetoException;
    invoke-virtual {v3}, Ljava/beans/PropertyVetoException;->printStackTrace()V

    goto :goto_0
.end method

.method protected exitAction()V
    .locals 0

    .prologue
    .line 1015
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->exitApplication()V

    .line 1016
    return-void
.end method

.method exitApplication()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1646
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setVisible(Z)V

    .line 1647
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->dispose()V

    .line 1648
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 1649
    return-void
.end method

.method public expandAction()V
    .locals 3

    .prologue
    .line 1468
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setExpanded([Lorg/htmlparser/parserapplications/filterbuilder/Filter;ZZ)V

    .line 1469
    return-void
.end method

.method public expandAllAction()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1484
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setExpanded([Lorg/htmlparser/parserapplications/filterbuilder/Filter;ZZ)V

    .line 1485
    return-void
.end method

.method protected fetchAction()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 1161
    new-instance v2, Ljavax/swing/JInternalFrame;

    iget-object v10, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v10}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljavax/swing/JInternalFrame;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v2, frame:Ljavax/swing/JInternalFrame;
    invoke-virtual {v2, v13}, Ljavax/swing/JInternalFrame;->setClosable(Z)V

    .line 1163
    invoke-virtual {v2, v13}, Ljavax/swing/JInternalFrame;->setResizable(Z)V

    .line 1164
    iget-object v10, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mOutput:Ljavax/swing/JDesktopPane;

    invoke-virtual {v10}, Ljavax/swing/JDesktopPane;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 1165
    .local v0, dimension:Ljava/awt/Dimension;
    iget v10, v0, Ljava/awt/Dimension;->width:I

    iget v11, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {v2, v12, v12, v10, v11}, Ljavax/swing/JInternalFrame;->setBounds(IIII)V

    .line 1166
    new-instance v4, Lorg/htmlparser/util/NodeList;

    invoke-direct {v4}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 1169
    .local v4, list:Lorg/htmlparser/util/NodeList;
    :try_start_0
    new-instance v5, Lorg/htmlparser/Parser;

    iget-object v10, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v10}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1172
    .local v5, parser:Lorg/htmlparser/Parser;
    :try_start_1
    invoke-virtual {v5}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v3

    .local v3, iterator:Lorg/htmlparser/util/NodeIterator;
    :goto_0
    invoke-interface {v3}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1173
    invoke-interface {v3}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V
    :try_end_1
    .catch Lorg/htmlparser/util/EncodingChangeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1175
    .end local v3           #iterator:Lorg/htmlparser/util/NodeIterator;
    :catch_0
    move-exception v1

    .line 1177
    .local v1, ece:Lorg/htmlparser/util/EncodingChangeException;
    :try_start_2
    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->removeAll()V

    .line 1178
    invoke-virtual {v5}, Lorg/htmlparser/Parser;->reset()V

    .line 1179
    invoke-virtual {v5}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v3

    .restart local v3       #iterator:Lorg/htmlparser/util/NodeIterator;
    :goto_1
    invoke-interface {v3}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1180
    invoke-interface {v3}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V
    :try_end_2
    .catch Lorg/htmlparser/util/ParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1183
    .end local v1           #ece:Lorg/htmlparser/util/EncodingChangeException;
    .end local v3           #iterator:Lorg/htmlparser/util/NodeIterator;
    .end local v5           #parser:Lorg/htmlparser/Parser;
    :catch_1
    move-exception v6

    .line 1185
    .local v6, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v6}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    .line 1187
    .end local v6           #pe:Lorg/htmlparser/util/ParserException;
    :cond_0
    new-instance v8, Ljavax/swing/JTree;

    new-instance v10, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;

    invoke-direct {v10, v4}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;-><init>(Lorg/htmlparser/util/NodeList;)V

    invoke-direct {v8, v10}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeModel;)V

    .line 1188
    .local v8, tree:Ljavax/swing/JTree;
    invoke-virtual {v8, v12}, Ljavax/swing/JTree;->setRootVisible(Z)V

    .line 1189
    new-instance v10, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;

    invoke-direct {v10}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;-><init>()V

    invoke-virtual {v8, v10}, Ljavax/swing/JTree;->setCellRenderer(Ljavax/swing/tree/TreeCellRenderer;)V

    .line 1190
    new-instance v9, Ljavax/swing/JScrollPane;

    invoke-direct {v9, v8}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 1191
    .local v9, treeView:Ljavax/swing/JScrollPane;
    new-instance v10, Ljavax/swing/JScrollPane;

    const/16 v11, 0x14

    const/16 v12, 0x1e

    invoke-direct {v10, v9, v11, v12}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;II)V

    invoke-virtual {v2, v10}, Ljavax/swing/JInternalFrame;->setContentPane(Ljava/awt/Container;)V

    .line 1195
    iget-object v10, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mOutput:Ljavax/swing/JDesktopPane;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v2, v11}, Ljavax/swing/JDesktopPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 1198
    const/4 v10, 0x1

    :try_start_3
    invoke-virtual {v2, v10}, Ljavax/swing/JInternalFrame;->setSelected(Z)V
    :try_end_3
    .catch Ljava/beans/PropertyVetoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1204
    :goto_2
    invoke-virtual {v2}, Ljavax/swing/JInternalFrame;->show()V

    .line 1205
    return-void

    .line 1200
    :catch_2
    move-exception v7

    .line 1202
    .local v7, pve:Ljava/beans/PropertyVetoException;
    invoke-virtual {v7}, Ljava/beans/PropertyVetoException;->printStackTrace()V

    goto :goto_2
.end method

.method protected filterAction()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x32

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1126
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mCurrentComponent:Ljava/awt/Component;

    invoke-virtual {v5}, Ljava/awt/Component;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, cls:Ljava/lang/String;
    invoke-static {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->instantiate(Ljava/lang/String;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v1

    .line 1131
    .local v1, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :try_start_0
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getNodeFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v5

    new-instance v6, Lorg/htmlparser/Parser;

    iget-object v7, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v7}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->wrap(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1138
    :goto_0
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->isSingleSelection()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {p0, v5}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v2

    .local v2, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v2, :cond_0

    .line 1141
    new-array v5, v9, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    aput-object v1, v5, v8

    invoke-virtual {p0, v5, v11, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->insertFilters([Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/awt/Point;Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;)V

    .line 1148
    .end local v2           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :goto_1
    return-void

    .line 1133
    :catch_0
    move-exception v3

    .line 1135
    .local v3, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v3}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    goto :goto_0

    .line 1145
    .end local v3           #pe:Lorg/htmlparser/util/ParserException;
    :cond_0
    new-instance v4, Ljava/awt/Point;

    invoke-direct {v4, v10, v10}, Ljava/awt/Point;-><init>(II)V

    .line 1146
    .local v4, point:Ljava/awt/Point;
    new-array v5, v9, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    aput-object v1, v5, v8

    invoke-virtual {p0, v5, v4, v11}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->insertFilters([Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/awt/Point;Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;)V

    goto :goto_1
.end method

.method protected filteringAction()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 1298
    const-string v1, "<html>The HTML Parser filter subsystem extracts items from a web page,<br>corresponding to the use-case \'I want this little piece of information from http://yadda\'.<br>The web page is considered a heirarchical tree of nodes. Usually the root node is &lt;html&gt;,<br>intermediate level nodes are &lt;div&gt; and &lt;table&gt; for example,<br>and leaf nodes are things like text or &lt;img&gt;.<br>Any node that isn\'t the root node has a \'parent\' node.<br>Leaf nodes, by definition, have no \'children\'.<br>A filter is a Java class that answers the simple question:<br><pre>Is this node acceptable? True or false.</pre><br>Some filters know the answer just by looking at the node,<br>while others must ask other filters, sometimes looking up or down the node heirarchy.<br><b>The FilterBuilder is a program for making other programs that use filters.</b><br>By combining different types of filters, specific nodes can be isolated from the<br>target web page.<br>The results are usually passed on to another part of the users program<br>that does something useful with them.<br>The filters available include:<br><ul><li>AndFilter - The main \'combining\' filter, answers <code>true</code> only if<br>all it\'s subfilters (predicates) are <code>true</code>.</li><li>OrFilter - A \'combining\' filter that answers <code>true</code> if<br>any of it\'s subfilters (predicates) are <code>true</code>.</li><li>NotFilter - A \'reversing\' filter that answers <code>true</code> if<br>it\'s subfilter (predicate) is <code>false</code>.</li><li>StringFilter - A \'leaf\' filter that answers <code>true</code> if<br>the node is text and it contains a certain sequence of characters.<br>It can be made case insensitive, but in this case a \'locale\' must be<br>supplied as a context for upper-case conversion.</li><li>RegexFilter - A \'leaf\' filter that answers <code>true</code> if<br>the node is text and it contains a certain pattern (regular expression).<br>Regular expressions are descibed in the java.util.regex.Pattern class documentation.</li><li>TagNameFilter - A filter that answers <code>true</code> if<br>the node is a tag and it has a certain name,i.e. &lt;div&gt; would match the name <code>DIV</code>.</li><li>NodeClassFilter - A filter that answers <code>true</code> if<br>the node is a certain tag class. Not recommended, use TagNameFilter instead.</li><li>HasAttributeFilter - A filter that answers <code>true</code> if<br>the node is a tag and it has a certain attribute,<br>i.e. &lt;script language=javascript&gt; would match the attribute <code>LANGUAGE</code>.<br>It can be further restricted to have a certain attribute value as well,<br>i.e. \'javascript\' in this example.</li><li>HasParentFilter - A filter that answers <code>true</code> if<br>the node is a child of a node that is acceptable to a certain filter.<br>This can be made recursive, which means the acceptable parent can be<br>further up the heirarchy than just the immediate parent node.</li><li>HasChildFilter - A filter that answers <code>true</code> if<br>the node is a parent of a node that is acceptable to a certain filter.<br>This can be made recursive, which means the acceptable child can be<br>further down the heirarchy than just the immediate children nodes.</li><li>HasSiblingFilter - A filter that answers <code>true</code> if<br>the node is a sibling (they have a common parent) of a node that is<br>acceptable to a certain filter.</li></ul></html>"

    .line 1354
    .local v1, instructions:Ljava/lang/String;
    const-string v7, "Close"

    .line 1355
    .local v7, close:Ljava/lang/String;
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    const-string v2, "FilterBuilder Instructons"

    const/4 v3, -0x1

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v7}, Ljavax/swing/JOptionPane;->showOptionDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1367
    return-void
.end method

.method protected getBasePoint()Ljava/awt/Point;
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mBasePoint:Ljava/awt/Point;

    return-object v0
.end method

.method protected getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    .locals 3
    .parameter "component"

    .prologue
    .line 676
    instance-of v2, p1, Ljava/awt/Container;

    if-eqz v2, :cond_1

    .line 678
    check-cast p1, Ljava/awt/Container;

    .end local p1
    invoke-virtual {p1}, Ljava/awt/Container;->getComponents()[Ljava/awt/Component;

    move-result-object v1

    .line 679
    .local v1, list:[Ljava/awt/Component;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 680
    aget-object v2, v1, v0

    instance-of v2, v2, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-eqz v2, :cond_0

    .line 681
    aget-object v2, v1, v0

    check-cast v2, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 684
    .end local v0           #i:I
    .end local v1           #list:[Ljava/awt/Component;
    :goto_1
    return-object v2

    .line 679
    .restart local v0       #i:I
    .restart local v1       #list:[Ljava/awt/Component;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 684
    .end local v0           #i:I
    .end local v1           #list:[Ljava/awt/Component;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getEnclosing(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    .locals 1
    .parameter "component"

    .prologue
    .line 660
    :cond_0
    invoke-virtual {p1}, Ljava/awt/Component;->getParent()Ljava/awt/Container;

    move-result-object p1

    .line 662
    if-eqz p1, :cond_1

    instance-of v0, p1, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-eqz v0, :cond_0

    .line 664
    :cond_1
    check-cast p1, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .end local p1
    return-object p1
.end method

.method public getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1573
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    invoke-virtual {v2}, Ljavax/swing/JPanel;->getComponents()[Ljava/awt/Component;

    move-result-object v0

    .line 1574
    .local v0, components:[Ljava/awt/Component;
    array-length v2, v0

    new-array v1, v2, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 1575
    .local v1, ret:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1577
    return-object v1
.end method

.method protected getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .locals 2

    .prologue
    .line 1832
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v0, v1, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 1833
    .local v0, ret:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1835
    return-object v0
.end method

.method protected getURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .parameter "spec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 517
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .local v0, ret:Ljava/net/URL;
    if-nez v0, :cond_0

    .line 518
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mDocumentBase:Ljava/net/URL;

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    const-string v2, "//"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 519
    new-instance v0, Ljava/net/URL;

    .end local v0           #ret:Ljava/net/URL;
    sget-object v1, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mDocumentBase:Ljava/net/URL;

    invoke-direct {v0, v1, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 523
    .restart local v0       #ret:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v0

    .line 521
    :cond_1
    new-instance v0, Ljava/net/URL;

    .end local v0           #ret:Ljava/net/URL;
    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v0       #ret:Ljava/net/URL;
    goto :goto_0
.end method

.method protected hintsAction()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 1415
    const-string v1, "<html>Hints:<br><ul><li>There is no undo yet, so save often.</li><li>Recursive HasParent and HasChild filters can be costly.</li><li>RegexFilter is more expensive than StringFilter.</li><li>The order of predicates in And and Or filters matters for performance,<br>put cheap tests first.</li><li>The same node may show up more than once in the results,<br>and at more than one nesting depth, depending on the filter used.</li><li>Typing in a tag name in the TagName filter is not recommended,<br>since extraneous characters can be added. Use an item from the list instead.</li></ul></html>"

    .line 1428
    .local v1, instructions:Ljava/lang/String;
    const-string v7, "Close"

    .line 1429
    .local v7, close:Ljava/lang/String;
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    const-string v2, "FilterBuilder Hints"

    const/4 v3, -0x1

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v7}, Ljavax/swing/JOptionPane;->showOptionDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1441
    return-void
.end method

.method protected insertFilters([Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/awt/Point;Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;)V
    .locals 4
    .parameter "filters"
    .parameter "point"
    .parameter "list"

    .prologue
    .line 611
    if-nez p3, :cond_0

    .line 613
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 615
    aget-object v2, p1, v1

    invoke-virtual {v2, p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setLocation(Ljava/awt/Point;)V

    .line 616
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 617
    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 618
    .local v0, dimension:Ljava/awt/Dimension;
    iget v2, p2, Ljava/awt/Point;->y:I

    iget v3, v0, Ljava/awt/Dimension;->height:I

    add-int/2addr v2, v3

    iput v2, p2, Ljava/awt/Point;->y:I

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v0           #dimension:Ljava/awt/Dimension;
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 623
    aget-object v2, p1, v1

    invoke-virtual {p3, v2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->addFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 622
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 624
    :cond_1
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupDropTargets([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 625
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupMouseListeners([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 626
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->relayout()V

    .line 627
    return-void
.end method

.method protected instructionsAction()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 1265
    const-string v1, "<html>Enter the target URL in the text box at the bottom of the window.<br>Choose \'Fetch Page\' from the Operations menu to see the whole page.<br>Pick filters from the Filter menu or drag them from the toolbar.<br>Filters such as And, Or, Not, HasParent, HasChild and HasSibling contain other filters:<br><ul><li>drag new filters into their blank areas at the bottom</li><li>cut an existing filter and paste into a selected filter</li></ul>Build the filter incrementally, choosing \'Execute Filter\' to test the selected filter.<br>Save creates a .java file that runs the top level filter.<br>Right click on a filter displays a pop-up menu.<br>Double click on a blue item in the result pane expands the tree.</html>"

    .line 1278
    .local v1, instructions:Ljava/lang/String;
    const-string v7, "Close"

    .line 1279
    .local v7, close:Ljava/lang/String;
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    const-string v2, "FilterBuilder Instructons"

    const/4 v3, -0x1

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v7}, Ljavax/swing/JOptionPane;->showOptionDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1291
    return-void
.end method

.method public isSingleSelection()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1894
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected lastSelected()Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .locals 2

    .prologue
    .line 1816
    const/4 v0, 0x0

    .line 1818
    .local v0, ret:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1819
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ret:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    check-cast v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 1821
    .restart local v0       #ret:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :cond_0
    return-object v0
.end method

.method public lostOwnership(Ljava/awt/datatransfer/Clipboard;Ljava/awt/datatransfer/Transferable;)V
    .locals 2
    .parameter "clipboard"
    .parameter "contents"

    .prologue
    .line 2215
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "lost clipboard ownership"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2216
    return-void
.end method

.method public makeFilterButton(Ljava/lang/String;)Ljavax/swing/JButton;
    .locals 4
    .parameter "class_name"

    .prologue
    const/4 v3, 0x0

    .line 537
    new-instance v1, Ljavax/swing/JButton;

    invoke-direct {v1}, Ljavax/swing/JButton;-><init>()V

    .line 538
    .local v1, ret:Ljavax/swing/JButton;
    invoke-static {p1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->instantiate(Ljava/lang/String;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    .line 539
    .local v0, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v1, p1}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    .line 543
    new-instance v2, Ljava/awt/Insets;

    invoke-direct {v2, v3, v3, v3, v3}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setMargin(Ljava/awt/Insets;)V

    .line 544
    invoke-virtual {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getIcon()Ljavax/swing/Icon;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setIcon(Ljavax/swing/Icon;)V

    .line 545
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mDragSource:Ljava/awt/dnd/DragSource;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, p0}, Ljava/awt/dnd/DragSource;->createDefaultDragGestureRecognizer(Ljava/awt/Component;ILjava/awt/dnd/DragGestureListener;)Ljava/awt/dnd/DragGestureRecognizer;

    .line 549
    const-string v2, "filterAction"

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v1, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 553
    :cond_0
    return-object v1
.end method

.method protected makeMenuButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjavax/swing/KeyStroke;Ljavax/swing/JToolBar;Ljavax/swing/JMenu;)V
    .locals 8
    .parameter "name"
    .parameter "description"
    .parameter "text"
    .parameter "mnemonic"
    .parameter "key"
    .parameter "toolbar"
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    .line 472
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, command:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljavax/swing/ImageIcon;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "images/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ".gif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .local v3, icon:Ljavax/swing/ImageIcon;
    :goto_0
    new-instance v4, Ljavax/swing/JMenuItem;

    invoke-direct {v4}, Ljavax/swing/JMenuItem;-><init>()V

    .line 483
    .local v4, item:Ljavax/swing/JMenuItem;
    invoke-virtual {v4, p3}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 484
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "Action"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v4, p5}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 486
    invoke-virtual {v4, p4}, Ljavax/swing/JMenuItem;->setMnemonic(I)V

    .line 487
    invoke-virtual {v4, v3}, Ljavax/swing/JMenuItem;->setIcon(Ljavax/swing/Icon;)V

    .line 488
    invoke-virtual {v4, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 489
    invoke-virtual {p7, v4}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 491
    if-eqz p6, :cond_0

    .line 493
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    .line 494
    .local v0, button:Ljavax/swing/JButton;
    invoke-virtual {v0, v7}, Ljavax/swing/JButton;->setDefaultCapable(Z)V

    .line 495
    invoke-virtual {v0, p2}, Ljavax/swing/JButton;->setToolTipText(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p4}, Ljavax/swing/JButton;->setMnemonic(I)V

    .line 497
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "Action"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V

    .line 498
    new-instance v5, Ljava/awt/Insets;

    invoke-direct {v5, v7, v7, v7, v7}, Ljava/awt/Insets;-><init>(IIII)V

    invoke-virtual {v0, v5}, Ljavax/swing/JButton;->setMargin(Ljava/awt/Insets;)V

    .line 499
    invoke-virtual {v0, v3}, Ljavax/swing/JButton;->setIcon(Ljavax/swing/Icon;)V

    .line 500
    invoke-virtual {v0, p0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 501
    invoke-virtual {p6, v0}, Ljavax/swing/JToolBar;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 503
    .end local v0           #button:Ljavax/swing/JButton;
    :cond_0
    return-void

    .line 477
    .end local v3           #icon:Ljavax/swing/ImageIcon;
    .end local v4           #item:Ljavax/swing/JMenuItem;
    :catch_0
    move-exception v2

    .line 479
    .local v2, error:Ljava/net/MalformedURLException;
    const/4 v3, 0x0

    .restart local v3       #icon:Ljavax/swing/ImageIcon;
    goto :goto_0
.end method

.method protected makeProgram(Ljava/lang/String;Ljava/lang/StringBuffer;Lorg/htmlparser/beans/FilterBean;)V
    .locals 10
    .parameter "name"
    .parameter "out"
    .parameter "bean"

    .prologue
    .line 739
    invoke-virtual {p3}, Lorg/htmlparser/beans/FilterBean;->getFilters()[Lorg/htmlparser/NodeFilter;

    move-result-object v6

    check-cast v6, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-object v2, v6

    check-cast v2, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 741
    .local v2, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    const/4 v6, 0x3

    new-array v1, v6, [I

    .line 742
    .local v1, context:[I
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 744
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 745
    const-string v6, "// Generated by FilterBuilder. http://htmlparser.org"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 746
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 747
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 748
    const-string v6, "// "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    :try_start_0
    invoke-static {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->deconstitute([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    :goto_0
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 758
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 760
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 761
    const-string v6, "import org.htmlparser.*;"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 762
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 763
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 764
    const-string v6, "import org.htmlparser.filters.*;"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 765
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 766
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 767
    const-string v6, "import org.htmlparser.beans.*;"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 768
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 769
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 770
    const-string v6, "import org.htmlparser.util.*;"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 771
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 772
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 774
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 775
    const-string v6, "public class "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 776
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 777
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 778
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 779
    const-string v6, "{"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    const/4 v6, 0x0

    const/4 v7, 0x4

    aput v7, v1, v6

    .line 782
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 783
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 784
    const-string v6, "public static void main (String args[])"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 785
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 786
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 787
    const-string v6, "{"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 790
    const/4 v6, 0x0

    const/16 v7, 0x8

    aput v7, v1, v6

    .line 791
    array-length v6, v2

    new-array v5, v6, [Ljava/lang/String;

    .line 792
    .local v5, names:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_0

    .line 793
    aget-object v6, v2, v3

    invoke-virtual {v6, p2, v1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 792
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 753
    .end local v3           #i:I
    .end local v5           #names:[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 755
    .local v4, ioe:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 795
    .end local v4           #ioe:Ljava/io/IOException;
    .restart local v3       #i:I
    .restart local v5       #names:[Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "array"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v7, 0x2

    aget v8, v1, v7

    add-int/lit8 v9, v8, 0x1

    aput v9, v1, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, array:Ljava/lang/String;
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 797
    const-string v6, "NodeFilter[] "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 798
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 799
    const-string v6, " = new NodeFilter["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 800
    array-length v6, v2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 801
    const-string v6, "];"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 802
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 803
    const/4 v3, 0x0

    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 805
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 806
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    const-string v6, "["

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 808
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 809
    const-string v6, "] = "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 810
    aget-object v6, v5, v3

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 811
    const-string v6, ";"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 812
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 803
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 815
    :cond_1
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 816
    const-string v6, "FilterBean bean = new FilterBean ();"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 818
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 819
    const-string v6, "bean.setFilters ("

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 821
    const-string v6, ");"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 823
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 824
    const-string v6, "if (0 != args.length)"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 825
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 826
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 827
    const-string v6, "{"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 828
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 829
    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v1, v6

    .line 830
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 831
    const-string v6, "bean.setURL (args[0]);"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 832
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 833
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 834
    const-string v6, "System.out.println (bean.getNodes ().toHtml ());"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 835
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 836
    const/4 v6, 0x0

    const/16 v7, 0x8

    aput v7, v1, v6

    .line 837
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 838
    const-string v6, "}"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 840
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 841
    const-string v6, "else"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 843
    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v1, v6

    .line 844
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 845
    const-string v6, "System.out.println (\"Usage: java -classpath .:htmlparser.jar "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 846
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 847
    const-string v6, " <url>\");"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 848
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 850
    const/4 v6, 0x0

    const/4 v7, 0x4

    aput v7, v1, v6

    .line 851
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 852
    const-string v6, "}"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 853
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 855
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 856
    const/4 v6, 0x0

    aget v6, v1, v6

    invoke-static {p2, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->spaces(Ljava/lang/StringBuffer;I)V

    .line 857
    const-string v6, "}"

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 858
    invoke-static {p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->newline(Ljava/lang/StringBuffer;)V

    .line 859
    return-void
.end method

.method public mouseClicked(Ljava/awt/event/MouseEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const/4 v11, -0x1

    .line 1914
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 1915
    .local v0, component:Ljava/lang/Object;
    instance-of v10, v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    if-eqz v10, :cond_b

    move-object v3, v0

    .line 1917
    check-cast v3, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 1918
    .local v3, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getModifiers()I

    move-result v8

    .line 1919
    .local v8, modifiers:I
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->selectionContains(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Z

    move-result v1

    .line 1921
    .local v1, contained:Z
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_6

    .line 1924
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v7

    .line 1925
    .local v7, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v7, :cond_1

    .line 1926
    invoke-virtual {v7}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v4

    .line 1929
    .local v4, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :goto_0
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->lastSelected()Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v6

    .line 1930
    .local v6, last:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    if-nez v6, :cond_2

    .line 1931
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1974
    .end local v1           #contained:Z
    .end local v3           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v4           #filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v6           #last:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v7           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    .end local v8           #modifiers:I
    :cond_0
    :goto_1
    return-void

    .line 1928
    .restart local v1       #contained:Z
    .restart local v3       #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .restart local v7       #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    .restart local v8       #modifiers:I
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v4

    .restart local v4       #filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    goto :goto_0

    .line 1934
    .restart local v6       #last:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :cond_2
    const/4 v2, -0x1

    .line 1935
    .local v2, current:I
    const/4 v9, -0x1

    .line 1936
    .local v9, recent:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v10, v4

    if-ge v5, v10, :cond_5

    .line 1938
    aget-object v10, v4, v5

    if-ne v10, v3, :cond_3

    .line 1939
    move v2, v5

    .line 1940
    :cond_3
    aget-object v10, v4, v5

    if-ne v10, v6, :cond_4

    .line 1941
    move v9, v5

    .line 1936
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1943
    :cond_5
    if-eq v2, v11, :cond_0

    if-eq v9, v11, :cond_0

    .line 1944
    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1945
    :goto_3
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    if-gt v5, v10, :cond_0

    .line 1946
    aget-object v10, v4, v5

    invoke-virtual {p0, v10}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1945
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1949
    .end local v2           #current:I
    .end local v4           #filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v5           #i:I
    .end local v6           #last:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v7           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    .end local v9           #recent:I
    :cond_6
    and-int/lit8 v10, v8, 0x2

    if-eqz v10, :cond_8

    .line 1952
    if-eqz v1, :cond_7

    .line 1953
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->removeSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    goto :goto_1

    .line 1955
    :cond_7
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    goto :goto_1

    .line 1957
    :cond_8
    and-int/lit8 v10, v8, 0x4

    if-eqz v10, :cond_a

    .line 1959
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->selectionContains(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 1961
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->clearSelection()V

    .line 1962
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1964
    :cond_9
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->showContextMenu(Ljava/awt/event/MouseEvent;)V

    goto :goto_1

    .line 1968
    :cond_a
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->clearSelection()V

    .line 1969
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->addSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    goto :goto_1

    .line 1973
    .end local v1           #contained:Z
    .end local v3           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v8           #modifiers:I
    :cond_b
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->clearSelection()V

    goto :goto_1
.end method

.method public declared-synchronized mouseDragged(Ljava/awt/event/MouseEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    .line 2045
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v2

    .line 2046
    .local v2, component:Ljava/lang/Object;
    instance-of v7, v2, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    if-eqz v7, :cond_0

    .line 2048
    move-object v0, v2

    check-cast v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-object v3, v0

    .line 2049
    .local v3, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->selectionContains(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2051
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosing(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_0

    .line 2054
    :try_start_1
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getBasePoint()Ljava/awt/Point;

    move-result-object v1

    .line 2055
    .local v1, base:Ljava/awt/Point;
    if-eqz v1, :cond_0

    .line 2057
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object v4

    .line 2059
    .local v4, newpoint:Ljava/awt/Point;
    invoke-virtual {v3}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getLocation()Ljava/awt/Point;

    move-result-object v6

    .line 2060
    .local v6, upperleft:Ljava/awt/Point;
    iget v7, v6, Ljava/awt/Point;->x:I

    iget v8, v6, Ljava/awt/Point;->y:I

    invoke-virtual {v4, v7, v8}, Ljava/awt/Point;->translate(II)V

    .line 2062
    new-instance v5, Ljava/awt/Point;

    iget v7, v4, Ljava/awt/Point;->x:I

    iget v8, v1, Ljava/awt/Point;->x:I

    sub-int/2addr v7, v8

    iget v8, v4, Ljava/awt/Point;->y:I

    iget v9, v1, Ljava/awt/Point;->y:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v7, v8}, Ljava/awt/Point;-><init>(II)V

    .line 2066
    .local v5, translation:Ljava/awt/Point;
    invoke-virtual {p0, v4}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setBasePoint(Ljava/awt/Point;)V

    .line 2068
    invoke-virtual {p0, v5}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->moveSelection(Ljava/awt/Point;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2078
    .end local v1           #base:Ljava/awt/Point;
    .end local v3           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v4           #newpoint:Ljava/awt/Point;
    .end local v5           #translation:Ljava/awt/Point;
    .end local v6           #upperleft:Ljava/awt/Point;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2076
    .restart local v3       #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mouseClicked(Ljava/awt/event/MouseEvent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2045
    .end local v2           #component:Ljava/lang/Object;
    .end local v3           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 2071
    .restart local v2       #component:Ljava/lang/Object;
    .restart local v3       #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public mouseEntered(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 1990
    return-void
.end method

.method public mouseExited(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 1998
    return-void
.end method

.method public mouseMoved(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2088
    return-void
.end method

.method public mousePressed(Ljava/awt/event/MouseEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 2010
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    .line 2011
    .local v0, component:Ljava/lang/Object;
    instance-of v3, v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    if-eqz v3, :cond_0

    .line 2014
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getPoint()Ljava/awt/Point;

    move-result-object v1

    .line 2015
    .local v1, newpoint:Ljava/awt/Point;
    check-cast v0, Ljava/awt/Component;

    .end local v0           #component:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/awt/Component;->getLocation()Ljava/awt/Point;

    move-result-object v2

    .line 2016
    .local v2, upperleft:Ljava/awt/Point;
    iget v3, v2, Ljava/awt/Point;->x:I

    iget v4, v2, Ljava/awt/Point;->y:I

    invoke-virtual {v1, v3, v4}, Ljava/awt/Point;->translate(II)V

    .line 2017
    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setBasePoint(Ljava/awt/Point;)V

    .line 2021
    .end local v1           #newpoint:Ljava/awt/Point;
    .end local v2           #upperleft:Ljava/awt/Point;
    :goto_0
    return-void

    .line 2020
    .restart local v0       #component:Ljava/lang/Object;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setBasePoint(Ljava/awt/Point;)V

    goto :goto_0
.end method

.method public mouseReleased(Ljava/awt/event/MouseEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 1982
    return-void
.end method

.method protected moveSelection(Ljava/awt/Point;)V
    .locals 7
    .parameter "translation"

    .prologue
    .line 1782
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1783
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1785
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 1786
    .local v1, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getLocation()Ljava/awt/Point;

    move-result-object v3

    .line 1787
    .local v3, point:Ljava/awt/Point;
    iget v4, p1, Ljava/awt/Point;->x:I

    iget v5, p1, Ljava/awt/Point;->y:I

    invoke-virtual {v3, v4, v5}, Ljava/awt/Point;->translate(II)V

    .line 1788
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getTreeLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1790
    :try_start_0
    iget v4, v3, Ljava/awt/Point;->x:I

    iget v6, v3, Ljava/awt/Point;->y:I

    invoke-virtual {v1, v4, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setLocation(II)V

    .line 1791
    monitor-exit v5

    .line 1783
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1791
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1793
    .end local v1           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v3           #point:Ljava/awt/Point;
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMoved:Z

    .line 1794
    return-void
.end method

.method protected newAction()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    invoke-virtual {v0}, Ljavax/swing/JPanel;->removeAll()V

    .line 941
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 942
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->relayout()V

    .line 943
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 10
    .parameter "name"

    .prologue
    .line 1606
    :try_start_0
    new-instance v7, Ljava/io/LineNumberReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 1607
    .local v7, reader:Ljava/io/LineNumberReader;
    :cond_0
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, line:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1608
    const-string v8, "// ["

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1610
    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 1613
    :try_start_1
    new-instance v8, Lorg/htmlparser/Parser;

    iget-object v9, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v9}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v8}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->reconstitute(Ljava/lang/String;Lorg/htmlparser/Parser;)[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v1

    .line 1614
    .local v1, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    iget-object v8, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    invoke-virtual {v8}, Ljavax/swing/JPanel;->removeAll()V

    .line 1615
    new-instance v6, Ljava/awt/Point;

    invoke-direct {v6}, Ljava/awt/Point;-><init>()V

    .line 1616
    .local v6, point:Ljava/awt/Point;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v1

    if-ge v2, v8, :cond_1

    .line 1618
    aget-object v8, v1, v2

    invoke-virtual {v8}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 1619
    .local v0, dimension:Ljava/awt/Dimension;
    iget-object v8, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1620
    aget-object v8, v1, v2

    invoke-virtual {v8, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setLocation(Ljava/awt/Point;)V

    .line 1621
    iget v8, v6, Ljava/awt/Point;->y:I

    iget v9, v0, Ljava/awt/Dimension;->height:I

    add-int/2addr v8, v9

    iput v8, v6, Ljava/awt/Point;->y:I

    .line 1616
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1623
    .end local v0           #dimension:Ljava/awt/Dimension;
    :cond_1
    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupMouseListeners([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1624
    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupDropTargets([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1625
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->relayout()V
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1633
    .end local v1           #filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v2           #i:I
    .end local v6           #point:Ljava/awt/Point;
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/LineNumberReader;->close()V

    .line 1639
    .end local v4           #line:Ljava/lang/String;
    .end local v7           #reader:Ljava/io/LineNumberReader;
    :goto_2
    return-void

    .line 1627
    .restart local v4       #line:Ljava/lang/String;
    .restart local v7       #reader:Ljava/io/LineNumberReader;
    :catch_0
    move-exception v5

    .line 1629
    .local v5, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v5}, Lorg/htmlparser/util/ParserException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1635
    .end local v4           #line:Ljava/lang/String;
    .end local v5           #pe:Lorg/htmlparser/util/ParserException;
    .end local v7           #reader:Ljava/io/LineNumberReader;
    :catch_1
    move-exception v3

    .line 1637
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected openAction()V
    .locals 4

    .prologue
    .line 953
    new-instance v0, Ljava/awt/FileDialog;

    invoke-direct {v0, p0}, Ljava/awt/FileDialog;-><init>(Ljava/awt/Frame;)V

    .line 954
    .local v0, dialog:Ljava/awt/FileDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/awt/FileDialog;->setMode(I)V

    .line 955
    const-string v2, "Open"

    invoke-virtual {v0, v2}, Ljava/awt/FileDialog;->setTitle(Ljava/lang/String;)V

    .line 956
    sget-object v2, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mHomeDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/awt/FileDialog;->setDirectory(Ljava/lang/String;)V

    .line 957
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/awt/FileDialog;->setVisible(Z)V

    .line 958
    invoke-virtual {v0}, Ljava/awt/FileDialog;->getFile()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 960
    invoke-virtual {v0}, Ljava/awt/FileDialog;->getDirectory()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mHomeDir:Ljava/lang/String;

    .line 961
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mHomeDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/awt/FileDialog;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->open(Ljava/lang/String;)V

    .line 963
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "HTML Parser FilterBuilder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setTitle(Ljava/lang/String;)V

    .line 965
    .end local v1           #file:Ljava/io/File;
    :cond_0
    return-void
.end method

.method protected pasteAction()V
    .locals 10

    .prologue
    .line 1068
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/Toolkit;->getSystemClipboard()Ljava/awt/datatransfer/Clipboard;

    move-result-object v0

    .line 1069
    .local v0, cb:Ljava/awt/datatransfer/Clipboard;
    invoke-virtual {v0, p0}, Ljava/awt/datatransfer/Clipboard;->getContents(Ljava/lang/Object;)Ljava/awt/datatransfer/Transferable;

    move-result-object v1

    .line 1070
    .local v1, content:Ljava/awt/datatransfer/Transferable;
    sget-object v8, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v1, v8}, Ljava/awt/datatransfer/Transferable;->isDataFlavorSupported(Ljava/awt/datatransfer/DataFlavor;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1074
    :try_start_0
    sget-object v8, Ljava/awt/datatransfer/DataFlavor;->stringFlavor:Ljava/awt/datatransfer/DataFlavor;

    invoke-interface {v1, v8}, Ljava/awt/datatransfer/Transferable;->getTransferData(Ljava/awt/datatransfer/DataFlavor;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1076
    .local v7, string:Ljava/lang/String;
    new-instance v8, Lorg/htmlparser/Parser;

    iget-object v9, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v9}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->reconstitute(Ljava/lang/String;Lorg/htmlparser/Parser;)[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v3

    .line 1078
    .local v3, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->isSingleSelection()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v5

    .local v5, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v5, :cond_0

    .line 1081
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v3

    if-ge v4, v8, :cond_1

    .line 1082
    aget-object v8, v3, v4

    invoke-virtual {v5, v8}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->addFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1081
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1086
    .end local v4           #i:I
    .end local v5           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_0
    new-instance v6, Ljava/awt/Point;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v8, v9}, Ljava/awt/Point;-><init>(II)V

    .line 1087
    .local v6, point:Ljava/awt/Point;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    array-length v8, v3

    if-ge v4, v8, :cond_1

    .line 1089
    aget-object v8, v3, v4

    invoke-virtual {v8, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setLocation(Ljava/awt/Point;)V

    .line 1090
    iget-object v8, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    aget-object v9, v3, v4

    invoke-virtual {v8, v9}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 1091
    iget v8, v6, Ljava/awt/Point;->y:I

    aget-object v9, v3, v4

    invoke-virtual {v9}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v9

    iget v9, v9, Ljava/awt/Dimension;->height:I

    add-int/2addr v8, v9

    iput v8, v6, Ljava/awt/Point;->y:I

    .line 1087
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1094
    .end local v6           #point:Ljava/awt/Point;
    :cond_1
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupMouseListeners([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1095
    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupDropTargets([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1096
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->relayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    .end local v3           #filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v4           #i:I
    .end local v7           #string:Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 1098
    :catch_0
    move-exception v2

    .line 1100
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public relayout()V
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    invoke-virtual {v0}, Ljavax/swing/JPanel;->invalidate()V

    .line 1586
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainScroller:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->invalidate()V

    .line 1587
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainScroller:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->validate()V

    .line 1588
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainScroller:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->repaint()V

    .line 1589
    return-void
.end method

.method protected removeSelection(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V
    .locals 1
    .parameter "filter"

    .prologue
    .line 1741
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1742
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSelected(Z)V

    .line 1743
    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 13
    .parameter "name"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 895
    const-string v7, "OK"

    .line 897
    .local v7, ok:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v12

    .line 898
    .local v12, selections:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    array-length v0, v12

    if-eqz v0, :cond_0

    .line 900
    new-instance v8, Lorg/htmlparser/beans/FilterBean;

    invoke-direct {v8}, Lorg/htmlparser/beans/FilterBean;-><init>()V

    .line 901
    .local v8, bean:Lorg/htmlparser/beans/FilterBean;
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mURLField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/htmlparser/beans/FilterBean;->setURL(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v8, v12}, Lorg/htmlparser/beans/FilterBean;->setFilters([Lorg/htmlparser/NodeFilter;)V

    .line 903
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 904
    .local v9, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->classFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9, v8}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->makeProgram(Ljava/lang/String;Ljava/lang/StringBuffer;Lorg/htmlparser/beans/FilterBean;)V

    .line 907
    :try_start_0
    new-instance v11, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v11, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    .local v11, out:Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v11}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    :try_start_2
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 933
    .end local v8           #bean:Lorg/htmlparser/beans/FilterBean;
    .end local v9           #buffer:Ljava/lang/StringBuffer;
    .end local v11           #out:Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 915
    .restart local v8       #bean:Lorg/htmlparser/beans/FilterBean;
    .restart local v9       #buffer:Ljava/lang/StringBuffer;
    .restart local v11       #out:Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V

    .line 916
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 918
    .end local v11           #out:Ljava/io/PrintWriter;
    :catch_0
    move-exception v10

    .line 920
    .local v10, ioe:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 924
    .end local v8           #bean:Lorg/htmlparser/beans/FilterBean;
    .end local v9           #buffer:Ljava/lang/StringBuffer;
    .end local v10           #ioe:Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    const-string v1, "No filters to save."

    const-string v2, "Oops"

    const/4 v3, -0x1

    const/4 v5, 0x0

    new-array v6, v6, [Ljava/lang/String;

    aput-object v7, v6, v4

    invoke-static/range {v0 .. v7}, Ljavax/swing/JOptionPane;->showOptionDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_0
.end method

.method protected saveAction()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 977
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 978
    .local v3, title:Ljava/lang/String;
    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 979
    .local v2, index:I
    const/4 v4, -0x1

    if-eq v4, v2, :cond_1

    .line 980
    new-instance v1, Ljava/io/File;

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 997
    .local v1, file:Ljava/io/File;
    :goto_0
    if-eqz v1, :cond_0

    .line 998
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->save(Ljava/lang/String;)V

    .line 999
    :cond_0
    return-void

    .line 983
    .end local v1           #file:Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/awt/FileDialog;

    invoke-direct {v0, p0}, Ljava/awt/FileDialog;-><init>(Ljava/awt/Frame;)V

    .line 984
    .local v0, dialog:Ljava/awt/FileDialog;
    invoke-virtual {v0, v5}, Ljava/awt/FileDialog;->setMode(I)V

    .line 985
    const-string v4, "Save"

    invoke-virtual {v0, v4}, Ljava/awt/FileDialog;->setTitle(Ljava/lang/String;)V

    .line 986
    sget-object v4, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mHomeDir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/awt/FileDialog;->setDirectory(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0, v5}, Ljava/awt/FileDialog;->setVisible(Z)V

    .line 988
    invoke-virtual {v0}, Ljava/awt/FileDialog;->getFile()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 990
    invoke-virtual {v0}, Ljava/awt/FileDialog;->getDirectory()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mHomeDir:Ljava/lang/String;

    .line 991
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mHomeDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Ljava/awt/FileDialog;->getFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 992
    .restart local v1       #file:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "HTML Parser FilterBuilder - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 995
    .end local v1           #file:Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #file:Ljava/io/File;
    goto :goto_0
.end method

.method protected saveasAction()V
    .locals 1

    .prologue
    .line 1006
    const-string v0, "HTML Parser FilterBuilder"

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setTitle(Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->saveAction()V

    .line 1008
    return-void
.end method

.method protected selectSelection(Z)V
    .locals 4
    .parameter "select"

    .prologue
    .line 1755
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 1756
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1758
    iget-object v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 1759
    .local v1, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    invoke-virtual {v1, p1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSelected(Z)V

    .line 1756
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1761
    .end local v1           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :cond_0
    return-void
.end method

.method protected selectionContains(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Z
    .locals 1
    .parameter "filter"

    .prologue
    .line 1804
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mSelection:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public serializeSelection()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1848
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getSelection()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    .line 1849
    .local v0, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    new-instance v3, Ljava/io/StringWriter;

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/io/StringWriter;-><init>(I)V

    .line 1850
    .local v3, writer:Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 1853
    .local v2, out:Ljava/io/PrintWriter;
    :try_start_0
    invoke-static {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->deconstitute([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 1864
    :goto_0
    invoke-virtual {v3}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1855
    :catch_0
    move-exception v1

    .line 1857
    .local v1, ioe:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1861
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .end local v1           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 1862
    throw v4
.end method

.method protected setBasePoint(Ljava/awt/Point;)V
    .locals 0
    .parameter "point"

    .prologue
    .line 636
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mBasePoint:Ljava/awt/Point;

    .line 637
    return-void
.end method

.method public setExpanded([Lorg/htmlparser/parserapplications/filterbuilder/Filter;ZZ)V
    .locals 3
    .parameter "filters"
    .parameter "expanded"
    .parameter "recursive"

    .prologue
    .line 1556
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1558
    if-eqz p3, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v1

    .local v1, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v1, :cond_0

    .line 1559
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setExpanded([Lorg/htmlparser/parserapplications/filterbuilder/Filter;ZZ)V

    .line 1560
    .end local v1           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2, p2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setExpanded(Z)V

    .line 1556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1562
    :cond_1
    return-void
.end method

.method public setupDropTargets([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V
    .locals 6
    .parameter "filters"

    .prologue
    .line 1528
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 1530
    aget-object v4, p1, v1

    invoke-virtual {p0, v4}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v3

    .line 1531
    .local v3, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v3, :cond_1

    .line 1533
    invoke-virtual {v3}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getDropTargets()[Ljava/awt/Component;

    move-result-object v0

    .line 1534
    .local v0, components:[Ljava/awt/Component;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 1535
    new-instance v4, Ljava/awt/dnd/DropTarget;

    aget-object v5, v0, v2

    invoke-direct {v4, v5, p0}, Ljava/awt/dnd/DropTarget;-><init>(Ljava/awt/Component;Ljava/awt/dnd/DropTargetListener;)V

    .line 1534
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1536
    :cond_0
    invoke-virtual {v3}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupDropTargets([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1528
    .end local v0           #components:[Ljava/awt/Component;
    .end local v2           #j:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1539
    .end local v3           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_2
    return-void
.end method

.method public setupMouseListeners([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V
    .locals 3
    .parameter "filters"

    .prologue
    .line 1506
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1509
    aget-object v2, p1, v0

    invoke-virtual {v2, p0}, Ljava/awt/Component;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 1510
    aget-object v2, p1, v0

    invoke-virtual {v2, p0}, Ljava/awt/Component;->addMouseMotionListener(Ljava/awt/event/MouseMotionListener;)V

    .line 1511
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v1

    .line 1512
    .local v1, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v1, :cond_0

    .line 1513
    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->setupMouseListeners([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 1506
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1515
    .end local v1           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :cond_1
    return-void
.end method

.method public showContextMenu(Ljava/awt/event/MouseEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 1662
    new-instance v1, Ljavax/swing/JPopupMenu;

    invoke-direct {v1}, Ljavax/swing/JPopupMenu;-><init>()V

    .line 1663
    .local v1, menu:Ljavax/swing/JPopupMenu;
    const-string v2, "Popup"

    invoke-virtual {v1, v2}, Ljavax/swing/JPopupMenu;->setName(Ljava/lang/String;)V

    .line 1665
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v2, "Expand"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1666
    .local v0, item:Ljavax/swing/JMenuItem;
    const-string v2, "expandAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1668
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1670
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Collapse"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1671
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "collapseAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1673
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1675
    invoke-virtual {v1}, Ljavax/swing/JPopupMenu;->addSeparator()V

    .line 1677
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Expand All"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1678
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "expandAllAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1679
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1680
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1682
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "CollapseAll"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1683
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "collapseAllAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1685
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1687
    invoke-virtual {v1}, Ljavax/swing/JPopupMenu;->addSeparator()V

    .line 1689
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Cut"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1690
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "cutAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1691
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1692
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1694
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Copy"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1695
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "copyAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1697
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1699
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Paste"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1700
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "pasteAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1701
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1702
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1704
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Delete"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1705
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "deleteAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1707
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1709
    invoke-virtual {v1}, Ljavax/swing/JPopupMenu;->addSeparator()V

    .line 1711
    new-instance v0, Ljavax/swing/JMenuItem;

    .end local v0           #item:Ljavax/swing/JMenuItem;
    const-string v2, "Execute Filter"

    invoke-direct {v0, v2}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 1712
    .restart local v0       #item:Ljavax/swing/JMenuItem;
    const-string v2, "executeAction"

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setActionCommand(Ljava/lang/String;)V

    .line 1713
    invoke-virtual {v0, p0}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 1714
    invoke-virtual {v1, v0}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 1716
    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getComponent()Ljava/awt/Component;

    move-result-object v2

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getX()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/event/MouseEvent;->getY()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 1717
    return-void
.end method

.method protected tutorialAction()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 1374
    const-string v1, "<html>To get the title text from a page:<br><ul><li>Choose \'New\' from the File menu.</li><li>Choose \'AndFilter\' from the Filter menu.</li><li>Select the And filter so it is highlighted.</li><li>Choose \'HasParent\' from the Filter menu.</li><li>Toggle the \'Recursive\' checkbox on in the HasParent filter.</li><li>Select the HasParent filter so it is highlighted.</li><li>Choose \'TagName\' from the Filter menu.<br><i>Alternatively, you can drag the TagName filter (icon Hello-BOB)<br>from the toolbar and drop inside the HasParent filter</i></li><li>Choose \'TITLE\' from the TagName combo-box.</li><li>Select the And filter and choose \'Execute Filter\' from the<br>Operations menu to test it.</li><li>If there is unwanted non-text nodes in the result<br>select the And filter and choose \'RegexFilter\' from the Filter menu.</li><li>Test it again, as above.</li><li>Choose \'Save\' from the File menu and enter a filename like GetTitle.java</li><li>Compile the java file and run it.</li></ul></html>"

    .line 1395
    .local v1, instructions:Ljava/lang/String;
    const-string v7, "Close"

    .line 1396
    .local v7, close:Ljava/lang/String;
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->mMainPanel:Ljavax/swing/JPanel;

    const-string v2, "FilterBuilder Tutorial"

    const/4 v3, -0x1

    const/4 v5, 0x0

    new-array v6, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v7}, Ljavax/swing/JOptionPane;->showOptionDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;IILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)I

    .line 1408
    return-void
.end method

.method public windowActivated(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2145
    return-void
.end method

.method public windowClosed(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2118
    return-void
.end method

.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 2108
    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2109
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/FilterBuilder;->exitApplication()V

    .line 2110
    :cond_0
    return-void
.end method

.method public windowDeactivated(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2154
    return-void
.end method

.method public windowDeiconified(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2136
    return-void
.end method

.method public windowIconified(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2128
    return-void
.end method

.method public windowOpened(Ljava/awt/event/WindowEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 2099
    return-void
.end method
