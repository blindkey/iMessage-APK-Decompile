.class public interface abstract Lorg/htmlparser/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract accept(Lorg/htmlparser/visitors/NodeVisitor;)V
.end method

.method public abstract clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V
.end method

.method public abstract doSemanticAction()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method

.method public abstract getChildren()Lorg/htmlparser/util/NodeList;
.end method

.method public abstract getEndPosition()I
.end method

.method public abstract getFirstChild()Lorg/htmlparser/Node;
.end method

.method public abstract getLastChild()Lorg/htmlparser/Node;
.end method

.method public abstract getNextSibling()Lorg/htmlparser/Node;
.end method

.method public abstract getPage()Lorg/htmlparser/lexer/Page;
.end method

.method public abstract getParent()Lorg/htmlparser/Node;
.end method

.method public abstract getPreviousSibling()Lorg/htmlparser/Node;
.end method

.method public abstract getStartPosition()I
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract setChildren(Lorg/htmlparser/util/NodeList;)V
.end method

.method public abstract setEndPosition(I)V
.end method

.method public abstract setPage(Lorg/htmlparser/lexer/Page;)V
.end method

.method public abstract setParent(Lorg/htmlparser/Node;)V
.end method

.method public abstract setStartPosition(I)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract toHtml()Ljava/lang/String;
.end method

.method public abstract toHtml(Z)Ljava/lang/String;
.end method

.method public abstract toPlainTextString()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
