.class public Lcom/umeng/analytics/a/n;
.super Ljava/lang/Object;
.source "Time.java"


# instance fields
.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field protected final i:Ljava/lang/String;

.field protected final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "date"

    iput-object v0, p0, Lcom/umeng/analytics/a/n;->i:Ljava/lang/String;

    .line 19
    const-string v0, "time"

    iput-object v0, p0, Lcom/umeng/analytics/a/n;->j:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;

    .line 24
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 45
    const-string v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;

    .line 46
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 29
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "Date or Time is not initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

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
    .line 39
    const-string v0, "date"

    iget-object v1, p0, Lcom/umeng/analytics/a/n;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v0, "time"

    iget-object v1, p0, Lcom/umeng/analytics/a/n;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    return-void
.end method
