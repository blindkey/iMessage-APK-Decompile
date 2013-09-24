.class Lorg/htmlparser/filters/CssSelectorNodeFilter$AdjacentFilter;
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
    name = "AdjacentFilter"
.end annotation


# instance fields
.field private sibtest:Lorg/htmlparser/NodeFilter;


# direct methods
.method public constructor <init>(Lorg/htmlparser/NodeFilter;)V
    .locals 0
    .parameter "n"

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AdjacentFilter;->sibtest:Lorg/htmlparser/NodeFilter;

    .line 351
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 4
    .parameter "n"

    .prologue
    .line 355
    invoke-interface {p1}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 357
    invoke-interface {p1}, Lorg/htmlparser/Node;->getParent()Lorg/htmlparser/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    .line 358
    .local v1, l:Lorg/htmlparser/util/NodeList;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 359
    invoke-virtual {v1, v0}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v2

    if-ne v2, p1, :cond_0

    if-lez v0, :cond_0

    .line 360
    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter$AdjacentFilter;->sibtest:Lorg/htmlparser/NodeFilter;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v2

    .line 362
    .end local v0           #i:I
    .end local v1           #l:Lorg/htmlparser/util/NodeList;
    :goto_1
    return v2

    .line 358
    .restart local v0       #i:I
    .restart local v1       #l:Lorg/htmlparser/util/NodeList;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v0           #i:I
    .end local v1           #l:Lorg/htmlparser/util/NodeList;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
