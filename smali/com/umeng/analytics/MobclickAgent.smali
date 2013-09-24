.class public Lcom/umeng/analytics/MobclickAgent;
.super Ljava/lang/Object;
.source "MobclickAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/MobclickAgent$1;
    }
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/b;

.field private static final b:Lcom/umeng/analytics/onlineconfig/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/umeng/analytics/b;

    invoke-direct {v0}, Lcom/umeng/analytics/b;-><init>()V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    .line 22
    new-instance v0, Lcom/umeng/analytics/onlineconfig/a;

    invoke-direct {v0}, Lcom/umeng/analytics/onlineconfig/a;-><init>()V

    sput-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;

    .line 25
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;

    sget-object v1, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/c;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    return-void
.end method

.method static a()Lcom/umeng/analytics/b;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    return-object v0
.end method

.method public static flush(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 181
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;)V

    .line 182
    return-void
.end method

.method public static getConfigParams(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 354
    invoke-static {p0}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 355
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static onError(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected empty appkey in onError"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    iput-object p1, v0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onError(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 191
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 192
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 201
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "MobclickAgent"

    const-string v1, "label is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "MobclickAgent"

    const-string v1, "label is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const-wide/16 v4, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 242
    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public static onEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 252
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 253
    const-string v0, "MobclickAgent"

    const-string v1, "duration is not valid in onEventDuration"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :goto_0
    return-void

    .line 256
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "MobclickAgent"

    const-string v1, "label is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    .line 271
    const-string v0, "MobclickAgent"

    const-string v1, "duration is not valid in onEventDuration"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public static onEventDuration(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 284
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    .line 285
    const-string v0, "MobclickAgent"

    const-string v1, "duration is not valid in onEventDuration"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 288
    :cond_0
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 305
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method public static onEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public static onKVEventBegin(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 333
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method public static onKVEventEnd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 448
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;)V

    .line 449
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public static onResume(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 130
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected empty appkey in onResume"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    iput-object p1, v0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;

    .line 135
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    iput-object p2, v0, Lcom/umeng/analytics/b;->j:Ljava/lang/String;

    .line 136
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static openActivityDurationTrack(Z)V
    .locals 0
    .parameter

    .prologue
    .line 85
    sput-boolean p0, Lcom/umeng/analytics/f;->j:Z

    .line 86
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public static reportError(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 173
    return-void
.end method

.method public static setAutoLocation(Z)V
    .locals 0
    .parameter

    .prologue
    .line 34
    sput-boolean p0, Lcom/umeng/analytics/f;->i:Z

    .line 35
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 93
    sput-boolean p0, Lcom/umeng/common/Log;->LOG:Z

    .line 94
    return-void
.end method

.method public static setDefaultReportPolicy(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    const-string v0, "MobclickAgent"

    const-string v1, "\u6b64\u65b9\u6cd5\u4e0d\u518d\u4f7f\u7528\uff0c\u8bf7\u4f7f\u7528\u5728\u7ebf\u53c2\u6570\u914d\u7f6e\uff0c\u53d1\u9001\u7b56\u7565"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static setEnableEventBuffer(Z)V
    .locals 0
    .parameter

    .prologue
    .line 52
    sput-boolean p0, Lcom/umeng/analytics/f;->m:Z

    .line 53
    return-void
.end method

.method public static setOnlineConfigureListener(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/onlineconfig/a;->a(Lcom/umeng/analytics/onlineconfig/UmengOnlineConfigureListener;)V

    .line 60
    return-void
.end method

.method public static setOpenGLContext(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    if-eqz p0, :cond_0

    .line 72
    invoke-static {p0}, Lcom/umeng/common/b;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    .line 73
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 74
    sget-object v1, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/umeng/analytics/b;->a:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/umeng/analytics/b;->b:Ljava/lang/String;

    .line 78
    :cond_0
    return-void
.end method

.method public static setSessionContinueMillis(J)V
    .locals 0
    .parameter

    .prologue
    .line 45
    sput-wide p0, Lcom/umeng/analytics/f;->d:J

    .line 46
    return-void
.end method

.method public static setWrapper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0, p1}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 378
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;)V

    .line 379
    return-void
.end method

.method public static updateOnlineConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 366
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 367
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected empty appkey in onResume"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_1
    sget-object v0, Lcom/umeng/analytics/MobclickAgent;->b:Lcom/umeng/analytics/onlineconfig/a;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/onlineconfig/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public setAge(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-static {p1}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 414
    if-ltz p2, :cond_0

    const/16 v1, 0xc8

    if-le p2, v1, :cond_1

    .line 415
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "not a valid age!"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "age"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setGender(Landroid/content/Context;Lcom/umeng/analytics/Gender;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 390
    invoke-static {p1}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 392
    sget-object v2, Lcom/umeng/analytics/MobclickAgent$1;->a:[I

    invoke-virtual {p2}, Lcom/umeng/analytics/Gender;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 403
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "gender"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 405
    return-void

    .line 394
    :pswitch_1
    const/4 v0, 0x1

    .line 395
    goto :goto_0

    .line 397
    :pswitch_2
    const/4 v0, 0x2

    .line 398
    goto :goto_0

    .line 392
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public setUserID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    invoke-static {p1}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 430
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    const-string v0, "MobclickAgent"

    const-string v1, "userID is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "user_id"

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 437
    const-string v0, "MobclickAgent"

    const-string v1, "id source is null or empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id_source"

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
