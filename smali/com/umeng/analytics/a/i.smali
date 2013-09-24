.class public Lcom/umeng/analytics/a/i;
.super Ljava/lang/Object;
.source "LogBody.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    .line 28
    const-string v0, "launch"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->f:Ljava/lang/String;

    .line 29
    const-string v0, "terminate"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->g:Ljava/lang/String;

    .line 30
    const-string v0, "error"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->h:Ljava/lang/String;

    .line 31
    const-string v0, "event"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->i:Ljava/lang/String;

    .line 32
    const-string v0, "ekv"

    iput-object v0, p0, Lcom/umeng/analytics/a/i;->j:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private a(Ljava/util/ArrayList;)Lorg/json/JSONArray;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    .line 172
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 173
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 176
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 178
    :try_start_0
    new-instance v4, Lcom/umeng/analytics/a/j;

    invoke-direct {v4, p0, v0}, Lcom/umeng/analytics/a/j;-><init>(Lcom/umeng/analytics/a/i;Lcom/umeng/analytics/a/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 187
    :goto_1
    if-nez v0, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v4, "MobclickAgent"

    const-string v6, "Fail to write json ..."

    invoke-static {v4, v6, v0}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_1

    .line 189
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 193
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 195
    :cond_2
    :goto_3
    return-object v2

    :cond_3
    move-object v2, v0

    goto :goto_3

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    return-void

    .line 259
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 262
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 264
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 265
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/a/b;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/b;->a(Lcom/umeng/analytics/a/b;)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 273
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 274
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 275
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/analytics/a/b;

    invoke-virtual {v1, v0}, Lcom/umeng/analytics/a/b;->a(Lcom/umeng/analytics/a/b;)V

    goto :goto_1

    .line 277
    :cond_4
    iget-object v1, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 284
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 285
    iget-object v2, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 86
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 87
    new-instance v2, Lcom/umeng/analytics/a/h;

    invoke-direct {v2}, Lcom/umeng/analytics/a/h;-><init>()V

    .line 89
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/h;->a(Lorg/json/JSONObject;)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/h;)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
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
    .line 97
    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "terminate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 100
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 101
    new-instance v2, Lcom/umeng/analytics/a/m;

    invoke-direct {v2}, Lcom/umeng/analytics/a/m;-><init>()V

    .line 103
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/m;->a(Lorg/json/JSONObject;)V

    .line 105
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/m;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const-string v0, "event"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 114
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 115
    new-instance v2, Lcom/umeng/analytics/a/e;

    invoke-direct {v2}, Lcom/umeng/analytics/a/e;-><init>()V

    .line 117
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/e;->a(Lorg/json/JSONObject;)V

    .line 119
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/e;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const-string v0, "ekv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 128
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 129
    new-instance v2, Lcom/umeng/analytics/a/b;

    invoke-direct {v2}, Lcom/umeng/analytics/a/b;-><init>()V

    .line 131
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/b;->a(Lorg/json/JSONObject;)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/b;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 142
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 143
    new-instance v2, Lcom/umeng/analytics/a/d;

    invoke-direct {v2}, Lcom/umeng/analytics/a/d;-><init>()V

    .line 145
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/d;->a(Lorg/json/JSONObject;)V

    .line 147
    invoke-virtual {p0, v2}, Lcom/umeng/analytics/a/i;->a(Lcom/umeng/analytics/a/d;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/a/b;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/d;)V
    .locals 1
    .parameter

    .prologue
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/e;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/i;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v0, p1, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/a/i;->b(Ljava/util/ArrayList;)V

    .line 250
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/m;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/umeng/analytics/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 64
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 66
    iget-object v2, v0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    new-instance v1, Lcom/umeng/analytics/a/b;

    invoke-direct {v1, p1, p2}, Lcom/umeng/analytics/a/b;-><init>(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .parameter

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 158
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->c(Lorg/json/JSONObject;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->d(Lorg/json/JSONObject;)V

    .line 160
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->e(Lorg/json/JSONObject;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->f(Lorg/json/JSONObject;)V

    .line 162
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/i;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "MobclickAgent"

    const-string v2, "merge log body eror"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 220
    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 239
    :goto_0
    return v0

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 223
    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 226
    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 229
    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 233
    invoke-interface {v0}, Lcom/umeng/analytics/a/g;->a()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_0

    .line 236
    :cond_9
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public b()I
    .locals 3

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 291
    iget-object v1, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/g;

    .line 292
    check-cast v0, Lcom/umeng/analytics/a/b;

    .line 293
    iget-object v0, v0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 294
    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 297
    iget-object v1, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    iget-object v1, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    iget-object v1, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    return v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v2

    .line 205
    iget-object v3, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/umeng/analytics/a/i;->a(Ljava/util/ArrayList;)Lorg/json/JSONArray;

    move-result-object v4

    .line 208
    if-eqz v0, :cond_0

    const-string v5, "launch"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "terminate"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    :cond_1
    if-eqz v2, :cond_2

    const-string v0, "event"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "error"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    :cond_3
    if-eqz v4, :cond_4

    const-string v0, "ekv"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :cond_4
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 308
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 311
    iget-object v0, p0, Lcom/umeng/analytics/a/i;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    return-void
.end method
