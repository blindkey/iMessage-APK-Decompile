.class public Lactivity/ChatMsgEntity;
.super Ljava/lang/Object;
.source "ChatMsgEntity.java"


# instance fields
.field private date:Ljava/lang/String;

.field private deteleable:Z

.field private img:I

.field private inContact:Z

.field private isComMeg:Z

.field private isDate:Z

.field private isRead:Z

.field private mRate:I

.field private m_guid:[B

.field private message:Ljava/lang/String;

.field private msgid:J

.field private name:Ljava/lang/String;

.field private sendType:I

.field private toAppleId:Ljava/lang/String;

.field private viewType:I

.field private xmessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/ChatMsgEntity;->isComMeg:Z

    .line 10
    iput-boolean v1, p0, Lactivity/ChatMsgEntity;->isRead:Z

    .line 11
    iput-boolean v1, p0, Lactivity/ChatMsgEntity;->deteleable:Z

    .line 12
    iput-boolean v1, p0, Lactivity/ChatMsgEntity;->isDate:Z

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lactivity/ChatMsgEntity;->viewType:I

    .line 17
    iput v1, p0, Lactivity/ChatMsgEntity;->mRate:I

    .line 19
    iput v1, p0, Lactivity/ChatMsgEntity;->sendType:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3
    .parameter "toAppleId"
    .parameter "date"
    .parameter "text"
    .parameter "isRead"
    .parameter "viewType"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/ChatMsgEntity;->isComMeg:Z

    .line 10
    iput-boolean v1, p0, Lactivity/ChatMsgEntity;->isRead:Z

    .line 11
    iput-boolean v1, p0, Lactivity/ChatMsgEntity;->deteleable:Z

    .line 12
    iput-boolean v1, p0, Lactivity/ChatMsgEntity;->isDate:Z

    .line 15
    iput v2, p0, Lactivity/ChatMsgEntity;->viewType:I

    .line 17
    iput v1, p0, Lactivity/ChatMsgEntity;->mRate:I

    .line 19
    iput v1, p0, Lactivity/ChatMsgEntity;->sendType:I

    .line 28
    iput-object p1, p0, Lactivity/ChatMsgEntity;->toAppleId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lactivity/ChatMsgEntity;->date:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lactivity/ChatMsgEntity;->message:Ljava/lang/String;

    .line 31
    iput-boolean p4, p0, Lactivity/ChatMsgEntity;->isRead:Z

    .line 32
    iput p5, p0, Lactivity/ChatMsgEntity;->viewType:I

    .line 33
    iput v2, p0, Lactivity/ChatMsgEntity;->img:I

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lactivity/ChatMsgEntity;->xmessage:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAppleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lactivity/ChatMsgEntity;->toAppleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lactivity/ChatMsgEntity;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getDelete()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lactivity/ChatMsgEntity;->deteleable:Z

    return v0
.end method

.method public getImg()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lactivity/ChatMsgEntity;->img:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lactivity/ChatMsgEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgRate()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lactivity/ChatMsgEntity;->mRate:I

    return v0
.end method

.method public getMsgType()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lactivity/ChatMsgEntity;->isComMeg:Z

    return v0
.end method

.method public getMsgid()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lactivity/ChatMsgEntity;->msgid:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lactivity/ChatMsgEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSendType()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lactivity/ChatMsgEntity;->sendType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lactivity/ChatMsgEntity;->viewType:I

    return v0
.end method

.method public getguid()[B
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lactivity/ChatMsgEntity;->m_guid:[B

    return-object v0
.end method

.method public getinContact()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lactivity/ChatMsgEntity;->inContact:Z

    return v0
.end method

.method public getisDate()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lactivity/ChatMsgEntity;->isDate:Z

    return v0
.end method

.method public getisRead()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lactivity/ChatMsgEntity;->isRead:Z

    return v0
.end method

.method public getxMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lactivity/ChatMsgEntity;->xmessage:Ljava/lang/String;

    return-object v0
.end method

.method public setAppleId(Ljava/lang/String;)V
    .locals 0
    .parameter "toAppleId"

    .prologue
    .line 42
    iput-object p1, p0, Lactivity/ChatMsgEntity;->toAppleId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 58
    iput-object p1, p0, Lactivity/ChatMsgEntity;->date:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setDelete()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lactivity/ChatMsgEntity;->deteleable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lactivity/ChatMsgEntity;->deteleable:Z

    .line 107
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setImg(I)V
    .locals 0
    .parameter "img"

    .prologue
    .line 99
    iput p1, p0, Lactivity/ChatMsgEntity;->img:I

    .line 100
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 66
    iput-object p1, p0, Lactivity/ChatMsgEntity;->message:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMsgRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 80
    iput p1, p0, Lactivity/ChatMsgEntity;->mRate:I

    .line 81
    return-void
.end method

.method public setMsgType(Z)V
    .locals 0
    .parameter "isComMsg"

    .prologue
    .line 87
    iput-boolean p1, p0, Lactivity/ChatMsgEntity;->isComMeg:Z

    .line 88
    return-void
.end method

.method public setMsgid(J)V
    .locals 0
    .parameter "msgid"

    .prologue
    .line 127
    iput-wide p1, p0, Lactivity/ChatMsgEntity;->msgid:J

    .line 128
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 50
    iput-object p1, p0, Lactivity/ChatMsgEntity;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setSendType(I)V
    .locals 0
    .parameter "isReachMsg"

    .prologue
    .line 142
    iput p1, p0, Lactivity/ChatMsgEntity;->sendType:I

    .line 143
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 120
    iput p1, p0, Lactivity/ChatMsgEntity;->viewType:I

    .line 121
    return-void
.end method

.method public setguid([B)V
    .locals 0
    .parameter "m_guid"

    .prologue
    .line 149
    iput-object p1, p0, Lactivity/ChatMsgEntity;->m_guid:[B

    .line 150
    return-void
.end method

.method public setinContact(Z)V
    .locals 0
    .parameter "inContact"

    .prologue
    .line 134
    iput-boolean p1, p0, Lactivity/ChatMsgEntity;->inContact:Z

    .line 135
    return-void
.end method

.method public setisDate(Z)V
    .locals 0
    .parameter "isDate"

    .prologue
    .line 113
    iput-boolean p1, p0, Lactivity/ChatMsgEntity;->isDate:Z

    .line 114
    return-void
.end method

.method public setisRead(Z)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 95
    iput-boolean p1, p0, Lactivity/ChatMsgEntity;->isRead:Z

    .line 96
    return-void
.end method

.method public setxMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "xmessage"

    .prologue
    .line 73
    iput-object p1, p0, Lactivity/ChatMsgEntity;->xmessage:Ljava/lang/String;

    .line 74
    return-void
.end method
