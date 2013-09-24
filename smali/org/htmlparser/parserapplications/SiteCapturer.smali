.class public Lorg/htmlparser/parserapplications/SiteCapturer;
.super Ljava/lang/Object;
.source "SiteCapturer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlparser/parserapplications/SiteCapturer$LocalBaseHrefTag;,
        Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;,
        Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;,
        Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;
    }
.end annotation


# static fields
.field static class$org$htmlparser$tags$MetaTag:Ljava/lang/Class;


# instance fields
.field protected final TRANSFER_SIZE:I

.field protected mCaptureResources:Z

.field protected mCopied:Ljava/util/HashSet;

.field protected mFilter:Lorg/htmlparser/NodeFilter;

.field protected mFinished:Ljava/util/HashSet;

.field protected mImages:Ljava/util/ArrayList;

.field protected mPages:Ljava/util/ArrayList;

.field protected mParser:Lorg/htmlparser/Parser;

.field protected mSource:Ljava/lang/String;

.field protected mTarget:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/16 v1, 0x1000

    iput v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->TRANSFER_SIZE:I

    .line 149
    iput-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mSource:Ljava/lang/String;

    .line 150
    iput-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mTarget:Ljava/lang/String;

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    .line 152
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mFinished:Ljava/util/HashSet;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    .line 154
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mCopied:Ljava/util/HashSet;

    .line 155
    new-instance v1, Lorg/htmlparser/Parser;

    invoke-direct {v1}, Lorg/htmlparser/Parser;-><init>()V

    iput-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    .line 156
    new-instance v0, Lorg/htmlparser/PrototypicalNodeFactory;

    invoke-direct {v0}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>()V

    .line 157
    .local v0, factory:Lorg/htmlparser/PrototypicalNodeFactory;
    new-instance v1, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;

    invoke-direct {v1, p0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;-><init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V

    invoke-virtual {v0, v1}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 158
    new-instance v1, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;

    invoke-direct {v1, p0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;-><init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V

    invoke-virtual {v0, v1}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 159
    new-instance v1, Lorg/htmlparser/parserapplications/SiteCapturer$LocalBaseHrefTag;

    invoke-direct {v1, p0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalBaseHrefTag;-><init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V

    invoke-virtual {v0, v1}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 160
    new-instance v1, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;

    invoke-direct {v1, p0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;-><init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V

    invoke-virtual {v0, v1}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 161
    iget-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v1, v0}, Lorg/htmlparser/Parser;->setNodeFactory(Lorg/htmlparser/NodeFactory;)V

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mCaptureResources:Z

    .line 163
    iput-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mFilter:Lorg/htmlparser/NodeFilter;

    .line 164
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 522
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 17
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 771
    new-instance v15, Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-direct {v15}, Lorg/htmlparser/parserapplications/SiteCapturer;-><init>()V

    .line 772
    .local v15, worker:Lorg/htmlparser/parserapplications/SiteCapturer;
    move-object/from16 v0, p0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 774
    const/4 v1, 0x0

    const-string v2, "Enter the URL to capture:"

    const-string v3, "Web Site"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "http://htmlparser.sourceforge.net/wiki"

    invoke-static/range {v1 .. v7}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 782
    .local v14, url:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 783
    invoke-virtual {v15, v14}, Lorg/htmlparser/parserapplications/SiteCapturer;->setSource(Ljava/lang/String;)V

    .line 789
    .end local v14           #url:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    move-object/from16 v0, p0

    array-length v2, v0

    if-lt v1, v2, :cond_3

    .line 791
    invoke-virtual {v15}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v14

    .line 792
    .restart local v14       #url:Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v14}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 793
    .local v12, source:Ljava/net/URL;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v12}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    .line 794
    .local v10, path:Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    .local v13, target:Ljava/io/File;
    new-instance v9, Ljavax/swing/JFileChooser;

    invoke-direct {v9, v13}, Ljavax/swing/JFileChooser;-><init>(Ljava/io/File;)V

    .line 796
    .local v9, chooser:Ljavax/swing/JFileChooser;
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljavax/swing/JFileChooser;->setDialogType(I)V

    .line 797
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljavax/swing/JFileChooser;->setFileSelectionMode(I)V

    .line 798
    invoke-virtual {v9, v13}, Ljavax/swing/JFileChooser;->setSelectedFile(Ljava/io/File;)V

    .line 799
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljavax/swing/JFileChooser;->setMultiSelectionEnabled(Z)V

    .line 800
    const-string v1, "Target Directory"

    invoke-virtual {v9, v1}, Ljavax/swing/JFileChooser;->setDialogTitle(Ljava/lang/String;)V

    .line 801
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljavax/swing/JFileChooser;->showSaveDialog(Ljava/awt/Component;)I

    move-result v11

    .line 802
    .local v11, ret:I
    if-nez v11, :cond_2

    .line 803
    invoke-virtual {v9}, Ljavax/swing/JFileChooser;->getSelectedFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->setTarget(Ljava/lang/String;)V

    .line 809
    .end local v9           #chooser:Ljavax/swing/JFileChooser;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #ret:I
    .end local v12           #source:Ljava/net/URL;
    .end local v13           #target:Ljava/io/File;
    .end local v14           #url:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x2

    move-object/from16 v0, p0

    array-length v2, v0

    if-lt v1, v2, :cond_5

    .line 811
    const/4 v1, 0x0

    const-string v2, "Should resources be captured:"

    const-string v3, "Capture Resources"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v16, v6, v7

    const/4 v7, 0x1

    sget-object v16, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v16, v6, v7

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static/range {v1 .. v7}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 819
    .local v8, capture:Ljava/lang/Boolean;
    if-eqz v8, :cond_4

    .line 820
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v15, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->setCaptureResources(Z)V

    .line 826
    .end local v8           #capture:Ljava/lang/Boolean;
    :goto_2
    invoke-virtual {v15}, Lorg/htmlparser/parserapplications/SiteCapturer;->capture()V

    .line 828
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 829
    return-void

    .line 785
    .restart local v14       #url:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 788
    .end local v14           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v15, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->setSource(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 805
    .restart local v9       #chooser:Ljavax/swing/JFileChooser;
    .restart local v10       #path:Ljava/lang/String;
    .restart local v11       #ret:I
    .restart local v12       #source:Ljava/net/URL;
    .restart local v13       #target:Ljava/io/File;
    .restart local v14       #url:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 808
    .end local v9           #chooser:Ljavax/swing/JFileChooser;
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #ret:I
    .end local v12           #source:Ljava/net/URL;
    .end local v13           #target:Ljava/io/File;
    .end local v14           #url:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v15, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->setTarget(Ljava/lang/String;)V

    goto :goto_1

    .line 822
    .restart local v8       #capture:Ljava/lang/Boolean;
    :cond_4
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_2

    .line 825
    .end local v8           #capture:Ljava/lang/Boolean;
    :cond_5
    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v15, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->setCaptureResources(Z)V

    goto :goto_2
.end method


# virtual methods
.method public capture()V
    .locals 5

    .prologue
    .line 719
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 720
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 724
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/SiteCapturer;->process(Lorg/htmlparser/NodeFilter;)V

    .line 725
    :goto_1
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->copy()V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 728
    :catch_0
    move-exception v0

    .line 733
    .local v0, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v0}, Lorg/htmlparser/util/ParserException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    .line 734
    .local v1, throwable:Ljava/lang/Throwable;
    if-eqz v1, :cond_2

    .line 736
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 737
    instance-of v2, v1, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_1

    .line 738
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "broken link "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v2, v1

    check-cast v2, Ljava/io/FileNotFoundException;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " ignored"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {v0}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    goto :goto_0

    .line 743
    :cond_2
    invoke-virtual {v0}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    goto :goto_0

    .line 745
    .end local v0           #pe:Lorg/htmlparser/util/ParserException;
    .end local v1           #throwable:Ljava/lang/Throwable;
    :cond_3
    return-void
.end method

.method protected copy()V
    .locals 17

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 414
    .local v7, link:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mCopied:Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getCaptureResources()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 418
    const-string v14, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v14}, Lorg/htmlparser/parserapplications/SiteCapturer;->makeLocalLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 419
    .local v11, raw:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/htmlparser/parserapplications/SiteCapturer;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 420
    .local v9, name:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getTarget()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v3, v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .local v3, file:Ljava/io/File;
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "copying "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 423
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 424
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_0

    .line 425
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 428
    :cond_0
    :try_start_0
    new-instance v13, Ljava/net/URL;

    invoke-direct {v13, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 429
    .local v13, source:Ljava/net/URL;
    const/16 v14, 0x1000

    new-array v1, v14, [B
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 432
    .local v1, data:[B
    :try_start_1
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    .line 435
    .local v5, in:Ljava/io/InputStream;
    :try_start_2
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    .local v10, out:Ljava/io/FileOutputStream;
    :goto_0
    const/4 v14, -0x1

    const/4 v15, 0x0

    :try_start_3
    array-length v0, v1

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v5, v1, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, read:I
    if-eq v14, v12, :cond_2

    .line 439
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 443
    .end local v12           #read:I
    :catchall_0
    move-exception v14

    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 444
    throw v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 446
    .end local v10           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .line 448
    .local v4, fnfe:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 452
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 469
    .end local v1           #data:[B
    .end local v2           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v9           #name:Ljava/lang/String;
    .end local v11           #raw:Ljava/lang/String;
    .end local v13           #source:Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 443
    .restart local v1       #data:[B
    .restart local v2       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    .restart local v11       #raw:Ljava/lang/String;
    .restart local v12       #read:I
    .restart local v13       #source:Ljava/net/URL;
    :cond_2
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0

    .line 452
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 455
    .end local v5           #in:Ljava/io/InputStream;
    .end local v10           #out:Ljava/io/FileOutputStream;
    .end local v12           #read:I
    :catch_1
    move-exception v4

    .line 457
    .restart local v4       #fnfe:Ljava/io/FileNotFoundException;
    :try_start_9
    sget-object v14, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "broken link "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, " ignored"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_1

    .line 460
    .end local v1           #data:[B
    .end local v4           #fnfe:Ljava/io/FileNotFoundException;
    .end local v13           #source:Ljava/net/URL;
    :catch_2
    move-exception v8

    .line 462
    .local v8, murle:Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 452
    .end local v8           #murle:Ljava/net/MalformedURLException;
    .restart local v1       #data:[B
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v13       #source:Ljava/net/URL;
    :catchall_1
    move-exception v14

    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 453
    throw v14
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 464
    .end local v1           #data:[B
    .end local v5           #in:Ljava/io/InputStream;
    .end local v13           #source:Ljava/net/URL;
    :catch_3
    move-exception v6

    .line 466
    .local v6, ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "raw"

    .prologue
    const/16 v8, 0x25

    .line 362
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 364
    .local v3, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 365
    .local v1, length:I
    const/4 v4, 0x0

    .line 366
    .local v4, start:I
    :goto_0
    const/4 v6, -0x1

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, index:I
    if-eq v6, v0, :cond_1

    .line 368
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    add-int/lit8 v6, v0, 0x2

    if-ge v6, v1, :cond_0

    .line 374
    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v7, v0, 0x3

    :try_start_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 375
    .local v5, value:I
    int-to-char v6, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    add-int/lit8 v4, v0, 0x3

    goto :goto_0

    .line 378
    .end local v5           #value:I
    :catch_0
    move-exception v2

    .line 380
    .local v2, nfe:Ljava/lang/NumberFormatException;
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 381
    add-int/lit8 v4, v0, 0x1

    .line 383
    goto :goto_0

    .line 386
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 387
    add-int/lit8 v4, v0, 0x1

    .line 389
    goto :goto_0

    .line 390
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public getCaptureResources()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mCaptureResources:Z

    return v0
.end method

.method public getFilter()Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mFilter:Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mTarget:Ljava/lang/String;

    return-object v0
.end method

.method protected isHtml(Ljava/lang/String;)Z
    .locals 8
    .parameter "link"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v2, 0x0

    .line 286
    .local v2, ret:Z
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 287
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 288
    .local v0, connection:Ljava/net/URLConnection;
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, type:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 290
    const/4 v2, 0x0

    .line 299
    :goto_0
    return v2

    .line 292
    :cond_0
    const-string v5, "text/html"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 294
    .end local v0           #connection:Ljava/net/URLConnection;
    .end local v3           #type:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 296
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Lorg/htmlparser/util/ParserException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " has a problem"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected isToBeCaptured(Ljava/lang/String;)Z
    .locals 3
    .parameter "link"

    .prologue
    const/4 v2, -0x1

    .line 261
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeLocalLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "link"
    .parameter "current"

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    :cond_0
    const-string v2, "index.html"

    .line 332
    .local v2, ret:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_3

    .line 336
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, i:I
    :goto_1
    const/4 v3, -0x1

    const/16 v4, 0x2f

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, j:I
    if-eq v3, v1, :cond_3

    .line 340
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "../"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    add-int/lit8 v0, v1, 0x1

    .line 342
    goto :goto_1

    .line 324
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v2           #ret:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 326
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v2           #ret:Ljava/lang/String;
    :cond_2
    move-object v2, p1

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 345
    :cond_3
    return-object v2
.end method

.method protected process(Lorg/htmlparser/NodeFilter;)V
    .locals 25
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 492
    .local v19, url:Ljava/lang/String;
    sget-object v20, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "processing "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mFinished:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 497
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 499
    .local v3, bookmark:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/htmlparser/Parser;->setURL(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 502
    :try_start_1
    new-instance v13, Lorg/htmlparser/util/NodeList;

    invoke-direct {v13}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 503
    .local v13, list:Lorg/htmlparser/util/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v7

    .local v7, e:Lorg/htmlparser/util/NodeIterator;
    :goto_0
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 504
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V
    :try_end_1
    .catch Lorg/htmlparser/util/EncodingChangeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 506
    .end local v7           #e:Lorg/htmlparser/util/NodeIterator;
    .end local v13           #list:Lorg/htmlparser/util/NodeList;
    :catch_0
    move-exception v8

    .line 511
    .local v8, ece:Lorg/htmlparser/util/EncodingChangeException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/htmlparser/Parser;->reset()V

    .line 512
    new-instance v13, Lorg/htmlparser/util/NodeList;

    invoke-direct {v13}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 513
    .restart local v13       #list:Lorg/htmlparser/util/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v7

    .restart local v7       #e:Lorg/htmlparser/util/NodeIterator;
    :goto_1
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 514
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V
    :try_end_2
    .catch Lorg/htmlparser/util/ParserException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 564
    .end local v3           #bookmark:I
    .end local v7           #e:Lorg/htmlparser/util/NodeIterator;
    .end local v8           #ece:Lorg/htmlparser/util/EncodingChangeException;
    .end local v13           #list:Lorg/htmlparser/util/NodeList;
    :catch_1
    move-exception v16

    .line 570
    .local v16, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual/range {v16 .. v16}, Lorg/htmlparser/util/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 571
    .local v14, message:Ljava/lang/String;
    if-eqz v14, :cond_c

    const-string v20, "does not contain text"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mCopied:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mFinished:Ljava/util/HashSet;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 581
    .end local v14           #message:Ljava/lang/String;
    .end local v16           #pe:Lorg/htmlparser/util/ParserException;
    :cond_1
    :goto_2
    return-void

    .line 520
    .restart local v3       #bookmark:I
    .restart local v7       #e:Lorg/htmlparser/util/NodeIterator;
    .restart local v13       #list:Lorg/htmlparser/util/NodeList;
    :cond_2
    :try_start_3
    new-instance v21, Lorg/htmlparser/filters/AndFilter;

    new-instance v22, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v20, Lorg/htmlparser/parserapplications/SiteCapturer;->class$org$htmlparser$tags$MetaTag:Ljava/lang/Class;

    if-nez v20, :cond_4

    const-string v20, "org.htmlparser.tags.MetaTag"

    invoke-static/range {v20 .. v20}, Lorg/htmlparser/parserapplications/SiteCapturer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v20

    sput-object v20, Lorg/htmlparser/parserapplications/SiteCapturer;->class$org$htmlparser$tags$MetaTag:Ljava/lang/Class;

    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    new-instance v20, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v23, "name"

    const-string v24, "robots"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    const/16 v20, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lorg/htmlparser/util/NodeList;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v18

    .line 524
    .local v18, robots:Lorg/htmlparser/util/NodeList;
    invoke-virtual/range {v18 .. v18}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v20

    if-eqz v20, :cond_6

    .line 526
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v17

    check-cast v17, Lorg/htmlparser/tags/MetaTag;

    .line 527
    .local v17, robot:Lorg/htmlparser/tags/MetaTag;
    const-string v20, "content"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/htmlparser/tags/MetaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, content:Ljava/lang/String;
    const/16 v20, -0x1

    const-string v21, "none"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    const/16 v20, -0x1

    const-string v21, "nofollow"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 530
    :cond_3
    move v12, v3

    .local v12, i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_5

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 530
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 520
    .end local v4           #content:Ljava/lang/String;
    .end local v12           #i:I
    .end local v17           #robot:Lorg/htmlparser/tags/MetaTag;
    .end local v18           #robots:Lorg/htmlparser/util/NodeList;
    :cond_4
    sget-object v20, Lorg/htmlparser/parserapplications/SiteCapturer;->class$org$htmlparser$tags$MetaTag:Ljava/lang/Class;

    goto/16 :goto_3

    .line 532
    .restart local v4       #content:Ljava/lang/String;
    .restart local v17       #robot:Lorg/htmlparser/tags/MetaTag;
    .restart local v18       #robots:Lorg/htmlparser/util/NodeList;
    :cond_5
    const/16 v20, -0x1

    const-string v21, "none"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/16 v20, -0x1

    const-string v21, "noindex"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 536
    .end local v4           #content:Ljava/lang/String;
    .end local v17           #robot:Lorg/htmlparser/tags/MetaTag;
    :cond_6
    if-eqz p1, :cond_7

    .line 537
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lorg/htmlparser/util/NodeList;->keepAllNodesThatMatch(Lorg/htmlparser/NodeFilter;Z)V

    .line 540
    :cond_7
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/parserapplications/SiteCapturer;->getTarget()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/parserapplications/SiteCapturer;->makeLocalLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 542
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_9

    .line 543
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Lorg/htmlparser/util/ParserException; {:try_start_3 .. :try_end_3} :catch_1

    .line 554
    :cond_8
    :goto_5
    :try_start_4
    new-instance v15, Ljava/io/PrintWriter;

    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 555
    .local v15, out:Ljava/io/PrintWriter;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6
    invoke-virtual {v13}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_b

    .line 556
    invoke-virtual {v13, v12}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/htmlparser/Node;->toHtml()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/htmlparser/util/ParserException; {:try_start_4 .. :try_end_4} :catch_1

    .line 555
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 544
    .end local v12           #i:I
    .end local v15           #out:Ljava/io/PrintWriter;
    :cond_9
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_8

    .line 546
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    const-string v22, ".content"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 547
    .end local v5           #dir:Ljava/io/File;
    .local v6, dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v20

    if-nez v20, :cond_a

    .line 548
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 549
    :cond_a
    new-instance v10, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/htmlparser/util/ParserException; {:try_start_5 .. :try_end_5} :catch_1

    .end local v9           #file:Ljava/io/File;
    .local v10, file:Ljava/io/File;
    move-object v5, v6

    .end local v6           #dir:Ljava/io/File;
    .restart local v5       #dir:Ljava/io/File;
    move-object v9, v10

    .end local v10           #file:Ljava/io/File;
    .restart local v9       #file:Ljava/io/File;
    goto :goto_5

    .line 557
    .restart local v12       #i:I
    .restart local v15       #out:Ljava/io/PrintWriter;
    :cond_b
    :try_start_6
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/htmlparser/util/ParserException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 559
    .end local v12           #i:I
    .end local v15           #out:Ljava/io/PrintWriter;
    :catch_2
    move-exception v11

    .line 561
    .local v11, fnfe:Ljava/io/FileNotFoundException;
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catch Lorg/htmlparser/util/ParserException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_2

    .line 579
    .end local v3           #bookmark:I
    .end local v5           #dir:Ljava/io/File;
    .end local v7           #e:Lorg/htmlparser/util/NodeIterator;
    .end local v9           #file:Ljava/io/File;
    .end local v11           #fnfe:Ljava/io/FileNotFoundException;
    .end local v13           #list:Lorg/htmlparser/util/NodeList;
    .end local v18           #robots:Lorg/htmlparser/util/NodeList;
    .restart local v14       #message:Ljava/lang/String;
    .restart local v16       #pe:Lorg/htmlparser/util/ParserException;
    :cond_c
    throw v16
.end method

.method public setCaptureResources(Z)V
    .locals 0
    .parameter "capture"

    .prologue
    .line 227
    iput-boolean p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mCaptureResources:Z

    .line 228
    return-void
.end method

.method public setFilter(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 246
    iput-object p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mFilter:Lorg/htmlparser/NodeFilter;

    .line 247
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 184
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 186
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mSource:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 205
    iput-object p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer;->mTarget:Ljava/lang/String;

    .line 206
    return-void
.end method
