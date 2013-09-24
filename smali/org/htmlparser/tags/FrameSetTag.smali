.class public Lorg/htmlparser/tags/FrameSetTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "FrameSetTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "FRAMESET"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/FrameSetTag;->mIds:[Ljava/lang/String;

    .line 48
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HTML"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/FrameSetTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lorg/htmlparser/tags/FrameSetTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getFrame(Ljava/lang/String;)Lorg/htmlparser/tags/FrameTag;
    .locals 1
    .parameter "name"

    .prologue
    .line 102
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/tags/FrameSetTag;->getFrame(Ljava/lang/String;Ljava/util/Locale;)Lorg/htmlparser/tags/FrameTag;

    move-result-object v0

    return-object v0
.end method

.method public getFrame(Ljava/lang/String;Ljava/util/Locale;)Lorg/htmlparser/tags/FrameTag;
    .locals 4
    .parameter "name"
    .parameter "locale"

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 120
    .local v2, ret:Lorg/htmlparser/tags/FrameTag;
    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameSetTag;->getFrames()Lorg/htmlparser/util/NodeList;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v2, :cond_1

    .line 123
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    .line 124
    .local v1, node:Lorg/htmlparser/Node;
    instance-of v3, v1, Lorg/htmlparser/tags/FrameTag;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 126
    check-cast v2, Lorg/htmlparser/tags/FrameTag;

    .line 127
    invoke-virtual {v2}, Lorg/htmlparser/tags/FrameTag;->getFrameName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    const/4 v2, 0x0

    goto :goto_0

    .line 132
    .end local v1           #node:Lorg/htmlparser/Node;
    :cond_1
    return-object v2
.end method

.method public getFrames()Lorg/htmlparser/util/NodeList;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameSetTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/htmlparser/tags/FrameSetTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public setFrames(Lorg/htmlparser/util/NodeList;)V
    .locals 0
    .parameter "frames"

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lorg/htmlparser/tags/FrameSetTag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FRAMESET TAG : begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameSetTag;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameSetTag;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
