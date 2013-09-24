.class Lactivity/LoginActivity$1;
.super Landroid/os/Handler;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/LoginActivity;
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
    iput-object p1, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lactivity/LoginActivity$1;)Lactivity/LoginActivity;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 72
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 74
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 75
    .local v1, strUrl:Ljava/lang/String;
    iget-object v2, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    invoke-virtual {v2}, Lactivity/LoginActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    iget-object v3, v3, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    iget-object v3, v3, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f07008b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    iget-object v3, v3, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f07008c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    iget-object v3, v3, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070042

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    new-instance v4, Lactivity/LoginActivity$1$1;

    invoke-direct {v4, p0, v1}, Lactivity/LoginActivity$1$1;-><init>(Lactivity/LoginActivity$1;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 86
    iget-object v3, p0, Lactivity/LoginActivity$1;->this$0:Lactivity/LoginActivity;

    iget-object v3, v3, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070043

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    new-instance v4, Lactivity/LoginActivity$1$2;

    invoke-direct {v4, p0}, Lactivity/LoginActivity$1$2;-><init>(Lactivity/LoginActivity$1;)V

    .line 86
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 94
    .local v0, dialog:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
