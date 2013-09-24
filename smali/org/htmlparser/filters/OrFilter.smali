.class public Lorg/htmlparser/filters/OrFilter;
.super Ljava/lang/Object;
.source "OrFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mPredicates:[Lorg/htmlparser/NodeFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/filters/OrFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/htmlparser/NodeFilter;

    .line 63
    .local v0, predicates:[Lorg/htmlparser/NodeFilter;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 64
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 65
    invoke-virtual {p0, v0}, Lorg/htmlparser/filters/OrFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 66
    return-void
.end method

.method public constructor <init>([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "predicates"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/OrFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 75
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 3
    .parameter "node"

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, ret:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/htmlparser/filters/OrFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 114
    iget-object v2, p0, Lorg/htmlparser/filters/OrFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const/4 v1, 0x1

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    return v1
.end method

.method public getPredicates()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/htmlparser/filters/OrFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public setPredicates([Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "predicates"

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/htmlparser/NodeFilter;

    .line 94
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/filters/OrFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    .line 95
    return-void
.end method
