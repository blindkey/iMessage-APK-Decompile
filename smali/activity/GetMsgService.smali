.class public Lactivity/GetMsgService;
.super Landroid/app/Service;
.source "GetMsgService.java"


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private application:Lactivity/MyApplication;

.field private attach:Lcom/client/Attach;

.field private backKeyReceiver:Landroid/content/BroadcastReceiver;

.field private client:Lcom/client/Client;

.field private curUser:Lcom/common/User;

.field private handler:Landroid/os/Handler;

.field private isStart:Z

.field private keyDB:Lcom/DB/KeyDB;

.field private mContext:Landroid/content/Context;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private messageDB:Lcom/DB/MessageDB;

.field private tokenDB:Lcom/DB/TokenDB;

.field private userDB:Lcom/DB/UserDB;

.field private util:Lcom/setting/SharePreferenceUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/GetMsgService;->isStart:Z

    .line 74
    iput-object p0, p0, Lactivity/GetMsgService;->mContext:Landroid/content/Context;

    .line 82
    new-instance v0, Lactivity/GetMsgService$1;

    invoke-direct {v0, p0}, Lactivity/GetMsgService$1;-><init>(Lactivity/GetMsgService;)V

    iput-object v0, p0, Lactivity/GetMsgService;->backKeyReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lactivity/GetMsgService$2;

    invoke-direct {v0, p0}, Lactivity/GetMsgService$2;-><init>(Lactivity/GetMsgService;)V

    iput-object v0, p0, Lactivity/GetMsgService;->handler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lactivity/GetMsgService;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    invoke-direct {p0}, Lactivity/GetMsgService;->setMsgNotification()V

    return-void
.end method

.method static synthetic access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    return-object v0
.end method

.method static synthetic access$10(Lactivity/GetMsgService;)Lcom/DB/MessageDB;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;

    return-object v0
.end method

.method static synthetic access$11(Lactivity/GetMsgService;)Lcom/common/User;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lactivity/GetMsgService;->curUser:Lcom/common/User;

    return-object v0
.end method

.method static synthetic access$12(Lactivity/GetMsgService;)Lcom/DB/UserDB;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lactivity/GetMsgService;->userDB:Lcom/DB/UserDB;

    return-object v0
.end method

.method static synthetic access$13(Lactivity/GetMsgService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lactivity/GetMsgService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lactivity/GetMsgService;Landroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;

    return-void
.end method

.method static synthetic access$3(Lactivity/GetMsgService;)Landroid/app/Notification;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lactivity/GetMsgService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$4(Lactivity/GetMsgService;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lactivity/GetMsgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    return-object v0
.end method

.method static synthetic access$6(Lactivity/GetMsgService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lactivity/GetMsgService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$7(Lactivity/GetMsgService;Lcom/common/TranObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lactivity/GetMsgService;->sendLoginType(Lcom/common/TranObject;)V

    return-void
.end method

.method static synthetic access$8(Lactivity/GetMsgService;)Lcom/client/Client;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    return-object v0
.end method

.method static synthetic access$9(Lactivity/GetMsgService;)Lcom/DB/KeyDB;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lactivity/GetMsgService;->keyDB:Lcom/DB/KeyDB;

    return-object v0
.end method

.method private sendLoginType(Lcom/common/TranObject;)V
    .locals 14
    .parameter "msg"

    .prologue
    .line 174
    invoke-virtual {p1}, Lcom/common/TranObject;->getByte()[B

    move-result-object v1

    .line 175
    .local v1, buf:[B
    invoke-virtual {p1}, Lcom/common/TranObject;->getLen()I

    move-result v5

    .line 176
    .local v5, len:I
    const/4 v12, 0x6

    aget-byte v11, v1, v12

    .line 177
    .local v11, type:B
    packed-switch v11, :pswitch_data_0

    .line 214
    :goto_0
    :pswitch_0
    return-void

    .line 179
    :pswitch_1
    invoke-static {v1, v5}, LdataEncode/Authentication;->Respone_rsaKey([BI)V

    .line 181
    new-instance v9, Lcom/common/TranObject;

    invoke-direct {v9}, Lcom/common/TranObject;-><init>()V

    .line 182
    .local v9, tranObject:Lcom/common/TranObject;
    invoke-static {}, LdataEncode/Authentication;->send_aesKey()Lcom/common/CoreBuffer;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 183
    iget-object v12, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    invoke-virtual {v12, v9}, Lcom/client/Client;->setLoginMsg(Lcom/common/TranObject;)V

    goto :goto_0

    .line 186
    .end local v9           #tranObject:Lcom/common/TranObject;
    :pswitch_2
    invoke-static {p0}, Lcom/common/ProgrameUUID;->getProgramUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, puid:Ljava/lang/String;
    const-string v12, "Auth_Result"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {v1, v5}, LdataEncode/Authentication;->Respone_authentication([BI)Z

    move-result v3

    .line 190
    .local v3, flag:Z
    iget-object v12, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v12}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, acc:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 192
    sget-object v8, LdataEncode/KeyLib;->randomAuthKey:[B

    .line 194
    .local v8, radomkey:[B
    iget-object v12, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v12}, Lcom/setting/SharePreferenceUtil;->getIsAutoLogin()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 195
    iget-object v12, p0, Lactivity/GetMsgService;->keyDB:Lcom/DB/KeyDB;

    invoke-virtual {v12, v0}, Lcom/DB/KeyDB;->getFastKey(Ljava/lang/String;)[B

    move-result-object v2

    .line 196
    .local v2, fastkey:[B
    new-instance v6, Lcom/client/Login;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-direct {v6, v0, v2, v12, v8}, Lcom/client/Login;-><init>(Ljava/lang/String;[B[B[B)V

    .line 197
    .local v6, mLogin:Lcom/client/Login;
    new-instance v10, Lcom/common/TranObject;

    invoke-direct {v10}, Lcom/common/TranObject;-><init>()V

    .line 198
    .local v10, tranObject1:Lcom/common/TranObject;
    invoke-virtual {v6}, Lcom/client/Login;->body_fast()Lcom/common/CoreBuffer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 199
    iget-object v12, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    invoke-virtual {v12, v10}, Lcom/client/Client;->setLoginMsg(Lcom/common/TranObject;)V

    goto :goto_0

    .line 201
    .end local v2           #fastkey:[B
    .end local v6           #mLogin:Lcom/client/Login;
    .end local v10           #tranObject1:Lcom/common/TranObject;
    :cond_0
    iget-object v12, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v12}, Lcom/setting/SharePreferenceUtil;->getPasswd()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, key:Ljava/lang/String;
    new-instance v6, Lcom/client/Login;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-direct {v6, v0, v12, v13, v8}, Lcom/client/Login;-><init>(Ljava/lang/String;[B[B[B)V

    .line 203
    .restart local v6       #mLogin:Lcom/client/Login;
    new-instance v10, Lcom/common/TranObject;

    invoke-direct {v10}, Lcom/common/TranObject;-><init>()V

    .line 204
    .restart local v10       #tranObject1:Lcom/common/TranObject;
    invoke-virtual {v6}, Lcom/client/Login;->body_new()Lcom/common/CoreBuffer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 205
    iget-object v12, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    invoke-virtual {v12, v10}, Lcom/client/Client;->setLoginMsg(Lcom/common/TranObject;)V

    goto/16 :goto_0

    .line 208
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #mLogin:Lcom/client/Login;
    .end local v8           #radomkey:[B
    .end local v10           #tranObject1:Lcom/common/TranObject;
    :cond_1
    iget-object v12, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    invoke-virtual {v12}, Lcom/client/Client;->overThread()V

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setMsgNotification()V
    .locals 0

    .prologue
    .line 628
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 147
    const-string v1, "MsgService"

    const-string v2, "Create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 153
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.common.backKey"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lactivity/GetMsgService;->backKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lactivity/GetMsgService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lactivity/GetMsgService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lactivity/GetMsgService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 156
    invoke-virtual {p0}, Lactivity/GetMsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lactivity/MyApplication;

    iput-object v1, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    .line 157
    iget-object v1, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v1

    iput-object v1, p0, Lactivity/GetMsgService;->curUser:Lcom/common/User;

    .line 159
    new-instance v1, Lcom/setting/SharePreferenceUtil;

    const-string v2, "saveUser"

    invoke-direct {v1, p0, v2}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    .line 163
    iget-object v1, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v1

    iput-object v1, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    .line 166
    iget-object v1, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v1

    iput-object v1, p0, Lactivity/GetMsgService;->attach:Lcom/client/Attach;

    .line 169
    iget-object v1, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    iget-object v2, p0, Lactivity/GetMsgService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Lactivity/MyApplication;->setmNotificationManager(Landroid/app/NotificationManager;)V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 532
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 534
    const-string v0, "MsgService"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v0, p0, Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;

    invoke-virtual {v0}, Lcom/DB/MessageDB;->close()V

    .line 537
    iput-object v2, p0, Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;

    .line 539
    :cond_0
    iget-object v0, p0, Lactivity/GetMsgService;->tokenDB:Lcom/DB/TokenDB;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lactivity/GetMsgService;->tokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v0}, Lcom/DB/TokenDB;->close()V

    .line 541
    iput-object v2, p0, Lactivity/GetMsgService;->tokenDB:Lcom/DB/TokenDB;

    .line 543
    :cond_1
    iget-object v0, p0, Lactivity/GetMsgService;->keyDB:Lcom/DB/KeyDB;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lactivity/GetMsgService;->keyDB:Lcom/DB/KeyDB;

    invoke-virtual {v0}, Lcom/DB/KeyDB;->close()V

    .line 546
    iput-object v2, p0, Lactivity/GetMsgService;->keyDB:Lcom/DB/KeyDB;

    .line 548
    :cond_2
    iget-object v0, p0, Lactivity/GetMsgService;->backKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lactivity/GetMsgService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 550
    iget-object v0, p0, Lactivity/GetMsgService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x911

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 551
    iget-object v0, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    invoke-virtual {v0, v2}, Lactivity/MyApplication;->setmNotificationManager(Landroid/app/NotificationManager;)V

    .line 552
    iget-object v0, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->onDestroy()V

    .line 553
    iget-object v0, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lactivity/MyApplication;->setServiceStart(Z)V

    .line 554
    iget-object v0, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    if-eqz v0, :cond_3

    .line 555
    iget-object v0, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    invoke-virtual {v0}, Lcom/client/Client;->destory()V

    .line 577
    :cond_3
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 218
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 220
    const-string v1, "MsgService"

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lactivity/MyApplication;->setServiceStart(Z)V

    .line 223
    new-instance v1, Lcom/setting/SharePreferenceUtil;

    invoke-virtual {p0}, Lactivity/GetMsgService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 224
    const-string v3, "saveUser"

    invoke-direct {v1, v2, v3}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 223
    iput-object v1, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    .line 225
    iget-object v1, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/setting/SharePreferenceUtil;->setIsBack(Z)V

    .line 227
    new-instance v1, Lcom/DB/MessageDB;

    invoke-direct {v1, p0}, Lcom/DB/MessageDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;

    .line 228
    new-instance v1, Lcom/DB/UserDB;

    invoke-direct {v1, p0}, Lcom/DB/UserDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lactivity/GetMsgService;->userDB:Lcom/DB/UserDB;

    .line 229
    new-instance v1, Lcom/DB/TokenDB;

    invoke-direct {v1, p0}, Lcom/DB/TokenDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lactivity/GetMsgService;->tokenDB:Lcom/DB/TokenDB;

    .line 230
    new-instance v1, Lcom/DB/KeyDB;

    invoke-direct {v1, p0}, Lcom/DB/KeyDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lactivity/GetMsgService;->keyDB:Lcom/DB/KeyDB;

    .line 231
    iget-object v1, p0, Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;

    iget-object v2, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v2}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/DB/MessageDB;->setError(Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lactivity/GetMsgService;->client:Lcom/client/Client;

    new-instance v2, Lactivity/GetMsgService$3;

    invoke-direct {v2, p0}, Lactivity/GetMsgService$3;-><init>(Lactivity/GetMsgService;)V

    invoke-virtual {v1, v2}, Lcom/client/Client;->setMessageListener(Lcom/client/MessageListener;)V

    .line 468
    iget-object v1, p0, Lactivity/GetMsgService;->attach:Lcom/client/Attach;

    new-instance v2, Lactivity/GetMsgService$4;

    invoke-direct {v2, p0}, Lactivity/GetMsgService$4;-><init>(Lactivity/GetMsgService;)V

    invoke-virtual {v1, v2}, Lcom/client/Attach;->setAttachListener(Lcom/client/MessageListener;)V

    .line 518
    iget-object v1, p0, Lactivity/GetMsgService;->application:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v0

    .line 521
    .local v0, client:Lcom/client/Client;
    iget-object v1, p0, Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v1}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/GetMsgService;->tokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v0, v1, v2}, Lcom/client/Client;->setTokenDB(Ljava/lang/String;Lcom/DB/TokenDB;)V

    .line 527
    return-void
.end method
