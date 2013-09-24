.class public Lcom/umeng/common/net/DownloadingService;
.super Landroid/app/Service;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/common/net/DownloadingService$e;,
        Lcom/umeng/common/net/DownloadingService$d;,
        Lcom/umeng/common/net/DownloadingService$b;,
        Lcom/umeng/common/net/DownloadingService$a;,
        Lcom/umeng/common/net/DownloadingService$c;
    }
.end annotation


# static fields
.field static final a:I = 0x3

.field static final b:I = 0x4

.field static final c:I = 0x5

.field static final d:I = 0x6

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field static final i:I = 0x0

.field static final j:I = 0x1

.field static final k:I = 0x64

.field static final l:Ljava/lang/String; = "filename"

.field public static m:Z = false

.field private static final o:Ljava/lang/String; = null

.field private static final q:I = 0x3

.field private static final u:J = 0x1f40L

.field private static v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/common/net/a$a;",
            "Landroid/os/Messenger;",
            ">;"
        }
    .end annotation
.end field

.field private static w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/umeng/common/net/DownloadingService$d;",
            ">;"
        }
    .end annotation
.end field

.field private static y:Ljava/lang/Boolean;


# instance fields
.field final n:Landroid/os/Messenger;

.field private p:Landroid/app/NotificationManager;

.field private r:Landroid/content/Context;

.field private s:Landroid/os/Handler;

.field private t:Lcom/umeng/common/net/DownloadingService$a;

.field private x:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    const-class v0, Lcom/umeng/common/net/DownloadingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    .line 152
    sput-boolean v1, Lcom/umeng/common/net/DownloadingService;->m:Z

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    .line 884
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->y:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 163
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/umeng/common/net/DownloadingService$c;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/DownloadingService$c;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->n:Landroid/os/Messenger;

    .line 1223
    return-void
.end method

.method public static a(Lcom/umeng/common/net/a$a;)I
    .locals 4
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    .line 506
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/umeng/common/net/a$a;II)Landroid/app/Notification;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x1080081

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 997
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 998
    new-instance v1, Landroid/app/Notification;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\u5e94\u7528"

    const-wide/16 v3, 0x1

    invoke-direct {v1, v9, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1001
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/umeng/common/a/b;->a(Landroid/content/Context;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1003
    invoke-static {v0}, Lcom/umeng/common/a/a;->c(Landroid/content/Context;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p3, v7}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1006
    invoke-static {v0}, Lcom/umeng/common/a/a;->b(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1008
    invoke-static {v0}, Lcom/umeng/common/a/a;->d(Landroid/content/Context;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/umeng/common/a/c;->g(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1014
    invoke-static {v0}, Lcom/umeng/common/a/a;->a(Landroid/content/Context;)I

    move-result v3

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1016
    invoke-static {v0}, Lcom/umeng/common/a/a;->e(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1020
    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1021
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x800

    invoke-static {v0, v7, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1024
    iget-boolean v3, p1, Lcom/umeng/common/net/a$a;->g:Z

    if-eqz v3, :cond_0

    .line 1025
    const/4 v3, 0x2

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1026
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "continue"

    invoke-static {p2, v4}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1028
    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1030
    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1032
    invoke-direct {p0, v1, p2}, Lcom/umeng/common/net/DownloadingService;->b(Landroid/app/Notification;I)V

    .line 1034
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "cancel"

    invoke-static {p2, v4}, Lcom/umeng/common/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/common/net/l;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1036
    invoke-static {v0}, Lcom/umeng/common/a/a;->h(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1038
    invoke-static {v0}, Lcom/umeng/common/a/a;->h(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1048
    :goto_0
    return-object v1

    .line 1041
    :cond_0
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 1042
    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1044
    invoke-static {v0}, Lcom/umeng/common/a/a;->h(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/umeng/common/net/DownloadingService;->p:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter

    .prologue
    .line 122
    sput-object p0, Lcom/umeng/common/net/DownloadingService;->y:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    .line 451
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 452
    if-eqz v0, :cond_2

    .line 453
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download service clear cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    iget-object v3, v3, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    .line 455
    :cond_0
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService;->p:Landroid/app/NotificationManager;

    iget v2, v0, Lcom/umeng/common/net/DownloadingService$d;->c:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 456
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    iget-object v2, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService$d;->b()V

    .line 458
    invoke-direct {p0}, Lcom/umeng/common/net/DownloadingService;->e()V

    .line 460
    :cond_2
    return-void
.end method

.method private a(Landroid/app/Notification;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v0

    .line 1121
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/a/c;->e(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1127
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "setBackgroundResource"

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v3

    const-string v4, "umeng_common_gradient_green"

    invoke-virtual {v3, v4}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1129
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->p:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1130
    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/umeng/common/net/DownloadingService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/umeng/common/net/DownloadingService;->c(Lcom/umeng/common/net/a$a;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Lcom/umeng/common/net/a$a;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct/range {p0 .. p7}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;JJJ)V

    return-void
.end method

.method private a(Lcom/umeng/common/net/a$a;JJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 862
    iget-object v0, p1, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 863
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 864
    const-string v0, "dsize"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 866
    invoke-static {}, Lcom/umeng/common/util/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 868
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 869
    const-string v2, "dtime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const/4 v0, 0x0

    .line 872
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_0

    .line 873
    long-to-float v0, p2

    long-to-float v2, p4

    div-float/2addr v0, v2

    .line 875
    :cond_0
    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 876
    const-string v2, "dpcent"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    const-string v0, "ptimes"

    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const/4 v0, 0x0

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/umeng/common/net/DownloadingService;->b(Ljava/util/Map;Z[Ljava/lang/String;)V

    .line 882
    :cond_1
    return-void
.end method

.method static synthetic a(Ljava/util/Map;Z[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/umeng/common/net/DownloadingService;->b(Ljava/util/Map;Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-static {p0}, Lcom/umeng/common/net/DownloadingService;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 15
    .parameter
    .parameter

    .prologue
    .line 1157
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.umeng.broadcast.download.msg"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1158
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1160
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1161
    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1162
    if-eqz v5, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1163
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    move-object v14, v0

    .line 1164
    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 1166
    const-string v3, "continue"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1167
    if-nez v1, :cond_1

    .line 1168
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    const-string v2, "Receive action do play click."

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/umeng/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1175
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/common/a/c;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1181
    const/4 v1, 0x0

    .line 1220
    :goto_0
    return v1

    .line 1184
    :cond_0
    new-instance v1, Lcom/umeng/common/net/DownloadingService$b;

    iget-object v4, v14, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    iget v6, v14, Lcom/umeng/common/net/DownloadingService$d;->d:I

    iget-object v7, p0, Lcom/umeng/common/net/DownloadingService;->t:Lcom/umeng/common/net/DownloadingService$a;

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/umeng/common/net/DownloadingService$b;-><init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V

    .line 1186
    iput-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 1187
    invoke-virtual {v1}, Lcom/umeng/common/net/DownloadingService$b;->start()V

    .line 1189
    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    invoke-direct {p0, v1, v5}, Lcom/umeng/common/net/DownloadingService;->b(Landroid/app/Notification;I)V

    .line 1190
    const/4 v1, 0x1

    goto :goto_0

    .line 1192
    :cond_1
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    const-string v3, "Receive action do play click."

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V

    .line 1194
    const/4 v1, 0x0

    iput-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 1195
    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->b:Landroid/app/Notification;

    invoke-direct {p0, v1, v5}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/app/Notification;I)V

    .line 1196
    const/4 v1, 0x1

    goto :goto_0

    .line 1198
    :cond_2
    const-string v3, "cancel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1199
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    const-string v3, "Receive action do stop click."

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1201
    if-eqz v1, :cond_3

    .line 1202
    const/4 v2, 0x2

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/umeng/common/net/DownloadingService$b;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1211
    :goto_1
    :try_start_2
    invoke-direct {p0, v5}, Lcom/umeng/common/net/DownloadingService;->a(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1213
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1204
    :cond_3
    :try_start_3
    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x0

    aget-wide v8, v1, v2

    .line 1205
    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x1

    aget-wide v10, v1, v2

    .line 1206
    iget-object v1, v14, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    const/4 v2, 0x2

    aget-wide v12, v1, v2

    .line 1207
    iget-object v7, v14, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    move-object v6, p0

    invoke-direct/range {v6 .. v13}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;JJJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1209
    :catch_0
    move-exception v1

    .line 1211
    :try_start_4
    invoke-direct {p0, v5}, Lcom/umeng/common/net/DownloadingService;->a(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 1217
    :catch_1
    move-exception v1

    .line 1218
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1220
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 1211
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-direct {p0, v5}, Lcom/umeng/common/net/DownloadingService;->a(I)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method static synthetic a(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/umeng/common/net/DownloadingService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->p:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic b()Ljava/util/Map;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    return-object v0
.end method

.method private b(Landroid/app/Notification;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/common/a/a;->f(Landroid/content/Context;)I

    move-result v0

    .line 1134
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/common/a/c;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1139
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "setBackgroundResource"

    iget-object v3, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v3

    const-string v4, "umeng_common_gradient_orange"

    invoke-virtual {v3, v4}, Lcom/umeng/common/c;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1141
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->p:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1142
    return-void
.end method

.method private static final b(Ljava/util/Map;Z[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1058
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/common/net/i;

    invoke-direct {v1, p2, p1, p0}, Lcom/umeng/common/net/i;-><init>([Ljava/lang/String;ZLjava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1117
    return-void
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 914
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 916
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 917
    if-nez v0, :cond_0

    move v0, v1

    .line 927
    :goto_0
    return v0

    .line 920
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 921
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 922
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 927
    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/common/net/a$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    invoke-static {p0}, Lcom/umeng/common/net/DownloadingService;->d(Lcom/umeng/common/net/a$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/umeng/common/net/DownloadingService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    return-object v0
.end method

.method private c(Lcom/umeng/common/net/a$a;)V
    .locals 7
    .parameter

    .prologue
    .line 479
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownload([mComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTitle:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {p1}, Lcom/umeng/common/net/DownloadingService;->a(Lcom/umeng/common/net/a$a;)I

    move-result v4

    .line 483
    new-instance v0, Lcom/umeng/common/net/DownloadingService$b;

    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/umeng/common/net/DownloadingService;->t:Lcom/umeng/common/net/DownloadingService$a;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/umeng/common/net/DownloadingService$b;-><init>(Lcom/umeng/common/net/DownloadingService;Landroid/content/Context;Lcom/umeng/common/net/a$a;IILcom/umeng/common/net/DownloadingService$a;)V

    .line 486
    new-instance v1, Lcom/umeng/common/net/DownloadingService$d;

    invoke-direct {v1, p1, v4}, Lcom/umeng/common/net/DownloadingService$d;-><init>(Lcom/umeng/common/net/a$a;I)V

    .line 487
    invoke-virtual {v1}, Lcom/umeng/common/net/DownloadingService$d;->a()V

    .line 488
    iput-object v0, v1, Lcom/umeng/common/net/DownloadingService$d;->a:Lcom/umeng/common/net/DownloadingService$b;

    .line 490
    invoke-virtual {v0}, Lcom/umeng/common/net/DownloadingService$b;->start()V

    .line 492
    invoke-direct {p0}, Lcom/umeng/common/net/DownloadingService;->e()V

    .line 493
    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->m:Z

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 495
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 496
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/DownloadingService$d;

    .line 497
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 466
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.umeng.intent.DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 467
    new-instance v1, Lcom/umeng/common/net/f;

    invoke-direct {v1, p0}, Lcom/umeng/common/net/f;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v1, p0, Lcom/umeng/common/net/DownloadingService;->x:Landroid/content/BroadcastReceiver;

    .line 475
    iget-object v1, p0, Lcom/umeng/common/net/DownloadingService;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/umeng/common/net/DownloadingService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 476
    return-void
.end method

.method private static d(Lcom/umeng/common/net/a$a;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 937
    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->m:Z

    if-eqz v0, :cond_1

    .line 938
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 939
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 940
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    .line 941
    sget-object v5, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " downling  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 944
    :cond_0
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "downling  null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_1
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    if-nez v0, :cond_2

    move v0, v1

    .line 956
    :goto_1
    return v0

    .line 948
    :cond_2
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/a$a;

    .line 949
    iget-object v4, p0, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v2

    .line 950
    goto :goto_1

    .line 952
    :cond_4
    iget-object v0, v0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 953
    goto :goto_1

    :cond_5
    move v0, v1

    .line 956
    goto :goto_1
.end method

.method private e()V
    .locals 5

    .prologue
    .line 1145
    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->m:Z

    if-eqz v0, :cond_0

    .line 1146
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 1147
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->w:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    .line 1148
    sget-object v2, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   cacheSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    if-eq v0, v1, :cond_0

    .line 1150
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Client size ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   cacheSize = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1153
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 887
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->y:Ljava/lang/Boolean;

    monitor-enter v1

    .line 888
    :try_start_0
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->y:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show single toast.["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/umeng/common/net/DownloadingService;->y:Ljava/lang/Boolean;

    .line 891
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/common/net/g;

    invoke-direct {v2, p0, p1}, Lcom/umeng/common/net/g;-><init>(Lcom/umeng/common/net/DownloadingService;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 897
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/os/Handler;

    new-instance v2, Lcom/umeng/common/net/h;

    invoke-direct {v2, p0}, Lcom/umeng/common/net/h;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    const-wide/16 v3, 0x4b0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 904
    :cond_0
    monitor-exit v1

    .line 905
    return-void

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter

    .prologue
    .line 224
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    const-string v1, "onBind "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->n:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 239
    sget-boolean v0, Lcom/umeng/common/net/DownloadingService;->m:Z

    if-eqz v0, :cond_0

    .line 240
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/common/Log;->LOG:Z

    .line 241
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 243
    :cond_0
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/umeng/common/net/DownloadingService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->p:Landroid/app/NotificationManager;

    .line 245
    iput-object p0, p0, Lcom/umeng/common/net/DownloadingService;->r:Landroid/content/Context;

    .line 247
    new-instance v0, Lcom/umeng/common/net/d;

    invoke-direct {v0, p0}, Lcom/umeng/common/net/d;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->s:Landroid/os/Handler;

    .line 328
    new-instance v0, Lcom/umeng/common/net/e;

    invoke-direct {v0, p0}, Lcom/umeng/common/net/e;-><init>(Lcom/umeng/common/net/DownloadingService;)V

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService;->t:Lcom/umeng/common/net/DownloadingService$a;

    .line 448
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 962
    const v0, 0x3f480

    .line 963
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/common/net/c;->a(I)V

    .line 964
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/c;->a(Landroid/content/Context;)Lcom/umeng/common/net/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/common/net/c;->finalize()V

    .line 965
    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->x:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/common/net/DownloadingService;->x:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/umeng/common/net/DownloadingService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 970
    return-void

    .line 966
    :catch_0
    move-exception v0

    .line 967
    sget-object v1, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 230
    sget-object v0, Lcom/umeng/common/net/DownloadingService;->o:Ljava/lang/String;

    const-string v1, "onStart "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/umeng/common/net/DownloadingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/umeng/common/net/DownloadingService;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 232
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 233
    return-void
.end method
