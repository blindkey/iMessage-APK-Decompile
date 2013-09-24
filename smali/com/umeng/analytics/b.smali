.class Lcom/umeng/analytics/b;
.super Lcom/umeng/analytics/d;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:I

.field private final o:I

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:J

.field private final t:I

.field private final u:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/umeng/analytics/d;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/b;->n:I

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/b;->o:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/analytics/b;->b:Ljava/lang/String;

    .line 36
    const-string v0, "start_millis"

    iput-object v0, p0, Lcom/umeng/analytics/b;->p:Ljava/lang/String;

    .line 37
    const-string v0, "end_millis"

    iput-object v0, p0, Lcom/umeng/analytics/b;->q:Ljava/lang/String;

    .line 39
    const-string v0, "last_fetch_location_time"

    iput-object v0, p0, Lcom/umeng/analytics/b;->r:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/umeng/analytics/b;->s:J

    .line 42
    const/16 v0, 0x80

    iput v0, p0, Lcom/umeng/analytics/b;->t:I

    .line 43
    const/16 v0, 0x100

    iput v0, p0, Lcom/umeng/analytics/b;->u:I

    .line 47
    return-void
.end method

.method private a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 321
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/umeng/common/b;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 322
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/umeng/common/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/common/util/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 271
    sget-boolean v2, Lcom/umeng/analytics/f;->i:Z

    if-eqz v2, :cond_0

    const-string v2, "last_fetch_location_time"

    const-wide/16 v3, 0x0

    invoke-interface {p2, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-static {p1, p2}, Lcom/umeng/analytics/a/o;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 277
    if-eqz v2, :cond_0

    .line 279
    const-string v3, "last_fetch_location_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 280
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences;)Z
    .locals 4
    .parameter

    .prologue
    .line 285
    const-string v0, "end_millis"

    const-wide/16 v1, -0x1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 287
    sub-long v0, v2, v0

    sget-wide v2, Lcom/umeng/analytics/f;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 298
    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 300
    new-instance v3, Lcom/umeng/analytics/a/h;

    invoke-direct {v3, p1, v2}, Lcom/umeng/analytics/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Lcom/umeng/analytics/a/m;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/m;

    move-result-object v4

    .line 303
    iget-object v5, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v5, v3}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/h;)V

    .line 304
    iget-object v3, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v3, v4}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/m;)V

    .line 306
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 308
    const-string v4, "session_id"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v4, "start_millis"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 310
    const-string v0, "end_millis"

    const-wide/16 v4, -0x1

    invoke-interface {v3, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 312
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 316
    return-object v2
.end method

.method static synthetic b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    return-void
.end method

.method private c(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 333
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 334
    const-string v2, "start_millis"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 335
    const-string v0, "end_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    const-string v0, "session_id"

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 345
    :try_start_0
    sget-boolean v0, Lcom/umeng/analytics/f;->m:Z

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v0, p2}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/analytics/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/j;

    move-result-object v0

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V

    .line 350
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    const-string v0, "MobclickAgent"

    const-string v1, "exception in save event begin info"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 358
    const/4 v0, -0x1

    .line 362
    :try_start_0
    sget-boolean v1, Lcom/umeng/analytics/f;->m:Z

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v1, p2}, Lcom/umeng/analytics/c;->b(Ljava/lang/String;)J

    move-result-wide v1

    .line 369
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v1

    long-to-int v0, v0

    .line 376
    :cond_0
    :goto_1
    return v0

    .line 365
    :cond_1
    invoke-static {p1, p2}, Lcom/umeng/analytics/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/j;

    move-result-object v1

    .line 366
    invoke-virtual {v1}, Lcom/umeng/analytics/j;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v1

    .line 373
    const-string v2, "MobclickAgent"

    const-string v3, "exception in get event duration"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private h(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onResume"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized i(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 226
    if-nez v0, :cond_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 230
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->b(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    .line 232
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start new session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 234
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->c(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    .line 235
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extend current session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized j(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    .line 240
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 241
    if-nez v0, :cond_0

    .line 264
    :goto_0
    monitor-exit p0

    return-void

    .line 245
    :cond_0
    :try_start_1
    const-string v1, "start_millis"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 247
    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 248
    const-string v1, "MobclickAgent"

    const-string v2, "onEndSession called before onStartSession"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 263
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 253
    iget-object v1, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/umeng/analytics/a/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;JJ)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 255
    const-string v2, "start_millis"

    const-wide/16 v6, -0x1

    invoke-interface {v1, v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 256
    const-string v2, "end_millis"

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    :try_start_0
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in onPause"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    const-string v0, "MobclickAgent"

    const-string v1, "onPause() called without context from corresponding onResume()"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 74
    :cond_1
    :try_start_1
    new-instance v0, Lcom/umeng/analytics/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/umeng/analytics/b$a;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/umeng/analytics/b$a;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 85
    :cond_0
    if-nez p1, :cond_1

    .line 87
    const-string v0, "MobclickAgent"

    const-string v1, "unexpected null context in reportError"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 403
    if-eqz p1, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    invoke-virtual {p0, p3, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 407
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_tl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    if-eqz p1, :cond_0

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-gtz p6, :cond_1

    .line 175
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 180
    const-string v0, "MobclickAgent"

    const-string v1, "can\'t call onEvent before session is initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 184
    :cond_2
    if-eqz p3, :cond_3

    const/16 v0, 0x100

    :try_start_1
    invoke-virtual {p0, p3, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 185
    const-string v0, "MobclickAgent"

    const-string v1, "invalid label in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V

    .line 190
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V
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
    .line 199
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onKVEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1
    :goto_0
    return-void

    .line 204
    :cond_2
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 209
    const-string v0, "MobclickAgent"

    const-string v1, "can\'t call onEvent before session is initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onEvent(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 213
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    iget-object v1, p0, Lcom/umeng/analytics/b;->m:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V

    .line 215
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
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
    .line 430
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 431
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onKVEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 435
    :cond_2
    invoke-virtual {p0, p3}, Lcom/umeng/analytics/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v1, v0, p3}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 444
    iget-object v1, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v0

    .line 447
    const-string v1, "MobclickAgent"

    const-string v2, "exception in save k-v event begin inof"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 97
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/a/f;

    iput-object p1, v0, Lcom/umeng/analytics/a/f;->E:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/a/f;

    iput-object p2, v0, Lcom/umeng/analytics/a/f;->F:Ljava/lang/String;

    .line 60
    return-void
.end method

.method a(Ljava/lang/String;I)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 477
    if-nez p1, :cond_1

    .line 487
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 483
    if-eqz v1, :cond_0

    if-gt v1, p2, :cond_0

    .line 487
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/util/Map;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "map is null or empty in onEvent"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 503
    :goto_0
    return v0

    .line 496
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 497
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {p0, v1, v5}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v5, 0x100

    invoke-virtual {p0, v1, v5}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 498
    :cond_3
    const-string v1, "MobclickAgent"

    const-string v4, "invalid key-<%s> or value-<%s> "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 499
    goto :goto_0

    :cond_4
    move v0, v3

    .line 503
    goto :goto_0
.end method

.method b()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)V

    .line 156
    new-instance v0, Lcom/umeng/analytics/b$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/umeng/analytics/b$a;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/umeng/analytics/b$a;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 380
    if-eqz p1, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, p2, v0}, Lcom/umeng/analytics/b;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEventBegin"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 385
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 411
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :goto_0
    return-void

    .line 415
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_tl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 416
    if-gez v0, :cond_2

    .line 417
    const-string v0, "MobclickAgent"

    const-string v1, "event duration less than 0 in onEvnetEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_2
    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    new-instance v1, Lcom/umeng/analytics/a/d;

    invoke-direct {v1, p2}, Lcom/umeng/analytics/a/d;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/c;->a(Lcom/umeng/analytics/a/d;)V

    .line 517
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    const-string v1, "MobclickAgent"

    const-string v2, "Exception in onAppCrash"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in Mobclick.flush(). "

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 389
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "input Context is null or event_id is empty"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 393
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 395
    if-gez v0, :cond_2

    .line 396
    const-string v0, "MobclickAgent"

    const-string v1, "event duration less than 0 in onEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_2
    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_0
.end method

.method c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    :cond_0
    const-string v0, "MobclickAgent"

    const-string v1, "invalid params in onKVEventEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 458
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 460
    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 461
    if-gez v1, :cond_2

    .line 462
    const-string v0, "MobclickAgent"

    const-string v1, "event duration less than 0 in onEvnetEnd"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v2, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2, v0}, Lcom/umeng/analytics/c;->c(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    int-to-long v4, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;J)V

    goto :goto_0
.end method

.method d(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 508
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->j(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return-void

    .line 509
    :catch_0
    move-exception v0

    .line 510
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
