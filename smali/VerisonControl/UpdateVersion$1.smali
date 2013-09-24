.class LVerisonControl/UpdateVersion$1;
.super Ljava/lang/Object;
.source "UpdateVersion.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVerisonControl/UpdateVersion;->getFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LVerisonControl/UpdateVersion;

.field private final synthetic val$strPath:Ljava/lang/String;


# direct methods
.method constructor <init>(LVerisonControl/UpdateVersion;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, LVerisonControl/UpdateVersion$1;->this$0:LVerisonControl/UpdateVersion;

    iput-object p2, p0, LVerisonControl/UpdateVersion$1;->val$strPath:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, LVerisonControl/UpdateVersion$1;->this$0:LVerisonControl/UpdateVersion;

    iget-object v2, p0, LVerisonControl/UpdateVersion$1;->val$strPath:Ljava/lang/String;

    #calls: LVerisonControl/UpdateVersion;->getDataSource(Ljava/lang/String;)V
    invoke-static {v1, v2}, LVerisonControl/UpdateVersion;->access$0(LVerisonControl/UpdateVersion;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DOWNLOADAPK"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
