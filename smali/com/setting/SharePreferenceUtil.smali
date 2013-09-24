.class public Lcom/setting/SharePreferenceUtil;
.super Ljava/lang/Object;
.source "SharePreferenceUtil.java"


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "file"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    .line 15
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    .line 16
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChatUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "curchatuser"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "email"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImg()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "img"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getIsAutoLogin()Z
    .locals 4

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, start:Z
    iget-object v2, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v3, "AutoLogin"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 129
    .local v0, res:Z
    const-string v2, "Get AutoLogin Flag "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v0
.end method

.method public getIsBack()Z
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, start:Z
    iget-object v1, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v2, "isStart"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getLinkStatus()I
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "linkstatus"

    const/16 v2, 0x79

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLogin()Z
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "Login"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "name"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "passwd"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getisFirst()Z
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->sp:Landroid/content/SharedPreferences;

    const-string v1, "isFirst"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 26
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    return-void
.end method

.method public setAutoLogin(Z)V
    .locals 2
    .parameter "autologin"

    .prologue
    .line 135
    const-string v0, "Set AutoLogin Flag "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "AutoLogin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 137
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    return-void
.end method

.method public setChatUser(Ljava/lang/String;)V
    .locals 2
    .parameter "appleId"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "curchatuser"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 48
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    return-void
.end method

.method public setImg(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "img"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 81
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 2
    .parameter "ip"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ip"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 88
    return-void
.end method

.method public setIsBack(Z)V
    .locals 2
    .parameter "isStart"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isStart"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 112
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method

.method public setIsFirst(Z)V
    .locals 2
    .parameter "isFirst"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "isFirst"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 123
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method

.method public setLinkStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "linkstatus"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method

.method public setLogin(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "Login"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 19
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    return-void
.end method

.method public setPasswd(Ljava/lang/String;)V
    .locals 2
    .parameter "passwd"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "passwd"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 30
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method

.method public setPort(I)V
    .locals 2
    .parameter "port"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "port"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 103
    iget-object v0, p0, Lcom/setting/SharePreferenceUtil;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    return-void
.end method
