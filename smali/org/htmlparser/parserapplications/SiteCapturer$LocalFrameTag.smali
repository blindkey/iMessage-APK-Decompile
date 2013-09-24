.class Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;
.super Lorg/htmlparser/tags/FrameTag;
.source "SiteCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlparser/parserapplications/SiteCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalFrameTag"
.end annotation


# instance fields
.field private final this$0:Lorg/htmlparser/parserapplications/SiteCapturer;


# direct methods
.method constructor <init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-direct {p0}, Lorg/htmlparser/tags/FrameTag;-><init>()V

    return-void
.end method


# virtual methods
.method public doSemanticAction()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->getFrameLocation()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, link:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v2, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->isToBeCaptured(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 645
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mFinished:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 646
    const/4 v0, 0x1

    .line 662
    .local v0, html:Z
    :goto_0
    if-nez v0, :cond_0

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/SiteCapturer;->getCaptureResources()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v3, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v3, v3, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v3}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/htmlparser/parserapplications/SiteCapturer;->makeLocalLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    :cond_1
    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->setFrameLocation(Ljava/lang/String;)V

    .line 666
    .end local v0           #html:Z
    :cond_2
    return-void

    .line 647
    :cond_3
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 648
    const/4 v0, 0x1

    .restart local v0       #html:Z
    goto :goto_0

    .line 649
    .end local v0           #html:Z
    :cond_4
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mCopied:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 650
    const/4 v0, 0x0

    .restart local v0       #html:Z
    goto :goto_0

    .line 651
    .end local v0           #html:Z
    :cond_5
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 652
    const/4 v0, 0x0

    .restart local v0       #html:Z
    goto :goto_0

    .line 655
    .end local v0           #html:Z
    :cond_6
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v2, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->isHtml(Ljava/lang/String;)Z

    move-result v0

    .line 656
    .restart local v0       #html:Z
    if-eqz v0, :cond_7

    .line 657
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 659
    :cond_7
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalFrameTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
