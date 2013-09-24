.class public Lcom/client/Heart$HeartBeat;
.super Ljava/lang/Thread;
.source "Heart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/client/Heart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeartBeat"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/client/Heart;


# direct methods
.method public constructor <init>(Lcom/client/Heart;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/client/Heart$HeartBeat;->this$0:Lcom/client/Heart;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const-wide/32 v2, 0x1d4c0

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 43
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    iget-object v2, p0, Lcom/client/Heart$HeartBeat;->this$0:Lcom/client/Heart;

    #getter for: Lcom/client/Heart;->flag:Z
    invoke-static {v2}, Lcom/client/Heart;->access$0(Lcom/client/Heart;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 66
    return-void

    .line 43
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_5
    const-string v2, "Heart"

    const-string v3, "Heart Beat"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Lcom/common/TranObject;

    invoke-direct {v1}, Lcom/common/TranObject;-><init>()V

    .line 59
    .local v1, tranObject:Lcom/common/TranObject;
    iget-object v2, p0, Lcom/client/Heart$HeartBeat;->this$0:Lcom/client/Heart;

    invoke-virtual {v2}, Lcom/client/Heart;->body()Lcom/common/CoreBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 60
    iget-object v2, p0, Lcom/client/Heart$HeartBeat;->this$0:Lcom/client/Heart;

    #getter for: Lcom/client/Heart;->client:Lcom/client/Client;
    invoke-static {v2}, Lcom/client/Heart;->access$1(Lcom/client/Heart;)Lcom/client/Client;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
