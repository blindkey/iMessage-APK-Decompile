.class public Lorg/htmlparser/tags/StyleTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "StyleTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "STYLE"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/StyleTag;->mIds:[Ljava/lang/String;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/StyleTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 51
    new-instance v0, Lorg/htmlparser/scanners/StyleScanner;

    invoke-direct {v0}, Lorg/htmlparser/scanners/StyleScanner;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/StyleTag;->setThisScanner(Lorg/htmlparser/scanners/Scanner;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/htmlparser/tags/StyleTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lorg/htmlparser/tags/StyleTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getStyleCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/htmlparser/tags/StyleTag;->getChildrenHTML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 92
    .local v1, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/tags/StyleTag;->toHtml()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, guts:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v2, "Style node :\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
