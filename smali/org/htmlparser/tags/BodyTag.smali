.class public Lorg/htmlparser/tags/BodyTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "BodyTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/BodyTag;->mIds:[Ljava/lang/String;

    .line 43
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "HTML"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/BodyTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lorg/htmlparser/tags/BodyTag;->toPlainTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lorg/htmlparser/tags/BodyTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/htmlparser/tags/BodyTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/htmlparser/tags/BodyTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method
