.class public Lorg/htmlparser/tags/FrameTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "FrameTag.java"


# static fields
.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "FRAME"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/FrameTag;->mIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public getFrameLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    const-string v1, "SRC"

    invoke-virtual {p0, v1}, Lorg/htmlparser/tags/FrameTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 69
    const-string v0, ""

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/htmlparser/lexer/Page;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const-string v0, "NAME"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/FrameTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/htmlparser/tags/FrameTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public setFrameLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 82
    const-string v0, "SRC"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/FrameTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FRAME TAG : Frame "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameTag;->getFrameName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameTag;->getFrameLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; begins at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameTag;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "; ends at : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/FrameTag;->getEndPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
