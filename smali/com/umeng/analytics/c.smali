.class public Lcom/umeng/analytics/c;
.super Ljava/lang/Object;
.source "MessageBuffer.java"


# instance fields
.field private a:Lcom/umeng/analytics/a/i;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/j;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/umeng/analytics/a/i;

    invoke-direct {v0}, Lcom/umeng/analytics/a/i;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/c;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->b()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/umeng/analytics/c;->d:I

    .line 39
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/umeng/analytics/c;->a()I

    move-result v0

    if-gtz v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p1, v0}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 113
    new-instance v2, Lcom/umeng/analytics/a/i;

    invoke-direct {v2}, Lcom/umeng/analytics/a/i;-><init>()V

    .line 115
    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/a/i;->a(Lorg/json/JSONObject;)V

    .line 117
    :cond_1
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v2, v1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/i;)V

    .line 119
    iget-object v1, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v1}, Lcom/umeng/analytics/a/i;->c()V

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-static {p1, v2, v0}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Lcom/umeng/analytics/a/g;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/analytics/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/analytics/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/umeng/analytics/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V

    .line 56
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Lcom/umeng/analytics/j;

    invoke-direct {v0, p1}, Lcom/umeng/analytics/j;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V

    .line 54
    iget-object v1, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    new-instance v0, Lcom/umeng/analytics/a/e;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p6

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v7, v0}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;J)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    new-instance v1, Lcom/umeng/analytics/a/a;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/umeng/analytics/a/a;-><init>(Ljava/lang/String;Ljava/util/HashMap;J)V

    invoke-virtual {v0, p1, v1}, Lcom/umeng/analytics/a/i;->a(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/j;

    invoke-virtual {v0}, Lcom/umeng/analytics/j;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 62
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 130
    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/analytics/i;->a(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v1, Lcom/umeng/analytics/a/i;

    invoke-direct {v1}, Lcom/umeng/analytics/a/i;-><init>()V

    .line 137
    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/i;->a(Lorg/json/JSONObject;)V

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/i;)V

    .line 141
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->b()I

    move-result v0

    iget v1, p0, Lcom/umeng/analytics/c;->d:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/j;

    invoke-virtual {v0}, Lcom/umeng/analytics/j;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 73
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->a()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized d()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 145
    monitor-enter p0

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/i;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    monitor-exit p0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_1
    const-string v1, "MobclickAgent"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 1

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/c;->a:Lcom/umeng/analytics/a/i;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
