.class public Lorg/htmlparser/filters/LinkRegexFilter;
.super Ljava/lang/Object;
.source "LinkRegexFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# static fields
.field static class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;


# instance fields
.field protected mRegex:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "regexPattern"

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/filters/LinkRegexFilter;-><init>(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "regexPattern"
    .parameter "caseSensitive"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/LinkRegexFilter;->mRegex:Ljava/util/regex/Pattern;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x42

    invoke-static {p1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/LinkRegexFilter;->mRegex:Ljava/util/regex/Pattern;

    goto :goto_0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 85
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
    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, ret:Z
    sget-object v3, Lorg/htmlparser/filters/LinkRegexFilter;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string v3, "org.htmlparser.tags.LinkTag"

    invoke-static {v3}, Lorg/htmlparser/filters/LinkRegexFilter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lorg/htmlparser/filters/LinkRegexFilter;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    check-cast p1, Lorg/htmlparser/tags/LinkTag;

    .end local p1
    invoke-virtual {p1}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, link:Ljava/lang/String;
    iget-object v3, p0, Lorg/htmlparser/filters/LinkRegexFilter;->mRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 89
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    .line 92
    .end local v0           #link:Ljava/lang/String;
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    :cond_0
    return v2

    .line 85
    .restart local p1
    :cond_1
    sget-object v3, Lorg/htmlparser/filters/LinkRegexFilter;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    goto :goto_0
.end method
