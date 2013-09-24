.class public Lorg/htmlparser/sax/XMLReader;
.super Ljava/lang/Object;
.source "XMLReader.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# instance fields
.field protected mContentHandler:Lorg/xml/sax/ContentHandler;

.field protected mDTDHandler:Lorg/xml/sax/DTDHandler;

.field protected mEntityResolver:Lorg/xml/sax/EntityResolver;

.field protected mErrorHandler:Lorg/xml/sax/ErrorHandler;

.field protected mNameSpacePrefixes:Z

.field protected mNameSpaces:Z

.field protected mParser:Lorg/htmlparser/Parser;

.field protected mParts:[Ljava/lang/String;

.field protected mSupport:Lorg/xml/sax/helpers/NamespaceSupport;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpaces:Z

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpacePrefixes:Z

    .line 136
    iput-object v1, p0, Lorg/htmlparser/sax/XMLReader;->mEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 137
    iput-object v1, p0, Lorg/htmlparser/sax/XMLReader;->mDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 138
    iput-object v1, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    .line 139
    iput-object v1, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 141
    new-instance v0, Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-direct {v0}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 142
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 143
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v1, ""

    const-string v2, "http://www.w3.org/TR/REC-html40"

    invoke-virtual {v0, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 147
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method protected doSAX(Lorg/htmlparser/Node;)V
    .locals 12
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 634
    instance-of v5, p1, Lorg/htmlparser/Remark;

    if-eqz v5, :cond_1

    .line 636
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v5}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v5

    invoke-interface {p1}, Lorg/htmlparser/Node;->getStartPosition()I

    move-result v6

    invoke-interface {p1}, Lorg/htmlparser/Node;->getEndPosition()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v4

    .line 637
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 692
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    instance-of v5, p1, Lorg/htmlparser/Text;

    if-eqz v5, :cond_2

    .line 641
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v5}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v5

    invoke-interface {p1}, Lorg/htmlparser/Node;->getStartPosition()I

    move-result v6

    invoke-interface {p1}, Lorg/htmlparser/Node;->getEndPosition()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v4

    .line 642
    .restart local v4       #text:Ljava/lang/String;
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-interface {v5, v6, v7, v8}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto :goto_0

    .line 644
    .end local v4           #text:Ljava/lang/String;
    :cond_2
    instance-of v5, p1, Lorg/htmlparser/Tag;

    if-eqz v5, :cond_0

    move-object v3, p1

    .line 646
    check-cast v3, Lorg/htmlparser/Tag;

    .line 647
    .local v3, tag:Lorg/htmlparser/Tag;
    iget-boolean v5, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpaces:Z

    if-eqz v5, :cond_3

    .line 648
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-interface {v3}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 654
    :goto_1
    iget-boolean v5, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpacePrefixes:Z

    if-eqz v5, :cond_4

    .line 655
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v3}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 661
    :goto_2
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v6, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    new-instance v9, Lorg/htmlparser/sax/Attributes;

    iget-object v10, p0, Lorg/htmlparser/sax/XMLReader;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    iget-object v11, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    invoke-direct {v9, v3, v10, v11}, Lorg/htmlparser/sax/Attributes;-><init>(Lorg/htmlparser/Tag;Lorg/xml/sax/helpers/NamespaceSupport;[Ljava/lang/String;)V

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 666
    invoke-interface {v3}, Lorg/htmlparser/Tag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 667
    .local v0, children:Lorg/htmlparser/util/NodeList;
    if-eqz v0, :cond_6

    .line 668
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v5

    if-ge v2, v5, :cond_6

    .line 669
    invoke-virtual {v0, v2}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/htmlparser/sax/XMLReader;->doSAX(Lorg/htmlparser/Node;)V

    .line 668
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 651
    .end local v0           #children:Lorg/htmlparser/util/NodeList;
    .end local v2           #i:I
    :cond_3
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    .line 652
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v5, v6

    goto :goto_1

    .line 656
    :cond_4
    iget-boolean v5, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpaces:Z

    if-eqz v5, :cond_5

    .line 657
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    goto :goto_2

    .line 659
    :cond_5
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v3}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_2

    .line 670
    .restart local v0       #children:Lorg/htmlparser/util/NodeList;
    :cond_6
    invoke-interface {v3}, Lorg/htmlparser/Tag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    .line 671
    .local v1, end:Lorg/htmlparser/Tag;
    if-eqz v1, :cond_0

    .line 673
    iget-boolean v5, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpaces:Z

    if-eqz v5, :cond_7

    .line 674
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-interface {v1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 680
    :goto_4
    iget-boolean v5, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpacePrefixes:Z

    if-eqz v5, :cond_8

    .line 681
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 686
    :goto_5
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v6, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v7, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-interface {v5, v6, v7, v8}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 677
    :cond_7
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    .line 678
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x1

    const-string v7, ""

    aput-object v7, v5, v6

    goto :goto_4

    .line 682
    :cond_8
    iget-boolean v5, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpaces:Z

    if-eqz v5, :cond_9

    .line 683
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    goto :goto_5

    .line 685
    :cond_9
    iget-object v5, p0, Lorg/htmlparser/sax/XMLReader;->mParts:[Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    goto :goto_5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mDTDHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mEntityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    iget-boolean v0, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpaces:Z

    .line 223
    .local v0, ret:Z
    :goto_0
    return v0

    .line 218
    .end local v0           #ret:Z
    :cond_0
    const-string v1, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    iget-boolean v0, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpacePrefixes:Z

    .restart local v0       #ret:Z
    goto :goto_0

    .line 221
    .end local v0           #ret:Z
    :cond_1
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " not yet understood"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not yet understood"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 12
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 580
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 583
    :try_start_0
    new-instance v0, Lorg/htmlparser/Parser;

    invoke-direct {v0, p1}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    .line 584
    new-instance v8, Lorg/htmlparser/sax/Locator;

    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-direct {v8, v0}, Lorg/htmlparser/sax/Locator;-><init>(Lorg/htmlparser/Parser;)V

    .line 585
    .local v8, locator:Lorg/htmlparser/sax/Locator;
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_1

    .line 586
    new-instance v6, Lorg/htmlparser/sax/Feedback;

    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-direct {v6, v0, v8}, Lorg/htmlparser/sax/Feedback;-><init>(Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/Locator;)V

    .line 589
    .local v6, feedback:Lorg/htmlparser/util/ParserFeedback;
    :goto_0
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0, v6}, Lorg/htmlparser/Parser;->setFeedback(Lorg/htmlparser/util/ParserFeedback;)V

    .line 592
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v8}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :try_start_1
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 596
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v7

    .local v7, iterator:Lorg/htmlparser/util/NodeIterator;
    :goto_1
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 597
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/sax/XMLReader;->doSAX(Lorg/htmlparser/Node;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 600
    .end local v7           #iterator:Lorg/htmlparser/util/NodeIterator;
    :catch_0
    move-exception v10

    .line 602
    .local v10, se:Lorg/xml/sax/SAXException;
    :try_start_2
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v2, "contentHandler threw me"

    invoke-direct {v1, v2, v8, v10}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 614
    .end local v6           #feedback:Lorg/htmlparser/util/ParserFeedback;
    .end local v8           #locator:Lorg/htmlparser/sax/Locator;
    .end local v10           #se:Lorg/xml/sax/SAXException;
    :cond_0
    :goto_2
    return-void

    .line 588
    .restart local v8       #locator:Lorg/htmlparser/sax/Locator;
    :cond_1
    new-instance v6, Lorg/htmlparser/util/DefaultParserFeedback;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>(I)V
    :try_end_2
    .catch Lorg/htmlparser/util/ParserException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v6       #feedback:Lorg/htmlparser/util/ParserFeedback;
    goto :goto_0

    .line 598
    .restart local v7       #iterator:Lorg/htmlparser/util/NodeIterator;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 607
    .end local v6           #feedback:Lorg/htmlparser/util/ParserFeedback;
    .end local v7           #iterator:Lorg/htmlparser/util/NodeIterator;
    .end local v8           #locator:Lorg/htmlparser/sax/Locator;
    :catch_1
    move-exception v9

    .line 609
    .local v9, pe:Lorg/htmlparser/util/ParserException;
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 610
    iget-object v11, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v9}, Lorg/htmlparser/util/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_2
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 12
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 514
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v0, :cond_0

    .line 517
    :try_start_0
    new-instance v0, Lorg/htmlparser/Parser;

    new-instance v1, Lorg/htmlparser/lexer/Lexer;

    new-instance v2, Lorg/htmlparser/lexer/Page;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/htmlparser/lexer/Lexer;-><init>(Lorg/htmlparser/lexer/Page;)V

    invoke-direct {v0, v1}, Lorg/htmlparser/Parser;-><init>(Lorg/htmlparser/lexer/Lexer;)V

    iput-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    .line 522
    new-instance v8, Lorg/htmlparser/sax/Locator;

    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-direct {v8, v0}, Lorg/htmlparser/sax/Locator;-><init>(Lorg/htmlparser/Parser;)V

    .line 523
    .local v8, locator:Lorg/htmlparser/sax/Locator;
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_1

    .line 524
    new-instance v6, Lorg/htmlparser/sax/Feedback;

    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-direct {v6, v0, v8}, Lorg/htmlparser/sax/Feedback;-><init>(Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/Locator;)V

    .line 527
    .local v6, feedback:Lorg/htmlparser/util/ParserFeedback;
    :goto_0
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0, v6}, Lorg/htmlparser/Parser;->setFeedback(Lorg/htmlparser/util/ParserFeedback;)V

    .line 528
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, v8}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 531
    :try_start_1
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 532
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v7

    .line 533
    .local v7, iterator:Lorg/htmlparser/util/NodeIterator;
    :goto_1
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    invoke-interface {v7}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/sax/XMLReader;->doSAX(Lorg/htmlparser/Node;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 537
    .end local v7           #iterator:Lorg/htmlparser/util/NodeIterator;
    :catch_0
    move-exception v10

    .line 539
    .local v10, se:Lorg/xml/sax/SAXException;
    :try_start_2
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v1, Lorg/xml/sax/SAXParseException;

    const-string v2, "contentHandler threw me"

    invoke-direct {v1, v2, v8, v10}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    .line 550
    .end local v6           #feedback:Lorg/htmlparser/util/ParserFeedback;
    .end local v8           #locator:Lorg/htmlparser/sax/Locator;
    .end local v10           #se:Lorg/xml/sax/SAXException;
    :cond_0
    :goto_2
    return-void

    .line 526
    .restart local v8       #locator:Lorg/htmlparser/sax/Locator;
    :cond_1
    new-instance v6, Lorg/htmlparser/util/DefaultParserFeedback;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>(I)V
    :try_end_2
    .catch Lorg/htmlparser/util/ParserException; {:try_start_2 .. :try_end_2} :catch_1

    .restart local v6       #feedback:Lorg/htmlparser/util/ParserFeedback;
    goto :goto_0

    .line 535
    .restart local v7       #iterator:Lorg/htmlparser/util/NodeIterator;
    :cond_2
    :try_start_3
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 544
    .end local v6           #feedback:Lorg/htmlparser/util/ParserFeedback;
    .end local v7           #iterator:Lorg/htmlparser/util/NodeIterator;
    .end local v8           #locator:Lorg/htmlparser/sax/Locator;
    :catch_1
    move-exception v9

    .line 546
    .local v9, pe:Lorg/htmlparser/util/ParserException;
    iget-object v0, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_0

    .line 547
    iget-object v11, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {v9}, Lorg/htmlparser/util/ParserException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v0}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    goto :goto_2
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 410
    iput-object p1, p0, Lorg/htmlparser/sax/XMLReader;->mContentHandler:Lorg/xml/sax/ContentHandler;

    .line 411
    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 377
    iput-object p1, p0, Lorg/htmlparser/sax/XMLReader;->mDTDHandler:Lorg/xml/sax/DTDHandler;

    .line 378
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .parameter "resolver"

    .prologue
    .line 345
    iput-object p1, p0, Lorg/htmlparser/sax/XMLReader;->mEntityResolver:Lorg/xml/sax/EntityResolver;

    .line 346
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 445
    iput-object p1, p0, Lorg/htmlparser/sax/XMLReader;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 446
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 253
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iput-boolean p2, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpaces:Z

    .line 259
    :goto_0
    return-void

    .line 255
    :cond_0
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iput-boolean p2, p0, Lorg/htmlparser/sax/XMLReader;->mNameSpacePrefixes:Z

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not yet understood"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .prologue
    .line 322
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " not yet understood"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
