.class Lorg/htmlparser/filters/CssSelectorNodeFilter$HasAncestorFilter;
.super Ljava/lang/Object;
.source "CssSelectorNodeFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlparser/filters/CssSelectorNodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HasAncestorFilter"
.end annotation


# instance fields
.field private atest:Lorg/htmlparser/NodeFilter;


# direct methods
.method public constructor <init>(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$HasAncestorFilter;->atest:Lorg/htmlparser/NodeFilter;

    .line 330
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 334
    :cond_0
    if-eqz p1, :cond_1

    .line 336
    invoke-interface {p1}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object p1

    .line 337
    iget-object v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$HasAncestorFilter;->atest:Lorg/htmlparser/NodeFilter;

    invoke-interface {v0, p1}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
