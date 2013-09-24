.class Lcom/umeng/common/net/e;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Lcom/umeng/common/net/DownloadingService$a;


# instance fields
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 335
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 337
    iget-object v2, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    .line 339
    if-eqz v2, :cond_0

    aget-wide v3, v2, v7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 340
    aget-wide v3, v2, v1

    long-to-float v1, v3

    aget-wide v2, v2, v7

    long-to-float v2, v2

    div-float/2addr v1, v2

    .line 341
    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 343
    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    const/16 v1, 0x63

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    iget-object v3, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    invoke-static {v2, v3, p1, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;

    move-result-object v1

    .line 347
    iput-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 349
    iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 351
    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 355
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 357
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    .line 358
    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 359
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/a/a;->c(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 362
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 366
    iget-object v2, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 367
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "%3$10s Notification: mNotificationId = %1$15s\t|\tprogress = %2$15s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v1, v1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 434
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 436
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    .line 437
    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 438
    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u4e0b\u8f7d\u5931\u8d25\u3002"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 442
    iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    .line 444
    :cond_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 375
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 377
    if-eqz v0, :cond_0

    .line 378
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    .line 379
    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    .line 380
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v2}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v0

    iget-object v2, v1, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    iget-object v3, v1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v7}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 387
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 388
    const-string v2, "filename"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v2, v1, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    const-string v3, "delta_update"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 394
    const/4 v3, 0x6

    iput v3, v2, Landroid/os/Message;->what:I

    .line 395
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 396
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 397
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 398
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 399
    iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 403
    iput v6, v2, Landroid/os/Message;->what:I

    .line 404
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 405
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 407
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 408
    iget-object v3, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v3}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 414
    iput v6, v2, Landroid/os/Message;->what:I

    .line 415
    iput v5, v2, Landroid/os/Message;->arg1:I

    .line 416
    iput p1, v2, Landroid/os/Message;->arg2:I

    .line 417
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 420
    :try_start_0
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 421
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    iget-object v0, p0, Lcom/umeng/common/net/e;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    goto :goto_0
.end method
