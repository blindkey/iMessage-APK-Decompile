.class public Lcom/umeng/analytics/onlineconfig/a;
.super Ljava/lang/Object;
.source "OnlineConfigAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/onlineconfig/a$a;,
        Lcom/umeng/analytics/onlineconfig/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

.field private g:Lcom/umeng/analytics/onlineconfig/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "last_config_time"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->a:Ljava/lang/String;

    .line 27
    const-string v0, "report_policy"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->b:Ljava/lang/String;

    .line 29
    const-string v0, "online_config"

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->c:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->d:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    .line 36
    iput-object v1, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;)Lcom/umeng/analytics/onlineconfig/c;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->d(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {p1}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 138
    iget-object v1, p2, Lcom/umeng/analytics/onlineconfig/b;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const-string v1, "umeng_last_config_time"

    iget-object v2, p2, Lcom/umeng/analytics/onlineconfig/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    :cond_0
    iget v1, p2, Lcom/umeng/analytics/onlineconfig/b;->c:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 144
    const-string v1, "umeng_net_report_policy"

    iget v2, p2, Lcom/umeng/analytics/onlineconfig/b;->c:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    const-string v1, "umeng_net_report_interval"

    iget v2, p2, Lcom/umeng/analytics/onlineconfig/b;->d:I

    int-to-long v2, v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 149
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/onlineconfig/a;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    invoke-interface {v0, p1}, Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;->onDataReceived(Lorg/json/JSONObject;)V

    .line 84
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->d:Ljava/lang/String;

    .line 88
    if-nez v0, :cond_0

    .line 89
    invoke-static {p1}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_0
    if-nez v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "none appkey exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    return-object v0
.end method

.method private b(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 153
    iget-object v0, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {p1}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 161
    :try_start_0
    iget-object v2, p2, Lcom/umeng/analytics/onlineconfig/b;->a:Lorg/json/JSONObject;

    .line 164
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 166
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "MobclickAgent"

    const-string v2, "save online config params"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 171
    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get online setting params: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->b(Landroid/content/Context;Lcom/umeng/analytics/onlineconfig/b;)V

    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/umeng/common/b;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .parameter

    .prologue
    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    :try_start_0
    const-string v1, "type"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "online_config"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "appkey"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "version_code"

    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v1, "package"

    invoke-static {p1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v1, "sdk_version"

    const-string v2, "4.6.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v1, "idmd5"

    invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/common/util/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "channel"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-static {p1}, Lcom/umeng/analytics/i;->i(Landroid/content/Context;)[I

    move-result-object v1

    .line 117
    const-string v2, "report_policy"

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    const-string v1, "last_config_time"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-object v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v0, "MobclickAgent"

    const-string v1, "exception in onlineConfigInternal"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 130
    invoke-static {p1}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    const-string v1, "umeng_last_config_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    .line 72
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    if-nez p1, :cond_0

    .line 47
    :try_start_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in updateOnlineConfig"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/analytics/onlineconfig/a$b;

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/onlineconfig/a$b;-><init>(Lcom/umeng/analytics/onlineconfig/a;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    const-string v0, "MobclickAgent"

    const-string v1, "exception in updateOnlineConfig"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p2, p0, Lcom/umeng/analytics/onlineconfig/a;->d:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/umeng/analytics/onlineconfig/a;->e:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a;->f:Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;

    .line 68
    return-void
.end method

.method public a(Lcom/umeng/analytics/onlineconfig/c;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;

    .line 76
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/onlineconfig/a;->g:Lcom/umeng/analytics/onlineconfig/c;

    .line 80
    return-void
.end method
