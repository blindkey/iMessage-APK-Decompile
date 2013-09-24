.class public Lorg/htmlparser/visitors/TextExtractingVisitor;
.super Lorg/htmlparser/visitors/NodeVisitor;
.source "TextExtractingVisitor.java"


# instance fields
.field private preTagBeingProcessed:Z

.field private textAccumulator:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/visitors/TextExtractingVisitor;->textAccumulator:Ljava/lang/StringBuffer;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/htmlparser/visitors/TextExtractingVisitor;->preTagBeingProcessed:Z

    .line 51
    return-void
.end method

.method private isPreTag(Lorg/htmlparser/Tag;)Z
    .locals 2
    .parameter "tag"

    .prologue
    .line 83
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PRE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private replaceNonBreakingSpaceWithOrdinarySpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    .line 67
    const/16 v0, 0xa0

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtractedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/htmlparser/visitors/TextExtractingVisitor;->textAccumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitEndTag(Lorg/htmlparser/Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lorg/htmlparser/visitors/TextExtractingVisitor;->isPreTag(Lorg/htmlparser/Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/htmlparser/visitors/TextExtractingVisitor;->preTagBeingProcessed:Z

    .line 80
    :cond_0
    return-void
.end method

.method public visitStringNode(Lorg/htmlparser/Text;)V
    .locals 2
    .parameter "stringNode"

    .prologue
    .line 58
    invoke-interface {p1}, Lorg/htmlparser/Text;->getText()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, text:Ljava/lang/String;
    iget-boolean v1, p0, Lorg/htmlparser/visitors/TextExtractingVisitor;->preTagBeingProcessed:Z

    if-nez v1, :cond_0

    .line 60
    invoke-static {v0}, Lorg/htmlparser/util/Translate;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-direct {p0, v0}, Lorg/htmlparser/visitors/TextExtractingVisitor;->replaceNonBreakingSpaceWithOrdinarySpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/htmlparser/visitors/TextExtractingVisitor;->textAccumulator:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    return-void
.end method

.method public visitTag(Lorg/htmlparser/Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lorg/htmlparser/visitors/TextExtractingVisitor;->isPreTag(Lorg/htmlparser/Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/htmlparser/visitors/TextExtractingVisitor;->preTagBeingProcessed:Z

    .line 74
    :cond_0
    return-void
.end method
