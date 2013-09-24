.class public Lorg/htmlparser/scanners/TagScanner;
.super Ljava/lang/Object;
.source "TagScanner.java"

# interfaces
.implements Lorg/htmlparser/scanners/Scanner;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public scan(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/Tag;
    .locals 0
    .parameter "tag"
    .parameter "lexer"
    .parameter "stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-interface {p1}, Lorg/htmlparser/Node;->doSemanticAction()V

    .line 71
    return-object p1
.end method
