.class public Lorg/htmlparser/util/ParserUtils;
.super Ljava/lang/Object;
.source "ParserUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createDummyString(CI)Ljava/lang/String;
    .locals 3
    .parameter "fillingChar"
    .parameter "length"

    .prologue
    .line 1233
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1234
    .local v0, dummyStringBuffer:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1235
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1236
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    return-object v2
.end method

.method public static createParserParsingAnInputString(Ljava/lang/String;)Lorg/htmlparser/Parser;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1140
    new-instance v2, Lorg/htmlparser/Parser;

    invoke-direct {v2}, Lorg/htmlparser/Parser;-><init>()V

    .line 1141
    .local v2, parser:Lorg/htmlparser/Parser;
    new-instance v0, Lorg/htmlparser/lexer/Lexer;

    invoke-direct {v0}, Lorg/htmlparser/lexer/Lexer;-><init>()V

    .line 1142
    .local v0, lexer:Lorg/htmlparser/lexer/Lexer;
    new-instance v1, Lorg/htmlparser/lexer/Page;

    invoke-direct {v1, p0}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    .line 1143
    .local v1, page:Lorg/htmlparser/lexer/Page;
    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Lexer;->setPage(Lorg/htmlparser/lexer/Page;)V

    .line 1144
    invoke-virtual {v2, v0}, Lorg/htmlparser/Parser;->setLexer(Lorg/htmlparser/lexer/Lexer;)V

    .line 1146
    return-object v2
.end method

.method public static findTypeInNode(Lorg/htmlparser/Node;Ljava/lang/Class;)[Lorg/htmlparser/Node;
    .locals 3
    .parameter "node"
    .parameter "type"

    .prologue
    .line 86
    new-instance v1, Lorg/htmlparser/util/NodeList;

    invoke-direct {v1}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 87
    .local v1, ret:Lorg/htmlparser/util/NodeList;
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v0, p1}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 88
    .local v0, filter:Lorg/htmlparser/NodeFilter;
    invoke-interface {p0, v1, v0}, Lorg/htmlparser/Node;->collectInto(Lorg/htmlparser/util/NodeList;Lorg/htmlparser/NodeFilter;)V

    .line 90
    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->toNodeArray()[Lorg/htmlparser/Node;

    move-result-object v2

    return-object v2
.end method

.method private static getLinks(Ljava/lang/String;Ljava/lang/String;Z)Lorg/htmlparser/util/NodeList;
    .locals 14
    .parameter "output"
    .parameter "tag"
    .parameter "recursive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1154
    new-instance v12, Lorg/htmlparser/Parser;

    invoke-direct {v12}, Lorg/htmlparser/Parser;-><init>()V

    .line 1155
    .local v12, parser:Lorg/htmlparser/Parser;
    new-instance v0, Lorg/htmlparser/filters/TagNameFilter;

    invoke-direct {v0, p1}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v0, filterLink:Lorg/htmlparser/NodeFilter;
    new-instance v11, Lorg/htmlparser/util/NodeList;

    invoke-direct {v11}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 1157
    .local v11, links:Lorg/htmlparser/util/NodeList;
    invoke-static {p0}, Lorg/htmlparser/util/ParserUtils;->createParserParsingAnInputString(Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v12

    .line 1158
    invoke-virtual {v12, v0}, Lorg/htmlparser/Parser;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v11

    .line 1163
    if-nez p2, :cond_2

    .line 1165
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    invoke-virtual {v11}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v13

    if-ge v1, v13, :cond_2

    .line 1167
    invoke-virtual {v11, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v4

    check-cast v4, Lorg/htmlparser/tags/CompositeTag;

    .line 1168
    .local v4, jStartTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v4}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v2

    .line 1169
    .local v2, jEndTag:Lorg/htmlparser/Tag;
    invoke-virtual {v4}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v5

    .line 1170
    .local v5, jStartTagBegin:I
    invoke-interface {v2}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v3

    .line 1171
    .local v3, jEndTagEnd:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_1
    invoke-virtual {v11}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v13

    if-ge v6, v13, :cond_1

    .line 1173
    invoke-virtual {v11, v6}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v9

    check-cast v9, Lorg/htmlparser/tags/CompositeTag;

    .line 1174
    .local v9, kStartTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v9}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v7

    .line 1175
    .local v7, kEndTag:Lorg/htmlparser/Tag;
    invoke-virtual {v9}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v10

    .line 1176
    .local v10, kStartTagBegin:I
    invoke-interface {v7}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v8

    .line 1177
    .local v8, kEndTagEnd:I
    if-eq v6, v1, :cond_0

    if-le v10, v5, :cond_0

    if-ge v8, v3, :cond_0

    .line 1179
    invoke-virtual {v11, v6}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    .line 1180
    add-int/lit8 v6, v6, -0x1

    .line 1181
    add-int/lit8 v1, v1, -0x1

    .line 1171
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1165
    .end local v7           #kEndTag:Lorg/htmlparser/Tag;
    .end local v8           #kEndTagEnd:I
    .end local v9           #kStartTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v10           #kStartTagBegin:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1187
    .end local v1           #j:I
    .end local v2           #jEndTag:Lorg/htmlparser/Tag;
    .end local v3           #jEndTagEnd:I
    .end local v4           #jStartTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v5           #jStartTagBegin:I
    .end local v6           #k:I
    :cond_2
    return-object v11
.end method

.method private static getLinks(Ljava/lang/String;Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;
    .locals 13
    .parameter "output"
    .parameter "filter"
    .parameter "recursive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1195
    new-instance v11, Lorg/htmlparser/Parser;

    invoke-direct {v11}, Lorg/htmlparser/Parser;-><init>()V

    .line 1196
    .local v11, parser:Lorg/htmlparser/Parser;
    new-instance v10, Lorg/htmlparser/util/NodeList;

    invoke-direct {v10}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 1197
    .local v10, links:Lorg/htmlparser/util/NodeList;
    invoke-static {p0}, Lorg/htmlparser/util/ParserUtils;->createParserParsingAnInputString(Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v11

    .line 1198
    invoke-virtual {v11, p1}, Lorg/htmlparser/Parser;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v10

    .line 1203
    if-nez p2, :cond_2

    .line 1205
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    invoke-virtual {v10}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v12

    if-ge v0, v12, :cond_2

    .line 1207
    invoke-virtual {v10, v0}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v3

    check-cast v3, Lorg/htmlparser/tags/CompositeTag;

    .line 1208
    .local v3, jStartTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v3}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v1

    .line 1209
    .local v1, jEndTag:Lorg/htmlparser/Tag;
    invoke-virtual {v3}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v4

    .line 1210
    .local v4, jStartTagBegin:I
    invoke-interface {v1}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v2

    .line 1211
    .local v2, jEndTagEnd:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v10}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 1213
    invoke-virtual {v10, v5}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v8

    check-cast v8, Lorg/htmlparser/tags/CompositeTag;

    .line 1214
    .local v8, kStartTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v8}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v6

    .line 1215
    .local v6, kEndTag:Lorg/htmlparser/Tag;
    invoke-virtual {v8}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v9

    .line 1216
    .local v9, kStartTagBegin:I
    invoke-interface {v6}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v7

    .line 1217
    .local v7, kEndTagEnd:I
    if-eq v5, v0, :cond_0

    if-le v9, v4, :cond_0

    if-ge v7, v2, :cond_0

    .line 1219
    invoke-virtual {v10, v5}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    .line 1220
    add-int/lit8 v5, v5, -0x1

    .line 1221
    add-int/lit8 v0, v0, -0x1

    .line 1211
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1205
    .end local v6           #kEndTag:Lorg/htmlparser/Tag;
    .end local v7           #kEndTagEnd:I
    .end local v8           #kStartTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v9           #kStartTagBegin:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1227
    .end local v0           #j:I
    .end local v1           #jEndTag:Lorg/htmlparser/Tag;
    .end local v2           #jEndTagEnd:I
    .end local v3           #jStartTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v4           #jStartTagBegin:I
    .end local v5           #k:I
    :cond_2
    return-object v10
.end method

.method private static modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4
    .parameter "dummyString"
    .parameter "beginTag"
    .parameter "endTag"

    .prologue
    .line 1241
    const/16 v1, 0x2a

    sub-int v2, p2, p1

    invoke-static {v1, v2}, Lorg/htmlparser/util/ParserUtils;->createDummyString(CI)Ljava/lang/String;

    move-result-object v0

    .line 1242
    .local v0, dummyStringInterval:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static removeChars(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "occur"

    .prologue
    .line 48
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v2, newString:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 51
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 52
    .local v0, ch:C
    if-eq v0, p1, :cond_0

    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0           #ch:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static removeEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "inputString"

    .prologue
    .line 59
    const/16 v0, 0xd

    invoke-static {p0, v0}, Lorg/htmlparser/util/ParserUtils;->removeChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 60
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lorg/htmlparser/util/ParserUtils;->removeChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 61
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lorg/htmlparser/util/ParserUtils;->removeChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static removeTrailingBlanks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x20

    .line 66
    const/16 v0, 0x20

    .line 67
    .local v0, ch:C
    :cond_0
    :goto_0
    if-ne v0, v3, :cond_1

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 69
    if-ne v0, v3, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 72
    :cond_1
    return-object p0
.end method

.method public static splitButChars(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "input"
    .parameter "charsDoNotBeRemoved"

    .prologue
    .line 396
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v5, output:Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 398
    .local v4, minCapacity:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 400
    .local v8, str:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 401
    .local v0, charFound:Z
    const/4 v9, 0x0

    .line 402
    .local v9, toBeAdd:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 404
    const/4 v0, 0x0

    .line 405
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 406
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_0

    .line 407
    const/4 v0, 0x1

    .line 405
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 408
    :cond_1
    if-eqz v0, :cond_4

    .line 410
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    const/4 v9, 0x0

    .line 417
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 418
    add-int/lit8 v4, v4, 0x1

    .line 419
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 420
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 421
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 402
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_4
    if-nez v9, :cond_2

    .line 415
    const/4 v9, 0x1

    goto :goto_2

    .line 423
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 427
    .end local v1           #charsCount:I
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_7

    .line 428
    add-int/lit8 v4, v4, 0x1

    .line 429
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 430
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 431
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 436
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_7
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 437
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 438
    .local v6, outputObj:[Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    .line 439
    .local v7, outputStr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_9

    .line 440
    new-instance v11, Ljava/lang/String;

    aget-object v10, v6, v2

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v11, v7, v2

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 433
    .end local v2           #i:I
    .end local v6           #outputObj:[Ljava/lang/Object;
    .end local v7           #outputStr:[Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 441
    .restart local v2       #i:I
    .restart local v6       #outputObj:[Ljava/lang/Object;
    .restart local v7       #outputStr:[Ljava/lang/String;
    :cond_9
    return-object v7
.end method

.method public static splitButDigits(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "input"
    .parameter "charsDoNotBeRemoved"

    .prologue
    .line 106
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v5, output:Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 108
    .local v4, minCapacity:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v8, str:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 111
    .local v0, charFound:Z
    const/4 v9, 0x0

    .line 112
    .local v9, toBeAdd:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_7

    .line 114
    const/4 v0, 0x0

    .line 115
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 115
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v0, :cond_5

    .line 120
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    const/4 v9, 0x0

    .line 127
    :cond_3
    :goto_2
    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_4

    .line 128
    add-int/lit8 v4, v4, 0x1

    .line 129
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 130
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 131
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 124
    :cond_5
    if-nez v9, :cond_3

    .line 125
    const/4 v9, 0x1

    goto :goto_2

    .line 133
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 137
    .end local v1           #charsCount:I
    :cond_7
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_8

    .line 138
    add-int/lit8 v4, v4, 0x1

    .line 139
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 140
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 141
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 146
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_8
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 147
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 148
    .local v6, outputObj:[Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    .line 149
    .local v7, outputStr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_a

    .line 150
    new-instance v11, Ljava/lang/String;

    aget-object v10, v6, v2

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v11, v7, v2

    .line 149
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 143
    .end local v2           #i:I
    .end local v6           #outputObj:[Ljava/lang/Object;
    .end local v7           #outputStr:[Ljava/lang/String;
    :cond_9
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 151
    .restart local v2       #i:I
    .restart local v6       #outputObj:[Ljava/lang/Object;
    .restart local v7       #outputStr:[Ljava/lang/String;
    :cond_a
    return-object v7
.end method

.method public static splitChars(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "input"
    .parameter "charsToBeRemoved"

    .prologue
    .line 540
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v5, output:Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 542
    .local v4, minCapacity:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 544
    .local v8, str:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 545
    .local v0, charFound:Z
    const/4 v9, 0x0

    .line 546
    .local v9, toBeAdd:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 548
    const/4 v0, 0x0

    .line 549
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 550
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_0

    .line 551
    const/4 v0, 0x1

    .line 549
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    :cond_1
    if-nez v0, :cond_4

    .line 554
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 555
    const/4 v9, 0x0

    .line 561
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 562
    add-int/lit8 v4, v4, 0x1

    .line 563
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 564
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 565
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 546
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 558
    :cond_4
    if-nez v9, :cond_2

    .line 559
    const/4 v9, 0x1

    goto :goto_2

    .line 567
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 571
    .end local v1           #charsCount:I
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_7

    .line 572
    add-int/lit8 v4, v4, 0x1

    .line 573
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 574
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 575
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 580
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_7
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 581
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 582
    .local v6, outputObj:[Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    .line 583
    .local v7, outputStr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_9

    .line 584
    new-instance v11, Ljava/lang/String;

    aget-object v10, v6, v2

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v11, v7, v2

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 577
    .end local v2           #i:I
    .end local v6           #outputObj:[Ljava/lang/Object;
    .end local v7           #outputStr:[Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 585
    .restart local v2       #i:I
    .restart local v6       #outputObj:[Ljava/lang/Object;
    .restart local v7       #outputStr:[Ljava/lang/String;
    :cond_9
    return-object v7
.end method

.method public static splitSpaces(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "input"
    .parameter "charsToBeRemoved"

    .prologue
    .line 251
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v5, output:Ljava/util/ArrayList;
    const/4 v4, 0x0

    .line 253
    .local v4, minCapacity:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v8, str:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 256
    .local v0, charFound:Z
    const/4 v9, 0x0

    .line 257
    .local v9, toBeAdd:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_6

    .line 259
    const/4 v0, 0x0

    .line 260
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v1, v10, :cond_1

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_0

    .line 262
    const/4 v0, 0x1

    .line 260
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 263
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v10

    if-nez v10, :cond_4

    if-nez v0, :cond_4

    .line 265
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 266
    const/4 v9, 0x0

    .line 272
    :cond_2
    :goto_2
    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_3

    .line 273
    add-int/lit8 v4, v4, 0x1

    .line 274
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 275
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 276
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_4
    if-nez v9, :cond_2

    .line 270
    const/4 v9, 0x1

    goto :goto_2

    .line 278
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 282
    .end local v1           #charsCount:I
    :cond_6
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    if-eqz v10, :cond_7

    .line 283
    add-int/lit8 v4, v4, 0x1

    .line 284
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 285
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 286
    new-instance v8, Ljava/lang/StringBuffer;

    .end local v8           #str:Ljava/lang/StringBuffer;
    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    .restart local v8       #str:Ljava/lang/StringBuffer;
    :cond_7
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 292
    invoke-virtual {v5}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 293
    .local v6, outputObj:[Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v7, v10, [Ljava/lang/String;

    .line 294
    .local v7, outputStr:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_9

    .line 295
    new-instance v11, Ljava/lang/String;

    aget-object v10, v6, v2

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v11, v7, v2

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 288
    .end local v2           #i:I
    .end local v6           #outputObj:[Ljava/lang/Object;
    .end local v7           #outputStr:[Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 296
    .restart local v2       #i:I
    .restart local v6       #outputObj:[Ljava/lang/Object;
    .restart local v7       #outputStr:[Ljava/lang/String;
    :cond_9
    return-object v7
.end method

.method public static splitTags(Ljava/lang/String;Ljava/lang/Class;)[Ljava/lang/String;
    .locals 2
    .parameter "input"
    .parameter "nodeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 793
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v0, p1}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, v1, v1}, Lorg/htmlparser/util/ParserUtils;->splitTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitTags(Ljava/lang/String;Ljava/lang/Class;ZZ)[Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "nodeType"
    .parameter "recursive"
    .parameter "insideTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v0, p1}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Lorg/htmlparser/util/ParserUtils;->splitTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;)[Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 819
    invoke-static {p0, p1, v0, v0}, Lorg/htmlparser/util/ParserUtils;->splitTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)[Ljava/lang/String;
    .locals 21
    .parameter "input"
    .parameter "filter"
    .parameter "recursive"
    .parameter "insideTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 833
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 834
    .local v16, outputArrayList:Ljava/util/ArrayList;
    const/4 v14, 0x0

    .line 835
    .local v14, minCapacity:I
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    .line 837
    .local v15, output:Ljava/lang/String;
    const/16 v19, 0x20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lorg/htmlparser/util/ParserUtils;->createDummyString(CI)Ljava/lang/String;

    move-result-object v5

    .line 840
    .local v5, dummyString:Ljava/lang/String;
    invoke-static/range {p0 .. p2}, Lorg/htmlparser/util/ParserUtils;->getLinks(Ljava/lang/String;Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v13

    .line 841
    .local v13, links:Lorg/htmlparser/util/NodeList;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_0
    invoke-virtual {v13}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    .line 843
    invoke-virtual {v13, v10}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/tags/CompositeTag;

    .line 844
    .local v2, beginTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v2}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v6

    .line 847
    .local v6, endTag:Lorg/htmlparser/Tag;
    invoke-virtual {v2}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v3

    .line 848
    .local v3, beginTagBegin:I
    invoke-virtual {v2}, Lorg/htmlparser/tags/CompositeTag;->getEndPosition()I

    move-result v7

    .line 849
    .local v7, endTagBegin:I
    invoke-interface {v6}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v4

    .line 850
    .local v4, beginTagEnd:I
    invoke-interface {v6}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v8

    .line 852
    .local v8, endTagEnd:I
    if-eqz p3, :cond_0

    .line 854
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v3, v8}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 841
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 858
    :cond_0
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v3, v7}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 859
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-static {v0, v4, v8}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 862
    .end local v2           #beginTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v3           #beginTagBegin:I
    .end local v4           #beginTagEnd:I
    .end local v6           #endTag:Lorg/htmlparser/Tag;
    .end local v7           #endTagBegin:I
    .end local v8           #endTagEnd:I
    :cond_1
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, k:I
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_5

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v11, v0, :cond_5

    .line 864
    const/16 v19, 0x2a

    move/from16 v0, v19

    invoke-virtual {v5, v0, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 865
    .local v12, kNew:I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_3

    .line 867
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 868
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v5, v0, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 870
    add-int/lit8 v14, v14, 0x1

    .line 871
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 872
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 873
    new-instance v15, Ljava/lang/String;

    .end local v15           #output:Ljava/lang/String;
    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    .restart local v15       #output:Ljava/lang/String;
    goto :goto_2

    .line 875
    :cond_2
    add-int/lit8 v14, v14, -0x1

    .line 876
    goto :goto_2

    .line 879
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 880
    move v11, v12

    .line 882
    add-int/lit8 v14, v14, 0x1

    .line 883
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 884
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 885
    new-instance v15, Ljava/lang/String;

    .end local v15           #output:Ljava/lang/String;
    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    .restart local v15       #output:Ljava/lang/String;
    goto :goto_2

    .line 887
    :cond_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_2

    .line 892
    .end local v12           #kNew:I
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->trimToSize()V

    .line 893
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v17

    .line 894
    .local v17, outputObj:[Ljava/lang/Object;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 895
    .local v18, outputStr:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 896
    new-instance v20, Ljava/lang/String;

    aget-object v19, v17, v9

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v20, v18, v9

    .line 895
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 897
    :cond_6
    return-object v18
.end method

.method public static splitTags(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "tags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 678
    invoke-static {p0, p1, v0, v0}, Lorg/htmlparser/util/ParserUtils;->splitTags(Ljava/lang/String;[Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitTags(Ljava/lang/String;[Ljava/lang/String;ZZ)[Ljava/lang/String;
    .locals 23
    .parameter "input"
    .parameter "tags"
    .parameter "recursive"
    .parameter "insideTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 702
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 703
    .local v17, outputArrayList:Ljava/util/ArrayList;
    const/4 v15, 0x0

    .line 704
    .local v15, minCapacity:I
    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .line 705
    .local v16, output:Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 706
    .local v10, inputModified:Ljava/lang/String;
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 708
    .local v19, outputStr:[Ljava/lang/String;
    const/16 v21, 0x20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lorg/htmlparser/util/ParserUtils;->createDummyString(CI)Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, dummyString:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_7

    .line 715
    aget-object v21, p1, v9

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v10, v0, v1}, Lorg/htmlparser/util/ParserUtils;->getLinks(Ljava/lang/String;Ljava/lang/String;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v14

    .line 716
    .local v14, links:Lorg/htmlparser/util/NodeList;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    invoke-virtual {v14}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_1

    .line 718
    invoke-virtual {v14, v11}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v2

    check-cast v2, Lorg/htmlparser/tags/CompositeTag;

    .line 719
    .local v2, beginTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v2}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v6

    .line 722
    .local v6, endTag:Lorg/htmlparser/Tag;
    invoke-virtual {v2}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v3

    .line 723
    .local v3, beginTagBegin:I
    invoke-virtual {v2}, Lorg/htmlparser/tags/CompositeTag;->getEndPosition()I

    move-result v7

    .line 724
    .local v7, endTagBegin:I
    invoke-interface {v6}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v4

    .line 725
    .local v4, beginTagEnd:I
    invoke-interface {v6}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v8

    .line 727
    .local v8, endTagEnd:I
    if-eqz p3, :cond_0

    .line 729
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-static {v0, v3, v8}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 716
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 733
    :cond_0
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-static {v0, v3, v7}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 734
    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-static {v0, v4, v8}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 737
    .end local v2           #beginTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v3           #beginTagBegin:I
    .end local v4           #beginTagEnd:I
    .end local v6           #endTag:Lorg/htmlparser/Tag;
    .end local v7           #endTagBegin:I
    .end local v8           #endTagEnd:I
    :cond_1
    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .local v12, k:I
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_5

    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_5

    .line 739
    const/16 v21, 0x2a

    move/from16 v0, v21

    invoke-virtual {v5, v0, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    .line 740
    .local v13, kNew:I
    const/16 v21, -0x1

    move/from16 v0, v21

    if-eq v13, v0, :cond_3

    .line 742
    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 743
    const/16 v21, 0x20

    move/from16 v0, v21

    invoke-virtual {v5, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 745
    add-int/lit8 v15, v15, 0x1

    .line 746
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 747
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 748
    new-instance v16, Ljava/lang/String;

    .end local v16           #output:Ljava/lang/String;
    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .restart local v16       #output:Ljava/lang/String;
    goto :goto_3

    .line 750
    :cond_2
    add-int/lit8 v15, v15, -0x1

    .line 751
    goto :goto_3

    .line 754
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v10, v12, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 755
    move v12, v13

    .line 757
    add-int/lit8 v15, v15, 0x1

    .line 758
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 759
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 760
    new-instance v16, Ljava/lang/String;

    .end local v16           #output:Ljava/lang/String;
    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    .restart local v16       #output:Ljava/lang/String;
    goto :goto_3

    .line 762
    :cond_4
    add-int/lit8 v15, v15, -0x1

    goto :goto_3

    .line 765
    .end local v13           #kNew:I
    :cond_5
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 766
    .local v20, outputStringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->trimToSize()V

    .line 767
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v18

    .line 768
    .local v18, outputObj:[Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 769
    const/4 v11, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_6

    .line 771
    new-instance v22, Ljava/lang/String;

    aget-object v21, v18, v11

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v19, v11

    .line 772
    aget-object v21, v19, v11

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 769
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 774
    :cond_6
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #outputArrayList:Ljava/util/ArrayList;
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 775
    .restart local v17       #outputArrayList:Ljava/util/ArrayList;
    new-instance v10, Ljava/lang/String;

    .end local v10           #inputModified:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 776
    .restart local v10       #inputModified:Ljava/lang/String;
    const/16 v21, 0x20

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v22

    invoke-static/range {v21 .. v22}, Lorg/htmlparser/util/ParserUtils;->createDummyString(CI)Ljava/lang/String;

    move-result-object v5

    .line 711
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 779
    .end local v11           #j:I
    .end local v12           #k:I
    .end local v14           #links:Lorg/htmlparser/util/NodeList;
    .end local v18           #outputObj:[Ljava/lang/Object;
    .end local v20           #outputStringBuffer:Ljava/lang/StringBuffer;
    :cond_7
    return-object v19
.end method

.method public static trimAllTags(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "input"
    .parameter "inside"

    .prologue
    const/4 v4, -0x1

    const/16 v6, 0x3e

    const/16 v5, 0x3c

    .line 914
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 916
    .local v1, output:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_3

    .line 917
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 918
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 936
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 920
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 921
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 924
    :cond_3
    const/4 v2, 0x1

    .line 925
    .local v2, write:Z
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 927
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    if-eqz v2, :cond_4

    .line 928
    const/4 v2, 0x0

    .line 929
    :cond_4
    if-eqz v2, :cond_5

    .line 930
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 931
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_6

    if-nez v2, :cond_6

    .line 932
    const/4 v2, 0x1

    .line 925
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static trimButChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"
    .parameter "charsDoNotBeRemoved"

    .prologue
    .line 459
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 461
    .local v3, output:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 462
    .local v0, charFound:Z
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 464
    const/4 v0, 0x0

    .line 465
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 466
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 467
    const/4 v0, 0x1

    .line 465
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    :cond_1
    if-eqz v0, :cond_2

    .line 469
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 462
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    .end local v1           #charsCount:I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static trimButCharsBeginEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"
    .parameter "charsDoNotBeRemoved"

    .prologue
    .line 491
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 493
    .local v6, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 494
    .local v0, begin:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 495
    .local v3, end:I
    const/4 v1, 0x0

    .line 496
    .local v1, charFound:Z
    const/4 v5, 0x1

    .line 497
    .local v5, ok:Z
    move v4, v0

    .local v4, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    if-eqz v5, :cond_3

    .line 499
    const/4 v1, 0x0

    .line 500
    const/4 v2, 0x0

    .local v2, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 501
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 502
    const/4 v1, 0x1

    .line 500
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 503
    :cond_1
    if-eqz v1, :cond_2

    .line 505
    move v0, v4

    .line 506
    const/4 v5, 0x0

    .line 497
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 509
    .end local v2           #charsCount:I
    :cond_3
    const/4 v5, 0x1

    .line 510
    move v4, v3

    :goto_2
    if-ltz v4, :cond_7

    if-eqz v5, :cond_7

    .line 512
    const/4 v1, 0x0

    .line 513
    const/4 v2, 0x0

    .restart local v2       #charsCount:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 514
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    .line 515
    const/4 v1, 0x1

    .line 513
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 516
    :cond_5
    if-eqz v1, :cond_6

    .line 518
    move v3, v4

    .line 519
    const/4 v5, 0x0

    .line 510
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 522
    .end local v2           #charsCount:I
    :cond_7
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 524
    return-object v6
.end method

.method public static trimButDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"
    .parameter "charsDoNotBeRemoved"

    .prologue
    .line 169
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v3, output:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 172
    .local v0, charFound:Z
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 174
    const/4 v0, 0x0

    .line 175
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 176
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    .line 179
    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 172
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v1           #charsCount:I
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static trimButDigitsBeginEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"
    .parameter "charsDoNotBeRemoved"

    .prologue
    .line 201
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 203
    .local v6, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 204
    .local v0, begin:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 205
    .local v3, end:I
    const/4 v1, 0x0

    .line 206
    .local v1, charFound:Z
    const/4 v5, 0x1

    .line 207
    .local v5, ok:Z
    move v4, v0

    .local v4, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_4

    if-eqz v5, :cond_4

    .line 209
    const/4 v1, 0x0

    .line 210
    const/4 v2, 0x0

    .local v2, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 211
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 212
    const/4 v1, 0x1

    .line 210
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v1, :cond_3

    .line 215
    :cond_2
    move v0, v4

    .line 216
    const/4 v5, 0x0

    .line 207
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 219
    .end local v2           #charsCount:I
    :cond_4
    const/4 v5, 0x1

    .line 220
    move v4, v3

    :goto_2
    if-ltz v4, :cond_9

    if-eqz v5, :cond_9

    .line 222
    const/4 v1, 0x0

    .line 223
    const/4 v2, 0x0

    .restart local v2       #charsCount:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 224
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_5

    .line 225
    const/4 v1, 0x1

    .line 223
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 226
    :cond_6
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v1, :cond_8

    .line 228
    :cond_7
    move v3, v4

    .line 229
    const/4 v5, 0x0

    .line 220
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 232
    .end local v2           #charsCount:I
    :cond_9
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 234
    return-object v6
.end method

.method public static trimChars(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"
    .parameter "charsToBeRemoved"

    .prologue
    .line 602
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 604
    .local v3, output:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 605
    .local v0, charFound:Z
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 607
    const/4 v0, 0x0

    .line 608
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 609
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 610
    const/4 v0, 0x1

    .line 608
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 611
    :cond_1
    if-nez v0, :cond_2

    .line 612
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 605
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    .end local v1           #charsCount:I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static trimCharsBeginEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"
    .parameter "charsToBeRemoved"

    .prologue
    .line 633
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 635
    .local v6, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 636
    .local v0, begin:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 637
    .local v3, end:I
    const/4 v1, 0x0

    .line 638
    .local v1, charFound:Z
    const/4 v5, 0x1

    .line 639
    .local v5, ok:Z
    move v4, v0

    .local v4, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    if-eqz v5, :cond_3

    .line 641
    const/4 v1, 0x0

    .line 642
    const/4 v2, 0x0

    .local v2, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 643
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 644
    const/4 v1, 0x1

    .line 642
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 645
    :cond_1
    if-nez v1, :cond_2

    .line 647
    move v0, v4

    .line 648
    const/4 v5, 0x0

    .line 639
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 651
    .end local v2           #charsCount:I
    :cond_3
    const/4 v5, 0x1

    .line 652
    move v4, v3

    :goto_2
    if-ltz v4, :cond_7

    if-eqz v5, :cond_7

    .line 654
    const/4 v1, 0x0

    .line 655
    const/4 v2, 0x0

    .restart local v2       #charsCount:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 656
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    .line 657
    const/4 v1, 0x1

    .line 655
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 658
    :cond_5
    if-nez v1, :cond_6

    .line 660
    move v3, v4

    .line 661
    const/4 v5, 0x0

    .line 652
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 664
    .end local v2           #charsCount:I
    :cond_7
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 666
    return-object v6
.end method

.method public static trimSpaces(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"
    .parameter "charsToBeRemoved"

    .prologue
    .line 314
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 316
    .local v3, output:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 317
    .local v0, charFound:Z
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 319
    const/4 v0, 0x0

    .line 320
    const/4 v1, 0x0

    .local v1, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 321
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 323
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v4

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    .line 324
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 317
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v1           #charsCount:I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static trimSpacesBeginEnd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "input"
    .parameter "charsToBeRemoved"

    .prologue
    .line 346
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 348
    .local v6, output:Ljava/lang/String;
    const/4 v0, 0x0

    .line 349
    .local v0, begin:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .line 350
    .local v3, end:I
    const/4 v1, 0x0

    .line 351
    .local v1, charFound:Z
    const/4 v5, 0x1

    .line 352
    .local v5, ok:Z
    move v4, v0

    .local v4, index:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    if-eqz v5, :cond_3

    .line 354
    const/4 v1, 0x0

    .line 355
    const/4 v2, 0x0

    .local v2, charsCount:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 356
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 357
    const/4 v1, 0x1

    .line 355
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 358
    :cond_1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v1, :cond_2

    .line 360
    move v0, v4

    .line 361
    const/4 v5, 0x0

    .line 352
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    .end local v2           #charsCount:I
    :cond_3
    const/4 v5, 0x1

    .line 365
    move v4, v3

    :goto_2
    if-ltz v4, :cond_7

    if-eqz v5, :cond_7

    .line 367
    const/4 v1, 0x0

    .line 368
    const/4 v2, 0x0

    .restart local v2       #charsCount:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_4

    .line 370
    const/4 v1, 0x1

    .line 368
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 371
    :cond_5
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v7

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    .line 373
    move v3, v4

    .line 374
    const/4 v5, 0x0

    .line 365
    :cond_6
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 377
    .end local v2           #charsCount:I
    :cond_7
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 379
    return-object v6
.end method

.method public static trimTags(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .parameter "input"
    .parameter "nodeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1040
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v0, p1}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, v1, v1}, Lorg/htmlparser/util/ParserUtils;->trimTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimTags(Ljava/lang/String;Ljava/lang/Class;ZZ)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "nodeType"
    .parameter "recursive"
    .parameter "insideTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    invoke-direct {v0, p1}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Lorg/htmlparser/util/ParserUtils;->trimTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1068
    invoke-static {p0, p1, v0, v0}, Lorg/htmlparser/util/ParserUtils;->trimTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimTags(Ljava/lang/String;Lorg/htmlparser/NodeFilter;ZZ)Ljava/lang/String;
    .locals 14
    .parameter "input"
    .parameter "filter"
    .parameter "recursive"
    .parameter "insideTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1083
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 1085
    .local v11, output:Ljava/lang/StringBuffer;
    const/16 v12, 0x20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v12, v13}, Lorg/htmlparser/util/ParserUtils;->createDummyString(CI)Ljava/lang/String;

    move-result-object v3

    .line 1088
    .local v3, dummyString:Ljava/lang/String;
    invoke-static/range {p0 .. p2}, Lorg/htmlparser/util/ParserUtils;->getLinks(Ljava/lang/String;Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v10

    .line 1089
    .local v10, links:Lorg/htmlparser/util/NodeList;
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    invoke-virtual {v10}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v12

    if-ge v7, v12, :cond_1

    .line 1091
    invoke-virtual {v10, v7}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/tags/CompositeTag;

    .line 1092
    .local v0, beginTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v0}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v4

    .line 1095
    .local v4, endTag:Lorg/htmlparser/Tag;
    invoke-virtual {v0}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v1

    .line 1096
    .local v1, beginTagBegin:I
    invoke-virtual {v0}, Lorg/htmlparser/tags/CompositeTag;->getEndPosition()I

    move-result v5

    .line 1097
    .local v5, endTagBegin:I
    invoke-interface {v4}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v2

    .line 1098
    .local v2, beginTagEnd:I
    invoke-interface {v4}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v6

    .line 1100
    .local v6, endTagEnd:I
    if-eqz p3, :cond_0

    .line 1102
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v1, v6}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 1089
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v1, v5}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 1107
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v2, v6}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1110
    .end local v0           #beginTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v1           #beginTagBegin:I
    .end local v2           #beginTagEnd:I
    .end local v4           #endTag:Lorg/htmlparser/Tag;
    .end local v5           #endTagBegin:I
    .end local v6           #endTagEnd:I
    :cond_1
    const/16 v12, 0x20

    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .local v8, k:I
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v8, v12, :cond_3

    const/4 v12, -0x1

    if-eq v8, v12, :cond_3

    .line 1112
    const/16 v12, 0x2a

    invoke-virtual {v3, v12, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 1113
    .local v9, kNew:I
    const/4 v12, -0x1

    if-eq v9, v12, :cond_2

    .line 1115
    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 1116
    const/16 v12, 0x20

    invoke-virtual {v3, v12, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 1117
    goto :goto_2

    .line 1120
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {p0, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    .line 1121
    move v8, v9

    goto :goto_2

    .line 1126
    .end local v9           #kNew:I
    :cond_3
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method

.method public static trimTags(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "input"
    .parameter "tags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 949
    invoke-static {p0, p1, v0, v0}, Lorg/htmlparser/util/ParserUtils;->trimTags(Ljava/lang/String;[Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimTags(Ljava/lang/String;[Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 17
    .parameter "input"
    .parameter "tags"
    .parameter "recursive"
    .parameter "insideTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 974
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 975
    .local v14, output:Ljava/lang/StringBuffer;
    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 976
    .local v9, inputModified:Ljava/lang/String;
    const/16 v15, 0x20

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lorg/htmlparser/util/ParserUtils;->createDummyString(CI)Ljava/lang/String;

    move-result-object v4

    .line 979
    .local v4, dummyString:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v8, v15, :cond_4

    .line 981
    new-instance v14, Ljava/lang/StringBuffer;

    .end local v14           #output:Ljava/lang/StringBuffer;
    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 984
    .restart local v14       #output:Ljava/lang/StringBuffer;
    aget-object v15, p1, v8

    move/from16 v0, p2

    invoke-static {v9, v15, v0}, Lorg/htmlparser/util/ParserUtils;->getLinks(Ljava/lang/String;Ljava/lang/String;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v13

    .line 985
    .local v13, links:Lorg/htmlparser/util/NodeList;
    const/4 v10, 0x0

    .local v10, j:I
    :goto_1
    invoke-virtual {v13}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v15

    if-ge v10, v15, :cond_1

    .line 987
    invoke-virtual {v13, v10}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/tags/CompositeTag;

    .line 988
    .local v1, beginTag:Lorg/htmlparser/tags/CompositeTag;
    invoke-virtual {v1}, Lorg/htmlparser/tags/CompositeTag;->getEndTag()Lorg/htmlparser/Tag;

    move-result-object v5

    .line 991
    .local v5, endTag:Lorg/htmlparser/Tag;
    invoke-virtual {v1}, Lorg/htmlparser/tags/CompositeTag;->getStartPosition()I

    move-result v2

    .line 992
    .local v2, beginTagBegin:I
    invoke-virtual {v1}, Lorg/htmlparser/tags/CompositeTag;->getEndPosition()I

    move-result v6

    .line 993
    .local v6, endTagBegin:I
    invoke-interface {v5}, Lorg/htmlparser/Tag;->getStartPosition()I

    move-result v3

    .line 994
    .local v3, beginTagEnd:I
    invoke-interface {v5}, Lorg/htmlparser/Tag;->getEndPosition()I

    move-result v7

    .line 997
    .local v7, endTagEnd:I
    if-eqz p3, :cond_0

    .line 999
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v2, v7}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 985
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1003
    :cond_0
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v2, v6}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    .line 1004
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v3, v7}, Lorg/htmlparser/util/ParserUtils;->modifyDummyString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 1007
    .end local v1           #beginTag:Lorg/htmlparser/tags/CompositeTag;
    .end local v2           #beginTagBegin:I
    .end local v3           #beginTagEnd:I
    .end local v5           #endTag:Lorg/htmlparser/Tag;
    .end local v6           #endTagBegin:I
    .end local v7           #endTagEnd:I
    :cond_1
    const/16 v15, 0x20

    invoke-virtual {v4, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    .local v11, k:I
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v11, v15, :cond_3

    const/4 v15, -0x1

    if-eq v11, v15, :cond_3

    .line 1009
    const/16 v15, 0x2a

    invoke-virtual {v4, v15, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 1010
    .local v12, kNew:I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_2

    .line 1012
    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 1013
    const/16 v15, 0x20

    invoke-virtual {v4, v15, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    .line 1014
    goto :goto_3

    .line 1017
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v9, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 1018
    move v11, v12

    goto :goto_3

    .line 1021
    .end local v12           #kNew:I
    :cond_3
    new-instance v9, Ljava/lang/String;

    .end local v9           #inputModified:Ljava/lang/String;
    invoke-direct {v9, v14}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    .line 1022
    .restart local v9       #inputModified:Ljava/lang/String;
    const/16 v15, 0x20

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v16

    invoke-static/range {v15 .. v16}, Lorg/htmlparser/util/ParserUtils;->createDummyString(CI)Ljava/lang/String;

    move-result-object v4

    .line 979
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1025
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v13           #links:Lorg/htmlparser/util/NodeList;
    :cond_4
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method
