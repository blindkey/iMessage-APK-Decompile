.class public Lorg/htmlparser/sax/Feedback;
.super Ljava/lang/Object;
.source "Feedback.java"

# interfaces
.implements Lorg/htmlparser/util/ParserFeedback;


# instance fields
.field protected mErrorHandler:Lorg/xml/sax/ErrorHandler;

.field protected mLocator:Lorg/xml/sax/Locator;


# direct methods
.method public constructor <init>(Lorg/xml/sax/ErrorHandler;Lorg/xml/sax/Locator;)V
    .locals 0
    .parameter "handler"
    .parameter "locator"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/htmlparser/sax/Feedback;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 62
    iput-object p2, p0, Lorg/htmlparser/sax/Feedback;->mLocator:Lorg/xml/sax/Locator;

    .line 63
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Lorg/htmlparser/util/ParserException;)V
    .locals 4
    .parameter "message"
    .parameter "e"

    .prologue
    .line 103
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/sax/Feedback;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v2, Lorg/xml/sax/SAXParseException;

    iget-object v3, p0, Lorg/htmlparser/sax/Feedback;->mLocator:Lorg/xml/sax/Locator;

    invoke-direct {v2, p1, v3, p2}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 108
    .local v0, se:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0
.end method

.method public info(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 73
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/sax/Feedback;->mErrorHandler:Lorg/xml/sax/ErrorHandler;

    new-instance v2, Lorg/xml/sax/SAXParseException;

    iget-object v3, p0, Lorg/htmlparser/sax/Feedback;->mLocator:Lorg/xml/sax/Locator;

    invoke-direct {v2, p1, v3}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, se:Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0
.end method
