.class public Lorg/htmlparser/filters/LinkStringFilter;
.super Ljava/lang/Object;
.source "LinkStringFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# static fields
.field static class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;


# instance fields
.field protected mCaseSensitive:Z

.field protected mPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/filters/LinkStringFilter;-><init>(Ljava/lang/String;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "pattern"
    .parameter "caseSensitive"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/htmlparser/filters/LinkStringFilter;->mPattern:Ljava/lang/String;

    .line 70
    iput-boolean p2, p0, Lorg/htmlparser/filters/LinkStringFilter;->mCaseSensitive:Z

    .line 71
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
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
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 5
    .parameter "node"

    .prologue
    const/4 v4, -0x1

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, ret:Z
    sget-object v2, Lorg/htmlparser/filters/LinkStringFilter;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "org.htmlparser.tags.LinkTag"

    invoke-static {v2}, Lorg/htmlparser/filters/LinkStringFilter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/htmlparser/filters/LinkStringFilter;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    check-cast p1, Lorg/htmlparser/tags/LinkTag;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, link:Ljava/lang/String;
    iget-boolean v2, p0, Lorg/htmlparser/filters/LinkStringFilter;->mCaseSensitive:Z

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lorg/htmlparser/filters/LinkStringFilter;->mPattern:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_0

    .line 90
    const/4 v1, 0x1

    .line 99
    .end local v0           #link:Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 84
    .restart local p1
    :cond_1
    sget-object v2, Lorg/htmlparser/filters/LinkStringFilter;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    goto :goto_0

    .line 94
    .end local p1
    .restart local v0       #link:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlparser/filters/LinkStringFilter;->mPattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_0

    .line 95
    const/4 v1, 0x1

    goto :goto_1
.end method
