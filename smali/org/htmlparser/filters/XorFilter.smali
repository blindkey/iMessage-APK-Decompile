.class public Lorg/htmlparser/filters/XorFilter;
.super Ljava/lang/Object;
.source "XorFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mPredicates:[Lorg/htmlparser/NodeFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/filters/XorFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V
    .locals 2
    .parameter "left"
    .parameter "right"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v1, 0x2

    new-array v0, v1, [Lorg/htmlparser/NodeFilter;

    .line 64
    .local v0, predicates:[Lorg/htmlparser/NodeFilter;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 65
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 66
    invoke-virtual {p0, v0}, Lorg/htmlparser/filters/XorFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 67
    return-void
.end method

.method public constructor <init>([Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "predicates"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/XorFilter;->setPredicates([Lorg/htmlparser/NodeFilter;)V

    .line 76
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    const/4 v2, 0x1

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, countTrue:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lorg/htmlparser/filters/XorFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 115
    iget-object v3, p0, Lorg/htmlparser/filters/XorFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    aget-object v3, v3, v1

    invoke-interface {v3, p1}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    add-int/lit8 v0, v0, 0x1

    .line 114
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    :cond_1
    rem-int/lit8 v3, v0, 0x2

    if-ne v3, v2, :cond_2

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPredicates()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/htmlparser/filters/XorFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public setPredicates([Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "predicates"

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/htmlparser/NodeFilter;

    .line 95
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/filters/XorFilter;->mPredicates:[Lorg/htmlparser/NodeFilter;

    .line 96
    return-void
.end method
