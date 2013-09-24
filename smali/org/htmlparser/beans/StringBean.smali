.class public Lorg/htmlparser/beans/StringBean;
.super Lorg/htmlparser/visitors/NodeVisitor;
.source "StringBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final NEWLINE:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final NEWLINE_SIZE:I = 0x0

.field public static final PROP_COLLAPSE_PROPERTY:Ljava/lang/String; = "collapse"

.field public static final PROP_CONNECTION_PROPERTY:Ljava/lang/String; = "connection"

.field public static final PROP_LINKS_PROPERTY:Ljava/lang/String; = "links"

.field public static final PROP_REPLACE_SPACE_PROPERTY:Ljava/lang/String; = "replaceNonBreakingSpaces"

.field public static final PROP_STRINGS_PROPERTY:Ljava/lang/String; = "strings"

.field public static final PROP_URL_PROPERTY:Ljava/lang/String; = "URL"


# instance fields
.field protected mBuffer:Ljava/lang/StringBuffer;

.field protected mCollapse:Z

.field protected mCollapseState:I

.field protected mIsPre:Z

.field protected mIsScript:Z

.field protected mIsStyle:Z

.field protected mLinks:Z

.field protected mParser:Lorg/htmlparser/Parser;

.field protected mPropertySupport:Ljava/beans/PropertyChangeSupport;

.field protected mReplaceSpace:Z

.field protected mStrings:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/beans/StringBean;->NEWLINE:Ljava/lang/String;

    .line 116
    sget-object v0, Lorg/htmlparser/beans/StringBean;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/htmlparser/beans/StringBean;->NEWLINE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0, v1, v1}, Lorg/htmlparser/visitors/NodeVisitor;-><init>(ZZ)V

    .line 190
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    .line 191
    new-instance v0, Lorg/htmlparser/Parser;

    invoke-direct {v0}, Lorg/htmlparser/Parser;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    .line 193
    iput-boolean v2, p0, Lorg/htmlparser/beans/StringBean;->mLinks:Z

    .line 194
    iput-boolean v1, p0, Lorg/htmlparser/beans/StringBean;->mReplaceSpace:Z

    .line 195
    iput-boolean v1, p0, Lorg/htmlparser/beans/StringBean;->mCollapse:Z

    .line 196
    iput v2, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    .line 197
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    .line 198
    iput-boolean v2, p0, Lorg/htmlparser/beans/StringBean;->mIsScript:Z

    .line 199
    iput-boolean v2, p0, Lorg/htmlparser/beans/StringBean;->mIsPre:Z

    .line 200
    iput-boolean v2, p0, Lorg/htmlparser/beans/StringBean;->mIsStyle:Z

    .line 201
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 703
    array-length v1, p0

    if-gtz v1, :cond_0

    .line 704
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: java -classpath htmlparser.jar org.htmlparser.beans.StringBean <http://whatever_url>"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 708
    :cond_0
    new-instance v0, Lorg/htmlparser/beans/StringBean;

    invoke-direct {v0}, Lorg/htmlparser/beans/StringBean;-><init>()V

    .line 709
    .local v0, sb:Lorg/htmlparser/beans/StringBean;
    invoke-virtual {v0, v2}, Lorg/htmlparser/beans/StringBean;->setLinks(Z)V

    .line 710
    invoke-virtual {v0, v3}, Lorg/htmlparser/beans/StringBean;->setReplaceNonBreakingSpaces(Z)V

    .line 711
    invoke-virtual {v0, v3}, Lorg/htmlparser/beans/StringBean;->setCollapse(Z)V

    .line 712
    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Lorg/htmlparser/beans/StringBean;->setURL(Ljava/lang/String;)V

    .line 713
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getStrings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetStrings()V
    .locals 3

    .prologue
    .line 376
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 379
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/Parser;->setURL(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->setStrings()V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v0}, Lorg/htmlparser/util/ParserException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 399
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 400
    return-void
.end method

.method protected carriageReturn()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 216
    .local v0, length:I
    if-eqz v0, :cond_0

    sget v1, Lorg/htmlparser/beans/StringBean;->NEWLINE_SIZE:I

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    sget v2, Lorg/htmlparser/beans/StringBean;->NEWLINE_SIZE:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/htmlparser/beans/StringBean;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    sget-object v2, Lorg/htmlparser/beans/StringBean;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    .line 222
    return-void
.end method

.method protected collapse(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 5
    .parameter "buffer"
    .parameter "string"

    .prologue
    const/4 v4, 0x1

    .line 249
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 250
    .local v1, chars:I
    if-eqz v1, :cond_2

    .line 252
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 254
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 255
    .local v0, character:C
    sparse-switch v0, :sswitch_data_0

    .line 269
    iget v3, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    if-ne v4, v3, :cond_0

    .line 270
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    :cond_0
    const/4 v3, 0x2

    iput v3, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :sswitch_0
    iget v3, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    if-eqz v3, :cond_1

    .line 266
    iput v4, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    goto :goto_1

    .line 276
    .end local v0           #character:C
    .end local v2           #i:I
    :cond_2
    return-void

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x200b -> :sswitch_0
    .end sparse-switch
.end method

.method protected extractStrings()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v1, 0x0

    iput v1, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    .line 290
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v1, p0}, Lorg/htmlparser/Parser;->visitAllNodesWith(Lorg/htmlparser/visitors/NodeVisitor;)V

    .line 291
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, ret:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    .line 294
    return-object v0
.end method

.method public getCollapse()Z
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lorg/htmlparser/beans/StringBean;->mCollapse:Z

    return v0
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLinks()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lorg/htmlparser/beans/StringBean;->mLinks:Z

    return v0
.end method

.method public getReplaceNonBreakingSpaces()Z
    .locals 1

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/htmlparser/beans/StringBean;->mReplaceSpace:Z

    return v0
.end method

.method public getStrings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->setStrings()V

    .line 429
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    return-object v0

    .line 427
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->getURL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 409
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 410
    return-void
.end method

.method public setCollapse(Z)V
    .locals 3
    .parameter "collapse"

    .prologue
    .line 569
    const/4 v1, 0x0

    iput v1, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    .line 570
    iget-boolean v0, p0, Lorg/htmlparser/beans/StringBean;->mCollapse:Z

    .line 571
    .local v0, oldValue:Z
    if-eq v0, p1, :cond_0

    .line 573
    iput-boolean p1, p0, Lorg/htmlparser/beans/StringBean;->mCollapse:Z

    .line 574
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "collapse"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    .line 576
    invoke-direct {p0}, Lorg/htmlparser/beans/StringBean;->resetStrings()V

    .line 578
    :cond_0
    return-void
.end method

.method public setConnection(Ljava/net/URLConnection;)V
    .locals 6
    .parameter "connection"

    .prologue
    .line 601
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 603
    .local v0, conn:Ljava/net/URLConnection;
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 608
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    if-nez v3, :cond_3

    .line 609
    new-instance v3, Lorg/htmlparser/Parser;

    invoke-direct {v3, p1}, Lorg/htmlparser/Parser;-><init>(Ljava/net/URLConnection;)V

    iput-object v3, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    .line 612
    :goto_0
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "URL"

    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 614
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "connection"

    iget-object v5, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v5}, Lorg/htmlparser/Parser;->getConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 616
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->setStrings()V

    .line 623
    :cond_2
    :goto_1
    return-void

    .line 611
    :cond_3
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v3, p1}, Lorg/htmlparser/Parser;->setConnection(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v1

    .line 620
    .local v1, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v1}, Lorg/htmlparser/util/ParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setLinks(Z)V
    .locals 3
    .parameter "links"

    .prologue
    .line 451
    iget-boolean v0, p0, Lorg/htmlparser/beans/StringBean;->mLinks:Z

    .line 452
    .local v0, oldValue:Z
    if-eq v0, p1, :cond_0

    .line 454
    iput-boolean p1, p0, Lorg/htmlparser/beans/StringBean;->mLinks:Z

    .line 455
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "links"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    .line 457
    invoke-direct {p0}, Lorg/htmlparser/beans/StringBean;->resetStrings()V

    .line 459
    :cond_0
    return-void
.end method

.method public setReplaceNonBreakingSpaces(Z)V
    .locals 3
    .parameter "replace"

    .prologue
    .line 529
    iget-boolean v0, p0, Lorg/htmlparser/beans/StringBean;->mReplaceSpace:Z

    .line 530
    .local v0, oldValue:Z
    if-eq v0, p1, :cond_0

    .line 532
    iput-boolean p1, p0, Lorg/htmlparser/beans/StringBean;->mReplaceSpace:Z

    .line 533
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "replaceNonBreakingSpaces"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;ZZ)V

    .line 535
    invoke-direct {p0}, Lorg/htmlparser/beans/StringBean;->resetStrings()V

    .line 537
    :cond_0
    return-void
.end method

.method protected setStrings()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x1000

    .line 320
    iput v6, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    .line 321
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getURL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 326
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v2, p0}, Lorg/htmlparser/Parser;->visitAllNodesWith(Lorg/htmlparser/visitors/NodeVisitor;)V

    .line 327
    iget-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    .line 367
    :goto_0
    return-void

    .line 331
    :catchall_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x1000

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v3, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    .line 332
    throw v2
    :try_end_1
    .catch Lorg/htmlparser/util/EncodingChangeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_2

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, ece:Lorg/htmlparser/util/EncodingChangeException;
    iput-boolean v6, p0, Lorg/htmlparser/beans/StringBean;->mIsPre:Z

    .line 337
    iput-boolean v6, p0, Lorg/htmlparser/beans/StringBean;->mIsScript:Z

    .line 338
    iput-boolean v6, p0, Lorg/htmlparser/beans/StringBean;->mIsStyle:Z

    .line 341
    :try_start_2
    iget-object v2, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v2}, Lorg/htmlparser/Parser;->reset()V

    .line 342
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    .line 343
    const/4 v2, 0x0

    iput v2, p0, Lorg/htmlparser/beans/StringBean;->mCollapseState:I

    .line 344
    iget-object v2, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v2, p0}, Lorg/htmlparser/Parser;->visitAllNodesWith(Lorg/htmlparser/visitors/NodeVisitor;)V

    .line 345
    iget-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 353
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 347
    :catch_1
    move-exception v1

    .line 349
    .local v1, pe:Lorg/htmlparser/util/ParserException;
    :try_start_3
    invoke-virtual {v1}, Lorg/htmlparser/util/ParserException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 353
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    .end local v1           #pe:Lorg/htmlparser/util/ParserException;
    :catchall_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v3, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    .line 354
    throw v2

    .line 356
    .end local v0           #ece:Lorg/htmlparser/util/EncodingChangeException;
    :catch_2
    move-exception v1

    .line 358
    .restart local v1       #pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v1}, Lorg/htmlparser/util/ParserException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    .end local v1           #pe:Lorg/htmlparser/util/ParserException;
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    .line 365
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 482
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, old:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 484
    .local v0, conn:Ljava/net/URLConnection;
    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 489
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    if-nez v3, :cond_3

    .line 490
    new-instance v3, Lorg/htmlparser/Parser;

    invoke-direct {v3, p1}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    .line 493
    :goto_0
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "URL"

    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 495
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "connection"

    iget-object v5, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v5}, Lorg/htmlparser/Parser;->getConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->setStrings()V

    .line 504
    :cond_2
    :goto_1
    return-void

    .line 492
    :cond_3
    iget-object v3, p0, Lorg/htmlparser/beans/StringBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v3, p1}, Lorg/htmlparser/Parser;->setURL(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v2

    .line 501
    .local v2, pe:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v2}, Lorg/htmlparser/util/ParserException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/StringBean;->updateStrings(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected updateStrings(Ljava/lang/String;)V
    .locals 3
    .parameter "strings"

    .prologue
    .line 305
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    .line 308
    .local v0, oldValue:Ljava/lang/String;
    iput-object p1, p0, Lorg/htmlparser/beans/StringBean;->mStrings:Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "strings"

    invoke-virtual {v1, v2, v0, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    .end local v0           #oldValue:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public visitEndTag(Lorg/htmlparser/Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    .line 688
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, name:Ljava/lang/String;
    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 690
    iput-boolean v2, p0, Lorg/htmlparser/beans/StringBean;->mIsPre:Z

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    iput-boolean v2, p0, Lorg/htmlparser/beans/StringBean;->mIsScript:Z

    goto :goto_0

    .line 693
    :cond_2
    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 694
    iput-boolean v2, p0, Lorg/htmlparser/beans/StringBean;->mIsStyle:Z

    goto :goto_0
.end method

.method public visitStringNode(Lorg/htmlparser/Text;)V
    .locals 3
    .parameter "string"

    .prologue
    .line 635
    iget-boolean v1, p0, Lorg/htmlparser/beans/StringBean;->mIsScript:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/htmlparser/beans/StringBean;->mIsStyle:Z

    if-nez v1, :cond_1

    .line 637
    invoke-interface {p1}, Lorg/htmlparser/Text;->getText()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lorg/htmlparser/beans/StringBean;->mIsPre:Z

    if-nez v1, :cond_3

    .line 640
    invoke-static {v0}, Lorg/htmlparser/util/Translate;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getReplaceNonBreakingSpaces()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 642
    const/16 v1, 0xa0

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getCollapse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1, v0}, Lorg/htmlparser/beans/StringBean;->collapse(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 651
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 646
    .restart local v0       #text:Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 649
    :cond_3
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visitTag(Lorg/htmlparser/Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    const/4 v3, 0x1

    .line 662
    instance-of v1, p1, Lorg/htmlparser/tags/LinkTag;

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->getLinks()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 666
    iget-object v2, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    move-object v1, p1

    check-cast v1, Lorg/htmlparser/tags/LinkTag;

    invoke-virtual {v1}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    iget-object v1, p0, Lorg/htmlparser/beans/StringBean;->mBuffer:Ljava/lang/StringBuffer;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    :cond_0
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, name:Ljava/lang/String;
    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    iput-boolean v3, p0, Lorg/htmlparser/beans/StringBean;->mIsPre:Z

    .line 676
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/htmlparser/Tag;->breaksFlow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 677
    invoke-virtual {p0}, Lorg/htmlparser/beans/StringBean;->carriageReturn()V

    .line 678
    :cond_2
    return-void

    .line 672
    :cond_3
    const-string v1, "SCRIPT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 673
    iput-boolean v3, p0, Lorg/htmlparser/beans/StringBean;->mIsScript:Z

    goto :goto_0

    .line 674
    :cond_4
    const-string v1, "STYLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    iput-boolean v3, p0, Lorg/htmlparser/beans/StringBean;->mIsStyle:Z

    goto :goto_0
.end method
