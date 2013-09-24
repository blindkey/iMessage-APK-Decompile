.class Lactivity/GetMsgService$1;
.super Landroid/content/BroadcastReceiver;
.source "GetMsgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/GetMsgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/GetMsgService;


# direct methods
.method constructor <init>(Lactivity/GetMsgService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/GetMsgService$1;->this$0:Lactivity/GetMsgService;

    .line 82
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    iget-object v0, p0, Lactivity/GetMsgService$1;->this$0:Lactivity/GetMsgService;

    #calls: Lactivity/GetMsgService;->setMsgNotification()V
    invoke-static {v0}, Lactivity/GetMsgService;->access$0(Lactivity/GetMsgService;)V

    .line 89
    return-void
.end method
