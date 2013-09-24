.class public Lorg/htmlparser/util/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# static fields
.field protected static callback:Lorg/htmlparser/util/ParserFeedback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/htmlparser/util/DefaultParserFeedback;

    invoke-direct {v0}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>()V

    sput-object v0, Lorg/htmlparser/util/FeedbackManager;->callback:Lorg/htmlparser/util/ParserFeedback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Lorg/htmlparser/util/ParserException;)V
    .locals 1
    .parameter "message"
    .parameter "e"

    .prologue
    .line 62
    sget-object v0, Lorg/htmlparser/util/FeedbackManager;->callback:Lorg/htmlparser/util/ParserFeedback;

    invoke-interface {v0, p0, p1}, Lorg/htmlparser/util/ParserFeedback;->error(Ljava/lang/String;Lorg/htmlparser/util/ParserException;)V

    .line 63
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 52
    sget-object v0, Lorg/htmlparser/util/FeedbackManager;->callback:Lorg/htmlparser/util/ParserFeedback;

    invoke-interface {v0, p0}, Lorg/htmlparser/util/ParserFeedback;->info(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static setParserFeedback(Lorg/htmlparser/util/ParserFeedback;)V
    .locals 0
    .parameter "feedback"

    .prologue
    .line 47
    sput-object p0, Lorg/htmlparser/util/FeedbackManager;->callback:Lorg/htmlparser/util/ParserFeedback;

    .line 48
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 57
    sget-object v0, Lorg/htmlparser/util/FeedbackManager;->callback:Lorg/htmlparser/util/ParserFeedback;

    invoke-interface {v0, p0}, Lorg/htmlparser/util/ParserFeedback;->warning(Ljava/lang/String;)V

    .line 58
    return-void
.end method
