.class public Lactivity/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# instance fields
.field private CurUser:Lcom/common/User;

.field private ServiceIsStart:Z

.field private attach:Lcom/client/Attach;

.field private client:Lcom/client/Client;

.field private contactDB:Lcom/DB/ContactDB;

.field private heart:Lcom/client/Heart;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mRecentChat:Lactivity/FriendListActivity;

.field private messageDB:Lcom/DB/MessageDB;

.field private recentNum:I

.field private tokenDB:Lcom/DB/TokenDB;

.field private userDB:Lcom/DB/UserDB;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 39
    iput v0, p0, Lactivity/MyApplication;->recentNum:I

    .line 49
    iput-boolean v0, p0, Lactivity/MyApplication;->ServiceIsStart:Z

    .line 29
    return-void
.end method


# virtual methods
.method public SetRecentChat(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter "mRecentChat"

    .prologue
    .line 138
    iput-object p1, p0, Lactivity/MyApplication;->mRecentChat:Lactivity/FriendListActivity;

    .line 139
    return-void
.end method

.method public addRecentNum(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 240
    iget v0, p0, Lactivity/MyApplication;->recentNum:I

    add-int/2addr v0, p1

    iput v0, p0, Lactivity/MyApplication;->recentNum:I

    .line 241
    return-void
.end method

.method public changeToSearchMsgView()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lactivity/MyApplication;->mRecentChat:Lactivity/FriendListActivity;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lactivity/MyApplication;->mRecentChat:Lactivity/FriendListActivity;

    invoke-virtual {v0}, Lactivity/FriendListActivity;->changeToSearchMsgView()V

    .line 226
    :cond_0
    return-void
.end method

.method public closeDB()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method public delRecentNum(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 235
    iget v0, p0, Lactivity/MyApplication;->recentNum:I

    sub-int/2addr v0, p1

    iput v0, p0, Lactivity/MyApplication;->recentNum:I

    .line 236
    return-void
.end method

.method public getAttach()Lcom/client/Attach;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lactivity/MyApplication;->attach:Lcom/client/Attach;

    return-object v0
.end method

.method public getClient()Lcom/client/Client;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lactivity/MyApplication;->client:Lcom/client/Client;

    return-object v0
.end method

.method public getContactDB()Lcom/DB/ContactDB;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lactivity/MyApplication;->contactDB:Lcom/DB/ContactDB;

    return-object v0
.end method

.method public getCurUser()Lcom/common/User;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lactivity/MyApplication;->CurUser:Lcom/common/User;

    return-object v0
.end method

.method public getHeart()Lcom/client/Heart;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lactivity/MyApplication;->heart:Lcom/client/Heart;

    return-object v0
.end method

.method public getMessageDB()Lcom/DB/MessageDB;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lactivity/MyApplication;->messageDB:Lcom/DB/MessageDB;

    return-object v0
.end method

.method public getRecentNum()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lactivity/MyApplication;->recentNum:I

    return v0
.end method

.method public getUserDB()Lcom/DB/UserDB;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lactivity/MyApplication;->userDB:Lcom/DB/UserDB;

    return-object v0
.end method

.method public getmNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lactivity/MyApplication;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public isServiceStart()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lactivity/MyApplication;->ServiceIsStart:Z

    return v0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 57
    new-instance v4, Lcom/setting/SharePreferenceUtil;

    .line 58
    const-string v5, "saveUser"

    .line 57
    invoke-direct {v4, p0, v5}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .local v4, util:Lcom/setting/SharePreferenceUtil;
    const v5, 0x7f070009

    :try_start_0
    invoke-virtual {p0, v5}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    .line 67
    const v5, 0x7f07000a

    invoke-virtual {p0, v5}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/common/Constants;->StortmpFilePath:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 71
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/common/Constants;->StortmpFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, dir1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 77
    const v5, 0x7f07000b

    invoke-virtual {p0, v5}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    .line 78
    const v5, 0x7f07000c

    invoke-virtual {p0, v5}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/common/Constants;->StortmpFilePath:Ljava/lang/String;

    .line 79
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 82
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/common/Constants;->StortmpFilePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #dir1:Ljava/io/File;
    :cond_1
    :goto_0
    const-string v5, "FileDir"

    sget-object v6, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v5, Lcom/client/Client;

    const v6, 0x7f070002

    invoke-virtual {p0, v6}, Lactivity/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lactivity/MyApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f08

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/client/Client;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v5, p0, Lactivity/MyApplication;->client:Lcom/client/Client;

    .line 96
    new-instance v5, Lcom/client/Attach;

    iget-object v6, p0, Lactivity/MyApplication;->client:Lcom/client/Client;

    invoke-direct {v5, p0, v6}, Lcom/client/Attach;-><init>(Landroid/content/Context;Lcom/client/Client;)V

    iput-object v5, p0, Lactivity/MyApplication;->attach:Lcom/client/Attach;

    .line 99
    new-instance v5, Lcom/client/Heart;

    iget-object v6, p0, Lactivity/MyApplication;->client:Lcom/client/Client;

    invoke-direct {v5, p0, v6}, Lcom/client/Heart;-><init>(Landroid/content/Context;Lcom/client/Client;)V

    iput-object v5, p0, Lactivity/MyApplication;->heart:Lcom/client/Heart;

    .line 109
    new-instance v5, Lcom/common/User;

    invoke-direct {v5}, Lcom/common/User;-><init>()V

    iput-object v5, p0, Lactivity/MyApplication;->CurUser:Lcom/common/User;

    .line 111
    invoke-static {p0}, Lcom/common/emoji;->CalUTF8(Landroid/content/Context;)V

    .line 113
    const/4 v5, 0x0

    iput-boolean v5, p0, Lactivity/MyApplication;->ServiceIsStart:Z

    .line 115
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lactivity/GetMsgService;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v3, service:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lactivity/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 118
    return-void

    .line 86
    .end local v3           #service:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Ljava/lang/SecurityException;
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lactivity/MyApplication;->heart:Lcom/client/Heart;

    invoke-virtual {v0}, Lcom/client/Heart;->overThread()V

    .line 124
    iget-object v0, p0, Lactivity/MyApplication;->attach:Lcom/client/Attach;

    invoke-virtual {v0}, Lcom/client/Attach;->overThread()V

    .line 135
    return-void
.end method

.method public setContactDB(Lcom/DB/ContactDB;)V
    .locals 0
    .parameter "contactDB"

    .prologue
    .line 217
    iput-object p1, p0, Lactivity/MyApplication;->contactDB:Lcom/DB/ContactDB;

    .line 218
    return-void
.end method

.method public setMessageDB(Lcom/DB/MessageDB;)V
    .locals 0
    .parameter "messageDB"

    .prologue
    .line 210
    iput-object p1, p0, Lactivity/MyApplication;->messageDB:Lcom/DB/MessageDB;

    .line 211
    return-void
.end method

.method public setRecentNum(I)V
    .locals 0
    .parameter "recentNum"

    .prologue
    .line 183
    iput p1, p0, Lactivity/MyApplication;->recentNum:I

    .line 184
    return-void
.end method

.method public setServiceStart(Z)V
    .locals 0
    .parameter "ServiceIsStart"

    .prologue
    .line 155
    iput-boolean p1, p0, Lactivity/MyApplication;->ServiceIsStart:Z

    .line 156
    return-void
.end method

.method public setUserDB(Lcom/DB/UserDB;)V
    .locals 0
    .parameter "userDB"

    .prologue
    .line 194
    iput-object p1, p0, Lactivity/MyApplication;->userDB:Lcom/DB/UserDB;

    .line 195
    return-void
.end method

.method public setmNotificationManager(Landroid/app/NotificationManager;)V
    .locals 0
    .parameter "mNotificationManager"

    .prologue
    .line 163
    iput-object p1, p0, Lactivity/MyApplication;->mNotificationManager:Landroid/app/NotificationManager;

    .line 164
    return-void
.end method
