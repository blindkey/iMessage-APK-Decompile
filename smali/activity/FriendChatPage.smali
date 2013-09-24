.class public Lactivity/FriendChatPage;
.super Ljava/lang/Object;
.source "FriendChatPage.java"


# instance fields
.field private application:Lactivity/MyApplication;

.field private contactDB:Lcom/DB/ContactDB;

.field private context:Landroid/content/Context;

.field private mRecentAdapter:Lactivity/RecentChatAdapter;

.field private mRecentDeleteAdapter:Lactivity/RecentChatDeleteAdapter;

.field private mRecentDeleteList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/RecentChatDeleteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/RecentChatEntity;",
            ">;"
        }
    .end annotation
.end field

.field private messageDB:Lcom/DB/MessageDB;

.field private userDB:Lcom/DB/UserDB;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lactivity/FriendChatPage;->context:Landroid/content/Context;

    .line 30
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    .line 31
    iget-object v0, p0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->getMessageDB()Lcom/DB/MessageDB;

    move-result-object v0

    iput-object v0, p0, Lactivity/FriendChatPage;->messageDB:Lcom/DB/MessageDB;

    .line 32
    iget-object v0, p0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->getContactDB()Lcom/DB/ContactDB;

    move-result-object v0

    iput-object v0, p0, Lactivity/FriendChatPage;->contactDB:Lcom/DB/ContactDB;

    .line 33
    iget-object v0, p0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->getUserDB()Lcom/DB/UserDB;

    move-result-object v0

    iput-object v0, p0, Lactivity/FriendChatPage;->userDB:Lcom/DB/UserDB;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    .line 36
    new-instance v0, Lactivity/RecentChatAdapter;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 37
    iget-object v2, p0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/RecentChatAdapter;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 36
    iput-object v0, p0, Lactivity/FriendChatPage;->mRecentAdapter:Lactivity/RecentChatAdapter;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    .line 40
    new-instance v0, Lactivity/RecentChatDeleteAdapter;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/RecentChatDeleteAdapter;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 40
    iput-object v0, p0, Lactivity/FriendChatPage;->mRecentDeleteAdapter:Lactivity/RecentChatDeleteAdapter;

    .line 44
    return-void
.end method


# virtual methods
.method public ReadMsgDBToRecentChat(Ljava/lang/String;)V
    .locals 16
    .parameter "search"

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->messageDB:Lcom/DB/MessageDB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/DB/MessageDB;->getMsg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 136
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->setRecentNum(I)V

    .line 138
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 139
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 194
    :cond_1
    new-instance v9, Lactivity/RecentChatEntity;

    invoke-direct {v9}, Lactivity/RecentChatEntity;-><init>()V

    .line 195
    .local v9, entitys:Lactivity/RecentChatEntity;
    sget v2, Lactivity/RecentChatType;->RECENT_VIEW_SEARCH_BAR:I

    invoke-virtual {v9, v2}, Lactivity/RecentChatEntity;->setType(I)V

    .line 196
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lactivity/RecentChatEntity;->setMsg(Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 201
    return-void

    .line 139
    .end local v9           #entitys:Lactivity/RecentChatEntity;
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lactivity/ChatMsgEntity;

    .line 140
    .local v8, entity:Lactivity/ChatMsgEntity;
    const/4 v10, 0x0

    .line 141
    .local v10, find:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v13

    .line 142
    .local v13, tentity:Lactivity/ContactListEntity;
    if-eqz v13, :cond_5

    .line 143
    invoke-virtual {v13}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lactivity/ChatMsgEntity;->setName(Ljava/lang/String;)V

    .line 147
    :goto_1
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    :cond_3
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v11, v2, :cond_6

    .line 169
    if-nez v10, :cond_0

    .line 170
    new-instance v14, Lcom/common/User;

    invoke-direct {v14}, Lcom/common/User;-><init>()V

    .line 171
    .local v14, user:Lcom/common/User;
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->userDB:Lcom/DB/UserDB;

    invoke-virtual {v2, v14}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 173
    const/4 v4, 0x0

    .line 174
    .local v4, count:I
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getisRead()Z

    move-result v2

    if-nez v2, :cond_4

    .line 175
    const/4 v4, 0x1

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->addRecentNum(I)V

    .line 178
    :cond_4
    new-instance v1, Lactivity/RecentChatEntity;

    invoke-virtual {v14}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v14}, Lcom/common/User;->getImg()I

    move-result v3

    const-string v5, "eeeee"

    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 178
    invoke-direct/range {v1 .. v7}, Lactivity/RecentChatEntity;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .local v1, entity2:Lactivity/RecentChatEntity;
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lactivity/RecentChatEntity;->setName(Ljava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 145
    .end local v1           #entity2:Lactivity/RecentChatEntity;
    .end local v4           #count:I
    .end local v11           #i:I
    .end local v14           #user:Lcom/common/User;
    :cond_5
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lactivity/ChatMsgEntity;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 153
    .restart local v11       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/RecentChatEntity;

    .line 155
    .restart local v1       #entity2:Lactivity/RecentChatEntity;
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lactivity/RecentChatEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 156
    const/4 v10, 0x1

    .line 157
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lactivity/RecentChatEntity;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 158
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lactivity/RecentChatEntity;->setMsg(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lactivity/RecentChatEntity;->setTime(Ljava/lang/String;)V

    .line 160
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getisRead()Z

    move-result v2

    if-nez v2, :cond_7

    .line 161
    invoke-virtual {v1}, Lactivity/RecentChatEntity;->addCount()V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->addRecentNum(I)V

    .line 164
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 151
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2
.end method

.method public ReadMsgDBToRecentDeleteChat(Ljava/lang/String;)V
    .locals 16
    .parameter "search"

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->messageDB:Lcom/DB/MessageDB;

    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    invoke-virtual {v3}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/DB/MessageDB;->getMsg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    .line 66
    .local v12, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 68
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->setRecentNum(I)V

    .line 69
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 70
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    :cond_1
    new-instance v9, Lactivity/RecentChatDeleteEntity;

    invoke-direct {v9}, Lactivity/RecentChatDeleteEntity;-><init>()V

    .line 124
    .local v9, entityts:Lactivity/RecentChatDeleteEntity;
    sget v2, Lactivity/RecentChatType;->RECENT_VIEW_SEARCH_BAR:I

    invoke-virtual {v9, v2}, Lactivity/RecentChatDeleteEntity;->setType(I)V

    .line 125
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lactivity/RecentChatDeleteEntity;->setMsg(Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 129
    return-void

    .line 70
    .end local v9           #entityts:Lactivity/RecentChatDeleteEntity;
    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lactivity/ChatMsgEntity;

    .line 71
    .local v8, entity:Lactivity/ChatMsgEntity;
    const/4 v10, 0x0

    .line 72
    .local v10, find:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v13

    .line 73
    .local v13, tentity:Lactivity/ContactListEntity;
    if-eqz v13, :cond_5

    .line 74
    invoke-virtual {v13}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lactivity/ChatMsgEntity;->setName(Ljava/lang/String;)V

    .line 78
    :goto_1
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    :cond_3
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v11, v2, :cond_6

    .line 99
    if-nez v10, :cond_0

    .line 100
    new-instance v14, Lcom/common/User;

    invoke-direct {v14}, Lcom/common/User;-><init>()V

    .line 101
    .local v14, user:Lcom/common/User;
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->userDB:Lcom/DB/UserDB;

    invoke-virtual {v2, v14}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, count:I
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getisRead()Z

    move-result v2

    if-nez v2, :cond_4

    .line 105
    const/4 v4, 0x1

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->addRecentNum(I)V

    .line 108
    :cond_4
    new-instance v1, Lactivity/RecentChatDeleteEntity;

    invoke-virtual {v14}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v14}, Lcom/common/User;->getImg()I

    move-result v3

    const-string v5, "ddddd"

    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-direct/range {v1 .. v7}, Lactivity/RecentChatDeleteEntity;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .local v1, entity2:Lactivity/RecentChatDeleteEntity;
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lactivity/RecentChatDeleteEntity;->setName(Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 76
    .end local v1           #entity2:Lactivity/RecentChatDeleteEntity;
    .end local v4           #count:I
    .end local v11           #i:I
    .end local v14           #user:Lcom/common/User;
    :cond_5
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lactivity/ChatMsgEntity;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 84
    .restart local v11       #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/RecentChatDeleteEntity;

    .line 85
    .restart local v1       #entity2:Lactivity/RecentChatDeleteEntity;
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lactivity/RecentChatDeleteEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 86
    const/4 v10, 0x1

    .line 87
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lactivity/RecentChatDeleteEntity;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_8

    .line 88
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lactivity/RecentChatDeleteEntity;->setMsg(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lactivity/RecentChatDeleteEntity;->setTime(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v8}, Lactivity/ChatMsgEntity;->getisRead()Z

    move-result v2

    if-nez v2, :cond_7

    .line 91
    invoke-virtual {v1}, Lactivity/RecentChatDeleteEntity;->addCount()V

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->application:Lactivity/MyApplication;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->addRecentNum(I)V

    .line 94
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 95
    move-object/from16 v0, p0

    iget-object v2, v0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 82
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2
.end method

.method public getmRecentAdapter()Lactivity/RecentChatAdapter;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lactivity/FriendChatPage;->mRecentAdapter:Lactivity/RecentChatAdapter;

    return-object v0
.end method

.method public getmRecentDeleteAdapter()Lactivity/RecentChatDeleteAdapter;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lactivity/FriendChatPage;->mRecentDeleteAdapter:Lactivity/RecentChatDeleteAdapter;

    return-object v0
.end method

.method public getmRecentDeleteList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/RecentChatDeleteEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lactivity/FriendChatPage;->mRecentDeleteList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getmRecentList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/RecentChatEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lactivity/FriendChatPage;->mRecentList:Ljava/util/LinkedList;

    return-object v0
.end method
