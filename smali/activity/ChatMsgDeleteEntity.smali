.class public Lactivity/ChatMsgDeleteEntity;
.super Ljava/lang/Object;
.source "ChatMsgDeleteEntity.java"


# instance fields
.field private date:Ljava/lang/String;

.field private img:I

.field private isDate:Z

.field private isPressed:Z

.field private isRead:Z

.field private mRate:I

.field private message:Ljava/lang/String;

.field private msgid:J

.field private name:Ljava/lang/String;

.field private sendType:I

.field private toAppleId:Ljava/lang/String;

.field private viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v1, p0, Lactivity/ChatMsgDeleteEntity;->isRead:Z

    .line 9
    iput-boolean v1, p0, Lactivity/ChatMsgDeleteEntity;->isPressed:Z

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lactivity/ChatMsgDeleteEntity;->viewType:I

    .line 13
    iput-boolean v1, p0, Lactivity/ChatMsgDeleteEntity;->isDate:Z

    .line 14
    iput v1, p0, Lactivity/ChatMsgDeleteEntity;->sendType:I

    .line 15
    iput v1, p0, Lactivity/ChatMsgDeleteEntity;->mRate:I

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .parameter "toAppleId"
    .parameter "date"
    .parameter "text"
    .parameter "isRead"
    .parameter "viewType"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lactivity/ChatMsgDeleteEntity;->isRead:Z

    .line 9
    iput-boolean v0, p0, Lactivity/ChatMsgDeleteEntity;->isPressed:Z

    .line 10
    iput v1, p0, Lactivity/ChatMsgDeleteEntity;->viewType:I

    .line 13
    iput-boolean v0, p0, Lactivity/ChatMsgDeleteEntity;->isDate:Z

    .line 14
    iput v0, p0, Lactivity/ChatMsgDeleteEntity;->sendType:I

    .line 15
    iput v0, p0, Lactivity/ChatMsgDeleteEntity;->mRate:I

    .line 23
    iput-object p1, p0, Lactivity/ChatMsgDeleteEntity;->toAppleId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lactivity/ChatMsgDeleteEntity;->date:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lactivity/ChatMsgDeleteEntity;->message:Ljava/lang/String;

    .line 26
    iput-boolean p4, p0, Lactivity/ChatMsgDeleteEntity;->isRead:Z

    .line 27
    iput p5, p0, Lactivity/ChatMsgDeleteEntity;->viewType:I

    .line 28
    iput v1, p0, Lactivity/ChatMsgDeleteEntity;->img:I

    .line 29
    return-void
.end method


# virtual methods
.method public getAppleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lactivity/ChatMsgDeleteEntity;->toAppleId:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lactivity/ChatMsgDeleteEntity;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lactivity/ChatMsgDeleteEntity;->img:I

    return v0
.end method

.method public getIsPressed()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lactivity/ChatMsgDeleteEntity;->isPressed:Z

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lactivity/ChatMsgDeleteEntity;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgRate()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lactivity/ChatMsgDeleteEntity;->mRate:I

    return v0
.end method

.method public getMsgid()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lactivity/ChatMsgDeleteEntity;->msgid:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lactivity/ChatMsgDeleteEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSendType()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lactivity/ChatMsgDeleteEntity;->sendType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lactivity/ChatMsgDeleteEntity;->viewType:I

    return v0
.end method

.method public getisRead()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lactivity/ChatMsgDeleteEntity;->isRead:Z

    return v0
.end method

.method public setAppleId(Ljava/lang/String;)V
    .locals 0
    .parameter "toAppleId"

    .prologue
    .line 50
    iput-object p1, p0, Lactivity/ChatMsgDeleteEntity;->toAppleId:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 58
    iput-object p1, p0, Lactivity/ChatMsgDeleteEntity;->date:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setImg(I)V
    .locals 0
    .parameter "img"

    .prologue
    .line 78
    iput p1, p0, Lactivity/ChatMsgDeleteEntity;->img:I

    .line 79
    return-void
.end method

.method public setIsPressed()V
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lactivity/ChatMsgDeleteEntity;->isPressed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lactivity/ChatMsgDeleteEntity;->isPressed:Z

    .line 86
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 66
    iput-object p1, p0, Lactivity/ChatMsgDeleteEntity;->message:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setMsgRate(I)V
    .locals 0
    .parameter "rate"

    .prologue
    .line 39
    iput p1, p0, Lactivity/ChatMsgDeleteEntity;->mRate:I

    .line 40
    return-void
.end method

.method public setMsgid(J)V
    .locals 0
    .parameter "msgid"

    .prologue
    .line 103
    iput-wide p1, p0, Lactivity/ChatMsgDeleteEntity;->msgid:J

    .line 104
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 42
    iput-object p1, p0, Lactivity/ChatMsgDeleteEntity;->name:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setSendType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 114
    iput p1, p0, Lactivity/ChatMsgDeleteEntity;->sendType:I

    .line 115
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "viewType"

    .prologue
    .line 99
    iput p1, p0, Lactivity/ChatMsgDeleteEntity;->viewType:I

    .line 100
    return-void
.end method

.method public setisDate(Z)V
    .locals 0
    .parameter "isDate"

    .prologue
    .line 110
    iput-boolean p1, p0, Lactivity/ChatMsgDeleteEntity;->isDate:Z

    .line 111
    return-void
.end method

.method public setisRead(Z)V
    .locals 0
    .parameter "isRead"

    .prologue
    .line 74
    iput-boolean p1, p0, Lactivity/ChatMsgDeleteEntity;->isRead:Z

    .line 75
    return-void
.end method
