.class public Lorg/htmlparser/tags/Html;
.super Lorg/htmlparser/tags/CompositeTag;
.source "Html.java"


# static fields
.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "HTML"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/Html;->mIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/htmlparser/tags/Html;->mIds:[Ljava/lang/String;

    return-object v0
.end method
