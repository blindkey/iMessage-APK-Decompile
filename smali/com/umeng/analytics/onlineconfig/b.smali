.class public Lcom/umeng/analytics/onlineconfig/b;
.super Lcom/umeng/common/net/t;
.source "OnlineConfigResponse.java"


# instance fields
.field public a:Lorg/json/JSONObject;

.field b:Z

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 33
    invoke-direct {p0, p1}, Lcom/umeng/common/net/t;-><init>(Lorg/json/JSONObject;)V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/onlineconfig/b;->b:Z

    .line 21
    iput v1, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    .line 22
    iput v1, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I

    .line 26
    const-string v0, "config_update"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->f:Ljava/lang/String;

    .line 27
    const-string v0, "report_policy"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->g:Ljava/lang/String;

    .line 28
    const-string v0, "online_params"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->h:Ljava/lang/String;

    .line 29
    const-string v0, "last_config_time"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->i:Ljava/lang/String;

    .line 30
    const-string v0, "report_interval"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->j:Ljava/lang/String;

    .line 35
    if-nez p1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/b;->a(Lorg/json/JSONObject;)V

    .line 41
    invoke-direct {p0}, Lcom/umeng/analytics/onlineconfig/b;->a()V

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 67
    iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    if-le v0, v1, :cond_1

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    .line 71
    :cond_1
    iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I

    if-gtz v0, :cond_2

    .line 72
    sget v0, Lcom/umeng/analytics/f;->h:I

    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I

    .line 74
    :cond_2
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 46
    :try_start_0
    const-string v0, "config_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "config_update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "report_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    const-string v0, "report_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->c:I

    .line 52
    const-string v0, "report_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/umeng/analytics/onlineconfig/b;->d:I

    .line 53
    const-string v0, "last_config_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->e:Ljava/lang/String;

    .line 58
    :goto_1
    const-string v0, "online_params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/onlineconfig/b;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v1, "MobclickAgent"

    const-string v2, "fail to parce online config response"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 55
    :cond_2
    :try_start_1
    const-string v0, "MobclickAgent"

    const-string v1, " online config fetch no report policy"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
