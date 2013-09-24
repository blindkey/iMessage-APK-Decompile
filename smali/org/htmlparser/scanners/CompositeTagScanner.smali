.class public Lorg/htmlparser/scanners/CompositeTagScanner;
.super Lorg/htmlparser/scanners/TagScanner;
.source "CompositeTagScanner.java"


# static fields
.field private static final mLeaveEnds:Z

.field private static final mUseJVMStack:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/htmlparser/scanners/TagScanner;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method protected addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V
    .locals 1
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 284
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lorg/htmlparser/util/NodeList;

    invoke-direct {v0}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-interface {p1, v0}, Lorg/htmlparser/Tag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 286
    :cond_0
    invoke-interface {p2, p1}, Lorg/htmlparser/Node;->setParent(Lorg/htmlparser/Node;)V

    .line 287
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 288
    return-void
.end method

.method protected createVirtualEndTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/lexer/Page;I)Lorg/htmlparser/Tag;
    .locals 5
    .parameter "tag"
    .parameter "lexer"
    .parameter "page"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {p1}, Lorg/htmlparser/Tag;->getRawTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, name:Ljava/lang/String;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 329
    .local v0, attributes:Ljava/util/Vector;
    new-instance v4, Lorg/htmlparser/Attribute;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v1, v3}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 330
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v3

    invoke-interface {v3, p3, p4, p4, v0}, Lorg/htmlparser/NodeFactory;->createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;

    move-result-object v2

    .line 333
    .local v2, ret:Lorg/htmlparser/Tag;
    return-object v2
.end method

.method protected finishTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;)V
    .locals 2
    .parameter "tag"
    .parameter "lexer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p2}, Lorg/htmlparser/lexer/Lexer;->getCursor()Lorg/htmlparser/lexer/Cursor;

    move-result-object v1

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->createVirtualEndTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/lexer/Page;I)Lorg/htmlparser/Tag;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/htmlparser/Tag;->setEndTag(Lorg/htmlparser/Tag;)V

    .line 304
    :cond_0
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/htmlparser/Tag;->setParent(Lorg/htmlparser/Node;)V

    .line 305
    invoke-interface {p1}, Lorg/htmlparser/Tag;->doSemanticAction()V

    .line 306
    return-void
.end method

.method public final isTagToBeEndedFor(Lorg/htmlparser/Tag;Lorg/htmlparser/Tag;)Z
    .locals 5
    .parameter "current"
    .parameter "tag"

    .prologue
    .line 352
    const/4 v3, 0x0

    .line 354
    .local v3, ret:Z
    invoke-interface {p2}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 355
    .local v2, name:Ljava/lang/String;
    invoke-interface {p2}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getEndTagEnders()[Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, ends:[Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 360
    aget-object v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    const/4 v3, 0x1

    .line 366
    :cond_0
    return v3

    .line 358
    .end local v0           #ends:[Ljava/lang/String;
    .end local v1           #i:I
    :cond_1
    invoke-interface {p1}, Lorg/htmlparser/Tag;->getEnders()[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ends:[Ljava/lang/String;
    goto :goto_0

    .line 359
    .restart local v1       #i:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public scan(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/Tag;
    .locals 21
    .parameter "tag"
    .parameter "lexer"
    .parameter "stack"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 104
    move-object/from16 v15, p1

    .line 106
    .local v15, ret:Lorg/htmlparser/Tag;
    invoke-interface {v15}, Lorg/htmlparser/Tag;->isEmptyXmlTag()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 107
    invoke-interface {v15, v15}, Lorg/htmlparser/Tag;->setEndTag(Lorg/htmlparser/Tag;)V

    .line 272
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->finishTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;)V

    .line 274
    return-object v15

    .line 111
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Lexer;->nextNode(Z)Lorg/htmlparser/Node;

    move-result-object v12

    .line 112
    .local v12, node:Lorg/htmlparser/Node;
    if-eqz v12, :cond_1

    .line 114
    instance-of v0, v12, Lorg/htmlparser/Tag;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    move-object v11, v12

    .line 116
    check-cast v11, Lorg/htmlparser/Tag;

    .line 117
    .local v11, next:Lorg/htmlparser/Tag;
    invoke-interface {v11}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v10

    .line 119
    .local v10, name:Ljava/lang/String;
    invoke-interface {v11}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v15}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 121
    invoke-interface {v15, v11}, Lorg/htmlparser/Tag;->setEndTag(Lorg/htmlparser/Tag;)V

    .line 122
    const/4 v12, 0x0

    .line 244
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #next:Lorg/htmlparser/Tag;
    :cond_1
    :goto_1
    if-nez v12, :cond_2

    .line 246
    invoke-virtual/range {p3 .. p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v6

    .line 247
    .local v6, depth:I
    if-eqz v6, :cond_2

    .line 249
    add-int/lit8 v17, v6, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v12

    .line 250
    instance-of v0, v12, Lorg/htmlparser/Tag;

    move/from16 v17, v0

    if-eqz v17, :cond_11

    move-object v14, v12

    .line 252
    check-cast v14, Lorg/htmlparser/Tag;

    .line 253
    .local v14, precursor:Lorg/htmlparser/Tag;
    invoke-interface {v14}, Lorg/htmlparser/Tag;->getThisScanner()Lorg/htmlparser/scanners/Scanner;

    move-result-object v16

    .line 254
    .local v16, scanner:Lorg/htmlparser/scanners/Scanner;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_10

    .line 256
    add-int/lit8 v17, v6, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->finishTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;)V

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    .line 259
    move-object v15, v14

    .line 270
    .end local v6           #depth:I
    .end local v14           #precursor:Lorg/htmlparser/Tag;
    .end local v16           #scanner:Lorg/htmlparser/scanners/Scanner;
    :cond_2
    :goto_2
    if-nez v12, :cond_0

    goto :goto_0

    .line 124
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #next:Lorg/htmlparser/Tag;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lorg/htmlparser/scanners/CompositeTagScanner;->isTagToBeEndedFor(Lorg/htmlparser/Tag;Lorg/htmlparser/Tag;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 127
    invoke-interface {v11}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Lexer;->setPosition(I)V

    .line 128
    const/4 v12, 0x0

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    invoke-interface {v11}, Lorg/htmlparser/Tag;->isEndTag()Z

    move-result v17

    if-nez v17, :cond_8

    .line 133
    invoke-interface {v11}, Lorg/htmlparser/Tag;->getThisScanner()Lorg/htmlparser/scanners/Scanner;

    move-result-object v16

    .line 134
    .restart local v16       #scanner:Lorg/htmlparser/scanners/Scanner;
    if-eqz v16, :cond_7

    .line 144
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_6

    .line 146
    invoke-interface {v11}, Lorg/htmlparser/Tag;->isEmptyXmlTag()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 148
    invoke-interface {v11, v11}, Lorg/htmlparser/Tag;->setEndTag(Lorg/htmlparser/Tag;)V

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->finishTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;)V

    .line 150
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    goto :goto_1

    .line 154
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    .line 155
    move-object v15, v11

    .line 157
    goto/16 :goto_1

    .line 160
    :cond_6
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v0, v11, v1, v2}, Lorg/htmlparser/scanners/Scanner;->scan(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;Lorg/htmlparser/util/NodeList;)Lorg/htmlparser/Tag;

    move-result-object v12

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    goto/16 :goto_1

    .line 166
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    goto/16 :goto_1

    .line 189
    .end local v16           #scanner:Lorg/htmlparser/scanners/Scanner;
    :cond_8
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 190
    .local v4, attributes:Ljava/util/Vector;
    new-instance v17, Lorg/htmlparser/Attribute;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Lorg/htmlparser/lexer/Lexer;->getNodeFactory()Lorg/htmlparser/NodeFactory;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v18

    invoke-interface {v11}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v19

    invoke-interface {v11}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/htmlparser/NodeFactory;->createTagNode(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)Lorg/htmlparser/Tag;

    move-result-object v13

    .line 195
    .local v13, opener:Lorg/htmlparser/Tag;
    invoke-interface {v13}, Lorg/htmlparser/Tag;->getThisScanner()Lorg/htmlparser/scanners/Scanner;

    move-result-object v16

    .line 196
    .restart local v16       #scanner:Lorg/htmlparser/scanners/Scanner;
    if-eqz v16, :cond_e

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_e

    .line 199
    const/4 v9, -0x1

    .line 200
    .local v9, index:I
    invoke-virtual/range {p3 .. p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    .local v8, i:I
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v9, :cond_b

    if-ltz v8, :cond_b

    .line 204
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    check-cast v5, Lorg/htmlparser/Tag;

    .line 205
    .local v5, boffo:Lorg/htmlparser/Tag;
    invoke-interface {v5}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 206
    move v9, v8

    .line 200
    :cond_9
    :goto_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 207
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lorg/htmlparser/scanners/CompositeTagScanner;->isTagToBeEndedFor(Lorg/htmlparser/Tag;Lorg/htmlparser/Tag;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 208
    move v9, v8

    goto :goto_4

    .line 210
    .end local v5           #boffo:Lorg/htmlparser/Tag;
    :cond_b
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v9, :cond_d

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v15, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->finishTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;)V

    .line 214
    invoke-virtual/range {p3 .. p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v17

    check-cast v17, Lorg/htmlparser/Tag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v17

    add-int/lit8 v8, v17, -0x1

    :goto_5
    if-le v8, v9, :cond_c

    .line 217
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    move-result-object v7

    check-cast v7, Lorg/htmlparser/Tag;

    .line 218
    .local v7, fred:Lorg/htmlparser/Tag;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lorg/htmlparser/scanners/CompositeTagScanner;->finishTag(Lorg/htmlparser/Tag;Lorg/htmlparser/lexer/Lexer;)V

    .line 219
    add-int/lit8 v17, v8, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v17

    check-cast v17, Lorg/htmlparser/Tag;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    .line 215
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 221
    .end local v7           #fred:Lorg/htmlparser/Tag;
    :cond_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    move-result-object v15

    .end local v15           #ret:Lorg/htmlparser/Tag;
    check-cast v15, Lorg/htmlparser/Tag;

    .line 222
    .restart local v15       #ret:Lorg/htmlparser/Tag;
    const/4 v12, 0x0

    .line 223
    goto/16 :goto_1

    .line 225
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    goto/16 :goto_1

    .line 228
    .end local v8           #i:I
    .end local v9           #index:I
    :cond_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    goto/16 :goto_1

    .line 236
    .end local v4           #attributes:Ljava/util/Vector;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #next:Lorg/htmlparser/Tag;
    .end local v13           #opener:Lorg/htmlparser/Tag;
    .end local v16           #scanner:Lorg/htmlparser/scanners/Scanner;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lorg/htmlparser/scanners/CompositeTagScanner;->addChild(Lorg/htmlparser/Tag;Lorg/htmlparser/Node;)V

    .line 237
    invoke-interface {v12}, Lorg/htmlparser/Node;->doSemanticAction()V

    goto/16 :goto_1

    .line 262
    .restart local v6       #depth:I
    .restart local v14       #precursor:Lorg/htmlparser/Tag;
    .restart local v16       #scanner:Lorg/htmlparser/scanners/Scanner;
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 265
    .end local v14           #precursor:Lorg/htmlparser/Tag;
    .end local v16           #scanner:Lorg/htmlparser/scanners/Scanner;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_2
.end method
