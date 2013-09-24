.class public Lorg/htmlparser/sax/Locator;
.super Ljava/lang/Object;
.source "Locator.java"

# interfaces
.implements Lorg/xml/sax/Locator;


# instance fields
.field protected mParser:Lorg/htmlparser/Parser;


# direct methods
.method public constructor <init>(Lorg/htmlparser/Parser;)V
    .locals 0
    .parameter "parser"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/htmlparser/sax/Locator;->mParser:Lorg/htmlparser/Parser;

    .line 51
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lorg/htmlparser/sax/Locator;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v1}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v0

    .line 154
    .local v0, lexer:Lorg/htmlparser/lexer/Lexer;
    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->column(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    return v1
.end method

.method public getLineNumber()I
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lorg/htmlparser/sax/Locator;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v1}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v0

    .line 121
    .local v0, lexer:Lorg/htmlparser/lexer/Lexer;
    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/htmlparser/lexer/Page;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    return v1
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/htmlparser/sax/Locator;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
