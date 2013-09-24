.class public Lorg/htmlparser/tags/TextareaTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "TextareaTag.java"


# static fields
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

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "TEXTAREA"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/TextareaTag;->mIds:[Ljava/lang/String;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "INPUT"

    aput-object v1, v0, v2

    const-string v1, "TEXTAREA"

    aput-object v1, v0, v3

    const-string v1, "SELECT"

    aput-object v1, v0, v4

    const-string v1, "OPTION"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/tags/TextareaTag;->mEnders:[Ljava/lang/String;

    .line 47
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "FORM"

    aput-object v1, v0, v2

    const-string v1, "BODY"

    aput-object v1, v0, v3

    const-string v1, "HTML"

    aput-object v1, v0, v4

    sput-object v0, Lorg/htmlparser/tags/TextareaTag;->mEndTagEnders:[Ljava/lang/String;

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
    sget-object v0, Lorg/htmlparser/tags/TextareaTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/htmlparser/tags/TextareaTag;->mEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/htmlparser/tags/TextareaTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/htmlparser/tags/TextareaTag;->toPlainTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
