.class public Lorg/htmlparser/sax/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Lorg/xml/sax/Attributes;


# instance fields
.field protected mParts:[Ljava/lang/String;

.field protected mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

.field protected mTag:Lorg/htmlparser/Tag;


# direct methods
.method public constructor <init>(Lorg/htmlparser/Tag;Lorg/xml/sax/helpers/NamespaceSupport;[Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "support"
    .parameter "parts"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lorg/htmlparser/sax/Attributes;->mTag:Lorg/htmlparser/Tag;

    .line 67
    iput-object p2, p0, Lorg/htmlparser/sax/Attributes;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 68
    iput-object p3, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "qName"

    .prologue
    const/4 v2, 0x1

    .line 262
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    iget-object v1, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 263
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/sax/Attributes;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "localName"

    .prologue
    const/4 v8, 0x1

    .line 226
    const/4 v3, -0x1

    .line 228
    .local v3, ret:I
    iget-object v6, p0, Lorg/htmlparser/sax/Attributes;->mTag:Lorg/htmlparser/Tag;

    invoke-interface {v6}, Lorg/htmlparser/Tag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 229
    .local v1, attributes:Ljava/util/Vector;
    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    .line 232
    .local v4, size:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 234
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 235
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, string:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 238
    iget-object v6, p0, Lorg/htmlparser/sax/Attributes;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    iget-object v7, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    invoke-virtual {v6, v5, v7, v8}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 239
    iget-object v6, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iget-object v7, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    .line 242
    move v3, v2

    .line 243
    move v2, v4

    .line 232
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    return v3
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mTag:Lorg/htmlparser/Tag;

    invoke-interface {v0}, Lorg/htmlparser/Tag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 123
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p0, p1}, Lorg/htmlparser/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    aget-object v0, v0, v3

    return-object v0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 142
    iget-object v2, p0, Lorg/htmlparser/sax/Attributes;->mTag:Lorg/htmlparser/Tag;

    invoke-interface {v2}, Lorg/htmlparser/Tag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/Attribute;

    move-object v0, v2

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 143
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->isWhitespace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const-string v1, "#text"

    .line 148
    .local v1, ret:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 146
    .end local v1           #ret:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1
    .parameter "index"

    .prologue
    .line 173
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "qName"

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 107
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {p0, p1}, Lorg/htmlparser/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 195
    iget-object v2, p0, Lorg/htmlparser/sax/Attributes;->mTag:Lorg/htmlparser/Tag;

    invoke-interface {v2}, Lorg/htmlparser/Tag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/Attribute;

    move-object v0, v2

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 196
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, ret:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 198
    const-string v1, ""

    .line 200
    :cond_0
    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "qName"

    .prologue
    const/4 v2, 0x1

    .line 334
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mSupport:Lorg/xml/sax/helpers/NamespaceSupport;

    iget-object v1, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lorg/xml/sax/helpers/NamespaceSupport;->processName(Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/htmlparser/sax/Attributes;->mParts:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "localName"

    .prologue
    .line 317
    iget-object v0, p0, Lorg/htmlparser/sax/Attributes;->mTag:Lorg/htmlparser/Tag;

    invoke-interface {v0, p2}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
