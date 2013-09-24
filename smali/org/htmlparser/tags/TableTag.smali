.class public Lorg/htmlparser/tags/TableTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "TableTag.java"


# static fields
.field static class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

.field static class$org$htmlparser$tags$TableTag:Ljava/lang/Class;

.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TABLE"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/TableTag;->mIds:[Ljava/lang/String;

    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/TableTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 58
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 93
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
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/htmlparser/tags/TableTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/htmlparser/tags/TableTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getRow(I)Lorg/htmlparser/tags/TableRow;
    .locals 3
    .parameter "index"

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableTag;->getRows()[Lorg/htmlparser/tags/TableRow;

    move-result-object v1

    .line 139
    .local v1, rows:[Lorg/htmlparser/tags/TableRow;
    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 140
    aget-object v0, v1, p1

    .line 144
    .local v0, ret:Lorg/htmlparser/tags/TableRow;
    :goto_0
    return-object v0

    .line 142
    .end local v0           #ret:Lorg/htmlparser/tags/TableRow;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #ret:Lorg/htmlparser/tags/TableRow;
    goto :goto_0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableTag;->getRows()[Lorg/htmlparser/tags/TableRow;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getRows()[Lorg/htmlparser/tags/TableRow;
    .locals 8

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableTag;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 91
    .local v2, kids:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_2

    .line 93
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v5, Lorg/htmlparser/tags/TableTag;->class$org$htmlparser$tags$TableTag:Ljava/lang/Class;

    if-nez v5, :cond_0

    const-string v5, "org.htmlparser.tags.TableTag"

    invoke-static {v5}, Lorg/htmlparser/tags/TableTag;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/htmlparser/tags/TableTag;->class$org$htmlparser$tags$TableTag:Ljava/lang/Class;

    :goto_0
    invoke-direct {v0, v5}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 94
    .local v0, cls:Lorg/htmlparser/filters/NodeClassFilter;
    new-instance v3, Lorg/htmlparser/filters/HasParentFilter;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/htmlparser/filters/HasParentFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .line 95
    .local v3, recursion:Lorg/htmlparser/filters/HasParentFilter;
    new-instance v1, Lorg/htmlparser/filters/OrFilter;

    new-instance v5, Lorg/htmlparser/filters/AndFilter;

    new-instance v6, Lorg/htmlparser/filters/IsEqualFilter;

    invoke-direct {v6, p0}, Lorg/htmlparser/filters/IsEqualFilter;-><init>(Lorg/htmlparser/Node;)V

    invoke-direct {v5, v0, v6}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    new-instance v6, Lorg/htmlparser/filters/AndFilter;

    new-instance v7, Lorg/htmlparser/filters/NotFilter;

    invoke-direct {v7, v0}, Lorg/htmlparser/filters/NotFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    invoke-direct {v6, v7, v3}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    invoke-direct {v1, v5, v6}, Lorg/htmlparser/filters/OrFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .line 102
    .local v1, filter:Lorg/htmlparser/NodeFilter;
    invoke-virtual {v3, v1}, Lorg/htmlparser/filters/HasParentFilter;->setParentFilter(Lorg/htmlparser/NodeFilter;)V

    .line 103
    new-instance v6, Lorg/htmlparser/filters/AndFilter;

    new-instance v7, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v5, Lorg/htmlparser/tags/TableTag;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "org.htmlparser.tags.TableRow"

    invoke-static {v5}, Lorg/htmlparser/tags/TableTag;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/htmlparser/tags/TableTag;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    :goto_1
    invoke-direct {v7, v5}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v6, v7, v1}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v6, v5}, Lorg/htmlparser/util/NodeList;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v5

    new-array v4, v5, [Lorg/htmlparser/tags/TableRow;

    .line 109
    .local v4, ret:[Lorg/htmlparser/tags/TableRow;
    invoke-virtual {v2, v4}, Lorg/htmlparser/util/NodeList;->copyToNodeArray([Lorg/htmlparser/Node;)V

    .line 114
    .end local v0           #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .end local v1           #filter:Lorg/htmlparser/NodeFilter;
    .end local v3           #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :goto_2
    return-object v4

    .line 93
    .end local v4           #ret:[Lorg/htmlparser/tags/TableRow;
    :cond_0
    sget-object v5, Lorg/htmlparser/tags/TableTag;->class$org$htmlparser$tags$TableTag:Ljava/lang/Class;

    goto :goto_0

    .line 103
    .restart local v0       #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .restart local v1       #filter:Lorg/htmlparser/NodeFilter;
    .restart local v3       #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :cond_1
    sget-object v5, Lorg/htmlparser/tags/TableTag;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    goto :goto_1

    .line 112
    .end local v0           #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .end local v1           #filter:Lorg/htmlparser/NodeFilter;
    .end local v3           #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :cond_2
    const/4 v5, 0x0

    new-array v4, v5, [Lorg/htmlparser/tags/TableRow;

    .restart local v4       #ret:[Lorg/htmlparser/tags/TableRow;
    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TableTag\n********\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/TableTag;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
