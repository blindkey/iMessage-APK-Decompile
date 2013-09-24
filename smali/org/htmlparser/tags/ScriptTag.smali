.class public Lorg/htmlparser/tags/ScriptTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "ScriptTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# instance fields
.field protected mCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SCRIPT"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/ScriptTag;->mIds:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/ScriptTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 58
    new-instance v0, Lorg/htmlparser/scanners/ScriptScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/ScriptScanner;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ScriptTag;->setThisScanner(Lorg/htmlparser/scanners/Scanner;)V

    .line 59
    return-void
.end method


# virtual methods
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/htmlparser/tags/ScriptTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/htmlparser/tags/ScriptTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "LANGUAGE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ScriptTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScriptCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lorg/htmlparser/tags/ScriptTag;->mCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 99
    iget-object v0, p0, Lorg/htmlparser/tags/ScriptTag;->mCode:Ljava/lang/String;

    .line 103
    .local v0, ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 101
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getChildrenHTML()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "TYPE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/ScriptTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected putChildrenInto(Ljava/lang/StringBuffer;Z)V
    .locals 4
    .parameter "sb"
    .parameter "verbatim"

    .prologue
    .line 152
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getScriptCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getScriptCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :cond_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->children()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v1

    .line 159
    .local v1, node:Lorg/htmlparser/Node;
    if-eqz p2, :cond_3

    invoke-interface {v1}, Lorg/htmlparser/Node;->getStartPosition()I

    move-result v2

    invoke-interface {v1}, Lorg/htmlparser/Node;->getEndPosition()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 160
    :cond_3
    invoke-interface {v1, p2}, Lorg/htmlparser/Node;->toHtml(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 130
    const-string v0, "LANGUAGE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ScriptTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public setScriptCode(Ljava/lang/String;)V
    .locals 0
    .parameter "code"

    .prologue
    .line 112
    iput-object p1, p0, Lorg/htmlparser/tags/ScriptTag;->mCode:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 139
    const-string v0, "TYPE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/ScriptTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "Script Node : \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 172
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 174
    :cond_0
    const-string v1, "Properties -->\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[Language : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "[Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    :cond_2
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 181
    const-string v1, "Code\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    const-string v1, "****\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/htmlparser/tags/ScriptTag;->getScriptCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
