.class Lactivity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/LoginActivity;->toast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/LoginActivity;


# direct methods
.method constructor <init>(Lactivity/LoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/LoginActivity$2;->this$0:Lactivity/LoginActivity;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 379
    new-instance v0, Landroid/content/Intent;

    .line 380
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    .line 379
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lactivity/LoginActivity$2;->this$0:Lactivity/LoginActivity;

    invoke-virtual {v1, v0}, Lactivity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void
.end method
