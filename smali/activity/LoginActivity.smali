.class public Lactivity/LoginActivity;
.super Lactivity/MyActivity;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ISNOWNEW:I = 0x9

.field private static final NETWORKDOWN:I = 0xb

.field private static final STARTLOGIN:I = 0x111001

.field private static final UPDATEVERSION:I = 0xa


# instance fields
.field private handler:Landroid/os/Handler;

.field private ifRespone:Z

.field private mAccounts:Landroid/widget/EditText;

.field private mAutoSavePassword:Landroid/widget/CheckBox;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnForgetPassword:Landroid/widget/Button;

.field private mBtnLogin:Landroid/widget/Button;

.field private mBtnRegister:Landroid/widget/Button;

.field private mDialog:Landroid/app/Dialog;

.field private mMoreImage:Landroid/widget/ImageView;

.field private mMoreMenuView:Landroid/view/View;

.field private mMoreView:Landroid/view/View;

.field private mPassword:Landroid/widget/EditText;

.field private mShowMenu:Z

.field private mi:Landroid/view/MenuInflater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    .line 67
    iput-boolean v0, p0, Lactivity/LoginActivity;->mShowMenu:Z

    .line 69
    iput-boolean v0, p0, Lactivity/LoginActivity;->ifRespone:Z

    .line 70
    new-instance v0, Lactivity/LoginActivity$1;

    invoke-direct {v0, p0}, Lactivity/LoginActivity$1;-><init>(Lactivity/LoginActivity;)V

    iput-object v0, p0, Lactivity/LoginActivity;->handler:Landroid/os/Handler;

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    .line 50
    return-void
.end method

.method private isNetworkAvailable()Z
    .locals 5

    .prologue
    .line 357
    invoke-virtual {p0}, Lactivity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 358
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 357
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 359
    .local v2, mgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 360
    .local v1, info:[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    .line 367
    .end local v0           #i:I
    :cond_0
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 362
    .restart local v0       #i:I
    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 363
    const/4 v3, 0x1

    goto :goto_1

    .line 361
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private showRequestDialog()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    .line 234
    :cond_0
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f07006a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/common/DialogFactory;->creatRequestDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    .line 235
    iget-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 236
    return-void
.end method

.method private submit()V
    .locals 6

    .prologue
    .line 242
    invoke-direct {p0}, Lactivity/LoginActivity;->isNetworkAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    invoke-direct {p0, p0}, Lactivity/LoginActivity;->toast(Landroid/content/Context;)V

    .line 292
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v3, p0, Lactivity/LoginActivity;->mAccounts:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, accounts:Ljava/lang/String;
    iget-object v3, p0, Lactivity/LoginActivity;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, password:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 250
    :cond_1
    iget-object v3, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f07006b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_2
    invoke-direct {p0}, Lactivity/LoginActivity;->showRequestDialog()V

    .line 253
    iget-object v3, p0, Lactivity/LoginActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v3, v0}, Lcom/setting/SharePreferenceUtil;->setAccount(Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lactivity/LoginActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v3, v1}, Lcom/setting/SharePreferenceUtil;->setPasswd(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lactivity/LoginActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v2

    .line 265
    .local v2, u:Lcom/common/User;
    invoke-virtual {v2, v0}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2, v1}, Lcom/common/User;->setPassword(Ljava/lang/String;)V

    .line 272
    const/4 v3, 0x0

    iput-boolean v3, p0, Lactivity/LoginActivity;->ifRespone:Z

    .line 273
    iget-object v3, p0, Lactivity/LoginActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v3, v0}, Lcom/setting/SharePreferenceUtil;->setName(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lactivity/LoginActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v3

    invoke-virtual {v3}, Lcom/client/Client;->start()Z

    goto :goto_0
.end method

.method private toast(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 373
    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 374
    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    new-instance v2, Lactivity/LoginActivity$2;

    invoke-direct {v2, p0}, Lactivity/LoginActivity$2;-><init>(Lactivity/LoginActivity;)V

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 384
    return-void
.end method


# virtual methods
.method public UpdateMsgUI(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 390
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public UpdateStatus(B)V
    .locals 4
    .parameter "type"

    .prologue
    const v2, 0x7f070011

    .line 394
    iget-boolean v0, p0, Lactivity/LoginActivity;->ifRespone:Z

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/LoginActivity;->ifRespone:Z

    .line 396
    sparse-switch p1, :sswitch_data_0

    .line 429
    :goto_0
    if-nez p1, :cond_1

    .line 430
    invoke-virtual {p0}, Lactivity/LoginActivity;->startFriendActivicty()V

    .line 438
    :cond_0
    :goto_1
    return-void

    .line 398
    :sswitch_0
    invoke-virtual {p0}, Lactivity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 401
    :sswitch_1
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 402
    iget-object v2, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070072

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-static {v0, v1, v2}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :sswitch_2
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070073

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v0, v1, v2}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :sswitch_3
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 410
    iget-object v2, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070074

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v0, v1, v2}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :sswitch_4
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070075

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v0, v1, v2}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    :sswitch_5
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070076

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-static {v0, v1, v2}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_1

    .line 396
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x6 -> :sswitch_3
        0x9 -> :sswitch_4
        0x70 -> :sswitch_5
    .end sparse-switch
.end method

.method public goRegisterActivity()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 222
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lactivity/RegisterActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 224
    return-void
.end method

.method public initView()V
    .locals 4

    .prologue
    .line 150
    const v2, 0x7f0b0065

    invoke-virtual {p0, v2}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/LoginActivity;->mBtnRegister:Landroid/widget/Button;

    .line 151
    iget-object v2, p0, Lactivity/LoginActivity;->mBtnRegister:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v2, 0x7f0b0064

    invoke-virtual {p0, v2}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    .line 154
    iget-object v2, p0, Lactivity/LoginActivity;->mBtnLogin:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v2, 0x7f0b0066

    invoke-virtual {p0, v2}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/LoginActivity;->mBtnForgetPassword:Landroid/widget/Button;

    .line 157
    iget-object v2, p0, Lactivity/LoginActivity;->mBtnForgetPassword:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v2, 0x7f0b005f

    invoke-virtual {p0, v2}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/LoginActivity;->mBtnBack:Landroid/widget/Button;

    .line 160
    iget-object v2, p0, Lactivity/LoginActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lactivity/LoginActivity;->mAccounts:Landroid/widget/EditText;

    .line 163
    const v2, 0x7f0b0063

    invoke-virtual {p0, v2}, Lactivity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lactivity/LoginActivity;->mPassword:Landroid/widget/EditText;

    .line 164
    iget-object v2, p0, Lactivity/LoginActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v2}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, account:Ljava/lang/String;
    iget-object v2, p0, Lactivity/LoginActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v2}, Lcom/setting/SharePreferenceUtil;->getPasswd()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, pass:Ljava/lang/String;
    iget-object v2, p0, Lactivity/LoginActivity;->util:Lcom/setting/SharePreferenceUtil;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/setting/SharePreferenceUtil;->setLogin(Z)V

    .line 171
    iget-object v2, p0, Lactivity/LoginActivity;->mAccounts:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 296
    packed-switch p1, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 298
    :pswitch_0
    if-eqz p3, :cond_0

    .line 299
    const-string v2, "status"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    .local v1, status:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 301
    const-string v2, "EXIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "status"

    const-string v3, "EXIT"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lactivity/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 305
    invoke-virtual {p0}, Lactivity/LoginActivity;->finish()V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x111001
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 330
    new-instance v0, Landroid/content/Intent;

    .line 331
    const-class v1, Lactivity/GetMsgService;

    .line 330
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 332
    .local v0, service:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->stopService(Landroid/content/Intent;)Z

    .line 334
    iget-object v1, p0, Lactivity/LoginActivity;->application:Lactivity/MyApplication;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lactivity/MyApplication;->setServiceStart(Z)V

    .line 336
    invoke-virtual {p0}, Lactivity/LoginActivity;->close()V

    .line 337
    invoke-virtual {p0}, Lactivity/LoginActivity;->finish()V

    .line 348
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 218
    :goto_0
    :pswitch_0
    return-void

    .line 200
    :pswitch_1
    invoke-virtual {p0}, Lactivity/LoginActivity;->goRegisterActivity()V

    goto :goto_0

    .line 203
    :pswitch_2
    invoke-direct {p0}, Lactivity/LoginActivity;->submit()V

    goto :goto_0

    .line 206
    :pswitch_3
    invoke-virtual {p0}, Lactivity/LoginActivity;->close()V

    .line 207
    invoke-virtual {p0}, Lactivity/LoginActivity;->finish()V

    goto :goto_0

    .line 210
    :pswitch_4
    iget-object v2, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, url:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Lactivity/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x7f0b005f
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v1, 0x7f030017

    invoke-virtual {p0, v1}, Lactivity/LoginActivity;->setContentView(I)V

    .line 104
    new-instance v0, LVerisonControl/UpdateVersion;

    iget-object v1, p0, Lactivity/LoginActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, LVerisonControl/UpdateVersion;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 105
    .local v0, update:LVerisonControl/UpdateVersion;
    invoke-virtual {v0}, LVerisonControl/UpdateVersion;->start()V

    .line 125
    invoke-virtual {p0}, Lactivity/LoginActivity;->initView()V

    .line 127
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 141
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 142
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lactivity/LoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0}, Lactivity/LoginActivity;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0, p0}, Lactivity/LoginActivity;->toast(Landroid/content/Context;)V

    .line 137
    :cond_0
    return-void
.end method

.method public startFriendActivicty()V
    .locals 3

    .prologue
    .line 313
    iget-object v1, p0, Lactivity/LoginActivity;->util:Lcom/setting/SharePreferenceUtil;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/setting/SharePreferenceUtil;->setLogin(Z)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    .line 315
    const-class v1, Lactivity/FriendListActivity;

    .line 314
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 320
    .local v0, i:Landroid/content/Intent;
    const v1, 0x111001

    invoke-virtual {p0, v0, v1}, Lactivity/LoginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 321
    iget-object v1, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lactivity/LoginActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 325
    :cond_0
    return-void
.end method
