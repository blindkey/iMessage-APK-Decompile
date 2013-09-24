.class public Lorg/htmlparser/tags/TableRow;
.super Lorg/htmlparser/tags/CompositeTag;
.source "TableRow.java"


# static fields
.field static class$org$htmlparser$tags$TableColumn:Ljava/lang/Class;

.field static class$org$htmlparser$tags$TableHeader:Ljava/lang/Class;

.field static class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TR"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/TableRow;->mIds:[Ljava/lang/String;

    .line 51
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "TBODY"

    aput-object v1, v0, v2

    const-string v1, "TFOOT"

    aput-object v1, v0, v3

    const-string v1, "THEAD"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/TableRow;->mEnders:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TBODY"

    aput-object v1, v0, v2

    const-string v1, "TFOOT"

    aput-object v1, v0, v3

    const-string v1, "THEAD"

    aput-object v1, v0, v4

    const-string v1, "TABLE"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/tags/TableRow;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 63
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 107
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
.method public getColumnCount()I
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableRow;->getColumns()[Lorg/htmlparser/tags/TableColumn;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumns()[Lorg/htmlparser/tags/TableColumn;
    .locals 8

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableRow;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 105
    .local v2, kids:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_2

    .line 107
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    if-nez v5, :cond_0

    const-string v5, "org.htmlparser.tags.TableRow"

    invoke-static {v5}, Lorg/htmlparser/tags/TableRow;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    :goto_0
    invoke-direct {v0, v5}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 108
    .local v0, cls:Lorg/htmlparser/filters/NodeClassFilter;
    new-instance v3, Lorg/htmlparser/filters/HasParentFilter;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/htmlparser/filters/HasParentFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .line 109
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

    .line 116
    .local v1, filter:Lorg/htmlparser/NodeFilter;
    invoke-virtual {v3, v1}, Lorg/htmlparser/filters/HasParentFilter;->setParentFilter(Lorg/htmlparser/NodeFilter;)V

    .line 117
    new-instance v6, Lorg/htmlparser/filters/AndFilter;

    new-instance v7, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableColumn:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "org.htmlparser.tags.TableColumn"

    invoke-static {v5}, Lorg/htmlparser/tags/TableRow;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableColumn:Ljava/lang/Class;

    :goto_1
    invoke-direct {v7, v5}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v6, v7, v1}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v6, v5}, Lorg/htmlparser/util/NodeList;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v5

    new-array v4, v5, [Lorg/htmlparser/tags/TableColumn;

    .line 123
    .local v4, ret:[Lorg/htmlparser/tags/TableColumn;
    invoke-virtual {v2, v4}, Lorg/htmlparser/util/NodeList;->copyToNodeArray([Lorg/htmlparser/Node;)V

    .line 128
    .end local v0           #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .end local v1           #filter:Lorg/htmlparser/NodeFilter;
    .end local v3           #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :goto_2
    return-object v4

    .line 107
    .end local v4           #ret:[Lorg/htmlparser/tags/TableColumn;
    :cond_0
    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    goto :goto_0

    .line 117
    .restart local v0       #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .restart local v1       #filter:Lorg/htmlparser/NodeFilter;
    .restart local v3       #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :cond_1
    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableColumn:Ljava/lang/Class;

    goto :goto_1

    .line 126
    .end local v0           #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .end local v1           #filter:Lorg/htmlparser/NodeFilter;
    .end local v3           #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :cond_2
    const/4 v5, 0x0

    new-array v4, v5, [Lorg/htmlparser/tags/TableColumn;

    .restart local v4       #ret:[Lorg/htmlparser/tags/TableColumn;
    goto :goto_2
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/htmlparser/tags/TableRow;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/htmlparser/tags/TableRow;->mEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableRow;->getHeaders()[Lorg/htmlparser/tags/TableHeader;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getHeaders()[Lorg/htmlparser/tags/TableHeader;
    .locals 8

    .prologue
    .line 154
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableRow;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 155
    .local v2, kids:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_2

    .line 157
    new-instance v0, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    if-nez v5, :cond_0

    const-string v5, "org.htmlparser.tags.TableRow"

    invoke-static {v5}, Lorg/htmlparser/tags/TableRow;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    :goto_0
    invoke-direct {v0, v5}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 158
    .local v0, cls:Lorg/htmlparser/filters/NodeClassFilter;
    new-instance v3, Lorg/htmlparser/filters/HasParentFilter;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lorg/htmlparser/filters/HasParentFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .line 159
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

    .line 166
    .local v1, filter:Lorg/htmlparser/NodeFilter;
    invoke-virtual {v3, v1}, Lorg/htmlparser/filters/HasParentFilter;->setParentFilter(Lorg/htmlparser/NodeFilter;)V

    .line 167
    new-instance v6, Lorg/htmlparser/filters/AndFilter;

    new-instance v7, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableHeader:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "org.htmlparser.tags.TableHeader"

    invoke-static {v5}, Lorg/htmlparser/tags/TableRow;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableHeader:Ljava/lang/Class;

    :goto_1
    invoke-direct {v7, v5}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    invoke-direct {v6, v7, v1}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    const/4 v5, 0x1

    invoke-virtual {v2, v6, v5}, Lorg/htmlparser/util/NodeList;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v5

    new-array v4, v5, [Lorg/htmlparser/tags/TableHeader;

    .line 173
    .local v4, ret:[Lorg/htmlparser/tags/TableHeader;
    invoke-virtual {v2, v4}, Lorg/htmlparser/util/NodeList;->copyToNodeArray([Lorg/htmlparser/Node;)V

    .line 178
    .end local v0           #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .end local v1           #filter:Lorg/htmlparser/NodeFilter;
    .end local v3           #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :goto_2
    return-object v4

    .line 157
    .end local v4           #ret:[Lorg/htmlparser/tags/TableHeader;
    :cond_0
    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableRow:Ljava/lang/Class;

    goto :goto_0

    .line 167
    .restart local v0       #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .restart local v1       #filter:Lorg/htmlparser/NodeFilter;
    .restart local v3       #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :cond_1
    sget-object v5, Lorg/htmlparser/tags/TableRow;->class$org$htmlparser$tags$TableHeader:Ljava/lang/Class;

    goto :goto_1

    .line 176
    .end local v0           #cls:Lorg/htmlparser/filters/NodeClassFilter;
    .end local v1           #filter:Lorg/htmlparser/NodeFilter;
    .end local v3           #recursion:Lorg/htmlparser/filters/HasParentFilter;
    :cond_2
    const/4 v5, 0x0

    new-array v4, v5, [Lorg/htmlparser/tags/TableHeader;

    .restart local v4       #ret:[Lorg/htmlparser/tags/TableHeader;
    goto :goto_2
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/htmlparser/tags/TableRow;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/htmlparser/tags/TableRow;->getHeaderCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
