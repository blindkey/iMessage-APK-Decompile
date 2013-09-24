.class final Lcom/umeng/analytics/d$b;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 409
    iput-object p1, p0, Lcom/umeng/analytics/d$b;->a:Lcom/umeng/analytics/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d$b;->b:Landroid/content/Context;

    .line 411
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 415
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d$b;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 416
    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/d$b;->a:Lcom/umeng/analytics/d;

    iget-object v2, p0, Lcom/umeng/analytics/d$b;->b:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    .line 417
    monitor-exit v1

    .line 428
    :goto_0
    return-void

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    .line 418
    :catch_0
    move-exception v0

    .line 419
    const-string v1, "MobclickAgent"

    const-string v2, "Exception occurred in ReportMessageHandler"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 420
    :catch_1
    move-exception v0

    .line 421
    const-string v1, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :try_start_3
    iget-object v0, p0, Lcom/umeng/analytics/d$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/i;->j(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 424
    :catch_2
    move-exception v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
