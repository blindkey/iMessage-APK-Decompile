.class Lorg/htmlparser/parserapplications/SiteCapturer$LocalBaseHrefTag;
.super Lorg/htmlparser/tags/BaseHrefTag;
.source "SiteCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlparser/parserapplications/SiteCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalBaseHrefTag"
.end annotation


# instance fields
.field private final this$0:Lorg/htmlparser/parserapplications/SiteCapturer;


# direct methods
.method constructor <init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalBaseHrefTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-direct {p0}, Lorg/htmlparser/tags/BaseHrefTag;-><init>()V

    return-void
.end method


# virtual methods
.method public toHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    const-string v0, ""

    return-object v0
.end method
