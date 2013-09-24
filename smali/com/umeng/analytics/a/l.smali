.class public Lcom/umeng/analytics/a/l;
.super Lcom/umeng/analytics/a/n;
.source "Session.java"


# static fields
.field public static final f:Ljava/lang/String; = "session_id"


# instance fields
.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/n;->a(Lorg/json/JSONObject;)V

    .line 40
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "MobclickAgent"

    const-string v1, "Session id is not initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 27
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
    .line 31
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/n;->b(Lorg/json/JSONObject;)V

    .line 33
    const-string v0, "session_id"

    iget-object v1, p0, Lcom/umeng/analytics/a/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    return-void
.end method
