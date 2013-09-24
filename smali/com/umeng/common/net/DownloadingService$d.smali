.class Lcom/umeng/common/net/DownloadingService$d;
.super Ljava/lang/Object;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Lcom/umeng/common/net/DownloadingService$b;

.field b:Landroid/app/Notification;

.field c:I

.field d:I

.field e:Lcom/umeng/common/net/a$a;

.field f:[J


# direct methods
.method public constructor <init>(Lcom/umeng/common/net/a$a;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/umeng/common/net/DownloadingService$d;->f:[J

    .line 983
    iput p2, p0, Lcom/umeng/common/net/DownloadingService$d;->c:I

    .line 984
    iput-object p1, p0, Lcom/umeng/common/net/DownloadingService$d;->e:Lcom/umeng/common/net/a$a;

    .line 985
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 988
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 992
    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/umeng/common/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/common/net/DownloadingService$d;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    :cond_0
    return-void
.end method
