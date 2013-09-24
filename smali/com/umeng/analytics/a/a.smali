.class public Lcom/umeng/analytics/a/a;
.super Ljava/lang/Object;
.source "EKV.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:J

.field public d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide v0, p0, Lcom/umeng/analytics/a/a;->c:J

    .line 21
    iput-wide v0, p0, Lcom/umeng/analytics/a/a;->d:J

    .line 23
    const-string v0, "id"

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->e:Ljava/lang/String;

    .line 24
    const-string v0, "ts"

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->f:Ljava/lang/String;

    .line 25
    const-string v0, "du"

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->g:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->a:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide v0, p0, Lcom/umeng/analytics/a/a;->c:J

    .line 21
    iput-wide v0, p0, Lcom/umeng/analytics/a/a;->d:J

    .line 23
    const-string v0, "id"

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->e:Ljava/lang/String;

    .line 24
    const-string v0, "ts"

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->f:Ljava/lang/String;

    .line 25
    const-string v0, "du"

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->g:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/umeng/analytics/a/a;->b:Ljava/lang/String;

    .line 33
    invoke-direct {p0, p2}, Lcom/umeng/analytics/a/a;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->a:Ljava/util/HashMap;

    .line 34
    iput-wide p3, p0, Lcom/umeng/analytics/a/a;->d:J

    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/a;->c:J

    .line 37
    return-void
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 43
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0xa

    .line 45
    new-array v4, v3, [Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    if-lt v1, v3, :cond_1

    .line 56
    :cond_0
    array-length v0, v4

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v1, v4, v2

    .line 57
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 51
    :cond_1
    aput-object v0, v4, v1

    .line 53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 61
    :cond_2
    return-object p1
.end method

.method private b()J
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/umeng/analytics/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 76
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 77
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v0, "du"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    iget-object v2, p0, Lcom/umeng/analytics/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/a;->b:Ljava/lang/String;

    .line 96
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/a;->c:J

    .line 98
    const-string v0, "du"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    const-string v0, "du"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/a;->d:J

    .line 102
    :cond_1
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/a;->d(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 128
    iget-object v1, p0, Lcom/umeng/analytics/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/umeng/analytics/a/a;->c:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    .line 129
    :cond_0
    const-string v1, "MobclickAgent"

    const-string v2, "mId or mTs is not initialized"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/a/a;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "MobclickAgent"

    const-string v2, "mCustomKV is not initialized"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 113
    :try_start_0
    const-string v0, "id"

    iget-object v1, p0, Lcom/umeng/analytics/a/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "ts"

    iget-wide v1, p0, Lcom/umeng/analytics/a/a;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 116
    iget-wide v0, p0, Lcom/umeng/analytics/a/a;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "du"

    iget-wide v1, p0, Lcom/umeng/analytics/a/a;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 118
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/a;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
