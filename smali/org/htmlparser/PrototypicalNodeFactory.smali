.class public Lorg/htmlparser/PrototypicalNodeFactory;
.super Ljava/lang/Object;
.source "PrototypicalNodeFactory.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/NodeFactory;


# instance fields
.field protected mBlastocyst:Ljava/util/Map;

.field protected mRemark:Lorg/htmlparser/Remark;

.field protected mTag:Lorg/htmlparser/Tag;

.field protected mText:Lorg/htmlparser/Text;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>(Z)V

    .line 170
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/Tag;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>(Z)V

    .line 194
    invoke-virtual {p0, p1}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter "empty"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->clear()V

    .line 180
    new-instance v0, Lorg/htmlparser/nodes/TextNode;

    invoke-direct {v0, v2, v1, v1}, Lorg/htmlparser/nodes/TextNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mText:Lorg/htmlparser/Text;

    .line 181
    new-instance v0, Lorg/htmlparser/nodes/RemarkNode;

    invoke-direct {v0, v2, v1, v1}, Lorg/htmlparser/nodes/RemarkNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mRemark:Lorg/htmlparser/Remark;

    .line 182
    new-instance v0, Lorg/htmlparser/nodes/TagNode;

    invoke-direct {v0, v2, v1, v1, v2}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mTag:Lorg/htmlparser/Tag;

    .line 183
    if-nez p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTags()Lorg/htmlparser/PrototypicalNodeFactory;

    .line 185
    :cond_0
    return-void
.end method

.method public constructor <init>([Lorg/htmlparser/Tag;)V
    .locals 2
    .parameter "tags"

    .prologue
    .line 203
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/htmlparser/PrototypicalNodeFactory;-><init>(Z)V

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 205
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 249
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    .line 250
    return-void
.end method

.method public createRemarkNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Remark;
    .locals 4
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 464
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->getRemarkPrototype()Lorg/htmlparser/Remark;

    move-result-object v3

    invoke-interface {v3}, Lorg/htmlparser/Node;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/htmlparser/Remark;

    move-object v0, v3

    check-cast v0, Lorg/htmlparser/Remark;

    move-object v2, v0

    .line 465
    .local v2, ret:Lorg/htmlparser/Remark;
    invoke-interface {v2, p1}, Lorg/htmlparser/Remark;->setPage(Lorg/htmlparser/lexer/Page;)V

    .line 466
    invoke-interface {v2, p2}, Lorg/htmlparser/Remark;->setStartPosition(I)V

    .line 467
    invoke-interface {v2, p3}, Lorg/htmlparser/Remark;->setEndPosition(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-object v2

    .line 469
    .end local v2           #ret:Lorg/htmlparser/Remark;
    :catch_0
    move-exception v1

    .line 471
    .local v1, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lorg/htmlparser/nodes/RemarkNode;

    invoke-direct {v2, p1, p2, p3}, Lorg/htmlparser/nodes/RemarkNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    .restart local v2       #ret:Lorg/htmlparser/Remark;
    goto :goto_0
.end method

.method public createStringNode(Lorg/htmlparser/lexer/Page;II)Lorg/htmlparser/Text;
    .locals 4
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 438
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->getTextPrototype()Lorg/htmlparser/Text;

    move-result-object v3

    invoke-interface {v3}, Lorg/htmlparser/Node;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/htmlparser/Text;

    move-object v0, v3

    check-cast v0, Lorg/htmlparser/Text;

    move-object v2, v0

    .line 439
    .local v2, ret:Lorg/htmlparser/Text;
    invoke-interface {v2, p1}, Lorg/htmlparser/Text;->setPage(Lorg/htmlparser/lexer/Page;)V

    .line 440
    invoke-interface {v2, p2}, Lorg/htmlparser/Text;->setStartPosition(I)V

    .line 441
    invoke-interface {v2, p3}, Lorg/htmlparser/Text;->setEndPosition(I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    return-object v2

    .line 443
    .end local v2           #ret:Lorg/htmlparser/Text;
    :catch_0
    move-exception v1

    .line 445
    .local v1, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lorg/htmlparser/nodes/TextNode;

    invoke-direct {v2, p1, p2, p3}, Lorg/htmlparser/nodes/TextNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    .restart local v2       #ret:Lorg/htmlparser/Text;
    goto :goto_0
.end method

.method public createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;
    .locals 8
    .parameter "page"
    .parameter "start"
    .parameter "end"
    .parameter "attributes"

    .prologue
    const/4 v7, 0x0

    .line 496
    const/4 v5, 0x0

    .line 498
    .local v5, ret:Lorg/htmlparser/Tag;
    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result v6

    if-eqz v6, :cond_1

    .line 500
    invoke-virtual {p4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/Attribute;

    .line 501
    .local v1, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v1}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, id:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 506
    :try_start_0
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 507
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 509
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 511
    :cond_0
    iget-object v6, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlparser/Tag;

    .line 512
    .local v4, prototype:Lorg/htmlparser/Tag;
    if-eqz v4, :cond_1

    .line 514
    invoke-interface {v4}, Lorg/htmlparser/Node;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v5, v0

    .line 515
    invoke-interface {v5, p1}, Lorg/htmlparser/Tag;->setPage(Lorg/htmlparser/lexer/Page;)V

    .line 516
    invoke-interface {v5, p2}, Lorg/htmlparser/Tag;->setStartPosition(I)V

    .line 517
    invoke-interface {v5, p3}, Lorg/htmlparser/Tag;->setEndPosition(I)V

    .line 518
    invoke-interface {v5, p4}, Lorg/htmlparser/Tag;->setAttributesEx(Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 528
    .end local v1           #attribute:Lorg/htmlparser/Attribute;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #prototype:Lorg/htmlparser/Tag;
    :cond_1
    :goto_0
    if-nez v5, :cond_2

    .line 532
    :try_start_1
    invoke-virtual {p0}, Lorg/htmlparser/PrototypicalNodeFactory;->getTagPrototype()Lorg/htmlparser/Tag;

    move-result-object v6

    invoke-interface {v6}, Lorg/htmlparser/Node;->clone()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/htmlparser/Tag;

    move-object v5, v0

    .line 533
    invoke-interface {v5, p1}, Lorg/htmlparser/Tag;->setPage(Lorg/htmlparser/lexer/Page;)V

    .line 534
    invoke-interface {v5, p2}, Lorg/htmlparser/Tag;->setStartPosition(I)V

    .line 535
    invoke-interface {v5, p3}, Lorg/htmlparser/Tag;->setEndPosition(I)V

    .line 536
    invoke-interface {v5, p4}, Lorg/htmlparser/Tag;->setAttributesEx(Ljava/util/Vector;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 544
    :cond_2
    :goto_1
    return-object v5

    .line 538
    :catch_0
    move-exception v2

    .line 540
    .local v2, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v5, Lorg/htmlparser/nodes/TagNode;

    .end local v5           #ret:Lorg/htmlparser/Tag;
    invoke-direct {v5, p1, p2, p3, p4}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    .restart local v5       #ret:Lorg/htmlparser/Tag;
    goto :goto_1

    .line 522
    .end local v2           #cnse:Ljava/lang/CloneNotSupportedException;
    .restart local v1       #attribute:Lorg/htmlparser/Attribute;
    .restart local v3       #id:Ljava/lang/String;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lorg/htmlparser/Tag;
    .locals 1
    .parameter "id"

    .prologue
    .line 230
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Tag;

    return-object v0
.end method

.method public getRemarkPrototype()Lorg/htmlparser/Remark;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mRemark:Lorg/htmlparser/Remark;

    return-object v0
.end method

.method public getTagNames()Ljava/util/Set;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTagPrototype()Lorg/htmlparser/Tag;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mTag:Lorg/htmlparser/Tag;

    return-object v0
.end method

.method public getTextPrototype()Lorg/htmlparser/Text;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mText:Lorg/htmlparser/Text;

    return-object v0
.end method

.method public put(Ljava/lang/String;Lorg/htmlparser/Tag;)Lorg/htmlparser/Tag;
    .locals 1
    .parameter "id"
    .parameter "tag"

    .prologue
    .line 219
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Tag;

    return-object v0
.end method

.method public registerTag(Lorg/htmlparser/Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 273
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getIds()[Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, ids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 275
    aget-object v2, v1, v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/htmlparser/PrototypicalNodeFactory;->put(Ljava/lang/String;Lorg/htmlparser/Tag;)Lorg/htmlparser/Tag;

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public registerTags()Lorg/htmlparser/PrototypicalNodeFactory;
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lorg/htmlparser/tags/AppletTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/AppletTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 303
    new-instance v0, Lorg/htmlparser/tags/BaseHrefTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/BaseHrefTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 304
    new-instance v0, Lorg/htmlparser/tags/Bullet;

    invoke-direct {v0}, Lorg/htmlparser/tags/Bullet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 305
    new-instance v0, Lorg/htmlparser/tags/BulletList;

    invoke-direct {v0}, Lorg/htmlparser/tags/BulletList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 306
    new-instance v0, Lorg/htmlparser/tags/DefinitionList;

    invoke-direct {v0}, Lorg/htmlparser/tags/DefinitionList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 307
    new-instance v0, Lorg/htmlparser/tags/DefinitionListBullet;

    invoke-direct {v0}, Lorg/htmlparser/tags/DefinitionListBullet;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 308
    new-instance v0, Lorg/htmlparser/tags/DoctypeTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/DoctypeTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 309
    new-instance v0, Lorg/htmlparser/tags/FormTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/FormTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 310
    new-instance v0, Lorg/htmlparser/tags/FrameSetTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/FrameSetTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 311
    new-instance v0, Lorg/htmlparser/tags/FrameTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/FrameTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 312
    new-instance v0, Lorg/htmlparser/tags/HeadingTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/HeadingTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 313
    new-instance v0, Lorg/htmlparser/tags/ImageTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ImageTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 314
    new-instance v0, Lorg/htmlparser/tags/InputTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/InputTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 315
    new-instance v0, Lorg/htmlparser/tags/JspTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/JspTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 316
    new-instance v0, Lorg/htmlparser/tags/LabelTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/LabelTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 317
    new-instance v0, Lorg/htmlparser/tags/LinkTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/LinkTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 318
    new-instance v0, Lorg/htmlparser/tags/MetaTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/MetaTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 319
    new-instance v0, Lorg/htmlparser/tags/ObjectTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ObjectTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 320
    new-instance v0, Lorg/htmlparser/tags/OptionTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/OptionTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 321
    new-instance v0, Lorg/htmlparser/tags/ParagraphTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ParagraphTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 322
    new-instance v0, Lorg/htmlparser/tags/ProcessingInstructionTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ProcessingInstructionTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 323
    new-instance v0, Lorg/htmlparser/tags/ScriptTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/ScriptTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 324
    new-instance v0, Lorg/htmlparser/tags/SelectTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/SelectTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 325
    new-instance v0, Lorg/htmlparser/tags/StyleTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/StyleTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 326
    new-instance v0, Lorg/htmlparser/tags/TableColumn;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableColumn;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 327
    new-instance v0, Lorg/htmlparser/tags/TableHeader;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableHeader;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 328
    new-instance v0, Lorg/htmlparser/tags/TableRow;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableRow;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 329
    new-instance v0, Lorg/htmlparser/tags/TableTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/TableTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 330
    new-instance v0, Lorg/htmlparser/tags/TextareaTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/TextareaTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 331
    new-instance v0, Lorg/htmlparser/tags/TitleTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/TitleTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 332
    new-instance v0, Lorg/htmlparser/tags/Div;

    invoke-direct {v0}, Lorg/htmlparser/tags/Div;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 333
    new-instance v0, Lorg/htmlparser/tags/Span;

    invoke-direct {v0}, Lorg/htmlparser/tags/Span;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 334
    new-instance v0, Lorg/htmlparser/tags/BodyTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/BodyTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 335
    new-instance v0, Lorg/htmlparser/tags/HeadTag;

    invoke-direct {v0}, Lorg/htmlparser/tags/HeadTag;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 336
    new-instance v0, Lorg/htmlparser/tags/Html;

    invoke-direct {v0}, Lorg/htmlparser/tags/Html;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/PrototypicalNodeFactory;->registerTag(Lorg/htmlparser/Tag;)V

    .line 339
    return-object p0
.end method

.method public remove(Ljava/lang/String;)Lorg/htmlparser/Tag;
    .locals 1
    .parameter "id"

    .prologue
    .line 241
    iget-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mBlastocyst:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Tag;

    return-object v0
.end method

.method public setRemarkPrototype(Lorg/htmlparser/Remark;)V
    .locals 3
    .parameter "remark"

    .prologue
    const/4 v2, 0x0

    .line 386
    if-nez p1, :cond_0

    .line 387
    new-instance v0, Lorg/htmlparser/nodes/RemarkNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/htmlparser/nodes/RemarkNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mRemark:Lorg/htmlparser/Remark;

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mRemark:Lorg/htmlparser/Remark;

    goto :goto_0
.end method

.method public setTagPrototype(Lorg/htmlparser/Tag;)V
    .locals 3
    .parameter "tag"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Lorg/htmlparser/nodes/TagNode;

    invoke-direct {v0, v2, v1, v1, v2}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mTag:Lorg/htmlparser/Tag;

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mTag:Lorg/htmlparser/Tag;

    goto :goto_0
.end method

.method public setTextPrototype(Lorg/htmlparser/Text;)V
    .locals 3
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 361
    if-nez p1, :cond_0

    .line 362
    new-instance v0, Lorg/htmlparser/nodes/TextNode;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/htmlparser/nodes/TextNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    iput-object v0, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mText:Lorg/htmlparser/Text;

    .line 365
    :goto_0
    return-void

    .line 364
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/PrototypicalNodeFactory;->mText:Lorg/htmlparser/Text;

    goto :goto_0
.end method

.method public unregisterTag(Lorg/htmlparser/Tag;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 289
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getIds()[Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, ids:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 291
    aget-object v2, v1, v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/htmlparser/PrototypicalNodeFactory;->remove(Ljava/lang/String;)Lorg/htmlparser/Tag;

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    return-void
.end method
