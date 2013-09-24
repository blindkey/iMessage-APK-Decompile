.class Lcom/umeng/common/net/a$a;
.super Ljava/lang/Object;
.source "DownloadAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/common/net/a$a;->g:Z

    .line 209
    iput-object p1, p0, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/umeng/common/net/a$a;
    .locals 4
    .parameter

    .prologue
    .line 227
    const-string v0, "mComponentName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    const-string v1, "mTitle"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v2, "mUrl"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 230
    new-instance v3, Lcom/umeng/common/net/a$a;

    invoke-direct {v3, v0, v1, v2}, Lcom/umeng/common/net/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "mMd5"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/umeng/common/net/a$a;->d:Ljava/lang/String;

    .line 232
    const-string v0, "mTargetMd5"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    .line 233
    const-string v0, "reporturls"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    .line 234
    const-string v0, "rich_notification"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v3, Lcom/umeng/common/net/a$a;->g:Z

    .line 235
    return-object v3
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    const-string v1, "mComponentName"

    iget-object v2, p0, Lcom/umeng/common/net/a$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v1, "mTitle"

    iget-object v2, p0, Lcom/umeng/common/net/a$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "mUrl"

    iget-object v2, p0, Lcom/umeng/common/net/a$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "mMd5"

    iget-object v2, p0, Lcom/umeng/common/net/a$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v1, "mTargetMd5"

    iget-object v2, p0, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "reporturls"

    iget-object v2, p0, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 222
    const-string v1, "rich_notification"

    iget-boolean v2, p0, Lcom/umeng/common/net/a$a;->g:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 223
    return-object v0
.end method
