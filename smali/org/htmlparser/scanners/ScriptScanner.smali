.class public Lorg/htmlparser/scanners/ScriptScanner;
.super Lorg/htmlparser/scanners/CompositeTagScanner;
.source "ScriptScanner.java"


# static fields
.field public static STRICT:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    sput-boolean v0, Lorg/htmlparser/scanners/ScriptScanner;->STRICT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/htmlparser/scanners/CompositeTagScanner;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public scan(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/Tag;
    .locals 10
    .parameter "tag"
    .parameter "lexer"
    .parameter "stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 103
    instance-of v7, p1, Lorg/htmlparser/tags/ScriptTag;

    if-eqz v7, :cond_1

    move-object v7, p1

    .line 105
    check-cast v7, Lorg/htmlparser/tags/ScriptTag;

    invoke-virtual {v7}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, language:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v7, "JScript.Encode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "VBScript.Encode"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v7

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/htmlparser/scanners/ScriptDecoder;->Decode(Lorg/htmlparser/lexer/Page;Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;

    move-result-object v1

    .local v1, code:Ljava/lang/String;
    move-object v7, p1

    .line 111
    check-cast v7, Lorg/htmlparser/tags/ScriptTag;

    invoke-virtual {v7, v1}, Lorg/htmlparser/tags/ScriptTag;->setScriptCode(Ljava/lang/String;)V

    .line 114
    .end local v1           #code:Ljava/lang/String;
    .end local v3           #language:Ljava/lang/String;
    :cond_1
    sget-boolean v7, Lorg/htmlparser/scanners/ScriptScanner;->STRICT:Z

    if-nez v7, :cond_6

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {p2, v7}, Lorg/htmlparser/lexer/Lexer;->parseCDATA(Z)Lorg/htmlparser/Node;

    move-result-object v2

    .line 115
    .local v2, content:Lorg/htmlparser/Node;
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPosition()I

    move-result v5

    .line 116
    .local v5, position:I
    invoke-virtual {p2, v8}, Lorg/htmlparser/lexer/Lexer;->nextNode(Z)Lorg/htmlparser/Node;

    move-result-object v4

    .line 117
    .local v4, node:Lorg/htmlparser/Node;
    if-eqz v4, :cond_3

    .line 118
    instance-of v7, v4, Lorg/htmlparser/Tag;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lorg/htmlparser/Tag;

    invoke-interface {v7}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lorg/htmlparser/Tag;

    invoke-interface {v7}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/htmlparser/Tag;->getIds()[Ljava/lang/String;

    move-result-object v9

    aget-object v8, v9, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 121
    :cond_2
    invoke-virtual {p2, v5}, Lorg/htmlparser/lexer/Lexer;->setPosition(I)V

    .line 122
    const/4 v4, 0x0

    .line 126
    :cond_3
    if-nez v4, :cond_4

    .line 128
    new-instance v0, Lorg/htmlparser/Attribute;

    const-string v7, "/script"

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .local v0, attribute:Lorg/htmlparser/Attribute;
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 130
    .local v6, vector:Ljava/util/Vector;
    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v7

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v8

    invoke-interface {v7, v8, v5, v5, v6}, Lorg/htmlparser/NodeFactory;->createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;

    move-result-object v4

    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v6           #vector:Ljava/util/Vector;
    :cond_4
    move-object v7, v4

    .line 134
    check-cast v7, Lorg/htmlparser/Tag;

    invoke-interface {p1, v7}, Lorg/htmlparser/Tag;->setEndTag(Lorg/htmlparser/Tag;)V

    .line 135
    if-eqz v2, :cond_5

    .line 137
    new-instance v7, Lorg/htmlparser/util/NodeList;

    invoke-direct {v7, v2}, Lorg/htmlparser/util/NodeList;-><init>(Lorg/htmlparser/Node;)V

    invoke-interface {p1, v7}, Lorg/htmlparser/Tag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 138
    invoke-interface {v2, p1}, Lorg/htmlparser/Node;->setParent(Lorg/htmlparser/Node;)V

    .line 140
    :cond_5
    invoke-interface {v4, p1}, Lorg/htmlparser/Node;->setParent(Lorg/htmlparser/Node;)V

    .line 141
    invoke-interface {p1}, Lorg/htmlparser/Tag;->doSemanticAction()V

    .line 143
    return-object p1

    .end local v2           #content:Lorg/htmlparser/Node;
    .end local v4           #node:Lorg/htmlparser/Node;
    .end local v5           #position:I
    :cond_6
    move v7, v8

    .line 114
    goto :goto_0
.end method
