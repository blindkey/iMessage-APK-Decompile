.class public Lorg/htmlparser/util/IteratorImpl;
.super Ljava/lang/Object;
.source "IteratorImpl.java"

# interfaces
.implements Lorg/htmlparser/util/NodeIterator;


# instance fields
.field mCursor:Lorg/htmlparser/lexer/Cursor;

.field mFeedback:Lorg/htmlparser/util/ParserFeedback;

.field mLexer:Lorg/htmlparser/lexer/Lexer;


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/ParserFeedback;)V
    .locals 3
    .parameter "lexer"
    .parameter "fb"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/htmlparser/util/IteratorImpl;->mLexer:Lorg/htmlparser/lexer/Lexer;

    .line 46
    iput-object p2, p0, Lorg/htmlparser/util/IteratorImpl;->mFeedback:Lorg/htmlparser/util/ParserFeedback;

    .line 47
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    iget-object v1, p0, Lorg/htmlparser/util/IteratorImpl;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    iput-object v0, p0, Lorg/htmlparser/util/IteratorImpl;->mCursor:Lorg/htmlparser/lexer/Cursor;

    .line 48
    return-void
.end method


# virtual methods
.method public hasMoreNodes()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v1, p0, Lorg/htmlparser/util/IteratorImpl;->mCursor:Lorg/htmlparser/lexer/Cursor;

    iget-object v2, p0, Lorg/htmlparser/util/IteratorImpl;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Lexer;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Cursor;->setPosition(I)V

    .line 59
    const v1, 0xffff

    iget-object v2, p0, Lorg/htmlparser/util/IteratorImpl;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlparser/util/IteratorImpl;->mCursor:Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 61
    .local v0, ret:Z
    :goto_0
    return v0

    .line 59
    .end local v0           #ret:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextNode()Lorg/htmlparser/Node;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-object v9, p0, Lorg/htmlparser/util/IteratorImpl;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v9}, Lorg/htmlparser/lexer/Lexer;->nextNode()Lorg/htmlparser/Node;

    move-result-object v5

    .line 79
    .local v5, ret:Lorg/htmlparser/Node;
    if-eqz v5, :cond_0

    .line 82
    instance-of v9, v5, Lorg/htmlparser/Tag;

    if-eqz v9, :cond_0

    .line 84
    move-object v0, v5

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v8, v0

    .line 85
    .local v8, tag:Lorg/htmlparser/Tag;
    invoke-interface {v8}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v9

    if-nez v9, :cond_0

    .line 88
    invoke-interface {v8}, Lorg/htmlparser/Tag;->getThisScanner()Lorg/htmlparser/scanners/Scanner;

    move-result-object v6

    .line 89
    .local v6, scanner:Lorg/htmlparser/scanners/Scanner;
    if-eqz v6, :cond_0

    .line 91
    new-instance v7, Lorg/htmlparser/util/NodeList;

    invoke-direct {v7}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 92
    .local v7, stack:Lorg/htmlparser/util/NodeList;
    iget-object v9, p0, Lorg/htmlparser/util/IteratorImpl;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-interface {v6, v8, v9, v7}, Lorg/htmlparser/scanners/Scanner;->scan(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/Tag;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 114
    .end local v6           #scanner:Lorg/htmlparser/scanners/Scanner;
    .end local v7           #stack:Lorg/htmlparser/util/NodeList;
    .end local v8           #tag:Lorg/htmlparser/Tag;
    :cond_0
    return-object v5

    .line 98
    .end local v5           #ret:Lorg/htmlparser/Node;
    :catch_0
    move-exception v4

    .line 100
    .local v4, pe:Lorg/htmlparser/util/ParserException;
    throw v4

    .line 102
    .end local v4           #pe:Lorg/htmlparser/util/ParserException;
    :catch_1
    move-exception v1

    .line 104
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 105
    .local v3, msgBuffer:Ljava/lang/StringBuffer;
    const-string v9, "Unexpected Exception occurred while reading "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    iget-object v9, p0, Lorg/htmlparser/util/IteratorImpl;->mLexer:Lorg/htmlparser/lexer/Lexer;

    invoke-virtual {v9}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v9

    invoke-virtual {v9}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v9, ", in nextNode"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    new-instance v2, Lorg/htmlparser/util/ParserException;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .local v2, ex:Lorg/htmlparser/util/ParserException;
    iget-object v9, p0, Lorg/htmlparser/util/IteratorImpl;->mFeedback:Lorg/htmlparser/util/ParserFeedback;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v2}, Lorg/htmlparser/util/ParserFeedback;->error(Ljava/lang/String;Lorg/htmlparser/util/ParserException;)V

    .line 111
    throw v2
.end method
