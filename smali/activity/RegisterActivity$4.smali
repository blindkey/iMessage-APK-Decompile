.class Lactivity/RegisterActivity$4;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/RegisterActivity;->toast(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/RegisterActivity;


# direct methods
.method constructor <init>(Lactivity/RegisterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/RegisterActivity$4;->this$0:Lactivity/RegisterActivity;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 450
    new-instance v0, Landroid/content/Intent;

    .line 451
    const-string v1, "android.settings.WIRELESS_SETTINGS"

    .line 450
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lactivity/RegisterActivity$4;->this$0:Lactivity/RegisterActivity;

    invoke-virtual {v1, v0}, Lactivity/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 453
    return-void
.end method
