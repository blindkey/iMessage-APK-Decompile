.class public Lcom/client/ReadPhoneContact;
.super Ljava/lang/Thread;
.source "ReadPhoneContact.java"


# static fields
.field private static final PHONES_CONTACT_ID_INDEX:I = 0x3

.field private static final PHONES_DISPLAY_NAME_INDEX:I = 0x0

.field private static final PHONES_NUMBER_INDEX:I = 0x1

.field private static final PHONES_PHOTO_ID_INDEX:I = 0x2

.field private static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field private static final READCONTACTSUCC:I = 0x6


# instance fields
.field protected contactDB:Lcom/DB/ContactDB;

.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private tokenDB:Lcom/DB/TokenDB;

.field private util:Lcom/setting/SharePreferenceUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 32
    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    .line 31
    sput-object v0, Lcom/client/ReadPhoneContact;->PHONES_PROJECTION:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/DB/ContactDB;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "contactDB"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/client/ReadPhoneContact;->mContext:Landroid/content/Context;

    .line 52
    iput-object p3, p0, Lcom/client/ReadPhoneContact;->contactDB:Lcom/DB/ContactDB;

    .line 53
    new-instance v0, Lcom/DB/TokenDB;

    invoke-direct {v0, p1}, Lcom/DB/TokenDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/client/ReadPhoneContact;->tokenDB:Lcom/DB/TokenDB;

    .line 54
    new-instance v0, Lcom/setting/SharePreferenceUtil;

    const-string v1, "saveUser"

    invoke-direct {v0, p1, v1}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/client/ReadPhoneContact;->util:Lcom/setting/SharePreferenceUtil;

    .line 55
    iput-object p2, p0, Lcom/client/ReadPhoneContact;->handler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method private getPhoneContacts()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 70
    iget-object v1, p0, Lcom/client/ReadPhoneContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/client/ReadPhoneContact;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 76
    .local v8, phoneCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 77
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_1
    return-void

    .line 80
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, phoneNumber:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, contactName:Ljava/lang/String;
    const-string v1, "+86"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 112
    :cond_3
    new-instance v7, Lactivity/ContactListEntity;

    invoke-direct {v7}, Lactivity/ContactListEntity;-><init>()V

    .line 113
    .local v7, entity:Lactivity/ContactListEntity;
    invoke-virtual {v7, v9}, Lactivity/ContactListEntity;->setAppleId(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v7, v10}, Lactivity/ContactListEntity;->setImg(I)V

    .line 115
    invoke-virtual {v7, v6}, Lactivity/ContactListEntity;->setName(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, v9}, Lcom/client/ReadPhoneContact;->userExit(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    iget-object v1, p0, Lcom/client/ReadPhoneContact;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v1, v7}, Lcom/DB/ContactDB;->Update(Lactivity/ContactListEntity;)V

    goto :goto_0

    .line 120
    :cond_4
    iget-object v1, p0, Lcom/client/ReadPhoneContact;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v1, v9}, Lcom/DB/ContactDB;->deleteContact(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSIMContacts()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 129
    iget-object v2, p0, Lcom/client/ReadPhoneContact;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/client/ReadPhoneContact;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 135
    .local v8, phoneCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 136
    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_1
    return-void

    .line 139
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, phoneNumber:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, contactName:Ljava/lang/String;
    const-string v2, "+86"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+86"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 155
    :cond_3
    new-instance v7, Lactivity/ContactListEntity;

    invoke-direct {v7}, Lactivity/ContactListEntity;-><init>()V

    .line 156
    .local v7, entity:Lactivity/ContactListEntity;
    invoke-virtual {v7, v9}, Lactivity/ContactListEntity;->setAppleId(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v7, v10}, Lactivity/ContactListEntity;->setImg(I)V

    .line 158
    invoke-virtual {v7, v6}, Lactivity/ContactListEntity;->setName(Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, v9}, Lcom/client/ReadPhoneContact;->userExit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    iget-object v2, p0, Lcom/client/ReadPhoneContact;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v2, v7}, Lcom/DB/ContactDB;->Update(Lactivity/ContactListEntity;)V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/client/ReadPhoneContact;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v2, v9}, Lcom/DB/ContactDB;->deleteContact(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private userExit(Ljava/lang/String;)Z
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 170
    new-instance v2, Lattach/queryUser;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lattach/queryUser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 171
    .local v2, query:Lattach/queryUser;
    iget-object v3, p0, Lcom/client/ReadPhoneContact;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v3}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, cur:Ljava/lang/String;
    iget-object v3, p0, Lcom/client/ReadPhoneContact;->tokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v3, v0, p1}, Lcom/DB/TokenDB;->getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/common/TokenList;

    move-result-object v1

    .line 173
    .local v1, list:Lcom/common/TokenList;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/common/TokenList;->size:I

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/client/ReadPhoneContact;->tokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v2, v0, v3}, Lattach/queryUser;->start(Ljava/lang/String;Lcom/DB/TokenDB;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    :cond_1
    const/4 v3, 0x1

    .line 176
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/client/ReadPhoneContact;->getPhoneContacts()V

    .line 59
    invoke-direct {p0}, Lcom/client/ReadPhoneContact;->getSIMContacts()V

    .line 62
    iget-object v1, p0, Lcom/client/ReadPhoneContact;->tokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v1}, Lcom/DB/TokenDB;->close()V

    .line 64
    iget-object v1, p0, Lcom/client/ReadPhoneContact;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 65
    .local v0, message3:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 66
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    iget-object v1, p0, Lcom/client/ReadPhoneContact;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 68
    return-void
.end method
