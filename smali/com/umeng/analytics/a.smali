.class Lcom/umeng/analytics/a;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Lcom/umeng/analytics/h;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    if-nez p1, :cond_0

    .line 49
    const-string v0, "MobclickAgent"

    const-string v1, "Exception is null in handleException"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a;->b:Lcom/umeng/analytics/h;

    iget-object v1, p0, Lcom/umeng/analytics/a;->c:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/umeng/analytics/h;->b(Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 31
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a;->c:Landroid/content/Context;

    .line 29
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 30
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/h;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/umeng/analytics/a;->b:Lcom/umeng/analytics/h;

    .line 35
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lcom/umeng/analytics/a;->a(Ljava/lang/Throwable;)V

    .line 42
    iget-object v0, p0, Lcom/umeng/analytics/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/umeng/analytics/a;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 45
    :cond_0
    return-void
.end method
