.class public Lorg/htmlparser/tags/AppletTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "AppletTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "APPLET"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/AppletTag;->mIds:[Ljava/lang/String;

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/AppletTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 65
    return-void
.end method


# virtual methods
.method public createAppletParamsTable()Ljava/util/Hashtable;
    .locals 9

    .prologue
    .line 98
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 99
    .local v5, ret:Ljava/util/Hashtable;
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    .line 100
    .local v1, kids:Lorg/htmlparser/util/NodeList;
    if-eqz v1, :cond_1

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 103
    iget-object v7, p0, Lorg/htmlparser/tags/AppletTag;->children:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v7, v0}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v2

    .line 104
    .local v2, node:Lorg/htmlparser/Node;
    instance-of v7, v2, Lorg/htmlparser/Tag;

    if-eqz v7, :cond_0

    move-object v6, v2

    .line 106
    check-cast v6, Lorg/htmlparser/Tag;

    .line 107
    .local v6, tag:Lorg/htmlparser/Tag;
    invoke-interface {v6}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PARAM"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 109
    const-string v7, "NAME"

    invoke-interface {v6, v7}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, paramName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 112
    const-string v7, "VALUE"

    invoke-interface {v6, v7}, Lorg/htmlparser/Tag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, paramValue:Ljava/lang/String;
    invoke-virtual {v5, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v3           #paramName:Ljava/lang/String;
    .end local v4           #paramValue:Ljava/lang/String;
    .end local v6           #tag:Lorg/htmlparser/Tag;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    .end local v0           #i:I
    .end local v2           #node:Lorg/htmlparser/Node;
    :cond_1
    return-object v5
.end method

.method public getAppletClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "CODE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppletParams()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->createAppletParamsTable()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getArchive()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "ARCHIVE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCodeBase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "CODEBASE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/AppletTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/htmlparser/tags/AppletTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/htmlparser/tags/AppletTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 166
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getAppletParams()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getAppletParams()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public setAppletClass(Ljava/lang/String;)V
    .locals 1
    .parameter "newAppletClass"

    .prologue
    .line 184
    const-string v0, "CODE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/AppletTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public setAppletParams(Ljava/util/Hashtable;)V
    .locals 14
    .parameter "newAppletParams"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x22

    const/4 v11, 0x0

    .line 201
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v3

    .line 202
    .local v3, kids:Lorg/htmlparser/util/NodeList;
    if-nez v3, :cond_1

    .line 203
    new-instance v3, Lorg/htmlparser/util/NodeList;

    .end local v3           #kids:Lorg/htmlparser/util/NodeList;
    invoke-direct {v3}, Lorg/htmlparser/util/NodeList;-><init>()V

    .line 232
    .restart local v3       #kids:Lorg/htmlparser/util/NodeList;
    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, e:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 234
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 235
    .local v0, attributes:Ljava/util/Vector;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 236
    .local v5, paramName:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 237
    .local v6, paramValue:Ljava/lang/String;
    new-instance v9, Lorg/htmlparser/Attribute;

    const-string v10, "PARAM"

    invoke-direct {v9, v10, v13}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    new-instance v9, Lorg/htmlparser/Attribute;

    const-string v10, " "

    invoke-direct {v9, v10}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 239
    new-instance v9, Lorg/htmlparser/Attribute;

    const-string v10, "VALUE"

    invoke-direct {v9, v10, v6, v12}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 240
    new-instance v9, Lorg/htmlparser/Attribute;

    const-string v10, " "

    invoke-direct {v9, v10}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 241
    new-instance v9, Lorg/htmlparser/Attribute;

    const-string v10, "NAME"

    invoke-direct {v9, v10, v5, v12}, Lorg/htmlparser/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;C)V

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 242
    new-instance v8, Lorg/htmlparser/nodes/TagNode;

    invoke-direct {v8, v13, v11, v11, v0}, Lorg/htmlparser/nodes/TagNode;-><init>(Lorg/htmlparser/lexer/Page;IILjava/util/Vector;)V

    .line 243
    .local v8, tag:Lorg/htmlparser/Tag;
    invoke-virtual {v3, v8}, Lorg/htmlparser/util/NodeList;->add(Lorg/htmlparser/Node;)V

    goto :goto_0

    .line 206
    .end local v0           #attributes:Ljava/util/Vector;
    .end local v1           #e:Ljava/util/Enumeration;
    .end local v5           #paramName:Ljava/lang/String;
    .end local v6           #paramValue:Ljava/lang/String;
    .end local v8           #tag:Lorg/htmlparser/Tag;
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :cond_2
    :goto_1
    invoke-virtual {v3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 208
    invoke-virtual {v3, v2}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v4

    .line 209
    .local v4, node:Lorg/htmlparser/Node;
    instance-of v9, v4, Lorg/htmlparser/Tag;

    if-eqz v9, :cond_4

    .line 210
    check-cast v4, Lorg/htmlparser/Tag;

    .end local v4           #node:Lorg/htmlparser/Node;
    invoke-interface {v4}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PARAM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 212
    invoke-virtual {v3, v2}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    .line 214
    invoke-virtual {v3}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 216
    invoke-virtual {v3, v2}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v4

    .line 217
    .restart local v4       #node:Lorg/htmlparser/Node;
    instance-of v9, v4, Lorg/htmlparser/Text;

    if-eqz v9, :cond_2

    move-object v7, v4

    .line 219
    check-cast v7, Lorg/htmlparser/Text;

    .line 220
    .local v7, string:Lorg/htmlparser/Text;
    invoke-interface {v7}, Lorg/htmlparser/Text;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 221
    invoke-virtual {v3, v2}, Lorg/htmlparser/util/NodeList;->remove(I)Lorg/htmlparser/Node;

    goto :goto_1

    .line 226
    .end local v4           #node:Lorg/htmlparser/Node;
    .end local v7           #string:Lorg/htmlparser/Text;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 228
    .restart local v4       #node:Lorg/htmlparser/Node;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 229
    goto :goto_1

    .line 247
    .end local v2           #i:I
    .end local v4           #node:Lorg/htmlparser/Node;
    .restart local v1       #e:Ljava/util/Enumeration;
    :cond_5
    invoke-virtual {p0, v3}, Lorg/htmlparser/tags/AppletTag;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 248
    return-void
.end method

.method public setArchive(Ljava/lang/String;)V
    .locals 1
    .parameter "newArchive"

    .prologue
    .line 256
    const-string v0, "ARCHIVE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/AppletTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public setCodeBase(Ljava/lang/String;)V
    .locals 1
    .parameter "newCodeBase"

    .prologue
    .line 265
    const-string v0, "CODEBASE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/AppletTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 282
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x1f4

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 283
    .local v8, ret:Ljava/lang/StringBuffer;
    const-string v9, "Applet Tag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    const-string v9, "**********\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    const-string v9, "Class Name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getAppletClass()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 287
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    const-string v9, "Archive = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getArchive()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const-string v9, "Codebase = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getCodeBase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->getAppletParams()Ljava/util/Hashtable;

    move-result-object v6

    .line 295
    .local v6, parameters:Ljava/util/Hashtable;
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v7

    .line 296
    .local v7, params:Ljava/util/Enumeration;
    if-nez v7, :cond_3

    .line 297
    const-string v9, "No Params found.\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    :cond_0
    const/4 v2, 0x0

    .line 311
    .local v2, found:Z
    invoke-virtual {p0}, Lorg/htmlparser/tags/AppletTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v1

    .local v1, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 313
    invoke-interface {v1}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v3

    .line 314
    .local v3, node:Lorg/htmlparser/Node;
    instance-of v9, v3, Lorg/htmlparser/Tag;

    if-eqz v9, :cond_2

    move-object v9, v3

    .line 315
    check-cast v9, Lorg/htmlparser/Tag;

    invoke-interface {v9}, Lorg/htmlparser/Tag;->getTagName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PARAM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 317
    :cond_2
    if-nez v2, :cond_4

    .line 318
    const-string v9, "Miscellaneous items :\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    :goto_1
    const/4 v2, 0x1

    .line 322
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 299
    .end local v1           #e:Lorg/htmlparser/util/SimpleNodeIterator;
    .end local v2           #found:Z
    .end local v3           #node:Lorg/htmlparser/Node;
    :cond_3
    const/4 v0, 0x0

    .local v0, cnt:I
    :goto_2
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 301
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 302
    .local v4, paramName:Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 303
    .local v5, paramValue:Ljava/lang/String;
    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 304
    const-string v9, ": Parameter name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    const-string v9, ", Parameter value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 307
    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 308
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 320
    .end local v0           #cnt:I
    .end local v4           #paramName:Ljava/lang/String;
    .end local v5           #paramValue:Ljava/lang/String;
    .restart local v1       #e:Lorg/htmlparser/util/SimpleNodeIterator;
    .restart local v2       #found:Z
    .restart local v3       #node:Lorg/htmlparser/Node;
    :cond_4
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 324
    .end local v3           #node:Lorg/htmlparser/Node;
    :cond_5
    if-eqz v2, :cond_6

    .line 325
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :cond_6
    const-string v9, "End of Applet Tag\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    const-string v9, "*****************\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method
