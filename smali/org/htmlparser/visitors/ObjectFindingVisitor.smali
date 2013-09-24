.class public Lorg/htmlparser/visitors/ObjectFindingVisitor;
.super Lorg/htmlparser/visitors/NodeVisitor;
.source "ObjectFindingVisitor.java"


# instance fields
.field private classTypeToFind:Ljava/lang/Class;

.field private tags:Lorg/htmlparser/util/NodeList;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter "classTypeToFind"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/visitors/ObjectFindingVisitor;-><init>(Ljava/lang/Class;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .parameter "classTypeToFind"
    .parameter "recurse"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>(ZZ)V

    .line 43
    iput-object p1, p0, Lorg/htmlparser/visitors/ObjectFindingVisitor;->classTypeToFind:Ljava/lang/Class;

    .line 44
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/visitors/ObjectFindingVisitor;->tags:Lorg/htmlparser/util/NodeList;

    .line 45
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/htmlparser/visitors/ObjectFindingVisitor;->tags:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    return v0
.end method

.method public getTags()[Lorg/htmlparser/Node;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/htmlparser/visitors/ObjectFindingVisitor;->tags:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->toNodeArray()[Lorg/htmlparser/Node;

    move-result-object v0

    return-object v0
.end method

.method public visitTag(Lorg/htmlparser/Tag;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/htmlparser/visitors/ObjectFindingVisitor;->classTypeToFind:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/htmlparser/visitors/ObjectFindingVisitor;->tags:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v0, p1}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 54
    :cond_0
    return-void
.end method
