.class public Lactivity/WelcomeActivity;
.super Landroid/app/Activity;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final WELCOME:I = 0x111101


# instance fields
.field private application:Lactivity/MyApplication;

.field private mBtnStart:Landroid/widget/Button;

.field private util:Lcom/setting/SharePreferenceUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startFriendListActivity()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lactivity/FriendListActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Lactivity/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-virtual {p0}, Lactivity/WelcomeActivity;->finish()V

    .line 112
    return-void
.end method

.method private startLoginActivity()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lactivity/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    const v1, 0x111101

    invoke-virtual {p0, v0, v1}, Lactivity/WelcomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 121
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 93
    packed-switch p1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    if-eqz p3, :cond_0

    .line 96
    const-string v1, "status"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, status:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    const-string v1, "EXIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lactivity/WelcomeActivity;->finish()V

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x111101
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-direct {p0}, Lactivity/WelcomeActivity;->startLoginActivity()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x7f0b00b5
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lactivity/WelcomeActivity;->setContentView(I)V

    .line 42
    invoke-virtual {p0}, Lactivity/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lactivity/MyApplication;

    iput-object v1, p0, Lactivity/WelcomeActivity;->application:Lactivity/MyApplication;

    .line 44
    const v1, 0x7f0b00b5

    invoke-virtual {p0, v1}, Lactivity/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lactivity/WelcomeActivity;->mBtnStart:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lactivity/WelcomeActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    new-instance v1, Lcom/setting/SharePreferenceUtil;

    const-string v2, "saveUser"

    invoke-direct {v1, p0, v2}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lactivity/WelcomeActivity;->util:Lcom/setting/SharePreferenceUtil;

    .line 68
    iget-object v1, p0, Lactivity/WelcomeActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->isServiceStart()Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/GetMsgService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lactivity/WelcomeActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    .end local v0           #service:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lactivity/WelcomeActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v1}, Lcom/setting/SharePreferenceUtil;->getIsAutoLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-direct {p0}, Lactivity/WelcomeActivity;->startFriendListActivity()V

    .line 75
    invoke-virtual {p0}, Lactivity/WelcomeActivity;->finish()V

    .line 77
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 126
    return-void
.end method
