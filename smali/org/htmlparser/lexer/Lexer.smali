.class public Lorg/htmlparser/lexer/Lexer;
.super Ljava/lang/Object;
.source "Lexer.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/NodeFactory;


# static fields
.field public static STRICT_REMARKS:Z = false

.field public static final VERSION_DATE:Ljava/lang/String; = "Jun 10, 2006"

.field public static final VERSION_NUMBER:D = 1.6

.field public static final VERSION_STRING:Ljava/lang/String; = "1.6 (Release Build Jun 10, 2006)"

.field public static final VERSION_TYPE:Ljava/lang/String; = "Release Build"

.field protected static mDebugLineTrigger:I


# instance fields
.field protected mCursor:Lorg/htmlparser/lexer/Cursor;

.field protected mFactory:Lorg/htmlparser/NodeFactory;

.field protected mPage:Lorg/htmlparser/lexer/Page;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lorg/htmlparser/lexer/Lexer;->STRICT_REMARKS:Z

    .line 127
    const/4 v0, -0x1

    sput v0, Lorg/htmlparser/lexer/Lexer;->mDebugLineTrigger:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lorg/htmlparser/lexer/Page;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 174
    new-instance v0, Lorg/htmlparser/lexer/Page;

    invoke-direct {v0, p1}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 1
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/htmlparser/lexer/Page;

    invoke-direct {v0, p1}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/net/URLConnection;)V

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;)V
    .locals 2
    .parameter "page"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p0, p1}, Lorg/htmlparser/lexer/Lexer;->setPage(Lorg/htmlparser/lexer/Page;)V

    .line 164
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->setCursor(Lorg/htmlparser/lexer/Cursor;)V

    .line 165
    invoke-virtual {p0, p0}, Lorg/htmlparser/lexer/Lexer;->setNodeFactory(Lorg/htmlparser/NodeFactory;)V

    .line 166
    return-void
.end method

.method private double_quote(Ljava/util/Vector;[I)V
    .locals 7
    .parameter "attributes"
    .parameter "bookmarks"

    .prologue
    .line 919
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x5

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x6

    aget v5, p2, v5

    const/16 v6, 0x22

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 922
    return-void
.end method

.method private empty(Ljava/util/Vector;[I)V
    .locals 7
    .parameter "attributes"
    .parameter "bookmarks"

    .prologue
    const/4 v4, 0x2

    .line 884
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    aget v3, p2, v4

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 886
    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "1.6 (Release Build Jun 10, 2006)"

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 1663
    array-length v4, p0

    if-gtz v4, :cond_1

    .line 1665
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "HTML Lexer v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Lorg/htmlparser/lexer/Lexer;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1666
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 1667
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "usage: java -jar htmllexer.jar <url>"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1685
    :cond_0
    :goto_0
    return-void

    .line 1673
    :cond_1
    :try_start_0
    invoke-static {}, Lorg/htmlparser/lexer/Page;->getConnectionManager()Lorg/htmlparser/http/ConnectionManager;

    move-result-object v1

    .line 1674
    .local v1, manager:Lorg/htmlparser/http/ConnectionManager;
    new-instance v0, Lorg/htmlparser/lexer/Lexer;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v1, v4}, Lorg/htmlparser/http/ConnectionManager;->openConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/htmlparser/lexer/Lexer;-><init>(Ljava/net/URLConnection;)V

    .line 1675
    .local v0, lexer:Lorg/htmlparser/lexer/Lexer;
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/htmlparser/lexer/Lexer;->nextNode(Z)Lorg/htmlparser/Node;

    move-result-object v2

    .local v2, node:Lorg/htmlparser/Node;
    if-eqz v2, :cond_0

    .line 1676
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1678
    .end local v0           #lexer:Lorg/htmlparser/lexer/Lexer;
    .end local v1           #manager:Lorg/htmlparser/http/ConnectionManager;
    .end local v2           #node:Lorg/htmlparser/Node;
    :catch_0
    move-exception v3

    .line 1680
    .local v3, pe:Lorg/htmlparser/util/ParserException;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v3}, Lorg/htmlparser/util/ChainedException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1682
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Lorg/htmlparser/util/ChainedException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private naked(Ljava/util/Vector;[I)V
    .locals 7
    .parameter "attributes"
    .parameter "bookmarks"

    .prologue
    .line 895
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    const/4 v5, 0x4

    aget v5, p2, v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 898
    return-void
.end method

.method private single_quote(Ljava/util/Vector;[I)V
    .locals 7
    .parameter "attributes"
    .parameter "bookmarks"

    .prologue
    .line 907
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    aget v5, p2, v5

    const/16 v6, 0x27

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 910
    return-void
.end method

.method private standalone(Ljava/util/Vector;[I)V
    .locals 7
    .parameter "attributes"
    .parameter "bookmarks"

    .prologue
    const/4 v4, -0x1

    .line 873
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v6, 0x0

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 875
    return-void
.end method

.method private whitespace(Ljava/util/Vector;[I)V
    .locals 7
    .parameter "attributes"
    .parameter "bookmarks"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v6, 0x0

    .line 861
    aget v0, p2, v3

    aget v1, p2, v6

    if-le v0, v1, :cond_0

    .line 862
    new-instance v0, Lorg/htmlparser/lexer/PageAttribute;

    iget-object v1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    aget v4, p2, v6

    aget v5, p2, v3

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 864
    :cond_0
    return-void
.end method


# virtual methods
.method public createRemarkNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Remark;
    .locals 1
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 644
    new-instance v0, Lorg/htmlparser/nodes/RemarkNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/nodes/RemarkNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    return-object v0
.end method

.method public createStringNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Text;
    .locals 1
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 632
    new-instance v0, Lorg/htmlparser/nodes/TextNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/nodes/TextNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    return-object v0
.end method

.method public createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;
    .locals 1
    .parameter "page"
    .parameter "start"
    .parameter "end"
    .parameter "attributes"

    .prologue
    .line 661
    new-instance v0, Lorg/htmlparser/nodes/TagNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    return-object v0
.end method

.method public getCurrentLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->getLine(Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLineNumber()I
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public getCursor()Lorg/htmlparser/lexer/Cursor;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    return-object v0
.end method

.method public getNodeFactory()Lorg/htmlparser/NodeFactory;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mFactory:Lorg/htmlparser/NodeFactory;

    return-object v0
.end method

.method public getPage()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method protected makeRemark(II)Lorg/htmlparser/Node;
    .locals 4
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 1324
    sub-int v0, p2, p1

    .line 1325
    .local v0, length:I
    if-eqz v0, :cond_1

    .line 1327
    const/4 v2, 0x2

    if-le v2, v0, :cond_0

    .line 1329
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->makeString(II)Lorg/htmlparser/Node;

    move-result-object v1

    .line 1335
    :goto_0
    return-object v1

    .line 1330
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v2

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lorg/htmlparser/NodeFactory;->createRemarkNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Remark;

    move-result-object v1

    .line 1331
    .local v1, ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 1333
    .end local v1           #ret:Lorg/htmlparser/Node;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #ret:Lorg/htmlparser/Node;
    goto :goto_0
.end method

.method protected makeString(II)Lorg/htmlparser/Node;
    .locals 4
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 843
    sub-int v0, p2, p1

    .line 844
    .local v0, length:I
    if-eqz v0, :cond_0

    .line 846
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v2

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2}, Lorg/htmlparser/NodeFactory;->createStringNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Text;

    move-result-object v1

    .line 851
    .local v1, ret:Lorg/htmlparser/Node;
    :goto_0
    return-object v1

    .line 849
    .end local v1           #ret:Lorg/htmlparser/Node;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #ret:Lorg/htmlparser/Node;
    goto :goto_0
.end method

.method protected makeTag(IILjava/util/Vector;)Lorg/htmlparser/Node;
    .locals 4
    .parameter "start"
    .parameter "end"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 1173
    sub-int v0, p2, p1

    .line 1174
    .local v0, length:I
    if-eqz v0, :cond_1

    .line 1176
    const/4 v2, 0x2

    if-le v2, v0, :cond_0

    .line 1178
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->makeString(II)Lorg/htmlparser/Node;

    move-result-object v1

    .line 1184
    :goto_0
    return-object v1

    .line 1179
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v2

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lorg/htmlparser/NodeFactory;->createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;

    move-result-object v1

    .line 1180
    .local v1, ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 1182
    .end local v1           #ret:Lorg/htmlparser/Node;
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #ret:Lorg/htmlparser/Node;
    goto :goto_0
.end method

.method public nextNode()Lorg/htmlparser/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->nextNode(Z)Lorg/htmlparser/Node;

    move-result-object v0

    return-object v0
.end method

.method public nextNode(Z)Lorg/htmlparser/Node;
    .locals 9
    .parameter "quotesmart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const v8, 0xffff

    const/16 v7, 0x25

    .line 338
    const/4 v5, -0x1

    sget v6, Lorg/htmlparser/lexer/Lexer;->mDebugLineTrigger:I

    if-eq v5, v6, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    .line 341
    .local v2, page:Lorg/htmlparser/lexer/Page;
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v5}, Lorg/htmlparser/lexer/Page;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    .line 342
    .local v1, lineno:I
    sget v5, Lorg/htmlparser/lexer/Lexer;->mDebugLineTrigger:I

    if-ge v5, v1, :cond_0

    .line 343
    add-int/lit8 v5, v1, 0x1

    sput v5, Lorg/htmlparser/lexer/Lexer;->mDebugLineTrigger:I

    .line 345
    .end local v1           #lineno:I
    .end local v2           #page:Lorg/htmlparser/lexer/Page;
    :cond_0
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v4

    .line 346
    .local v4, start:I
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 347
    .local v0, ch:C
    sparse-switch v0, :sswitch_data_0

    .line 397
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 398
    invoke-virtual {p0, v4, p1}, Lorg/htmlparser/lexer/Lexer;->parseString(IZ)Lorg/htmlparser/Node;

    move-result-object v3

    .line 402
    .local v3, ret:Lorg/htmlparser/Node;
    :goto_0
    return-object v3

    .line 350
    .end local v3           #ret:Lorg/htmlparser/Node;
    :sswitch_0
    const/4 v3, 0x0

    .line 351
    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 353
    .end local v3           #ret:Lorg/htmlparser/Node;
    :sswitch_1
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 354
    if-ne v8, v0, :cond_1

    .line 355
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/htmlparser/lexer/Lexer;->makeString(II)Lorg/htmlparser/Node;

    move-result-object v3

    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 356
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_1
    if-ne v7, v0, :cond_2

    .line 358
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 359
    invoke-virtual {p0, v4}, Lorg/htmlparser/lexer/Lexer;->parseJsp(I)Lorg/htmlparser/Node;

    move-result-object v3

    .line 360
    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 361
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_2
    const/16 v5, 0x3f

    if-ne v5, v0, :cond_3

    .line 363
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 364
    invoke-virtual {p0, v4}, Lorg/htmlparser/lexer/Lexer;->parsePI(I)Lorg/htmlparser/Node;

    move-result-object v3

    .line 365
    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 366
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_3
    const/16 v5, 0x2f

    if-eq v5, v0, :cond_4

    if-eq v7, v0, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 368
    :cond_4
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 369
    invoke-virtual {p0, v4}, Lorg/htmlparser/lexer/Lexer;->parseTag(I)Lorg/htmlparser/Node;

    move-result-object v3

    .line 370
    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 371
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_5
    const/16 v5, 0x21

    if-ne v5, v0, :cond_9

    .line 373
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 374
    if-ne v8, v0, :cond_6

    .line 375
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/htmlparser/lexer/Lexer;->makeString(II)Lorg/htmlparser/Node;

    move-result-object v3

    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 378
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_6
    const/16 v5, 0x3e

    if-ne v5, v0, :cond_7

    .line 379
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lorg/htmlparser/lexer/Lexer;->makeRemark(II)Lorg/htmlparser/Node;

    move-result-object v3

    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto :goto_0

    .line 382
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_7
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 383
    const/16 v5, 0x2d

    if-ne v5, v0, :cond_8

    .line 384
    invoke-virtual {p0, v4, p1}, Lorg/htmlparser/lexer/Lexer;->parseRemark(IZ)Lorg/htmlparser/Node;

    move-result-object v3

    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto/16 :goto_0

    .line 387
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_8
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 388
    invoke-virtual {p0, v4}, Lorg/htmlparser/lexer/Lexer;->parseTag(I)Lorg/htmlparser/Node;

    move-result-object v3

    .line 392
    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto/16 :goto_0

    .line 394
    .end local v3           #ret:Lorg/htmlparser/Node;
    :cond_9
    invoke-virtual {p0, v4, p1}, Lorg/htmlparser/lexer/Lexer;->parseString(IZ)Lorg/htmlparser/Node;

    move-result-object v3

    .line 395
    .restart local v3       #ret:Lorg/htmlparser/Node;
    goto/16 :goto_0

    .line 347
    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method public parseCDATA()Lorg/htmlparser/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->parseCDATA(Z)Lorg/htmlparser/Node;

    move-result-object v0

    return-object v0
.end method

.method public parseCDATA(Z)Lorg/htmlparser/Node;
    .locals 13
    .parameter "quotesmart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x2f

    const/16 v11, 0x2a

    const/16 v10, 0x2d

    const v9, 0xffff

    .line 452
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    .line 453
    .local v5, start:I
    const/4 v6, 0x0

    .line 454
    .local v6, state:I
    const/4 v2, 0x0

    .line 455
    .local v2, done:Z
    const/4 v4, 0x0

    .line 456
    .local v4, quote:C
    const/4 v1, 0x0

    .line 458
    .local v1, comment:Z
    :cond_0
    :goto_0
    if-nez v2, :cond_16

    .line 460
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 461
    .local v0, ch:C
    packed-switch v6, :pswitch_data_0

    .line 611
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "how the fuck did we get in state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 464
    :pswitch_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 523
    :sswitch_0
    const/4 v1, 0x0

    .line 524
    goto :goto_0

    .line 467
    :sswitch_1
    const/4 v2, 0x1

    .line 468
    goto :goto_0

    .line 470
    :sswitch_2
    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    .line 471
    if-nez v4, :cond_1

    .line 472
    const/16 v4, 0x27

    goto :goto_0

    .line 473
    :cond_1
    const/16 v7, 0x27

    if-ne v7, v4, :cond_0

    .line 474
    const/4 v4, 0x0

    goto :goto_0

    .line 477
    :sswitch_3
    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    .line 478
    if-nez v4, :cond_2

    .line 479
    const/16 v4, 0x22

    goto :goto_0

    .line 480
    :cond_2
    const/16 v7, 0x22

    if-ne v7, v4, :cond_0

    .line 481
    const/4 v4, 0x0

    goto :goto_0

    .line 484
    :sswitch_4
    if-eqz p1, :cond_0

    .line 485
    if-eqz v4, :cond_0

    .line 487
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 488
    if-ne v9, v0, :cond_3

    .line 489
    const/4 v2, 0x1

    goto :goto_0

    .line 490
    :cond_3
    const/16 v7, 0x5c

    if-eq v0, v7, :cond_0

    if-eq v0, v4, :cond_0

    .line 492
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 496
    :sswitch_5
    if-eqz p1, :cond_0

    .line 497
    if-nez v4, :cond_0

    .line 500
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 501
    if-ne v9, v0, :cond_4

    .line 502
    const/4 v2, 0x1

    goto :goto_0

    .line 503
    :cond_4
    if-ne v12, v0, :cond_5

    .line 504
    const/4 v1, 0x1

    goto :goto_0

    .line 505
    :cond_5
    if-ne v11, v0, :cond_9

    .line 510
    :cond_6
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 511
    if-eq v9, v0, :cond_7

    if-ne v11, v0, :cond_6

    .line 512
    :cond_7
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 513
    if-ne v0, v11, :cond_8

    .line 514
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 516
    :cond_8
    if-eq v9, v0, :cond_0

    if-ne v12, v0, :cond_6

    goto/16 :goto_0

    .line 519
    :cond_9
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 526
    :sswitch_6
    if-eqz p1, :cond_a

    .line 528
    if-nez v4, :cond_0

    .line 529
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 532
    :cond_a
    const/4 v6, 0x1

    .line 533
    goto/16 :goto_0

    .line 539
    :pswitch_1
    sparse-switch v0, :sswitch_data_1

    .line 565
    const/4 v6, 0x0

    .line 566
    goto/16 :goto_0

    .line 542
    :sswitch_7
    const/4 v2, 0x1

    .line 543
    goto/16 :goto_0

    .line 545
    :sswitch_8
    const/4 v6, 0x2

    .line 546
    goto/16 :goto_0

    .line 548
    :sswitch_9
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 549
    if-ne v9, v0, :cond_b

    .line 550
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 551
    :cond_b
    if-ne v10, v0, :cond_e

    .line 553
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 554
    if-ne v9, v0, :cond_c

    .line 555
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 556
    :cond_c
    if-ne v10, v0, :cond_d

    .line 557
    const/4 v6, 0x3

    goto/16 :goto_0

    .line 559
    :cond_d
    const/4 v6, 0x0

    .line 560
    goto/16 :goto_0

    .line 562
    :cond_e
    const/4 v6, 0x0

    .line 563
    goto/16 :goto_0

    .line 570
    :pswitch_2
    const/4 v1, 0x0

    .line 571
    if-ne v9, v0, :cond_f

    .line 572
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 573
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 575
    const/4 v2, 0x1

    .line 577
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 578
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 579
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 582
    :cond_10
    const/4 v6, 0x0

    .line 583
    goto/16 :goto_0

    .line 585
    :pswitch_3
    const/4 v1, 0x0

    .line 586
    if-ne v9, v0, :cond_11

    .line 587
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 588
    :cond_11
    if-ne v10, v0, :cond_0

    .line 590
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 591
    if-ne v9, v0, :cond_12

    .line 592
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 593
    :cond_12
    if-ne v10, v0, :cond_15

    .line 595
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 596
    if-ne v9, v0, :cond_13

    .line 597
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 598
    :cond_13
    const/16 v7, 0x3e

    if-ne v7, v0, :cond_14

    .line 599
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 602
    :cond_14
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 603
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 607
    :cond_15
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v8, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7, v8}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 614
    .end local v0           #ch:C
    :cond_16
    iget-object v7, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v7}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    .line 616
    .local v3, end:I
    invoke-virtual {p0, v5, v3}, Lorg/htmlparser/lexer/Lexer;->makeString(II)Lorg/htmlparser/Node;

    move-result-object v7

    return-object v7

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 464
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x2f -> :sswitch_5
        0x3c -> :sswitch_6
        0x5c -> :sswitch_4
        0xffff -> :sswitch_1
    .end sparse-switch

    .line 539
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_9
        0x2f -> :sswitch_8
        0xffff -> :sswitch_7
    .end sparse-switch
.end method

.method protected parseJsp(I)Lorg/htmlparser/Node;
    .locals 17
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 1356
    const/16 v16, 0x0

    .line 1357
    .local v16, done:Z
    const/4 v6, 0x0

    .line 1358
    .local v6, state:I
    const/4 v5, 0x0

    .line 1359
    .local v5, code:I
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 1366
    .local v14, attributes:Ljava/util/Vector;
    :cond_0
    :goto_0
    if-nez v16, :cond_8

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v15

    .line 1369
    .local v15, ch:C
    sparse-switch v6, :sswitch_data_0

    .line 1498
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "how the fuck did we get in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1372
    :sswitch_0
    packed-switch v15, :pswitch_data_0

    .line 1380
    const/16 v16, 0x1

    .line 1381
    goto :goto_0

    .line 1375
    :pswitch_0
    const/4 v6, 0x1

    .line 1376
    goto :goto_0

    .line 1385
    :sswitch_1
    sparse-switch v15, :sswitch_data_1

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v5, v2, -0x1

    .line 1399
    new-instance v2, Lorg/htmlparser/lexer/PageAttribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v4, p1, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .end local v6           #state:I
    invoke-virtual {v14, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1400
    const/4 v6, 0x2

    .line 1401
    .restart local v6       #state:I
    goto :goto_0

    .line 1389
    :sswitch_2
    const/16 v16, 0x1

    .line 1390
    goto :goto_0

    .line 1393
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    .line 1394
    new-instance v2, Lorg/htmlparser/lexer/PageAttribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v4, p1, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .end local v6           #state:I
    invoke-virtual {v14, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1395
    const/4 v6, 0x2

    .line 1396
    .restart local v6       #state:I
    goto :goto_0

    .line 1405
    :sswitch_4
    sparse-switch v15, :sswitch_data_2

    goto :goto_0

    .line 1413
    :sswitch_5
    move v6, v15

    .line 1414
    goto :goto_0

    .line 1409
    :sswitch_6
    const/16 v16, 0x1

    .line 1410
    goto :goto_0

    .line 1416
    :sswitch_7
    const/4 v6, 0x3

    .line 1417
    goto :goto_0

    .line 1419
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v15

    .line 1420
    const/16 v2, 0x2f

    if-ne v15, v2, :cond_3

    .line 1424
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v15

    .line 1425
    const v2, 0xffff

    if-ne v15, v2, :cond_2

    .line 1427
    const/16 v16, 0x1

    .line 1428
    goto/16 :goto_0

    .line 1430
    :cond_2
    const/16 v2, 0xa

    if-eq v15, v2, :cond_0

    const/16 v2, 0xd

    if-ne v15, v2, :cond_1

    goto/16 :goto_0

    .line 1436
    :cond_3
    const/16 v2, 0x2a

    if-ne v15, v2, :cond_7

    .line 1441
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v15

    .line 1442
    const v2, 0xffff

    if-eq v2, v15, :cond_5

    const/16 v2, 0x2a

    if-ne v2, v15, :cond_4

    .line 1443
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v15

    .line 1444
    const/16 v2, 0x2a

    if-ne v15, v2, :cond_6

    .line 1445
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 1447
    :cond_6
    const v2, 0xffff

    if-eq v2, v15, :cond_0

    const/16 v2, 0x2f

    if-ne v2, v15, :cond_4

    goto/16 :goto_0

    .line 1450
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 1457
    :sswitch_9
    sparse-switch v15, :sswitch_data_3

    .line 1467
    const/4 v6, 0x2

    .line 1468
    goto/16 :goto_0

    .line 1460
    :sswitch_a
    const/16 v16, 0x1

    .line 1461
    goto/16 :goto_0

    .line 1463
    :sswitch_b
    const/4 v6, 0x4

    .line 1464
    const/16 v16, 0x1

    .line 1465
    goto/16 :goto_0

    .line 1472
    :sswitch_c
    sparse-switch v15, :sswitch_data_4

    goto/16 :goto_0

    .line 1478
    :sswitch_d
    const/4 v6, 0x2

    .line 1479
    goto/16 :goto_0

    .line 1475
    :sswitch_e
    const/16 v16, 0x1

    .line 1476
    goto/16 :goto_0

    .line 1485
    :sswitch_f
    sparse-switch v15, :sswitch_data_5

    goto/16 :goto_0

    .line 1491
    :sswitch_10
    const/4 v6, 0x2

    .line 1492
    goto/16 :goto_0

    .line 1488
    :sswitch_11
    const/16 v16, 0x1

    .line 1489
    goto/16 :goto_0

    .line 1502
    .end local v15           #ch:C
    :cond_8
    const/4 v2, 0x4

    if-ne v2, v6, :cond_a

    .line 1504
    if-eqz v5, :cond_9

    .line 1506
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    .line 1507
    new-instance v3, Lorg/htmlparser/lexer/PageAttribute;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v14, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1508
    new-instance v7, Lorg/htmlparser/lexer/PageAttribute;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move v9, v6

    invoke-direct/range {v7 .. v13}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v14, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14}, Lorg/htmlparser/lexer/Lexer;->makeTag(IILjava/util/Vector;)Lorg/htmlparser/Node;

    move-result-object v2

    :goto_1
    return-object v2

    .line 1511
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "jsp with no code!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1514
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/Lexer;->parseString(IZ)Lorg/htmlparser/Node;

    move-result-object v2

    goto :goto_1

    .line 1369
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_9
        0x22 -> :sswitch_c
        0x27 -> :sswitch_f
    .end sparse-switch

    .line 1372
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    .line 1385
    :sswitch_data_1
    .sparse-switch
        0x3d -> :sswitch_3
        0x3e -> :sswitch_2
        0x40 -> :sswitch_3
        0xffff -> :sswitch_2
    .end sparse-switch

    .line 1405
    :sswitch_data_2
    .sparse-switch
        0x22 -> :sswitch_5
        0x25 -> :sswitch_7
        0x27 -> :sswitch_5
        0x2f -> :sswitch_8
        0x3e -> :sswitch_6
        0xffff -> :sswitch_6
    .end sparse-switch

    .line 1457
    :sswitch_data_3
    .sparse-switch
        0x3e -> :sswitch_b
        0xffff -> :sswitch_a
    .end sparse-switch

    .line 1472
    :sswitch_data_4
    .sparse-switch
        0x22 -> :sswitch_d
        0xffff -> :sswitch_e
    .end sparse-switch

    .line 1485
    :sswitch_data_5
    .sparse-switch
        0x27 -> :sswitch_10
        0xffff -> :sswitch_11
    .end sparse-switch
.end method

.method protected parsePI(I)Lorg/htmlparser/Node;
    .locals 17
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 1537
    const/16 v16, 0x0

    .line 1538
    .local v16, done:Z
    const/4 v6, 0x0

    .line 1539
    .local v6, state:I
    const/4 v5, 0x0

    .line 1540
    .local v5, code:I
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 1543
    .local v14, attributes:Ljava/util/Vector;
    :goto_0
    if-nez v16, :cond_0

    .line 1545
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v15

    .line 1546
    .local v15, ch:C
    sparse-switch v6, :sswitch_data_0

    .line 1623
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "how the fuck did we get in state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1549
    :sswitch_0
    packed-switch v15, :pswitch_data_0

    .line 1559
    const/16 v16, 0x1

    .line 1560
    goto :goto_0

    .line 1552
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    .line 1553
    new-instance v2, Lorg/htmlparser/lexer/PageAttribute;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v4, p1, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    .end local v6           #state:I
    invoke-virtual {v14, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1554
    const/4 v6, 0x1

    .line 1555
    .restart local v6       #state:I
    goto :goto_0

    .line 1564
    :sswitch_1
    sparse-switch v15, :sswitch_data_1

    goto :goto_0

    .line 1572
    :sswitch_2
    move v6, v15

    .line 1573
    goto :goto_0

    .line 1568
    :sswitch_3
    const/16 v16, 0x1

    .line 1569
    goto :goto_0

    .line 1575
    :sswitch_4
    const/4 v6, 0x2

    .line 1576
    goto :goto_0

    .line 1582
    :sswitch_5
    sparse-switch v15, :sswitch_data_2

    .line 1592
    const/4 v6, 0x1

    .line 1593
    goto :goto_0

    .line 1585
    :sswitch_6
    const/16 v16, 0x1

    .line 1586
    goto :goto_0

    .line 1588
    :sswitch_7
    const/4 v6, 0x3

    .line 1589
    const/16 v16, 0x1

    .line 1590
    goto :goto_0

    .line 1597
    :sswitch_8
    sparse-switch v15, :sswitch_data_3

    goto :goto_0

    .line 1603
    :sswitch_9
    const/4 v6, 0x1

    .line 1604
    goto :goto_0

    .line 1600
    :sswitch_a
    const/16 v16, 0x1

    .line 1601
    goto :goto_0

    .line 1610
    :sswitch_b
    sparse-switch v15, :sswitch_data_4

    goto :goto_0

    .line 1616
    :sswitch_c
    const/4 v6, 0x1

    .line 1617
    goto :goto_0

    .line 1613
    :sswitch_d
    const/16 v16, 0x1

    .line 1614
    goto :goto_0

    .line 1627
    .end local v15           #ch:C
    :cond_0
    const/4 v2, 0x3

    if-ne v2, v6, :cond_2

    .line 1629
    if-eqz v5, :cond_1

    .line 1631
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    .line 1632
    new-instance v3, Lorg/htmlparser/lexer/PageAttribute;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v14, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1633
    new-instance v7, Lorg/htmlparser/lexer/PageAttribute;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    add-int/lit8 v10, v6, 0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move v9, v6

    invoke-direct/range {v7 .. v13}, Lorg/htmlparser/lexer/PageAttribute;-><init>(Lorg/htmlparser/lexer/Page;IIIIC)V

    invoke-virtual {v14, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1641
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2, v14}, Lorg/htmlparser/lexer/Lexer;->makeTag(IILjava/util/Vector;)Lorg/htmlparser/Node;

    move-result-object v2

    :goto_1
    return-object v2

    .line 1636
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "processing instruction with no content"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1639
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/htmlparser/lexer/Lexer;->parseString(IZ)Lorg/htmlparser/Node;

    move-result-object v2

    goto :goto_1

    .line 1546
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_5
        0x22 -> :sswitch_8
        0x27 -> :sswitch_b
    .end sparse-switch

    .line 1549
    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch

    .line 1564
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_2
        0x3e -> :sswitch_3
        0x3f -> :sswitch_4
        0xffff -> :sswitch_3
    .end sparse-switch

    .line 1582
    :sswitch_data_2
    .sparse-switch
        0x3e -> :sswitch_7
        0xffff -> :sswitch_6
    .end sparse-switch

    .line 1597
    :sswitch_data_3
    .sparse-switch
        0x22 -> :sswitch_9
        0xffff -> :sswitch_a
    .end sparse-switch

    .line 1610
    :sswitch_data_4
    .sparse-switch
        0x27 -> :sswitch_c
        0xffff -> :sswitch_d
    .end sparse-switch
.end method

.method protected parseRemark(IZ)Lorg/htmlparser/Node;
    .locals 8
    .parameter "start"
    .parameter "quotesmart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const v7, 0xffff

    const/16 v6, 0x3e

    const/16 v5, 0x2d

    .line 1237
    const/4 v1, 0x0

    .line 1238
    .local v1, done:Z
    const/4 v2, 0x0

    .line 1239
    .local v2, state:I
    :cond_0
    :goto_0
    if-nez v1, :cond_b

    .line 1241
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 1242
    .local v0, ch:C
    if-ne v7, v0, :cond_1

    .line 1243
    const/4 v1, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 1303
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "how the fuck did we get in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1248
    :pswitch_0
    if-ne v6, v0, :cond_2

    .line 1249
    const/4 v1, 0x1

    .line 1250
    :cond_2
    if-ne v5, v0, :cond_3

    .line 1251
    const/4 v2, 0x1

    goto :goto_0

    .line 1253
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->parseString(IZ)Lorg/htmlparser/Node;

    move-result-object v3

    .line 1307
    .end local v0           #ch:C
    :goto_1
    return-object v3

    .line 1256
    .restart local v0       #ch:C
    :pswitch_1
    if-ne v5, v0, :cond_6

    .line 1259
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 1260
    if-ne v7, v0, :cond_4

    .line 1261
    const/4 v1, 0x1

    goto :goto_0

    .line 1262
    :cond_4
    if-ne v6, v0, :cond_5

    .line 1263
    const/4 v1, 0x1

    goto :goto_0

    .line 1266
    :cond_5
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 1267
    const/4 v2, 0x2

    .line 1269
    goto :goto_0

    .line 1271
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->parseString(IZ)Lorg/htmlparser/Node;

    move-result-object v3

    goto :goto_1

    .line 1274
    :pswitch_2
    if-ne v5, v0, :cond_7

    .line 1275
    const/4 v2, 0x3

    goto :goto_0

    .line 1276
    :cond_7
    if-ne v7, v0, :cond_0

    .line 1277
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/lexer/Lexer;->parseString(IZ)Lorg/htmlparser/Node;

    move-result-object v3

    goto :goto_1

    .line 1280
    :pswitch_3
    if-ne v5, v0, :cond_8

    .line 1281
    const/4 v2, 0x4

    goto :goto_0

    .line 1283
    :cond_8
    const/4 v2, 0x2

    .line 1284
    goto :goto_0

    .line 1286
    :pswitch_4
    if-ne v6, v0, :cond_9

    .line 1287
    const/4 v1, 0x1

    goto :goto_0

    .line 1288
    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1293
    sget-boolean v3, Lorg/htmlparser/lexer/Lexer;->STRICT_REMARKS:Z

    if-nez v3, :cond_a

    if-eq v5, v0, :cond_0

    const/16 v3, 0x21

    if-eq v3, v0, :cond_0

    .line 1300
    :cond_a
    const/4 v2, 0x2

    .line 1301
    goto :goto_0

    .line 1307
    .end local v0           #ch:C
    :cond_b
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/htmlparser/lexer/Lexer;->makeRemark(II)Lorg/htmlparser/Node;

    move-result-object v3

    goto :goto_1

    .line 1245
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected parseString(IZ)Lorg/htmlparser/Node;
    .locals 9
    .parameter "start"
    .parameter "quotesmart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x2a

    const/16 v6, 0x2f

    const v5, 0xffff

    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, done:Z
    const/4 v2, 0x0

    .line 733
    .local v2, quote:C
    :cond_0
    :goto_0
    if-nez v1, :cond_16

    .line 735
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 736
    .local v0, ch:C
    if-ne v5, v0, :cond_1

    .line 737
    const/4 v1, 0x1

    goto :goto_0

    .line 738
    :cond_1
    const/16 v3, 0x1b

    if-ne v3, v0, :cond_6

    .line 740
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 741
    if-ne v5, v0, :cond_2

    .line 742
    const/4 v1, 0x1

    goto :goto_0

    .line 743
    :cond_2
    const/16 v3, 0x24

    if-ne v3, v0, :cond_5

    .line 745
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 746
    if-ne v5, v0, :cond_3

    .line 747
    const/4 v1, 0x1

    goto :goto_0

    .line 748
    :cond_3
    const/16 v3, 0x42

    if-ne v3, v0, :cond_4

    .line 749
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0, v3}, Lorg/htmlparser/lexer/Lexer;->scanJIS(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 752
    :cond_4
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 753
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 757
    :cond_5
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 759
    :cond_6
    if-eqz p2, :cond_8

    if-nez v2, :cond_8

    const/16 v3, 0x27

    if-eq v3, v0, :cond_7

    const/16 v3, 0x22

    if-ne v3, v0, :cond_8

    .line 761
    :cond_7
    move v2, v0

    goto :goto_0

    .line 763
    :cond_8
    if-eqz p2, :cond_9

    if-eqz v2, :cond_9

    if-ne v8, v0, :cond_9

    .line 765
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 766
    if-eq v5, v0, :cond_0

    if-eq v8, v0, :cond_0

    if-eq v0, v2, :cond_0

    .line 770
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto :goto_0

    .line 772
    :cond_9
    if-eqz p2, :cond_a

    if-ne v0, v2, :cond_a

    .line 773
    const/4 v2, 0x0

    goto :goto_0

    .line 774
    :cond_a
    if-eqz p2, :cond_12

    if-nez v2, :cond_12

    if-ne v0, v6, :cond_12

    .line 779
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 780
    if-ne v5, v0, :cond_b

    .line 781
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 782
    :cond_b
    if-ne v6, v0, :cond_d

    .line 785
    :cond_c
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 786
    if-eq v5, v0, :cond_0

    const/16 v3, 0xa

    if-ne v3, v0, :cond_c

    goto/16 :goto_0

    .line 788
    :cond_d
    if-ne v7, v0, :cond_11

    .line 793
    :cond_e
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 794
    if-eq v5, v0, :cond_f

    if-ne v7, v0, :cond_e

    .line 795
    :cond_f
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 796
    if-ne v0, v7, :cond_10

    .line 797
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 799
    :cond_10
    if-eq v5, v0, :cond_0

    if-ne v6, v0, :cond_e

    goto/16 :goto_0

    .line 802
    :cond_11
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 804
    :cond_12
    if-nez v2, :cond_0

    const/16 v3, 0x3c

    if-ne v3, v0, :cond_0

    .line 806
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 807
    if-ne v5, v0, :cond_13

    .line 808
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 810
    :cond_13
    if-eq v6, v0, :cond_14

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_14

    const/16 v3, 0x21

    if-eq v3, v0, :cond_14

    const/16 v3, 0x25

    if-eq v3, v0, :cond_14

    const/16 v3, 0x3f

    if-ne v3, v0, :cond_15

    .line 813
    :cond_14
    const/4 v1, 0x1

    .line 814
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 815
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 820
    :cond_15
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v4, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    goto/16 :goto_0

    .line 825
    .end local v0           #ch:C
    :cond_16
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {p0, p1, v3}, Lorg/htmlparser/lexer/Lexer;->makeString(II)Lorg/htmlparser/Node;

    move-result-object v3

    return-object v3
.end method

.method protected parseTag(I)Lorg/htmlparser/Node;
    .locals 12
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x3e

    const/16 v10, 0x3c

    const/4 v9, 0x6

    const/4 v8, 0x0

    const v7, 0xffff

    .line 999
    const/4 v3, 0x0

    .line 1000
    .local v3, done:Z
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1001
    .local v0, attributes:Ljava/util/Vector;
    const/4 v4, 0x0

    .line 1002
    .local v4, state:I
    const/16 v5, 0x8

    new-array v1, v5, [I

    .line 1003
    .local v1, bookmarks:[I
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    aput v5, v1, v8

    .line 1004
    :cond_0
    :goto_0
    if-nez v3, :cond_12

    .line 1006
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v6}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    aput v6, v1, v5

    .line 1007
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    .line 1008
    .local v2, ch:C
    packed-switch v4, :pswitch_data_0

    .line 1151
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "how the fuck did we get in state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1011
    :pswitch_0
    if-eq v7, v2, :cond_1

    if-eq v11, v2, :cond_1

    if-ne v10, v2, :cond_3

    .line 1013
    :cond_1
    if-ne v10, v2, :cond_2

    .line 1016
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 1017
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v6}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    aput v6, v1, v5

    .line 1019
    :cond_2
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->whitespace(Ljava/util/Vector;[I)V

    .line 1020
    const/4 v3, 0x1

    .line 1021
    goto :goto_0

    .line 1022
    :cond_3
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1024
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->whitespace(Ljava/util/Vector;[I)V

    .line 1025
    const/4 v4, 0x1

    .line 1026
    goto :goto_0

    .line 1029
    :pswitch_1
    if-eq v7, v2, :cond_4

    if-eq v11, v2, :cond_4

    if-ne v10, v2, :cond_6

    .line 1031
    :cond_4
    if-ne v10, v2, :cond_5

    .line 1034
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 1035
    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v6}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    aput v6, v1, v5

    .line 1037
    :cond_5
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->standalone(Ljava/util/Vector;[I)V

    .line 1038
    const/4 v3, 0x1

    .line 1039
    goto :goto_0

    .line 1040
    :cond_6
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1044
    const/4 v5, 0x2

    aget v5, v1, v5

    aput v5, v1, v9

    .line 1045
    const/4 v4, 0x6

    .line 1046
    goto/16 :goto_0

    .line 1047
    :cond_7
    const/16 v5, 0x3d

    if-ne v5, v2, :cond_0

    .line 1048
    const/4 v4, 0x2

    goto/16 :goto_0

    .line 1051
    :pswitch_2
    if-eq v7, v2, :cond_8

    if-ne v11, v2, :cond_9

    .line 1053
    :cond_8
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->empty(Ljava/util/Vector;[I)V

    .line 1054
    const/4 v3, 0x1

    .line 1055
    goto/16 :goto_0

    .line 1056
    :cond_9
    const/16 v5, 0x27

    if-ne v5, v2, :cond_a

    .line 1058
    const/4 v4, 0x4

    .line 1059
    const/4 v5, 0x4

    const/4 v6, 0x3

    aget v6, v1, v6

    aput v6, v1, v5

    goto/16 :goto_0

    .line 1061
    :cond_a
    const/16 v5, 0x22

    if-ne v5, v2, :cond_b

    .line 1063
    const/4 v4, 0x5

    .line 1064
    const/4 v5, 0x5

    const/4 v6, 0x3

    aget v6, v1, v6

    aput v6, v1, v5

    goto/16 :goto_0

    .line 1066
    :cond_b
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1073
    const/4 v4, 0x3

    .line 1074
    goto/16 :goto_0

    .line 1076
    :pswitch_3
    if-eq v7, v2, :cond_c

    if-ne v11, v2, :cond_d

    .line 1078
    :cond_c
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->naked(Ljava/util/Vector;[I)V

    .line 1079
    const/4 v3, 0x1

    .line 1080
    goto/16 :goto_0

    .line 1081
    :cond_d
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1083
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->naked(Ljava/util/Vector;[I)V

    .line 1084
    const/4 v5, 0x4

    aget v5, v1, v5

    aput v5, v1, v8

    .line 1085
    const/4 v4, 0x0

    .line 1086
    goto/16 :goto_0

    .line 1089
    :pswitch_4
    if-ne v7, v2, :cond_e

    .line 1091
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->single_quote(Ljava/util/Vector;[I)V

    .line 1092
    const/4 v3, 0x1

    .line 1093
    goto/16 :goto_0

    .line 1094
    :cond_e
    const/16 v5, 0x27

    if-ne v5, v2, :cond_0

    .line 1096
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->single_quote(Ljava/util/Vector;[I)V

    .line 1097
    const/4 v5, 0x5

    aget v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v8

    .line 1098
    const/4 v4, 0x0

    .line 1099
    goto/16 :goto_0

    .line 1102
    :pswitch_5
    if-ne v7, v2, :cond_f

    .line 1104
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->double_quote(Ljava/util/Vector;[I)V

    .line 1105
    const/4 v3, 0x1

    .line 1106
    goto/16 :goto_0

    .line 1107
    :cond_f
    const/16 v5, 0x22

    if-ne v5, v2, :cond_0

    .line 1109
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->double_quote(Ljava/util/Vector;[I)V

    .line 1110
    aget v5, v1, v9

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v8

    .line 1111
    const/4 v4, 0x0

    .line 1112
    goto/16 :goto_0

    .line 1119
    :pswitch_6
    if-ne v7, v2, :cond_10

    .line 1122
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->standalone(Ljava/util/Vector;[I)V

    .line 1123
    aget v5, v1, v9

    aput v5, v1, v8

    .line 1124
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 1125
    const/4 v4, 0x0

    .line 1126
    goto/16 :goto_0

    .line 1127
    :cond_10
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1131
    const/16 v5, 0x3d

    if-ne v5, v2, :cond_11

    .line 1133
    const/4 v5, 0x2

    aget v6, v1, v9

    aput v6, v1, v5

    .line 1134
    const/4 v5, 0x3

    const/4 v6, 0x7

    aget v6, v1, v6

    aput v6, v1, v5

    .line 1135
    const/4 v4, 0x2

    .line 1136
    goto/16 :goto_0

    .line 1144
    :cond_11
    invoke-direct {p0, v0, v1}, Lorg/htmlparser/lexer/Lexer;->standalone(Ljava/util/Vector;[I)V

    .line 1145
    aget v5, v1, v9

    aput v5, v1, v8

    .line 1146
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    iget-object v6, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5, v6}, Lorg/htmlparser/lexer/Page;->ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V

    .line 1147
    const/4 v4, 0x0

    .line 1149
    goto/16 :goto_0

    .line 1155
    .end local v2           #ch:C
    :cond_12
    iget-object v5, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {p0, p1, v5, v0}, Lorg/htmlparser/lexer/Lexer;->makeTag(IILjava/util/Vector;)Lorg/htmlparser/Node;

    move-result-object v5

    return-object v5

    .line 1008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Page;->reset()V

    .line 304
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Lexer;->setCursor(Lorg/htmlparser/lexer/Cursor;)V

    .line 305
    return-void
.end method

.method protected scanJIS(Lorg/htmlparser/lexer/Cursor;)V
    .locals 6
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, done:Z
    const/4 v2, 0x0

    .line 683
    .local v2, state:I
    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 685
    iget-object v3, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v3, p1}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 686
    .local v0, ch:C
    const v3, 0xffff

    if-ne v3, v0, :cond_1

    .line 687
    const/4 v1, 0x1

    goto :goto_0

    .line 689
    :cond_1
    packed-switch v2, :pswitch_data_0

    .line 708
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 692
    :pswitch_0
    const/16 v3, 0x1b

    if-ne v3, v0, :cond_0

    .line 693
    const/4 v2, 0x1

    goto :goto_0

    .line 696
    :pswitch_1
    const/16 v3, 0x28

    if-ne v3, v0, :cond_2

    .line 697
    const/4 v2, 0x2

    goto :goto_0

    .line 699
    :cond_2
    const/4 v2, 0x0

    .line 700
    goto :goto_0

    .line 702
    :pswitch_2
    const/16 v3, 0x4a

    if-ne v3, v0, :cond_3

    .line 703
    const/4 v1, 0x1

    goto :goto_0

    .line 705
    :cond_3
    const/4 v2, 0x0

    .line 706
    goto :goto_0

    .line 711
    .end local v0           #ch:C
    :cond_4
    return-void

    .line 689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCursor(Lorg/htmlparser/lexer/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cursor cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->mCursor:Lorg/htmlparser/lexer/Cursor;

    .line 233
    return-void
.end method

.method public setNodeFactory(Lorg/htmlparser/NodeFactory;)V
    .locals 2
    .parameter "factory"

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "node factory cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->mFactory:Lorg/htmlparser/NodeFactory;

    .line 253
    return-void
.end method

.method public setPage(Lorg/htmlparser/lexer/Page;)V
    .locals 2
    .parameter "page"

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "page cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Lexer;->mPage:Lorg/htmlparser/lexer/Page;

    .line 212
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 271
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/Cursor;->setPosition(I)V

    .line 272
    return-void
.end method
