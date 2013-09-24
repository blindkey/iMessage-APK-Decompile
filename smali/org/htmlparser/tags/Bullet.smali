.class public Lorg/htmlparser/tags/Bullet;
.super Lorg/htmlparser/tags/CompositeTag;
.source "Bullet.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "LI"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/Bullet;->mIds:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "UL"

    aput-object v1, v0, v2

    const-string v1, "OL"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "BODY"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "HTML"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/Bullet;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/htmlparser/tags/Bullet;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/htmlparser/tags/Bullet;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/htmlparser/tags/Bullet;->mIds:[Ljava/lang/String;

    return-object v0
.end method
