.class public Lorg/htmlparser/filters/TagNameFilter;
.super Ljava/lang/Object;
.source "TagNameFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/TagNameFilter;->mName:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 94
    instance-of v0, p1, Lorg/htmlparser/Tag;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/htmlparser/Tag;

    invoke-interface {v0}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Lorg/htmlparser/Tag;

    .end local p1
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlparser/filters/TagNameFilter;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/htmlparser/filters/TagNameFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/htmlparser/filters/TagNameFilter;->mName:Ljava/lang/String;

    .line 82
    return-void
.end method
