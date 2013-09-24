.class public abstract Lactivity/MyActivity;
.super Landroid/app/Activity;
.source "MyActivity.java"


# static fields
.field public static final LINKERR:I = 0x1

.field public static final LINKING:I = 0x0

.field public static final LINKSUCC:I = 0x2


# instance fields
.field private LinkStatus:I

.field private MsgReceiver:Landroid/content/BroadcastReceiver;

.field protected application:Lactivity/MyApplication;

.field protected contactDB:Lcom/DB/ContactDB;

.field protected mActiId:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected messageDB:Lcom/DB/MessageDB;

.field protected tokenDB:Lcom/DB/TokenDB;

.field protected userDB:Lcom/DB/UserDB;

.field protected util:Lcom/setting/SharePreferenceUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lactivity/MyActivity;->LinkStatus:I

    .line 93
    new-instance v0, Lactivity/MyActivity$1;

    invoke-direct {v0, p0}, Lactivity/MyActivity$1;-><init>(Lactivity/MyActivity;)V

    iput-object v0, p0, Lactivity/MyActivity;->MsgReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract UpdateMsgUI(B)V
.end method

.method public abstract UpdateProcess()V
.end method

.method public abstract UpdateStatus(B)V
.end method

.method public close()V
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.way.message"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Lactivity/MyActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lactivity/MyActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 51
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/common/TelPhoneConstant;->height:F

    .line 52
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sput v2, Lcom/common/TelPhoneConstant;->width:F

    .line 56
    iput-object p0, p0, Lactivity/MyActivity;->mContext:Landroid/content/Context;

    .line 57
    new-instance v2, Lcom/DB/MessageDB;

    invoke-direct {v2, p0}, Lcom/DB/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lactivity/MyActivity;->messageDB:Lcom/DB/MessageDB;

    .line 58
    new-instance v2, Lcom/DB/ContactDB;

    invoke-direct {v2, p0}, Lcom/DB/ContactDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lactivity/MyActivity;->contactDB:Lcom/DB/ContactDB;

    .line 59
    new-instance v2, Lcom/DB/UserDB;

    invoke-direct {v2, p0}, Lcom/DB/UserDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lactivity/MyActivity;->userDB:Lcom/DB/UserDB;

    .line 60
    new-instance v2, Lcom/DB/TokenDB;

    invoke-direct {v2, p0}, Lcom/DB/TokenDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lactivity/MyActivity;->tokenDB:Lcom/DB/TokenDB;

    .line 61
    invoke-virtual {p0}, Lactivity/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lactivity/MyApplication;

    iput-object v2, p0, Lactivity/MyActivity;->application:Lactivity/MyApplication;

    .line 63
    const-string v2, ""

    iput-object v2, p0, Lactivity/MyActivity;->mActiId:Ljava/lang/String;

    .line 64
    new-instance v2, Lcom/setting/SharePreferenceUtil;

    const-string v3, "saveUser"

    invoke-direct {v2, p0, v3}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lactivity/MyActivity;->util:Lcom/setting/SharePreferenceUtil;

    .line 65
    iget-object v2, p0, Lactivity/MyActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v2}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v0

    .line 68
    .local v0, client:Lcom/client/Client;
    iget-object v2, p0, Lactivity/MyActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v2}, Lcom/setting/SharePreferenceUtil;->getIsAutoLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/client/Client;->getLinkStatu()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lactivity/MyActivity;->util:Lcom/setting/SharePreferenceUtil;

    iget v3, p0, Lactivity/MyActivity;->LinkStatus:I

    invoke-virtual {v2, v3}, Lcom/setting/SharePreferenceUtil;->setLinkStatus(I)V

    .line 70
    iget-object v2, p0, Lactivity/MyActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v2}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v2

    invoke-virtual {v2}, Lcom/client/Client;->start()Z

    .line 84
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lactivity/MyActivity;->messageDB:Lcom/DB/MessageDB;

    invoke-virtual {v0}, Lcom/DB/MessageDB;->close()V

    .line 89
    iget-object v0, p0, Lactivity/MyActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v0}, Lcom/DB/ContactDB;->close()V

    .line 90
    iget-object v0, p0, Lactivity/MyActivity;->tokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v0}, Lcom/DB/TokenDB;->close()V

    .line 91
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 208
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.way.message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v1, "com.way.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v1, "com.way.querystatus"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lactivity/MyActivity;->MsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lactivity/MyActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 218
    iget-object v0, p0, Lactivity/MyActivity;->MsgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lactivity/MyActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    return-void
.end method
