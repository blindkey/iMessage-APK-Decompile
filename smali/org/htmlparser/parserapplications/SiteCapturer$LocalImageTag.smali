.class Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;
.super Lorg/htmlparser/tags/ImageTag;
.source "SiteCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlparser/parserapplications/SiteCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalImageTag"
.end annotation


# instance fields
.field private final this$0:Lorg/htmlparser/parserapplications/SiteCapturer;


# direct methods
.method constructor <init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V
    .locals 0
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-direct {p0}, Lorg/htmlparser/tags/ImageTag;-><init>()V

    return-void
.end method


# virtual methods
.method public doSemanticAction()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 684
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->getImageURL()Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, image:Ljava/lang/String;
    iget-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v1, v0}, Lorg/htmlparser/parserapplications/SiteCapturer;->isToBeCaptured(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 688
    iget-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v1, v1, Lorg/htmlparser/parserapplications/SiteCapturer;->mCopied:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    iget-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v1, v1, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 690
    iget-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v1, v1, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_0
    iget-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->getCaptureResources()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    iget-object v1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v2}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/htmlparser/parserapplications/SiteCapturer;->makeLocalLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_1
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalImageTag;->setImageURL(Ljava/lang/String;)V

    .line 696
    :cond_2
    return-void
.end method
