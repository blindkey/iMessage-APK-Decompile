.class public Lorg/htmlparser/nodes/TagNode;
.super Lorg/htmlparser/nodes/AbstractNode;
.source "TagNode.java"

# interfaces
.implements Lorg/htmlparser/Tag;


# static fields
.field private static final NONE:[Ljava/lang/String;

.field protected static breakTags:Ljava/util/Hashtable;

.field protected static final mDefaultScanner:Lorg/htmlparser/scanners/Scanner;


# instance fields
.field protected mAttributes:Ljava/util/Vector;

.field private mScanner:Lorg/htmlparser/scanners/Scanner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/htmlparser/nodes/TagNode;->NONE:[Ljava/lang/String;

    .line 68
    new-instance v0, Lorg/htmlparser/scanners/TagScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/TagScanner;-><init>()V

    sput-object v0, Lorg/htmlparser/nodes/TagNode;->mDefaultScanner:Lorg/htmlparser/scanners/Scanner;

    .line 84
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    .line 85
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "BLOCKQUOTE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "BODY"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "BR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "CENTER"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "DD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "DIR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "DIV"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "DL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "DT"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "FORM"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "H1"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "H2"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "H3"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "H4"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "H5"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "H6"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "HEAD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "HR"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "HTML"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "ISINDEX"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "LI"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "MENU"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "NOFRAMES"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "OL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "P"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "PRE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "TD"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "TH"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "TITLE"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    const-string v1, "UL"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 122
    const/4 v0, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V
    .locals 2
    .parameter "page"
    .parameter "start"
    .parameter "end"
    .parameter "attributes"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/nodes/AbstractNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    .line 137
    sget-object v1, Lorg/htmlparser/nodes/TagNode;->mDefaultScanner:Lorg/htmlparser/scanners/Scanner;

    iput-object v1, p0, Lorg/htmlparser/nodes/TagNode;->mScanner:Lorg/htmlparser/scanners/Scanner;

    .line 138
    iput-object p4, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    .line 139
    iget-object v1, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getIds()[Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, names:[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-eqz v1, :cond_2

    .line 145
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/nodes/TagNode;->setTagName(Ljava/lang/String;)V

    .line 149
    .end local v0           #names:[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 147
    .restart local v0       #names:[Ljava/lang/String;
    :cond_2
    const-string v1, ""

    invoke-virtual {p0, v1}, Lorg/htmlparser/nodes/TagNode;->setTagName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/htmlparser/nodes/TagNode;Lorg/htmlparser/scanners/TagScanner;)V
    .locals 4
    .parameter "tag"
    .parameter "scanner"

    .prologue
    .line 158
    invoke-virtual {p1}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p1}, Lorg/htmlparser/nodes/TagNode;->getTagBegin()I

    move-result v1

    invoke-virtual {p1}, Lorg/htmlparser/nodes/TagNode;->getTagEnd()I

    move-result v2

    invoke-virtual {p1}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    .line 159
    invoke-virtual {p0, p2}, Lorg/htmlparser/nodes/TagNode;->setThisScanner(Lorg/htmlparser/scanners/Scanner;)V

    .line 160
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/visitors/NodeVisitor;)V
    .locals 1
    .parameter "visitor"

    .prologue
    .line 648
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p1, p0}, Lorg/htmlparser/visitors/NodeVisitor;->visitEndTag(Lorg/htmlparser/Tag;)V

    .line 652
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p1, p0}, Lorg/htmlparser/visitors/NodeVisitor;->visitTag(Lorg/htmlparser/Tag;)V

    goto :goto_0
.end method

.method public breaksFlow()Z
    .locals 2

    .prologue
    .line 637
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->breakTags:Ljava/util/Hashtable;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getTagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lorg/htmlparser/nodes/TagNode;->getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v0

    .line 176
    .local v0, attribute:Lorg/htmlparser/Attribute;
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 179
    :cond_0
    return-object v1
.end method

.method public getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;
    .locals 7
    .parameter "name"

    .prologue
    .line 294
    const/4 v3, 0x0

    .line 296
    .local v3, ret:Lorg/htmlparser/Attribute;
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 297
    .local v1, attributes:Ljava/util/Vector;
    if-eqz v1, :cond_1

    .line 299
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    .line 300
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 302
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 303
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, string:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 306
    move-object v3, v0

    .line 307
    move v2, v4

    .line 300
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v5           #string:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public getAttributesEx()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    return-object v0
.end method

.method public getEndTag()Lorg/htmlparser/Tag;
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 834
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->NONE:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->NONE:[Ljava/lang/String;

    return-object v0
.end method

.method public getEndingLineNumber()I
    .locals 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->row(I)I

    move-result v0

    return v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 808
    sget-object v0, Lorg/htmlparser/nodes/TagNode;->NONE:[Ljava/lang/String;

    return-object v0
.end method

.method public getRawTagName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, ret:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v0

    .line 421
    .local v0, attributes:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/Attribute;

    invoke-virtual {v2}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_0
    return-object v1
.end method

.method public getStartingLineNumber()I
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->row(I)I

    move-result v0

    return v0
.end method

.method public getTagBegin()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    return v0
.end method

.method public getTagEnd()I
    .locals 1

    .prologue
    .line 519
    iget v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getRawTagName()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 398
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 399
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    :cond_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_1
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 468
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->toHtml()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, ret:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 471
    return-object v0
.end method

.method public getThisScanner()Lorg/htmlparser/scanners/Scanner;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lorg/htmlparser/nodes/TagNode;->mScanner:Lorg/htmlparser/scanners/Scanner;

    return-object v0
.end method

.method public isEmptyXmlTag()Z
    .locals 8

    .prologue
    .line 667
    const/4 v4, 0x0

    .line 669
    .local v4, ret:Z
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 670
    .local v1, attributes:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    .line 671
    .local v5, size:I
    if-lez v5, :cond_0

    .line 673
    add-int/lit8 v6, v5, -0x1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 674
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 677
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 678
    .local v2, length:I
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    .line 682
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v2           #length:I
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 678
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    .restart local v2       #length:I
    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isEndTag()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 778
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getRawTagName()Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, raw:Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lorg/htmlparser/nodes/TagNode;->getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v0

    .line 264
    .local v0, attribute:Lorg/htmlparser/Attribute;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "key"
    .parameter "value"

    .prologue
    .line 201
    const/4 v5, 0x0

    .line 202
    .local v5, needed:Z
    const/4 v8, 0x1

    .line 203
    .local v8, singleq:Z
    const/4 v3, 0x1

    .line 204
    .local v3, doubleq:Z
    if-eqz p2, :cond_3

    .line 205
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 207
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 208
    .local v2, ch:C
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 209
    const/4 v5, 0x1

    .line 205
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    :cond_1
    const/16 v9, 0x27

    if-ne v9, v2, :cond_2

    .line 211
    const/4 v8, 0x0

    goto :goto_1

    .line 212
    :cond_2
    const/16 v9, 0x22

    if-ne v9, v2, :cond_0

    .line 213
    const/4 v3, 0x0

    goto :goto_1

    .line 217
    .end local v2           #ch:C
    .end local v4           #i:I
    :cond_3
    if-eqz v5, :cond_9

    .line 219
    if-eqz v3, :cond_5

    .line 220
    const/16 v6, 0x22

    .line 244
    .local v6, quote:C
    :goto_2
    invoke-virtual {p0, p1}, Lorg/htmlparser/nodes/TagNode;->getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;

    move-result-object v0

    .line 245
    .local v0, attribute:Lorg/htmlparser/Attribute;
    if-eqz v0, :cond_a

    .line 247
    invoke-virtual {v0, p2}, Lorg/htmlparser/Attribute;->setValue(Ljava/lang/String;)V

    .line 248
    if-eqz v6, :cond_4

    .line 249
    invoke-virtual {v0, v6}, Lorg/htmlparser/Attribute;->setQuote(C)V

    .line 253
    :cond_4
    :goto_3
    return-void

    .line 221
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v6           #quote:C
    :cond_5
    if-eqz v8, :cond_6

    .line 222
    const/16 v6, 0x27

    .restart local v6       #quote:C
    goto :goto_2

    .line 227
    .end local v6           #quote:C
    :cond_6
    const/16 v6, 0x22

    .line 228
    .restart local v6       #quote:C
    const-string v7, "&quot;"

    .line 230
    .local v7, ref:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    invoke-direct {v1, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 231
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_8

    .line 233
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 234
    .restart local v2       #ch:C
    if-ne v6, v2, :cond_7

    .line 235
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 237
    :cond_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 239
    .end local v2           #ch:C
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 241
    goto :goto_2

    .line 243
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v6           #quote:C
    .end local v7           #ref:Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    .restart local v6       #quote:C
    goto :goto_2

    .line 252
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    :cond_a
    invoke-virtual {p0, p1, p2, v6}, Lorg/htmlparser/nodes/TagNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;C)V

    goto :goto_3
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "quote"

    .prologue
    .line 277
    new-instance v0, Lorg/htmlparser/Attribute;

    invoke-direct {v0, p1, p2, p3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/nodes/TagNode;->setAttribute(Lorg/htmlparser/Attribute;)V

    .line 278
    return-void
.end method

.method public setAttribute(Lorg/htmlparser/Attribute;)V
    .locals 9
    .parameter "attribute"

    .prologue
    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, replaced:Z
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v0

    .line 342
    .local v0, attributes:Ljava/util/Vector;
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 343
    .local v2, length:I
    if-lez v2, :cond_1

    .line 345
    invoke-virtual {p1}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 346
    .local v3, name:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 348
    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/htmlparser/Attribute;

    .line 349
    .local v5, test:Lorg/htmlparser/Attribute;
    invoke-virtual {v5}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v6

    .line 350
    .local v6, test_name:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 351
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 353
    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 354
    const/4 v4, 0x1

    .line 346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    .end local v1           #i:I
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #test:Lorg/htmlparser/Attribute;
    .end local v6           #test_name:Ljava/lang/String;
    :cond_1
    if-nez v4, :cond_3

    .line 361
    if-eqz v2, :cond_2

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/htmlparser/Attribute;

    invoke-virtual {v7}, Lorg/htmlparser/Attribute;->isWhitespace()Z

    move-result v7

    if-nez v7, :cond_2

    .line 362
    new-instance v7, Lorg/htmlparser/Attribute;

    const-string v8, " "

    invoke-direct {v7, v8}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 363
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 365
    :cond_3
    return-void
.end method

.method public setAttributeEx(Lorg/htmlparser/Attribute;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lorg/htmlparser/nodes/TagNode;->setAttribute(Lorg/htmlparser/Attribute;)V

    .line 323
    return-void
.end method

.method public setAttributesEx(Ljava/util/Vector;)V
    .locals 0
    .parameter "attribs"

    .prologue
    .line 483
    iput-object p1, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;

    .line 484
    return-void
.end method

.method public setEmptyXmlTag(Z)V
    .locals 9
    .parameter "emptyXmlTag"

    .prologue
    const/4 v8, 0x0

    .line 700
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 701
    .local v1, attributes:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    .line 702
    .local v4, size:I
    if-lez v4, :cond_5

    .line 704
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 705
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 708
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 709
    .local v2, length:I
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 710
    .local v5, value:Ljava/lang/String;
    if-nez v5, :cond_3

    .line 711
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    .line 714
    if-nez p1, :cond_0

    .line 715
    const/4 v6, 0x1

    if-ne v6, v2, :cond_1

    .line 716
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 768
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v2           #length:I
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 722
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    .restart local v2       #length:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v5       #value:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 723
    new-instance v0, Lorg/htmlparser/Attribute;

    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    invoke-direct {v0, v3, v8}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v1, v6}, Ljava/util/Vector;->removeElementAt(I)V

    .line 725
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 731
    :cond_2
    if-eqz p1, :cond_0

    .line 733
    new-instance v0, Lorg/htmlparser/Attribute;

    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    const-string v6, " "

    invoke-direct {v0, v6}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    .line 734
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 735
    new-instance v0, Lorg/htmlparser/Attribute;

    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    const-string v6, "/"

    invoke-direct {v0, v6, v8}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 742
    :cond_3
    if-eqz p1, :cond_0

    .line 744
    new-instance v0, Lorg/htmlparser/Attribute;

    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    const-string v6, " "

    invoke-direct {v0, v6}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    .line 745
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 746
    new-instance v0, Lorg/htmlparser/Attribute;

    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    const-string v6, "/"

    invoke-direct {v0, v6, v8}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 754
    .end local v2           #length:I
    .end local v5           #value:Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_0

    .line 756
    new-instance v0, Lorg/htmlparser/Attribute;

    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    const-string v6, "/"

    invoke-direct {v0, v6, v8}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 763
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v3           #name:Ljava/lang/String;
    :cond_5
    if-eqz p1, :cond_0

    .line 765
    new-instance v0, Lorg/htmlparser/Attribute;

    const-string v6, "/"

    invoke-direct {v0, v6, v8}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setEndTag(Lorg/htmlparser/Tag;)V
    .locals 0
    .parameter "end"

    .prologue
    .line 872
    return-void
.end method

.method public setTagBegin(I)V
    .locals 0
    .parameter "tagBegin"

    .prologue
    .line 492
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 493
    return-void
.end method

.method public setTagEnd(I)V
    .locals 0
    .parameter "tagEnd"

    .prologue
    .line 510
    iput p1, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 511
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 5
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 439
    new-instance v0, Lorg/htmlparser/Attribute;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v4}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    .line 440
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 441
    .local v1, attributes:Ljava/util/Vector;
    if-nez v1, :cond_0

    .line 443
    new-instance v1, Ljava/util/Vector;

    .end local v1           #attributes:Ljava/util/Vector;
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 444
    .restart local v1       #attributes:Ljava/util/Vector;
    invoke-virtual {p0, v1}, Lorg/htmlparser/nodes/TagNode;->setAttributesEx(Ljava/util/Vector;)V

    .line 446
    :cond_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 448
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 458
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/Attribute;

    .line 453
    .local v2, zeroth:Lorg/htmlparser/Attribute;
    invoke-virtual {v2}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/htmlparser/Attribute;->getQuote()C

    move-result v3

    if-nez v3, :cond_2

    .line 454
    invoke-virtual {v1, v0, v4}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {v1, v0, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 5
    .parameter "text"

    .prologue
    .line 531
    new-instance v0, Lorg/htmlparser/lexer/Lexer;

    invoke-direct {v0, p1}, Lorg/htmlparser/lexer/Lexer;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, lexer:Lorg/htmlparser/lexer/Lexer;
    :try_start_0
    invoke-virtual {v0}, Lorg/htmlparser/lexer/Lexer;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/nodes/TagNode;

    .line 535
    .local v1, output:Lorg/htmlparser/nodes/TagNode;
    invoke-virtual {v1}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    iput-object v3, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    .line 536
    invoke-virtual {v1}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v3

    iput v3, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 537
    invoke-virtual {v1}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v3

    iput v3, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 538
    invoke-virtual {v1}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v3

    iput-object v3, p0, Lorg/htmlparser/nodes/TagNode;->mAttributes:Ljava/util/Vector;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    return-void

    .line 540
    .end local v1           #output:Lorg/htmlparser/nodes/TagNode;
    :catch_0
    move-exception v2

    .line 542
    .local v2, pe:Lorg/htmlparser/util/ParserException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setThisScanner(Lorg/htmlparser/scanners/Scanner;)V
    .locals 0
    .parameter "scanner"

    .prologue
    .line 852
    iput-object p1, p0, Lorg/htmlparser/nodes/TagNode;->mScanner:Lorg/htmlparser/scanners/Scanner;

    .line 853
    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 7
    .parameter "verbatim"

    .prologue
    .line 572
    const/4 v3, 0x2

    .line 573
    .local v3, length:I
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 574
    .local v1, attributes:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v5

    .line 575
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 577
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 578
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getLength()I

    move-result v6

    add-int/2addr v3, v6

    .line 575
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 581
    .local v4, ret:Ljava/lang/StringBuffer;
    const-string v6, "<"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 584
    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 585
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0, v4}, Lorg/htmlparser/Attribute;->toString(Ljava/lang/StringBuffer;)V

    .line 582
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 587
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    :cond_1
    const-string v6, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 589
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public toPlainTextString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 604
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->getText()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, text:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 606
    .local v1, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/nodes/TagNode;->isEndTag()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 607
    const-string v4, "End"

    .line 610
    .local v4, type:Ljava/lang/String;
    :goto_0
    new-instance v2, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v6

    invoke-direct {v2, v5, v6}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 611
    .local v2, start:Lorg/htmlparser/lexer/Cursor;
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v5

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v6

    invoke-direct {v0, v5, v6}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 612
    .local v0, end:Lorg/htmlparser/lexer/Cursor;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 615
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 617
    const-string v5, "): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    const/16 v5, 0x50

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_1

    .line 620
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4d

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 621
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    const-string v5, "..."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 609
    .end local v0           #end:Lorg/htmlparser/lexer/Cursor;
    .end local v2           #start:Lorg/htmlparser/lexer/Cursor;
    .end local v4           #type:Ljava/lang/String;
    :cond_0
    const-string v4, "Tag"

    .restart local v4       #type:Ljava/lang/String;
    goto :goto_0

    .line 625
    .restart local v0       #end:Lorg/htmlparser/lexer/Cursor;
    .restart local v2       #start:Lorg/htmlparser/lexer/Cursor;
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
