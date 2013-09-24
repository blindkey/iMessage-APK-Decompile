.class public Lorg/htmlparser/filters/NotFilter;
.super Ljava/lang/Object;
.source "NotFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mPredicate:Lorg/htmlparser/NodeFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/filters/NotFilter;->setPredicate(Lorg/htmlparser/NodeFilter;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "predicate"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/NotFilter;->setPredicate(Lorg/htmlparser/NodeFilter;)V

    .line 60
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/htmlparser/filters/NotFilter;->mPredicate:Lorg/htmlparser/NodeFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/filters/NotFilter;->mPredicate:Lorg/htmlparser/NodeFilter;

    invoke-interface {v0, p1}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPredicate()Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/htmlparser/filters/NotFilter;->mPredicate:Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public setPredicate(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "predicate"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/htmlparser/filters/NotFilter;->mPredicate:Lorg/htmlparser/NodeFilter;

    .line 78
    return-void
.end method
