.class public Lorg/htmlparser/tags/HeadingTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "HeadingTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "H1"

    aput-object v1, v0, v3

    const-string v1, "H2"

    aput-object v1, v0, v4

    const-string v1, "H3"

    aput-object v1, v0, v5

    const-string v1, "H4"

    aput-object v1, v0, v6

    const-string v1, "H5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "H6"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/HeadingTag;->mIds:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "H1"

    aput-object v1, v0, v3

    const-string v1, "H2"

    aput-object v1, v0, v4

    const-string v1, "H3"

    aput-object v1, v0, v5

    const-string v1, "H4"

    aput-object v1, v0, v6

    const-string v1, "H5"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "H6"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "PARAM"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/HeadingTag;->mEnders:[Ljava/lang/String;

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const-string v1, "HTML"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/HeadingTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/htmlparser/tags/HeadingTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/htmlparser/tags/HeadingTag;->mEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/htmlparser/tags/HeadingTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method
