.class Lorg/htmlparser/filters/CssSelectorNodeFilter$YesFilter;
.super Ljava/lang/Object;
.source "CssSelectorNodeFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlparser/filters/CssSelectorNodeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YesFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/htmlparser/filters/CssSelectorNodeFilter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 366
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter$YesFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "n"

    .prologue
    .line 369
    const/4 v0, 0x1

    return v0
.end method
