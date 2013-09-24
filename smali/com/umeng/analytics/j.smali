.class public Lcom/umeng/analytics/j;
.super Ljava/lang/Object;
.source "UmengTimeStack.java"


# static fields
.field private static final b:I = 0x4


# instance fields
.field private a:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    .line 27
    iput-object p1, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    .line 32
    if-gez p2, :cond_0

    .line 33
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    .line 37
    :goto_0
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, p2}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/umeng/analytics/j;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 105
    invoke-static {p0}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {p1, v0}, Lcom/umeng/analytics/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/analytics/j;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 113
    new-instance v0, Lcom/umeng/analytics/j;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/j;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    return-object v0

    .line 119
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 120
    array-length v3, v2

    .line 122
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 124
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 122
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 130
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 134
    invoke-virtual {v0, v4}, Lcom/umeng/analytics/j;->a(Ljava/lang/Long;)V

    goto :goto_1

    .line 131
    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 62
    if-gtz v0, :cond_0

    .line 63
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/umeng/analytics/j;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v0, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/j;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    :goto_0
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    .line 82
    if-gtz v1, :cond_0

    const/4 v0, 0x0

    .line 94
    :goto_0
    return-object v0

    .line 84
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 86
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 87
    iget-object v3, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v3, v1, -0x1

    if-eq v0, v3, :cond_1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
