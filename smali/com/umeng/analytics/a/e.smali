.class public Lcom/umeng/analytics/a/e;
.super Lcom/umeng/analytics/a/l;
.source "Event.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:J

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    .line 20
    const-string v0, "tag"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->k:Ljava/lang/String;

    .line 21
    const-string v0, "label"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->l:Ljava/lang/String;

    .line 22
    const-string v0, "acc"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->m:Ljava/lang/String;

    .line 23
    const-string v0, "du"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->n:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    .line 20
    const-string v0, "tag"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->k:Ljava/lang/String;

    .line 21
    const-string v0, "label"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->l:Ljava/lang/String;

    .line 22
    const-string v0, "acc"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->m:Ljava/lang/String;

    .line 23
    const-string v0, "du"

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->n:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/umeng/analytics/a/e;->e:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    .line 38
    iput p4, p0, Lcom/umeng/analytics/a/e;->c:I

    .line 39
    iput-wide p5, p0, Lcom/umeng/analytics/a/e;->d:J

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->a(Lorg/json/JSONObject;)V

    .line 62
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    .line 64
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    const-string v0, "label"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    .line 68
    :cond_2
    const-string v0, "acc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/analytics/a/e;->c:I

    .line 70
    const-string v0, "du"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string v0, "du"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/e;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 44
    const-string v1, "MobclickAgent"

    const-string v2, "mTag is not initilized"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    return v0

    .line 48
    :cond_0
    iget v1, p0, Lcom/umeng/analytics/a/e;->c:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/umeng/analytics/a/e;->c:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_2

    .line 49
    :cond_1
    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAcc is invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/umeng/analytics/a/e;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-super {p0}, Lcom/umeng/analytics/a/l;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 81
    const-string v0, "tag"

    iget-object v1, p0, Lcom/umeng/analytics/a/e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v0, "acc"

    iget v1, p0, Lcom/umeng/analytics/a/e;->c:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    iget-object v0, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "label"

    iget-object v1, p0, Lcom/umeng/analytics/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_0
    iget-wide v0, p0, Lcom/umeng/analytics/a/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 88
    const-string v0, "du"

    iget-wide v1, p0, Lcom/umeng/analytics/a/e;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 91
    :cond_1
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->b(Lorg/json/JSONObject;)V

    .line 92
    return-void
.end method
