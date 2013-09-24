.class Lcom/umeng/common/net/DownloadingService$b;
.super Ljava/lang/Thread;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Lcom/umeng/common/net/DownloadingService$a;

.field private j:Lcom/umeng/common/net/a$a;


# direct methods
.method public constructor <init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 533
    iput-object p1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 522
    iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    .line 523
    iput-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    .line 524
    iput-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    .line 525
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I

    .line 535
    :try_start_0
    iput-object p2, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    .line 536
    iput-object p3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    .line 537
    iput p5, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    .line 539
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 541
    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    .line 542
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 543
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    .line 544
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    .line 548
    :cond_0
    iput-object p6, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    .line 549
    iput p4, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    .line 551
    invoke-static {}, Lcom/umeng/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;

    .line 553
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 557
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/download/.um/apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;

    .line 558
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 564
    :goto_1
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 562
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-interface {v1, v2, v0}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService$b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 8
    .parameter

    .prologue
    .line 852
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not install. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-interface {v0, v1, p1}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/Exception;)V

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    iget-wide v4, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    iget v6, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;JJJ)V

    .line 857
    return-void
.end method

.method private a(Z)V
    .locals 13
    .parameter

    .prologue
    .line 595
    const/4 v2, 0x0

    .line 596
    const/4 v1, 0x0

    .line 598
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v3, v3, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/umeng/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".apk.tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v3, v3, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    const-string v4, "delta_update"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 600
    const-string v3, "apk"

    const-string v4, "patch"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 605
    :goto_0
    invoke-static {}, Lcom/umeng/common/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v8, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2a

    move-object v4, v0

    .line 616
    :goto_1
    :try_start_1
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveAPK: url = %1$15s\t|\tfilename = %2$15s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v6, v6, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v1, v1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 621
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 622
    const-string v1, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v1, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 625
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 627
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v1, v5, v9

    if-lez v1, :cond_0

    .line 629
    const-string v1, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 632
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2c

    move-result-object v9

    .line 634
    if-nez p1, :cond_1

    .line 635
    const-wide/16 v1, 0x0

    :try_start_2
    iput-wide v1, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    .line 636
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    .line 637
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContentLength: %1$15s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v5, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_1
    const/16 v0, 0x1000

    new-array v5, v0, [B

    .line 641
    const/4 v0, 0x0

    .line 642
    const/16 v6, 0x32

    .line 643
    const/4 v1, 0x1

    .line 645
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v7, v7, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "saveAPK getContentLength "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v3, v3, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v7, v7, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 652
    :goto_2
    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I

    if-gez v2, :cond_28

    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_28

    .line 653
    const/4 v3, 0x0

    invoke-virtual {v8, v5, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 654
    iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    int-to-long v2, v2

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    .line 655
    add-int/lit8 v3, v0, 0x1

    rem-int/2addr v0, v6

    if-nez v0, :cond_27

    .line 656
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 657
    const/4 v0, 0x0

    .line 693
    :goto_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 694
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 696
    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 698
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 699
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    aput-wide v3, v1, v2

    .line 700
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    aput-wide v3, v1, v2

    .line 701
    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v1, 0x2

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    int-to-long v2, v2

    aput-wide v2, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_11

    .line 838
    if-eqz v9, :cond_2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 843
    :cond_2
    if-eqz v8, :cond_3

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 849
    :cond_3
    :goto_4
    return-void

    .line 609
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->c:Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    const v4, 0x8003

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2d
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2a

    move-result-object v1

    .line 613
    :try_start_6
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2b

    move-result-object v0

    move-object v4, v0

    move-object v8, v1

    goto/16 :goto_1

    .line 668
    :cond_5
    :try_start_7
    iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    long-to-float v0, v10

    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    iget-wide v10, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    long-to-float v2, v10

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 669
    const/16 v2, 0x64

    if-le v0, v2, :cond_26

    const/16 v0, 0x63

    move v2, v0

    .line 674
    :goto_5
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    iget v7, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-interface {v0, v7, v2}, Lcom/umeng/common/net/DownloadingService$a;->a(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_e
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_11

    .line 678
    :cond_6
    :try_start_8
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 679
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v7, v10, v2, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_e
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_11

    .line 689
    :cond_7
    :goto_6
    :try_start_9
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v0

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v7, v7, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v10, v10, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v7, v10, v2}, Lcom/umeng/common/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v3

    .line 691
    goto/16 :goto_2

    .line 682
    :catch_0
    move-exception v0

    .line 683
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v7, "Service Client for downloading %1$15s is dead. Removing messenger from the service"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v12, v12, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    aput-object v12, v10, v11

    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    const/4 v10, 0x0

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_11

    goto :goto_6

    .line 780
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    .line 781
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 782
    iget v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    const/4 v4, 0x3

    if-le v0, v4, :cond_20

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-boolean v0, v0, Lcom/umeng/common/net/a$a;->g:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-nez v0, :cond_20

    .line 784
    :try_start_b
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Download Fail out of max repeat count"

    invoke-static {v0, v4}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1e

    .line 790
    :try_start_c
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v0, v4}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    .line 791
    invoke-direct {p0, v1}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 792
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/common/net/j;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/j;-><init>(Lcom/umeng/common/net/DownloadingService$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 838
    :goto_8
    if-eqz v3, :cond_8

    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_20

    .line 843
    :cond_8
    if-eqz v2, :cond_3

    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_4

    .line 844
    :catch_2
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 844
    :catch_3
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 839
    :catch_4
    move-exception v0

    .line 840
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 843
    if-eqz v8, :cond_3

    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_4

    .line 844
    :catch_5
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_0
    move-exception v0

    .line 843
    if-eqz v8, :cond_9

    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    .line 846
    :cond_9
    :goto_9
    throw v0

    .line 844
    :catch_6
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 703
    :cond_a
    :try_start_12
    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    .line 705
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    iget-wide v4, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    iget v6, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;JJJ)V

    .line 706
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_11

    .line 838
    if-eqz v9, :cond_b

    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 843
    :cond_b
    if-eqz v8, :cond_3

    :try_start_14
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_4

    .line 844
    :catch_7
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 839
    :catch_8
    move-exception v0

    .line 840
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 843
    if-eqz v8, :cond_3

    :try_start_16
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    goto/16 :goto_4

    .line 844
    :catch_9
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_1
    move-exception v0

    .line 843
    if-eqz v8, :cond_c

    :try_start_17
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    .line 846
    :cond_c
    :goto_a
    throw v0

    .line 844
    :catch_a
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 710
    :cond_d
    if-nez v0, :cond_11

    .line 711
    :try_start_18
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Fail repeat count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 714
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    .line 715
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/Exception;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_11

    .line 838
    :cond_e
    if-eqz v9, :cond_f

    :try_start_19
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c

    .line 843
    :cond_f
    if-eqz v8, :cond_3

    :try_start_1a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto/16 :goto_4

    .line 844
    :catch_b
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 839
    :catch_c
    move-exception v0

    .line 840
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 843
    if-eqz v8, :cond_3

    :try_start_1c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d

    goto/16 :goto_4

    .line 844
    :catch_d
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_2
    move-exception v0

    .line 843
    if-eqz v8, :cond_10

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e

    .line 846
    :cond_10
    :goto_b
    throw v0

    .line 844
    :catch_e
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 719
    :cond_11
    :try_start_1e
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 720
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 721
    const-string v1, "dsize"

    iget-wide v2, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 725
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 726
    const-string v2, "dtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v1, "ptimes"

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v2, v2, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/common/net/DownloadingService;->a(Ljava/util/Map;Z[Ljava/lang/String;)V

    .line 734
    :cond_12
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tmp"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 736
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 738
    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v2, v2, Lcom/umeng/common/net/a$a;->d:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v2, v2, Lcom/umeng/common/net/a$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/common/util/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 739
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    const-string v2, "delta_update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 740
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 741
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 742
    const-string v2, "filename"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 745
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 746
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 747
    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    iput v2, v1, Landroid/os/Message;->arg2:I

    .line 748
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_11

    .line 751
    :try_start_1f
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 752
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 754
    :cond_13
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_e
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_10
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1

    .line 838
    :goto_c
    if-eqz v9, :cond_14

    :try_start_20
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_13

    .line 843
    :cond_14
    if-eqz v8, :cond_3

    :try_start_21
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_f

    goto/16 :goto_4

    .line 844
    :catch_f
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 755
    :catch_10
    move-exception v0

    .line 756
    :try_start_22
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_11

    goto :goto_c

    .line 833
    :catch_11
    move-exception v0

    .line 834
    :goto_d
    :try_start_23
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v1, v2}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    .line 835
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_e

    .line 838
    if-eqz v9, :cond_15

    :try_start_24
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_9
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_23

    .line 843
    :cond_15
    if-eqz v8, :cond_3

    :try_start_25
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_12

    goto/16 :goto_4

    .line 844
    :catch_12
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 839
    :catch_13
    move-exception v0

    .line 840
    :try_start_26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    .line 843
    if-eqz v8, :cond_3

    :try_start_27
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_14

    goto/16 :goto_4

    .line 844
    :catch_14
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_3
    move-exception v0

    .line 843
    if-eqz v8, :cond_16

    :try_start_28
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_15

    .line 846
    :cond_16
    :goto_e
    throw v0

    .line 844
    :catch_15
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 760
    :cond_17
    :try_start_29
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 762
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    .line 763
    new-instance v0, Landroid/app/Notification;

    const v1, 0x1080082

    const-string v2, " \u4e0b\u8f7d\u5931\u8d25\u3002"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 768
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 770
    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/common/b;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-object v5, v5, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u4e0b\u8f7d\u5931\u8d25\u3002"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 773
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 774
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_11

    .line 838
    if-eqz v9, :cond_18

    :try_start_2a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_17

    .line 843
    :cond_18
    if-eqz v8, :cond_3

    :try_start_2b
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_16

    goto/16 :goto_4

    .line 844
    :catch_16
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 839
    :catch_17
    move-exception v0

    .line 840
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    .line 843
    if-eqz v8, :cond_3

    :try_start_2d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_18

    goto/16 :goto_4

    .line 844
    :catch_18
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_4
    move-exception v0

    .line 843
    if-eqz v8, :cond_19

    :try_start_2e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_19

    .line 846
    :cond_19
    :goto_f
    throw v0

    .line 844
    :catch_19
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 778
    :cond_1a
    :try_start_2f
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-interface {v0, v2, v1}, Lcom/umeng/common/net/DownloadingService$a;->a(ILjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_11

    .line 838
    :cond_1b
    if-eqz v9, :cond_1c

    :try_start_30
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_5
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_1b

    .line 843
    :cond_1c
    if-eqz v8, :cond_3

    :try_start_31
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_1a

    goto/16 :goto_4

    .line 844
    :catch_1a
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 839
    :catch_1b
    move-exception v0

    .line 840
    :try_start_32
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_5

    .line 843
    if-eqz v8, :cond_3

    :try_start_33
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1c

    goto/16 :goto_4

    .line 844
    :catch_1c
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_5
    move-exception v0

    .line 843
    if-eqz v8, :cond_1d

    :try_start_34
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1d

    .line 846
    :cond_1d
    :goto_10
    throw v0

    .line 844
    :catch_1d
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 787
    :catch_1e
    move-exception v0

    .line 788
    :try_start_35
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_7

    .line 790
    :try_start_36
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v0, v4}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    .line 791
    invoke-direct {p0, v1}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 792
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/common/net/j;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/j;-><init>(Lcom/umeng/common/net/DownloadingService$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_6

    goto/16 :goto_8

    .line 837
    :catchall_6
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    .line 838
    :goto_11
    if-eqz v9, :cond_1e

    :try_start_37
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_27

    .line 843
    :cond_1e
    if-eqz v8, :cond_1f

    :try_start_38
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_26

    .line 846
    :cond_1f
    :goto_12
    throw v0

    .line 790
    :catchall_7
    move-exception v0

    :try_start_39
    iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v5, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v4, v5}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V

    .line 791
    invoke-direct {p0, v1}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 792
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/umeng/common/net/j;

    invoke-direct {v4, p0}, Lcom/umeng/common/net/j;-><init>(Lcom/umeng/common/net/DownloadingService$b;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0

    .line 804
    :cond_20
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait for repeating Test network repeat count="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_6

    .line 806
    :try_start_3a
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->j:Lcom/umeng/common/net/a$a;

    iget-boolean v0, v0, Lcom/umeng/common/net/a$a;->g:Z

    if-nez v0, :cond_22

    .line 807
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 808
    iget-wide v0, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_21

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Z)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_6
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3a} :catch_1f

    goto/16 :goto_8

    .line 828
    :catch_1f
    move-exception v0

    .line 829
    :try_start_3b
    invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 830
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;I)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_6

    goto/16 :goto_8

    .line 810
    :cond_21
    const/4 v0, 0x1

    :try_start_3c
    invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Z)V

    goto/16 :goto_8

    .line 813
    :cond_22
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 814
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    aput-wide v5, v1, v4

    .line 815
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/umeng/common/net/DownloadingService$b;->f:J

    aput-wide v5, v1, v4

    .line 816
    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v1, 0x2

    iget v4, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    int-to-long v4, v4

    aput-wide v4, v0, v1

    .line 819
    iget v0, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    const-string v1, "continue"

    invoke-static {v0, v1}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    const-class v5, Lcom/umeng/common/net/DownloadingService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 822
    const-string v4, "com.umeng.broadcast.download.msg"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z

    .line 825
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/common/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/common/a/c;->c(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/common/net/DownloadingService;->a(Ljava/lang/String;)V

    .line 826
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changed play state button on op-notification."

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_6
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3c} :catch_1f

    goto/16 :goto_8

    .line 839
    :catch_20
    move-exception v0

    .line 840
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_8

    .line 843
    if-eqz v2, :cond_3

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_21

    goto/16 :goto_4

    .line 844
    :catch_21
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_8
    move-exception v0

    .line 843
    if-eqz v2, :cond_23

    :try_start_3f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_22

    .line 846
    :cond_23
    :goto_13
    throw v0

    .line 844
    :catch_22
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 839
    :catch_23
    move-exception v0

    .line 840
    :try_start_40
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_9

    .line 843
    if-eqz v8, :cond_3

    :try_start_41
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_24

    goto/16 :goto_4

    .line 844
    :catch_24
    move-exception v0

    .line 845
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 842
    :catchall_9
    move-exception v0

    .line 843
    if-eqz v8, :cond_24

    :try_start_42
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_25

    .line 846
    :cond_24
    :goto_14
    throw v0

    .line 844
    :catch_25
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 844
    :catch_26
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_12

    .line 839
    :catch_27
    move-exception v1

    .line 840
    :try_start_43
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_a

    .line 843
    if-eqz v8, :cond_1f

    :try_start_44
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_44} :catch_28

    goto/16 :goto_12

    .line 844
    :catch_28
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_12

    .line 842
    :catchall_a
    move-exception v0

    .line 843
    if-eqz v8, :cond_25

    :try_start_45
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_29

    .line 846
    :cond_25
    :goto_15
    throw v0

    .line 844
    :catch_29
    move-exception v1

    .line 845
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 837
    :catchall_b
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_11

    :catchall_c
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_11

    :catchall_d
    move-exception v0

    move-object v9, v2

    goto/16 :goto_11

    :catchall_e
    move-exception v0

    goto/16 :goto_11

    .line 833
    :catch_2a
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_d

    :catch_2b
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_d

    :catch_2c
    move-exception v0

    move-object v9, v2

    goto/16 :goto_d

    .line 780
    :catch_2d
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_7

    :catch_2e
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_7

    :catch_2f
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_7

    :cond_26
    move v2, v0

    goto/16 :goto_5

    :cond_27
    move v0, v3

    goto/16 :goto_2

    :cond_28
    move v0, v1

    goto/16 :goto_3

    :cond_29
    move-object v3, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 591
    iput p1, p0, Lcom/umeng/common/net/DownloadingService$b;->g:I

    .line 592
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 567
    iput v0, p0, Lcom/umeng/common/net/DownloadingService$b;->d:I

    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService$b;->i:Lcom/umeng/common/net/DownloadingService$a;

    iget v2, p0, Lcom/umeng/common/net/DownloadingService$b;->h:I

    invoke-interface {v1, v2}, Lcom/umeng/common/net/DownloadingService$a;->a(I)V

    .line 572
    :cond_0
    iget-wide v1, p0, Lcom/umeng/common/net/DownloadingService$b;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/umeng/common/net/DownloadingService$b;->a(Z)V

    .line 575
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService$b;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_2
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
