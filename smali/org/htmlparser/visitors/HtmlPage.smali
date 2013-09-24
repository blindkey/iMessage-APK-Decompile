.class public Lorg/htmlparser/visitors/HtmlPage;
.super Lorg/htmlparser/visitors/NodeVisitor;
.source "HtmlPage.java"


# instance fields
.field private nodesInBody:Lorg/htmlparser/util/NodeList;

.field private tables:Lorg/htmlparser/util/NodeList;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/htmlparser/Parser;)V
    .locals 1
    .parameter "parser"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>(Z)V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->title:Ljava/lang/String;

    .line 44
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->nodesInBody:Lorg/htmlparser/util/NodeList;

    .line 45
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->tables:Lorg/htmlparser/util/NodeList;

    .line 46
    return-void
.end method

.method private isBodyTag(Lorg/htmlparser/Tag;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 73
    instance-of v0, p1, Lorg/htmlparser/tags/BodyTag;

    return v0
.end method

.method private isTable(Lorg/htmlparser/Tag;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 68
    instance-of v0, p1, Lorg/htmlparser/tags/TableTag;

    return v0
.end method

.method private isTitleTag(Lorg/htmlparser/Tag;)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 78
    instance-of v0, p1, Lorg/htmlparser/tags/TitleTag;

    return v0
.end method


# virtual methods
.method public getBody()Lorg/htmlparser/util/NodeList;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->nodesInBody:Lorg/htmlparser/util/NodeList;

    return-object v0
.end method

.method public getTables()[Lorg/htmlparser/tags/TableTag;
    .locals 2

    .prologue
    .line 87
    iget-object v1, p0, Lorg/htmlparser/visitors/HtmlPage;->tables:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v1

    new-array v0, v1, [Lorg/htmlparser/tags/TableTag;

    .line 88
    .local v0, tableArr:[Lorg/htmlparser/tags/TableTag;
    iget-object v1, p0, Lorg/htmlparser/visitors/HtmlPage;->tables:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v1, v0}, Lorg/htmlparser/util/NodeList;->copyToNodeArray([Lorg/htmlparser/Node;)V

    .line 89
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 53
    iput-object p1, p0, Lorg/htmlparser/visitors/HtmlPage;->title:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public visitTag(Lorg/htmlparser/Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/htmlparser/visitors/HtmlPage;->isTable(Lorg/htmlparser/Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->tables:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v0, p1}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 64
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 60
    .restart local p1
    :cond_1
    invoke-direct {p0, p1}, Lorg/htmlparser/visitors/HtmlPage;->isBodyTag(Lorg/htmlparser/Tag;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->nodesInBody:Lorg/htmlparser/util/NodeList;

    goto :goto_0

    .line 62
    :cond_2
    invoke-direct {p0, p1}, Lorg/htmlparser/visitors/HtmlPage;->isTitleTag(Lorg/htmlparser/Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    check-cast p1, Lorg/htmlparser/tags/TitleTag;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlparser/tags/TitleTag;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/visitors/HtmlPage;->title:Ljava/lang/String;

    goto :goto_0
.end method
