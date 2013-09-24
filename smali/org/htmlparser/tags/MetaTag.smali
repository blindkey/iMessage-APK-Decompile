.class public Lorg/htmlparser/tags/MetaTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "MetaTag.java"


# static fields
.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "META"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/MetaTag;->mIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public doSemanticAction()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->getHttpEquiv()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, httpEquiv:Ljava/lang/String;
    const-string v2, "Content-Type"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    const-string v3, "CONTENT"

    invoke-virtual {p0, v3}, Lorg/htmlparser/tags/MetaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/htmlparser/lexer/Page;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, charset:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/htmlparser/lexer/Page;->setEncoding(Ljava/lang/String;)V

    .line 152
    .end local v0           #charset:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public getHttpEquiv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "HTTP-EQUIV"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/MetaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/htmlparser/tags/MetaTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getMetaContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "CONTENT"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/MetaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetaTagName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, "NAME"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/MetaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setHttpEquiv(Ljava/lang/String;)V
    .locals 4
    .parameter "httpEquiv"

    .prologue
    .line 99
    const-string v1, "HTTP-EQUIV"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/MetaTag;->getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v0

    .line 100
    .local v0, equiv:Lorg/htmlparser/Attribute;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0, p1}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lorg/htmlparser/Attribute;

    const-string v3, "HTTP-EQUIV"

    invoke-direct {v2, v3, p1}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMetaTagContents(Ljava/lang/String;)V
    .locals 4
    .parameter "metaTagContents"

    .prologue
    .line 113
    const-string v1, "CONTENT"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/MetaTag;->getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v0

    .line 114
    .local v0, content:Lorg/htmlparser/Attribute;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0, p1}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lorg/htmlparser/Attribute;

    const-string v3, "CONTENT"

    invoke-direct {v2, v3, p1}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMetaTagName(Ljava/lang/String;)V
    .locals 4
    .parameter "metaTagName"

    .prologue
    .line 127
    const-string v1, "NAME"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/MetaTag;->getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v0

    .line 128
    .local v0, name:Lorg/htmlparser/Attribute;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0, p1}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/MetaTag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    new-instance v2, Lorg/htmlparser/Attribute;

    const-string v3, "NAME"

    invoke-direct {v2, v3, p1}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
