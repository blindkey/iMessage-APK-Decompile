.class public Lorg/htmlparser/tags/BulletList;
.super Lorg/htmlparser/tags/CompositeTag;
.source "BulletList.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "UL"

    aput-object v1, v0, v2

    const-string v1, "OL"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/BulletList;->mIds:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "BODY"

    aput-object v1, v0, v2

    const-string v1, "HTML"

    aput-object v1, v0, v3

    sput-object v0, Lorg/htmlparser/tags/BulletList;->mEndTagEnders:[Ljava/lang/String;

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
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lorg/htmlparser/tags/BulletList;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/htmlparser/tags/BulletList;->mIds:[Ljava/lang/String;

    return-object v0
.end method
