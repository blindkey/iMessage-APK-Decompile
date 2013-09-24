.class public Lcom/umeng/analytics/a/m;
.super Lcom/umeng/analytics/a/l;
.source "Terminate.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# static fields
.field private static final k:Ljava/lang/String; = "duration"

.field private static final l:Ljava/lang/String; = "activities"

.field private static final m:Ljava/lang/String; = "terminate_time"


# instance fields
.field public a:Lcom/umeng/analytics/a/o;

.field public b:Lcom/umeng/analytics/a/p;

.field public c:J

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/umeng/analytics/a/l;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/umeng/analytics/a/m;->e:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static a(Landroid/content/SharedPreferences;Ljava/lang/String;JJ)Landroid/content/SharedPreferences$Editor;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    sub-long v3, p4, p2

    .line 132
    const-string v2, "duration"

    const-wide/16 v5, 0x0

    invoke-interface {p0, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 136
    sget-boolean v2, Lcom/umeng/analytics/f;->j:Z

    if-eqz v2, :cond_1

    .line 137
    const-string v2, "activities"

    const-string v8, ""

    invoke-interface {p0, v2, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ";"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 142
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "[%s,%d]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    const-wide/16 v11, 0x3e8

    div-long v11, v3, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v8, "activities"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 144
    const-string v8, "activities"

    invoke-interface {v7, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    :cond_1
    const-string v2, "duration"

    add-long/2addr v3, v5

    invoke-interface {v7, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v2, "terminate_time"

    move-wide/from16 v0, p4

    invoke-interface {v7, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 149
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-object v7
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/a/m;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {p0}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    const-string v2, "session_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Lcom/umeng/analytics/a/m;

    invoke-direct {v0, v2}, Lcom/umeng/analytics/a/m;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lcom/umeng/analytics/a/o;->b(Landroid/content/Context;)Lcom/umeng/analytics/a/o;

    move-result-object v2

    .line 53
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/umeng/analytics/a/o;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    iput-object v2, v0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/umeng/analytics/a/p;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/p;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/umeng/analytics/a/p;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 59
    iput-object v2, v0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    .line 62
    :cond_2
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->c(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    .line 63
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->d(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/umeng/analytics/a/m;->c:J

    .line 65
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->b(Landroid/content/SharedPreferences;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 68
    const/4 v3, 0x0

    aget-object v3, v2, v3

    iput-object v3, v0, Lcom/umeng/analytics/a/m;->g:Ljava/lang/String;

    .line 69
    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/umeng/analytics/a/m;->h:Ljava/lang/String;

    .line 72
    :cond_3
    invoke-static {v1}, Lcom/umeng/analytics/a/m;->a(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter

    .prologue
    .line 78
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    const-string v1, "duration"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    const-string v1, "activities"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method private static b(Landroid/content/SharedPreferences;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 93
    const-string v0, "terminate_time"

    invoke-interface {p0, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 95
    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/umeng/common/b;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Landroid/content/SharedPreferences;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/umeng/analytics/a/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    const-string v0, "activities"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :try_start_0
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 111
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 112
    aget-object v3, v2, v1

    .line 114
    new-instance v4, Lcom/umeng/analytics/a/k;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/umeng/analytics/a/k;-><init>(Lorg/json/JSONArray;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 122
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
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
    .line 177
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/p;->b(Lorg/json/JSONObject;)V

    .line 178
    :cond_0
    return-void
.end method

.method private static d(Landroid/content/SharedPreferences;)J
    .locals 4
    .parameter

    .prologue
    .line 126
    const-string v0, "duration"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->b(Lorg/json/JSONObject;)V

    .line 182
    :cond_0
    return-void
.end method

.method private e(Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/umeng/analytics/a/o;

    invoke-direct {v0}, Lcom/umeng/analytics/a/o;-><init>()V

    .line 186
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/o;->a(Lorg/json/JSONObject;)V

    .line 187
    invoke-virtual {v0}, Lcom/umeng/analytics/a/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iput-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    .line 190
    :cond_0
    return-void
.end method

.method private f(Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Lcom/umeng/analytics/a/p;

    invoke-direct {v0}, Lcom/umeng/analytics/a/p;-><init>()V

    .line 194
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a/p;->a(Lorg/json/JSONObject;)V

    .line 195
    invoke-virtual {v0}, Lcom/umeng/analytics/a/p;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    iput-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    .line 198
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
    .line 201
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "activities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 205
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 207
    new-instance v2, Lcom/umeng/analytics/a/k;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/umeng/analytics/a/k;-><init>(Lorg/json/JSONArray;)V

    .line 209
    iget-object v3, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 218
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/a/k;

    .line 222
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 223
    iget-object v4, v0, Lcom/umeng/analytics/a/k;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 224
    iget v0, v0, Lcom/umeng/analytics/a/k;->b:I

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 226
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 229
    :cond_1
    const-string v0, "activities"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 237
    :try_start_0
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->a(Lorg/json/JSONObject;)V

    .line 239
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    .line 241
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->f(Lorg/json/JSONObject;)V

    .line 242
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->e(Lorg/json/JSONObject;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->g(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 155
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->a:Lcom/umeng/analytics/a/o;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/umeng/analytics/f;->i:Z

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "MobclickAgent"

    const-string v1, "missing location info in Terminate"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->b:Lcom/umeng/analytics/a/p;

    if-nez v0, :cond_1

    .line 160
    const-string v0, "MobclickAgent"

    const-string v1, "missing receive and transport Traffic in Terminate "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    iget-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 164
    const-string v0, "MobclickAgent"

    const-string v1, "missing Duration info in Terminate"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/umeng/analytics/a/m;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 170
    :cond_3
    const-string v0, "MobclickAgent"

    const-string v1, "missing Activities info in Terminate"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_4
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
    .line 252
    invoke-super {p0, p1}, Lcom/umeng/analytics/a/l;->b(Lorg/json/JSONObject;)V

    .line 254
    iget-wide v0, p0, Lcom/umeng/analytics/a/m;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 255
    const-string v0, "duration"

    iget-wide v1, p0, Lcom/umeng/analytics/a/m;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 258
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->c(Lorg/json/JSONObject;)V

    .line 259
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->d(Lorg/json/JSONObject;)V

    .line 260
    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/m;->h(Lorg/json/JSONObject;)V

    .line 262
    return-void
.end method
