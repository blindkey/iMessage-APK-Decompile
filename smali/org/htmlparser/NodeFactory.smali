.class public interface abstract Lorg/htmlparser/NodeFactory;
.super Ljava/lang/Object;
.source "NodeFactory.java"


# virtual methods
.method public abstract createRemarkNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Remark;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method

.method public abstract createStringNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method

.method public abstract createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method
