.class Lcom/umeng/common/net/a$b;
.super Landroid/os/Handler;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/common/net/a;


# direct methods
.method constructor <init>(Lcom/umeng/common/net/a;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DownloadAgent.handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/umeng/common/net/k;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DownloadAgent.handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v0}, Lcom/umeng/common/net/a;->c(Lcom/umeng/common/net/a;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v1}, Lcom/umeng/common/net/a;->b(Lcom/umeng/common/net/a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 93
    iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/common/net/k;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 104
    iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/common/net/k;->a(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;

    invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/common/net/k;->a(IILjava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): "

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
