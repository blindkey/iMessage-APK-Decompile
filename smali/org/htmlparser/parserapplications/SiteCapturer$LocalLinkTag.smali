.class Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;
.super Lorg/htmlparser/tags/LinkTag;
.source "SiteCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlparser/parserapplications/SiteCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalLinkTag"
.end annotation


# instance fields
.field private final this$0:Lorg/htmlparser/parserapplications/SiteCapturer;


# direct methods
.method constructor <init>(Lorg/htmlparser/parserapplications/SiteCapturer;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-direct {p0}, Lorg/htmlparser/tags/LinkTag;-><init>()V

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
    .line 597
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, link:Ljava/lang/String;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v2, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->isToBeCaptured(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mFinished:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 603
    const/4 v0, 0x1

    .line 619
    .local v0, html:Z
    :goto_0
    if-nez v0, :cond_0

    if-nez v0, :cond_1

    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/SiteCapturer;->getCaptureResources()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v3, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v3, v3, Lorg/htmlparser/parserapplications/SiteCapturer;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v3}, Lorg/htmlparser/Parser;->getLexer()Lorg/htmlparser/lexer/Lexer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Lexer;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v3

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/htmlparser/parserapplications/SiteCapturer;->makeLocalLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 621
    :cond_1
    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->setLink(Ljava/lang/String;)V

    .line 623
    .end local v0           #html:Z
    :cond_2
    return-void

    .line 604
    :cond_3
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 605
    const/4 v0, 0x1

    .restart local v0       #html:Z
    goto :goto_0

    .line 606
    .end local v0           #html:Z
    :cond_4
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mCopied:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 607
    const/4 v0, 0x0

    .restart local v0       #html:Z
    goto :goto_0

    .line 608
    .end local v0           #html:Z
    :cond_5
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 609
    const/4 v0, 0x0

    .restart local v0       #html:Z
    goto :goto_0

    .line 612
    .end local v0           #html:Z
    :cond_6
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    invoke-virtual {v2, v1}, Lorg/htmlparser/parserapplications/SiteCapturer;->isHtml(Ljava/lang/String;)Z

    move-result v0

    .line 613
    .restart local v0       #html:Z
    if-eqz v0, :cond_7

    .line 614
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 616
    :cond_7
    iget-object v2, p0, Lorg/htmlparser/parserapplications/SiteCapturer$LocalLinkTag;->this$0:Lorg/htmlparser/parserapplications/SiteCapturer;

    iget-object v2, v2, Lorg/htmlparser/parserapplications/SiteCapturer;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
