.class public Lorg/htmlparser/tags/SelectTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "SelectTag.java"


# static fields
.field static class$org$htmlparser$tags$OptionTag:Ljava/lang/Class;

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

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "SELECT"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/SelectTag;->mIds:[Ljava/lang/String;

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "INPUT"

    aput-object v1, v0, v2

    const-string v1, "TEXTAREA"

    aput-object v1, v0, v3

    const-string v1, "SELECT"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/SelectTag;->mEnders:[Ljava/lang/String;

    .line 49
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "FORM"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const-string v1, "HTML"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/SelectTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 56
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 94
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
    .line 82
    sget-object v0, Lorg/htmlparser/tags/SelectTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lorg/htmlparser/tags/SelectTag;->mEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/htmlparser/tags/SelectTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getOptionTags()[Lorg/htmlparser/tags/OptionTag;
    .locals 4

    .prologue
    .line 94
    sget-object v2, Lorg/htmlparser/tags/SelectTag;->class$org$htmlparser$tags$OptionTag:Ljava/lang/Class;

    if-nez v2, :cond_0

    const-string v2, "org.htmlparser.tags.OptionTag"

    invoke-static {v2}, Lorg/htmlparser/tags/SelectTag;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/htmlparser/tags/SelectTag;->class$org$htmlparser$tags$OptionTag:Ljava/lang/Class;

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lorg/htmlparser/tags/SelectTag;->searchFor(Ljava/lang/Class;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 95
    .local v0, list:Lorg/htmlparser/util/NodeList;
    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v2

    new-array v1, v2, [Lorg/htmlparser/tags/OptionTag;

    .line 96
    .local v1, ret:[Lorg/htmlparser/tags/OptionTag;
    invoke-virtual {v0, v1}, Lorg/htmlparser/util/NodeList;->copyToNodeArray([Lorg/htmlparser/Node;)V

    .line 98
    return-object v1

    .line 94
    .end local v0           #list:Lorg/htmlparser/util/NodeList;
    .end local v1           #ret:[Lorg/htmlparser/tags/OptionTag;
    :cond_0
    sget-object v2, Lorg/htmlparser/tags/SelectTag;->class$org$htmlparser$tags$OptionTag:Ljava/lang/Class;

    goto :goto_0
.end method
