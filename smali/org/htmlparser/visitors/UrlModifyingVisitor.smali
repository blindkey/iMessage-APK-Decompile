.class public Lorg/htmlparser/visitors/UrlModifyingVisitor;
.super Lorg/htmlparser/visitors/NodeVisitor;
.source "UrlModifyingVisitor.java"


# instance fields
.field private linkPrefix:Ljava/lang/String;

.field private modifiedResult:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "linkPrefix"

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-direct {p0, v0, v0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>(ZZ)V

    .line 43
    iput-object p1, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->linkPrefix:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->modifiedResult:Ljava/lang/StringBuffer;

    .line 45
    return-void
.end method


# virtual methods
.method public getModifiedResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->modifiedResult:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitEndTag(Lorg/htmlparser/Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 76
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getParent()Lorg/htmlparser/Node;

    move-result-object v0

    .line 78
    .local v0, parent:Lorg/htmlparser/Node;
    if-nez v0, :cond_1

    .line 80
    iget-object v1, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->modifiedResult:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/htmlparser/Tag;->toHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-interface {v0}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v1

    if-nez v1, :cond_0

    .line 84
    iget-object v1, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->modifiedResult:Ljava/lang/StringBuffer;

    invoke-interface {v0}, Lorg/htmlparser/Node;->toHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public visitRemarkNode(Lorg/htmlparser/Remark;)V
    .locals 2
    .parameter "remarkNode"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->modifiedResult:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/htmlparser/Remark;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    return-void
.end method

.method public visitStringNode(Lorg/htmlparser/Text;)V
    .locals 2
    .parameter "stringNode"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->modifiedResult:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/htmlparser/Text;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    return-void
.end method

.method public visitTag(Lorg/htmlparser/Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 59
    instance-of v0, p1, Lorg/htmlparser/tags/LinkTag;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 60
    check-cast v0, Lorg/htmlparser/tags/LinkTag;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lorg/htmlparser/tags/LinkTag;

    invoke-virtual {v1}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/tags/LinkTag;->setLink(Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getParent()Lorg/htmlparser/Node;

    move-result-object v0

    if-nez v0, :cond_2

    instance-of v0, p1, Lorg/htmlparser/tags/CompositeTag;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/htmlparser/tags/CompositeTag;

    invoke-virtual {v0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v0

    if-nez v0, :cond_2

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->modifiedResult:Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/htmlparser/Tag;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    :cond_2
    return-void

    .line 61
    :cond_3
    instance-of v0, p1, Lorg/htmlparser/tags/ImageTag;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 62
    check-cast v0, Lorg/htmlparser/tags/ImageTag;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lorg/htmlparser/visitors/UrlModifyingVisitor;->linkPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    move-object v1, p1

    check-cast v1, Lorg/htmlparser/tags/ImageTag;

    invoke-virtual {v1}, Lorg/htmlparser/tags/ImageTag;->getImageURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/tags/ImageTag;->setImageURL(Ljava/lang/String;)V

    goto :goto_0
.end method
