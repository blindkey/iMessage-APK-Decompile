.class public Lorg/htmlparser/util/DefaultParserFeedback;
.super Ljava/lang/Object;
.source "DefaultParserFeedback.java"

# interfaces
.implements Lorg/htmlparser/util/ParserFeedback;
.implements Ljava/io/Serializable;


# static fields
.field public static final DEBUG:I = 0x2

.field public static final NORMAL:I = 0x1

.field public static final QUIET:I


# instance fields
.field protected mMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/htmlparser/util/DefaultParserFeedback;-><init>(I)V

    .line 97
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "), must be one of: QUIET, NORMAL, DEBUG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    iput p1, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    .line 89
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Lorg/htmlparser/util/ParserException;)V
    .locals 3
    .parameter "message"
    .parameter "exception"

    .prologue
    .line 126
    iget v0, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x2

    iget v1, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p2}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    .line 132
    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 105
    iget v0, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INFO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 115
    iget v0, p0, Lorg/htmlparser/util/DefaultParserFeedback;->mMode:I

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "WARNING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_0
    return-void
.end method
