.class public Lcom/umeng/common/a/c;
.super Ljava/lang/Object;
.source "StringMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 11
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_network_break_alert"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_action_info_exist"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_info_interrupt"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_action_pause"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_action_continue"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 26
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_action_cancel"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_download_notification_prefix"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 32
    invoke-static {p0}, Lcom/umeng/common/c;->a(Landroid/content/Context;)Lcom/umeng/common/c;

    move-result-object v0

    const-string v1, "umeng_common_download_failed"

    invoke-virtual {v0, v1}, Lcom/umeng/common/c;->g(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
