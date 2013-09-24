.class public Lactivity/AddToContactActivity;
.super Lactivity/MyActivity;
.source "AddToContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private contactDB:Lcom/DB/ContactDB;

.field private imgs:[I

.field private mBtnAppleId:Landroid/widget/Button;

.field private mBtnCancle:Landroid/widget/Button;

.field private mBtnEdit:Landroid/widget/Button;

.field private mBtnName:Landroid/widget/Button;

.field private mBtnSend:Landroid/widget/Button;

.field private mBtnShare:Landroid/widget/Button;

.field private mBtnSuccess:Landroid/widget/Button;

.field private mEname:Landroid/widget/EditText;

.field private mIhead:Landroid/widget/ImageView;

.field private mTname:Landroid/widget/TextView;

.field private user:Lcom/common/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 40
    iput-object v0, p0, Lactivity/AddToContactActivity;->imgs:[I

    .line 22
    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x16t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
        0x7t 0x2t 0x2t 0x7ft
        0x8t 0x2t 0x2t 0x7ft
        0x9t 0x2t 0x2t 0x7ft
        0xat 0x2t 0x2t 0x7ft
        0xbt 0x2t 0x2t 0x7ft
        0xct 0x2t 0x2t 0x7ft
        0xdt 0x2t 0x2t 0x7ft
        0xet 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private AddToContact()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, name:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 170
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 171
    const v3, 0x7f07001d

    invoke-virtual {p0, v3}, Lactivity/AddToContactActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-static {p0, v2, v3}, Lcom/common/DialogFactory;->ToastDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 173
    :cond_0
    new-instance v0, Lactivity/ContactListEntity;

    iget-object v2, p0, Lactivity/AddToContactActivity;->user:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lactivity/ContactListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    .local v0, entity:Lactivity/ContactListEntity;
    iget-object v2, p0, Lactivity/AddToContactActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v2, v0}, Lcom/DB/ContactDB;->Update(Lactivity/ContactListEntity;)V

    .line 176
    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    goto :goto_0
.end method

.method private send()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lactivity/NewMessageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 105
    const-string v1, "touser"

    iget-object v2, p0, Lactivity/AddToContactActivity;->user:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lactivity/AddToContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    .line 108
    return-void
.end method

.method private switchToEdit()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 126
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnName:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnCancle:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    iget-object v1, p0, Lactivity/AddToContactActivity;->mTname:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lactivity/AddToContactActivity;->mTname:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v1, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 136
    return-void
.end method

.method private switchToShow()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 111
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnName:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 112
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    iget-object v1, p0, Lactivity/AddToContactActivity;->mBtnCancle:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 117
    iget-object v1, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 119
    iget-object v1, p0, Lactivity/AddToContactActivity;->mTname:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lactivity/AddToContactActivity;->mTname:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    return-void
.end method


# virtual methods
.method public UpdateMsgUI(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 183
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public UpdateStatus(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 188
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-virtual {p0}, Lactivity/AddToContactActivity;->finish()V

    goto :goto_0

    .line 155
    :pswitch_3
    invoke-direct {p0}, Lactivity/AddToContactActivity;->AddToContact()V

    goto :goto_0

    .line 158
    :pswitch_4
    invoke-direct {p0}, Lactivity/AddToContactActivity;->switchToEdit()V

    goto :goto_0

    .line 161
    :pswitch_5
    invoke-direct {p0}, Lactivity/AddToContactActivity;->send()V

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x7f0b0004
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->requestWindowFeature(I)Z

    .line 45
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lactivity/AddToContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/common/User;

    iput-object v2, p0, Lactivity/AddToContactActivity;->user:Lcom/common/User;

    .line 48
    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mBtnName:Landroid/widget/Button;

    .line 49
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnName:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v2, 0x7f0b0005

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mBtnCancle:Landroid/widget/Button;

    .line 52
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnCancle:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v2, 0x7f0b0007

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mBtnEdit:Landroid/widget/Button;

    .line 55
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v2, 0x7f0b0008

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mBtnSuccess:Landroid/widget/Button;

    .line 58
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mBtnAppleId:Landroid/widget/Button;

    .line 61
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnAppleId:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnAppleId:Landroid/widget/Button;

    iget-object v3, p0, Lactivity/AddToContactActivity;->user:Lcom/common/User;

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mBtnSend:Landroid/widget/Button;

    .line 65
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mBtnShare:Landroid/widget/Button;

    .line 68
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnShare:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v2, 0x7f0b0009

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mIhead:Landroid/widget/ImageView;

    .line 71
    const v2, 0x7f0b000a

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mTname:Landroid/widget/TextView;

    .line 72
    const v2, 0x7f0b000b

    invoke-virtual {p0, v2}, Lactivity/AddToContactActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    .line 76
    new-instance v2, Lcom/DB/ContactDB;

    invoke-direct {v2, p0}, Lcom/DB/ContactDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lactivity/AddToContactActivity;->contactDB:Lcom/DB/ContactDB;

    .line 78
    iget-object v2, p0, Lactivity/AddToContactActivity;->contactDB:Lcom/DB/ContactDB;

    iget-object v3, p0, Lactivity/AddToContactActivity;->user:Lcom/common/User;

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v0

    .line 81
    .local v0, entity:Lactivity/ContactListEntity;
    if-nez v0, :cond_0

    .line 82
    iget-object v2, p0, Lactivity/AddToContactActivity;->mIhead:Landroid/widget/ImageView;

    iget-object v3, p0, Lactivity/AddToContactActivity;->imgs:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    iget-object v2, p0, Lactivity/AddToContactActivity;->mTname:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v2, p0, Lactivity/AddToContactActivity;->user:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, tname:Ljava/lang/String;
    invoke-direct {p0}, Lactivity/AddToContactActivity;->switchToEdit()V

    .line 97
    :goto_0
    iget-object v2, p0, Lactivity/AddToContactActivity;->mBtnName:Landroid/widget/Button;

    iget-object v3, p0, Lactivity/AddToContactActivity;->mBtnName:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {}, Lcom/common/TelPhoneConstant;->getAddToContactBackShowWidth()F

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void

    .line 90
    .end local v1           #tname:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lactivity/AddToContactActivity;->mIhead:Landroid/widget/ImageView;

    iget-object v3, p0, Lactivity/AddToContactActivity;->imgs:[I

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getImg()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .restart local v1       #tname:Ljava/lang/String;
    iget-object v2, p0, Lactivity/AddToContactActivity;->mTname:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v2, p0, Lactivity/AddToContactActivity;->mEname:Landroid/widget/EditText;

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    invoke-direct {p0}, Lactivity/AddToContactActivity;->switchToShow()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lactivity/MyActivity;->onDestroy()V

    .line 141
    iget-object v0, p0, Lactivity/AddToContactActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v0}, Lcom/DB/ContactDB;->close()V

    .line 142
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 202
    iget-object v0, p0, Lactivity/AddToContactActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 197
    iget-object v0, p0, Lactivity/AddToContactActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 198
    return-void
.end method
