.class public Lorg/htmlparser/tags/FormTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "FormTag.java"


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"

.field static class$org$htmlparser$tags$InputTag:Ljava/lang/Class;

.field static class$org$htmlparser$tags$TextareaTag:Ljava/lang/Class;

.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# instance fields
.field protected mFormLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "FORM"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/FormTag;->mIds:[Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HTML"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "TABLE"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/FormTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    .line 71
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public extractFormLocn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 231
    const-string v1, "ACTION"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/FormTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 233
    const-string v0, ""

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Page;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lorg/htmlparser/tags/FormTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lorg/htmlparser/tags/FormTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getFormInputs()Lorg/htmlparser/util/NodeList;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lorg/htmlparser/tags/FormTag;->class$org$htmlparser$tags$InputTag:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.htmlparser.tags.InputTag"

    invoke-static {v0}, Lorg/htmlparser/tags/FormTag;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/tags/FormTag;->class$org$htmlparser$tags$InputTag:Ljava/lang/Class;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/tags/FormTag;->searchFor(Ljava/lang/Class;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/htmlparser/tags/FormTag;->class$org$htmlparser$tags$InputTag:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getFormLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->extractFormLocn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getFormMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    const-string v1, "METHOD"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/FormTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 152
    const-string v0, "GET"

    .line 154
    :cond_0
    return-object v0
.end method

.method public getFormName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "NAME"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/FormTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormTextareas()Lorg/htmlparser/util/NodeList;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lorg/htmlparser/tags/FormTag;->class$org$htmlparser$tags$TextareaTag:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.htmlparser.tags.TextareaTag"

    invoke-static {v0}, Lorg/htmlparser/tags/FormTag;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/tags/FormTag;->class$org$htmlparser$tags$TextareaTag:Ljava/lang/Class;

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/tags/FormTag;->searchFor(Ljava/lang/Class;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/htmlparser/tags/FormTag;->class$org$htmlparser$tags$TextareaTag:Ljava/lang/Class;

    goto :goto_0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lorg/htmlparser/tags/FormTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputTag(Ljava/lang/String;)Lorg/htmlparser/tags/InputTag;
    .locals 5
    .parameter "name"

    .prologue
    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, inputTag:Lorg/htmlparser/tags/InputTag;
    const/4 v1, 0x0

    .line 170
    .local v1, found:Z
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getFormInputs()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 172
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v2

    .end local v2           #inputTag:Lorg/htmlparser/tags/InputTag;
    check-cast v2, Lorg/htmlparser/tags/InputTag;

    .line 173
    .restart local v2       #inputTag:Lorg/htmlparser/tags/InputTag;
    const-string v4, "NAME"

    invoke-virtual {v2, v4}, Lorg/htmlparser/tags/InputTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, inputTagName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    const/4 v1, 0x1

    goto :goto_0

    .line 177
    .end local v3           #inputTagName:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 180
    .end local v2           #inputTag:Lorg/htmlparser/tags/InputTag;
    :goto_1
    return-object v2

    .restart local v2       #inputTag:Lorg/htmlparser/tags/InputTag;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getTextAreaTag(Ljava/lang/String;)Lorg/htmlparser/tags/TextareaTag;
    .locals 5
    .parameter "name"

    .prologue
    .line 199
    const/4 v3, 0x0

    .line 200
    .local v3, textareaTag:Lorg/htmlparser/tags/TextareaTag;
    const/4 v1, 0x0

    .line 201
    .local v1, found:Z
    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getFormTextareas()Lorg/htmlparser/util/NodeList;

    move-result-object v4

    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->elements()Lorg/htmlparser/util/SimpleNodeIterator;

    move-result-object v0

    .local v0, e:Lorg/htmlparser/util/SimpleNodeIterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->hasMoreNodes()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 203
    invoke-interface {v0}, Lorg/htmlparser/util/SimpleNodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v3

    .end local v3           #textareaTag:Lorg/htmlparser/tags/TextareaTag;
    check-cast v3, Lorg/htmlparser/tags/TextareaTag;

    .line 204
    .restart local v3       #textareaTag:Lorg/htmlparser/tags/TextareaTag;
    const-string v4, "NAME"

    invoke-virtual {v3, v4}, Lorg/htmlparser/tags/TextareaTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, textAreaName:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    .end local v2           #textAreaName:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 211
    .end local v3           #textareaTag:Lorg/htmlparser/tags/TextareaTag;
    :goto_1
    return-object v3

    .restart local v3       #textareaTag:Lorg/htmlparser/tags/TextareaTag;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setFormLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 138
    iput-object p1, p0, Lorg/htmlparser/tags/FormTag;->mFormLocation:Ljava/lang/String;

    .line 139
    const-string v0, "ACTION"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/FormTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FORM TAG : Form at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getFormLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FormTag;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
