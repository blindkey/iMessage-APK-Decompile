.class public Lorg/htmlparser/tags/LinkTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "LinkTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# instance fields
.field private javascriptLink:Z

.field protected mLink:Ljava/lang/String;

.field private mailLink:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/LinkTag;->mIds:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "P"

    aput-object v1, v0, v4

    const-string v1, "DIV"

    aput-object v1, v0, v5

    const-string v1, "TD"

    aput-object v1, v0, v6

    const-string v1, "TR"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FORM"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "LI"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/LinkTag;->mEnders:[Ljava/lang/String;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "P"

    aput-object v1, v0, v3

    const-string v1, "DIV"

    aput-object v1, v0, v4

    const-string v1, "TD"

    aput-object v1, v0, v5

    const-string v1, "TR"

    aput-object v1, v0, v6

    const-string v1, "FORM"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LI"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "HTML"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/LinkTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 90
    return-void
.end method


# virtual methods
.method public extractLink()Ljava/lang/String;
    .locals 2

    .prologue
    .line 309
    const-string v1, "HREF"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/LinkTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 312
    const/16 v1, 0xa

    invoke-static {v0, v1}, Lorg/htmlparser/util/ParserUtils;->removeChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 313
    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/htmlparser/util/ParserUtils;->removeChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Page;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_1
    return-object v0
.end method

.method public getAccessKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const-string v0, "ACCESSKEY"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/LinkTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lorg/htmlparser/tags/LinkTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lorg/htmlparser/tags/LinkTag;->mEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lorg/htmlparser/tags/LinkTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    iget-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 140
    iput-boolean v3, p0, Lorg/htmlparser/tags/LinkTag;->mailLink:Z

    .line 141
    iput-boolean v3, p0, Lorg/htmlparser/tags/LinkTag;->javascriptLink:Z

    .line 142
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->extractLink()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const-string v3, "mailto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, mailto:I
    if-nez v1, :cond_0

    .line 148
    iget-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 149
    iget-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    .line 150
    iput-boolean v4, p0, Lorg/htmlparser/tags/LinkTag;->mailLink:Z

    .line 152
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const-string v3, "javascript:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 153
    .local v0, javascript:I
    if-nez v0, :cond_1

    .line 155
    iget-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    .line 156
    iput-boolean v4, p0, Lorg/htmlparser/tags/LinkTag;->javascriptLink:Z

    .line 159
    .end local v0           #javascript:I
    .end local v1           #mailto:I
    :cond_1
    iget-object v2, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    return-object v2
.end method

.method public getLinkText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->asString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 173
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public isFTPLink()Z
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ftp://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHTTPLikeLink()Z
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->isHTTPLink()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->isHTTPSLink()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHTTPLink()Z
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->isFTPLink()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->isHTTPSLink()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->isJavascriptLink()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->isMailLink()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->isIRCLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHTTPSLink()Z
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIRCLink()Z
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v0

    const-string v1, "irc://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJavascriptLink()Z
    .locals 1

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    .line 195
    iget-boolean v0, p0, Lorg/htmlparser/tags/LinkTag;->javascriptLink:Z

    return v0
.end method

.method public isMailLink()Z
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    .line 185
    iget-boolean v0, p0, Lorg/htmlparser/tags/LinkTag;->mailLink:Z

    return v0
.end method

.method public setJavascriptLink(Z)V
    .locals 0
    .parameter "newJavascriptLink"

    .prologue
    .line 261
    iput-boolean p1, p0, Lorg/htmlparser/tags/LinkTag;->javascriptLink:Z

    .line 262
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 1
    .parameter "link"

    .prologue
    .line 296
    iput-object p1, p0, Lorg/htmlparser/tags/LinkTag;->mLink:Ljava/lang/String;

    .line 297
    const-string v0, "HREF"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/LinkTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public setMailLink(Z)V
    .locals 0
    .parameter "newMailLink"

    .prologue
    .line 251
    iput-boolean p1, p0, Lorg/htmlparser/tags/LinkTag;->mailLink:Z

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 270
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 271
    .local v4, sb:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Link to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; titled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getLinkText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; begins at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getStartPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "; ends at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getEndPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", AccessKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getAccessKey()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 273
    const-string v5, "null\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    :goto_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, i:I
    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :goto_1
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 282
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v3

    .line 283
    .local v3, node:Lorg/htmlparser/Node;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, v2

    .line 285
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 275
    .end local v0           #e:Lorg/htmlparser/util/SimpleNodeIterator;
    .end local v1           #i:I
    .end local v3           #node:Lorg/htmlparser/Node;
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/htmlparser/tags/LinkTag;->getAccessKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 287
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
