.class Lcom/umeng/common/net/h;
.super Ljava/lang/Object;
.source "DownloadingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/common/net/DownloadingService;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/DownloadingService;)V
    .locals 0
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/umeng/common/net/h;->a:Lcom/umeng/common/net/DownloadingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/common/net/DownloadingService;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 901
    return-void
.end method
