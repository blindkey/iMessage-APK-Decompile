.class Lorg/htmlparser/parserapplications/LinkExtractor$1;
.super Ljava/lang/Object;
.source "LinkExtractor.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 80
    check-cast p1, Lorg/htmlparser/tags/LinkTag;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlparser/tags/LinkTag;->isMailLink()Z

    move-result v0

    return v0
.end method
