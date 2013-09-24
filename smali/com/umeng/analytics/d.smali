.class public abstract Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Lcom/umeng/analytics/h;
.implements Lcom/umeng/analytics/onlineconfig/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d$a;,
        Lcom/umeng/analytics/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/umeng/analytics/a;

.field private final b:Ljava/lang/Object;

.field protected final c:Lcom/umeng/analytics/c;

.field protected final d:Lcom/umeng/analytics/a/f;

.field protected final e:I

.field protected final f:I

.field protected final g:I

.field protected final h:I

.field protected final i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field private final l:Landroid/os/Handler;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:I

.field private p:J

.field private q:J

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/umeng/analytics/a;

    invoke-direct {v0}, Lcom/umeng/analytics/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/a;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->b:Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/umeng/analytics/c;

    invoke-direct {v0}, Lcom/umeng/analytics/c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    .line 52
    new-instance v0, Lcom/umeng/analytics/a/f;

    invoke-direct {v0}, Lcom/umeng/analytics/a/f;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/d;->e:I

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/analytics/d;->f:I

    .line 56
    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/analytics/d;->g:I

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/analytics/d;->h:I

    .line 59
    const/4 v0, 0x5

    iput v0, p0, Lcom/umeng/analytics/d;->i:I

    .line 61
    const-string v0, "body"

    iput-object v0, p0, Lcom/umeng/analytics/d;->m:Ljava/lang/String;

    .line 62
    const-string v0, "header"

    iput-object v0, p0, Lcom/umeng/analytics/d;->n:Ljava/lang/String;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/analytics/d;->o:I

    .line 65
    iput-wide v1, p0, Lcom/umeng/analytics/d;->p:J

    .line 66
    iput-wide v1, p0, Lcom/umeng/analytics/d;->q:J

    .line 67
    iput-wide v1, p0, Lcom/umeng/analytics/d;->r:J

    .line 69
    iput-object v3, p0, Lcom/umeng/analytics/d;->j:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/umeng/analytics/d;->k:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->s:Z

    .line 76
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MobclickAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/umeng/analytics/d;->l:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 335
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 336
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 337
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 338
    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 339
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 342
    const-string v2, "X-Umeng-Sdk"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 346
    if-eqz v2, :cond_0

    .line 347
    new-instance v4, Lorg/apache/http/HttpHost;

    const/16 v5, 0x50

    invoke-direct {v4, v2, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 348
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 352
    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    const-string v4, "MobclickAgent"

    invoke-static {v4, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-boolean v4, Lcom/umeng/analytics/f;->t:Z

    if-eqz v4, :cond_2

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    const-string v4, "utf-8"

    invoke-static {v2, v4}, Lcom/umeng/common/util/f;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 359
    const-string v4, "Content-Encoding"

    const-string v5, "deflate"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget v2, Lcom/umeng/common/util/f;->a:I

    int-to-long v6, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 363
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 372
    :goto_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 373
    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 374
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 375
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v2, v3, v5

    iput-wide v2, p0, Lcom/umeng/analytics/d;->r:J

    .line 377
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 378
    const-string v2, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent message to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_1

    .line 383
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 384
    invoke-direct {p0, v1}, Lcom/umeng/analytics/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_1
    :goto_1
    return-object v0

    .line 365
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 367
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "content"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 393
    :catch_0
    move-exception v1

    .line 395
    const-string v2, "MobclickAgent"

    const-string v3, "ClientProtocolException,Failed to send message."

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 398
    :catch_1
    move-exception v1

    .line 399
    const-string v2, "MobclickAgent"

    const-string v3, "IOException,Failed to send message."

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 308
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    :try_start_1
    const-string v2, "MobclickAgent"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 330
    :goto_1
    return-object v0

    .line 322
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 330
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 323
    :catch_1
    move-exception v1

    .line 324
    const-string v2, "MobclickAgent"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 323
    :catch_2
    move-exception v1

    .line 324
    const-string v2, "MobclickAgent"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 321
    :catchall_0
    move-exception v1

    .line 322
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 327
    throw v1

    .line 323
    :catch_3
    move-exception v1

    .line 324
    const-string v2, "MobclickAgent"

    const-string v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {p1}, Lcom/umeng/analytics/i;->i(Landroid/content/Context;)[I

    move-result-object v0

    .line 116
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/d;->o:I

    .line 117
    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/analytics/d;->p:J

    .line 119
    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 120
    :cond_2
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 122
    const-string v1, "last_report_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/d;->q:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 135
    :cond_0
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_report_time"

    iget-wide v2, p0, Lcom/umeng/analytics/d;->q:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    :cond_1
    iget-wide v0, p0, Lcom/umeng/analytics/d;->r:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-wide v1, p0, Lcom/umeng/analytics/d;->r:J

    iput-wide v1, v0, Lcom/umeng/analytics/a/f;->f:J

    .line 143
    invoke-static {p1}, Lcom/umeng/analytics/i;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "req_time"

    iget-wide v2, p0, Lcom/umeng/analytics/d;->r:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    :cond_2
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/analytics/d;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/umeng/analytics/d;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/umeng/analytics/a/f;->b(Landroid/content/Context;[Ljava/lang/String;)V

    .line 196
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v0, v0, Lcom/umeng/analytics/a/f;->w:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v0, v0, Lcom/umeng/analytics/a/f;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 231
    if-eqz v2, :cond_0

    const-string v0, "body"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v1, 0x0

    .line 236
    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/umeng/analytics/f;->r:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 238
    sget-object v1, Lcom/umeng/analytics/f;->r:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v2, v1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_3

    .line 245
    :cond_2
    if-eqz v1, :cond_4

    .line 246
    invoke-static {p1}, Lcom/umeng/analytics/i;->j(Landroid/content/Context;)V

    .line 247
    const-string v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send applog succeed :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 236
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    :cond_4
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/analytics/d;->q:J

    .line 252
    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 253
    const-string v0, "MobclickAgent"

    const-string v1, "send applog failed"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public a(IJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 459
    iput p1, p0, Lcom/umeng/analytics/d;->o:I

    .line 460
    iput-wide p2, p0, Lcom/umeng/analytics/d;->p:J

    .line 461
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->s:Z

    .line 93
    :cond_0
    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    iget-object v0, p0, Lcom/umeng/analytics/d;->l:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/analytics/d$b;

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/d$b;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v0}, Lcom/umeng/analytics/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/umeng/analytics/d;->l:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/analytics/d$a;

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/d$a;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/content/Context;I)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    invoke-static {p1}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 187
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 154
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 160
    :cond_2
    :pswitch_1
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    if-nez v2, :cond_3

    move v0, v1

    .line 162
    goto :goto_0

    .line 156
    :pswitch_2
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 157
    goto :goto_0

    .line 163
    :cond_3
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/d;->q:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/umeng/analytics/d;->p:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/analytics/d;->q:J

    move v0, v1

    .line 167
    goto :goto_0

    .line 168
    :cond_4
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/d;->q:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/umeng/analytics/f;->g:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/analytics/d;->q:J

    move v0, v1

    .line 172
    goto :goto_0

    .line 173
    :cond_5
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lcom/umeng/common/b;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 174
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 179
    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public e(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)V

    .line 128
    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/a;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/a;->a(Lcom/umeng/analytics/h;)V

    .line 129
    return-void
.end method

.method g(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 261
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    invoke-virtual {v2}, Lcom/umeng/analytics/a/f;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/umeng/analytics/d;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/umeng/analytics/d;->j:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/umeng/analytics/a/f;->b(Landroid/content/Context;[Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    invoke-virtual {v2}, Lcom/umeng/analytics/a/f;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 270
    const-string v1, "MobclickAgent"

    const-string v2, "protocol Header need Appkey or Device ID ,Please check AndroidManifest.xml "

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-object v0

    .line 274
    :cond_1
    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    .line 276
    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2}, Lcom/umeng/analytics/c;->a()I

    move-result v2

    if-gtz v2, :cond_2

    .line 277
    const-string v1, "MobclickAgent"

    const-string v2, "no message to send"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v1

    .line 297
    const-string v2, "MobclickAgent"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 298
    invoke-static {p1}, Lcom/umeng/analytics/i;->j(Landroid/content/Context;)V

    goto :goto_0

    .line 281
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2}, Lcom/umeng/analytics/c;->c()Z

    move-result v2

    if-nez v2, :cond_3

    .line 282
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocol Body has invalid field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v3}, Lcom/umeng/analytics/c;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    :catch_1
    move-exception v1

    .line 300
    const-string v2, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Lcom/umeng/analytics/i;->j(Landroid/content/Context;)V

    goto :goto_0

    .line 285
    :cond_3
    :try_start_2
    const-string v2, "header"

    new-instance v3, Lcom/umeng/analytics/e;

    invoke-direct {v3, p0}, Lcom/umeng/analytics/e;-><init>(Lcom/umeng/analytics/d;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v2, "body"

    iget-object v3, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v3}, Lcom/umeng/analytics/c;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2}, Lcom/umeng/analytics/c;->e()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 294
    goto/16 :goto_0
.end method
