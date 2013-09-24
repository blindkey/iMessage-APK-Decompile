.class public Lcom/umeng/analytics/a/b;
.super Ljava/lang/Object;
.source "EKVHub.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/umeng/analytics/a/a;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 27
    :goto_0
    return-void

    .line 26
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    goto :goto_0
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
    .line 30
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 39
    :cond_0
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 34
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 35
    new-instance v2, Lcom/umeng/analytics/a/a;

    invoke-direct {v2}, Lcom/umeng/analytics/a/a;-><init>()V

    .line 36
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/analytics/a/a;->a(Lorg/json/JSONObject;)V

    .line 37
    iget-object v3, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/umeng/analytics/a/b;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/b;->c(Lorg/json/JSONObject;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/b;->d(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 74
    :goto_0
    return v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/a;

    .line 72
    invoke-virtual {v0}, Lcom/umeng/analytics/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 74
    :cond_3
    const/4 v0, 0x1

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
    .line 51
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/a;

    .line 53
    new-instance v3, Lcom/umeng/analytics/a/c;

    invoke-direct {v3, p0, v0}, Lcom/umeng/analytics/a/c;-><init>(Lcom/umeng/analytics/a/b;Lcom/umeng/analytics/a/a;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    return-void
.end method
