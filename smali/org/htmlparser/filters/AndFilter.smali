.class public Lorg/htmlparser/filters/AndFilter;
.super Ljava/lang/Object;
.source "AndFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mPredicates:[Lorg/htmlparser/NodeFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/filters/AndFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/htmlparser/NodeFilter;

    .line 65
    .local v0, predicates:[Lorg/htmlparser/NodeFilter;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 66
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 67
    invoke-virtual {p0, v0}, Lorg/htmlparser/filters/AndFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 68
    return-void
.end method

.method public constructor <init>([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "predicates"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/AndFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 77
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 3
    .parameter "node"

    .prologue
    .line 113
    const/4 v1, 0x1

    .line 115
    .local v1, ret:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/htmlparser/filters/AndFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 116
    iget-object v2, p0, Lorg/htmlparser/filters/AndFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const/4 v1, 0x0

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    return v1
.end method

.method public getPredicates()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/htmlparser/filters/AndFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public setPredicates([Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "predicates"

    .prologue
    .line 94
    if-nez p1, :cond_0

    .line 95
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/htmlparser/NodeFilter;

    .line 96
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/filters/AndFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    .line 97
    return-void
.end method
