.class public Lcom/umeng/analytics/a/d;
.super Lcom/umeng/analytics/a/n;
.source "Error.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    .line 21
    const-string v0, "context"

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    .line 21
    const-string v0, "context"

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->b:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    .line 21
    const-string v0, "context"

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->b:Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-object v0

    .line 41
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 42
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 43
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 45
    :goto_1
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 47
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 51
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_0
    const-string v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->g:Ljava/lang/String;

    .line 74
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->h:Ljava/lang/String;

    .line 76
    const-string v0, "context"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "MobclickAgent"

    const-string v1, "mContent is not initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/umeng/analytics/a/n;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    const-string v0, "date"

    iget-object v1, p0, Lcom/umeng/analytics/a/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v0, "time"

    iget-object v1, p0, Lcom/umeng/analytics/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v0, "context"

    iget-object v1, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    return-void
.end method
