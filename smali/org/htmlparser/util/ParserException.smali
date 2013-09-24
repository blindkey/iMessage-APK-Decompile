.class public Lorg/htmlparser/util/ParserException;
.super Lorg/htmlparser/util/ChainedException;
.source "ParserException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/htmlparser/util/ChainedException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/htmlparser/util/ChainedException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/htmlparser/util/ChainedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/htmlparser/util/ChainedException;-><init>(Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
