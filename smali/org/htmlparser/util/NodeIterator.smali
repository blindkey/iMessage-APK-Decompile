.class public interface abstract Lorg/htmlparser/util/NodeIterator;
.super Ljava/lang/Object;
.source "NodeIterator.java"


# virtual methods
.method public abstract hasMoreNodes()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method

.method public abstract nextNode()Lorg/htmlparser/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method
