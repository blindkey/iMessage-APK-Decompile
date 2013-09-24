.class public interface abstract Lorg/htmlparser/http/ConnectionMonitor;
.super Ljava/lang/Object;
.source "ConnectionMonitor.java"


# virtual methods
.method public abstract postConnect(Ljava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method

.method public abstract preConnect(Ljava/net/HttpURLConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation
.end method
