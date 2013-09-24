.class public Lcom/common/TranObject;
.super Ljava/lang/Object;
.source "TranObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATEMSG:I = 0x2

.field public static final QUERYANDCREATEMSG:I = 0x1

.field public static final QUERYUSER:I = 0x3

.field public static final SENDMSG:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private Alock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLoginResspone:Lcom/client/LoginRespone;

.field private mMsgid:I

.field private mNewMessageActivity:Lactivity/NewMessageActivity;

.field private mRecive:Lcom/client/Recive;

.field private mSend:Lcom/client/Send;

.field private mToUser:Ljava/lang/String;

.field private mType:Lcom/common/recMsgType;

.field private mUser:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private msg:Lcom/common/CoreBuffer;

.field private process:I

.field private query:I

.field private recStatus:Z

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/common/TranObject;->query:I

    .line 39
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/common/TranObject;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/common/TranObject;->recStatus:Z

    .line 19
    return-void
.end method


# virtual methods
.method public CreateLoginRespone()V
    .locals 2

    .prologue
    .line 149
    new-instance v0, Lcom/client/LoginRespone;

    invoke-direct {v0}, Lcom/client/LoginRespone;-><init>()V

    iput-object v0, p0, Lcom/common/TranObject;->mLoginResspone:Lcom/client/LoginRespone;

    .line 150
    iget-object v0, p0, Lcom/common/TranObject;->mLoginResspone:Lcom/client/LoginRespone;

    iget-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v0, v1}, Lcom/client/LoginRespone;->body(Lcom/common/CoreBuffer;)V

    .line 151
    return-void
.end method

.method public CreateReciver()V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/client/Recive;

    invoke-direct {v0}, Lcom/client/Recive;-><init>()V

    iput-object v0, p0, Lcom/common/TranObject;->mRecive:Lcom/client/Recive;

    .line 105
    iget-object v0, p0, Lcom/common/TranObject;->mRecive:Lcom/client/Recive;

    iget-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v0, v1}, Lcom/client/Recive;->body(Lcom/common/CoreBuffer;)Z

    .line 106
    return-void
.end method

.method public CreateReciver(Lactivity/ChatMsgEntity;)V
    .locals 5
    .parameter "entity"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x4

    .line 97
    new-instance v1, Lcom/client/Recive;

    invoke-direct {v1, p1}, Lcom/client/Recive;-><init>(Lactivity/ChatMsgEntity;)V

    iput-object v1, p0, Lcom/common/TranObject;->mRecive:Lcom/client/Recive;

    .line 98
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-direct {v1}, Lcom/common/CoreBuffer;-><init>()V

    iput-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    .line 99
    new-array v0, v4, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v3

    const/4 v1, 0x5

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    .line 100
    .local v0, buf:[B
    iget-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v1, v0, v4}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 101
    return-void
.end method

.method public GetMsg()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public SetMsg(Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/common/TranObject;->query:I

    .line 119
    return-void
.end method

.method public getByte()[B
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v0}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v0

    return v0
.end method

.method public getLenByte()[B
    .locals 4

    .prologue
    .line 135
    const/4 v2, 0x4

    new-array v0, v2, [B

    .line 136
    .local v0, len:[B
    iget-object v2, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getLen()I

    move-result v1

    .line 137
    .local v1, length:I
    const/4 v2, 0x0

    shr-int/lit8 v3, v1, 0x18

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 138
    const/4 v2, 0x1

    shr-int/lit8 v3, v1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 139
    const/4 v2, 0x2

    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 140
    const/4 v2, 0x3

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 141
    return-object v0
.end method

.method public getLoginRespone()Lcom/client/LoginRespone;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/common/TranObject;->mLoginResspone:Lcom/client/LoginRespone;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/common/TranObject;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getNewMessageActivity()Lactivity/NewMessageActivity;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/common/TranObject;->mNewMessageActivity:Lactivity/NewMessageActivity;

    return-object v0
.end method

.method public getProcess()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/common/TranObject;->process:I

    return v0
.end method

.method public getQueryUserRespone()Lcom/client/QueryUserRespone;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/client/QueryUserRespone;

    invoke-direct {v0}, Lcom/client/QueryUserRespone;-><init>()V

    .line 174
    .local v0, mQueryUserRespone:Lcom/client/QueryUserRespone;
    iget-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v0, v1}, Lcom/client/QueryUserRespone;->body(Lcom/common/CoreBuffer;)V

    .line 175
    return-object v0
.end method

.method public getRecStatus()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/common/TranObject;->recStatus:Z

    return v0
.end method

.method public getRecive()Lcom/client/Recive;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/common/TranObject;->mRecive:Lcom/client/Recive;

    return-object v0
.end method

.method public getSend()Lcom/client/Send;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/common/TranObject;->mSend:Lcom/client/Send;

    return-object v0
.end method

.method public getSendRespone()Lcom/client/SendRespone;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/client/SendRespone;

    invoke-direct {v0}, Lcom/client/SendRespone;-><init>()V

    .line 168
    .local v0, mSendRespone:Lcom/client/SendRespone;
    iget-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v0, v1}, Lcom/client/SendRespone;->body(Lcom/common/CoreBuffer;)V

    .line 169
    return-object v0
.end method

.method public getSendType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/common/TranObject;->query:I

    return v0
.end method

.method public getToUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/common/TranObject;->mToUser:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 125
    .local v0, buf:[B
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    return v1
.end method

.method public getmMsgid()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/common/TranObject;->mMsgid:I

    return v0
.end method

.method public out()Lcom/common/recMsgType;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/common/TranObject;->mType:Lcom/common/recMsgType;

    return-object v0
.end method

.method public push()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lcom/common/recMsgType;

    invoke-direct {v0}, Lcom/common/recMsgType;-><init>()V

    iput-object v0, p0, Lcom/common/TranObject;->mType:Lcom/common/recMsgType;

    .line 62
    iget-object v0, p0, Lcom/common/TranObject;->mType:Lcom/common/recMsgType;

    iget-object v1, p0, Lcom/common/TranObject;->msg:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x6

    aget-byte v1, v1, v2

    iput v1, v0, Lcom/common/recMsgType;->type:I

    .line 63
    iget-object v0, p0, Lcom/common/TranObject;->mType:Lcom/common/recMsgType;

    iget v0, v0, Lcom/common/recMsgType;->type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/common/TranObject;->mType:Lcom/common/recMsgType;

    iget-object v1, p0, Lcom/common/TranObject;->mRecive:Lcom/client/Recive;

    invoke-virtual {v1}, Lcom/client/Recive;->getContext()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/common/recMsgType;->context:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/common/TranObject;->mType:Lcom/common/recMsgType;

    iget-object v1, p0, Lcom/common/TranObject;->mRecive:Lcom/client/Recive;

    invoke-virtual {v1}, Lcom/client/Recive;->getFromUser()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/common/recMsgType;->fromUser:Ljava/lang/String;

    .line 70
    :cond_0
    return-void
.end method

.method public setProcess(II)V
    .locals 0
    .parameter "process"
    .parameter "msgid"

    .prologue
    .line 45
    iput p1, p0, Lcom/common/TranObject;->process:I

    .line 46
    iput p2, p0, Lcom/common/TranObject;->mMsgid:I

    .line 47
    return-void
.end method

.method public setQuery(Ljava/lang/String;Lactivity/NewMessageActivity;)V
    .locals 1
    .parameter "toUser"
    .parameter "newMessageActivity"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/common/TranObject;->mToUser:Ljava/lang/String;

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/common/TranObject;->query:I

    .line 94
    iput-object p2, p0, Lcom/common/TranObject;->mNewMessageActivity:Lactivity/NewMessageActivity;

    .line 95
    return-void
.end method

.method public setQueryAndSend(Ljava/lang/String;Lcom/client/Send;)V
    .locals 1
    .parameter "toUser"
    .parameter "msend"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/common/TranObject;->mToUser:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/common/TranObject;->mSend:Lcom/client/Send;

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lcom/common/TranObject;->query:I

    .line 86
    return-void
.end method

.method public setRecStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/common/TranObject;->recStatus:Z

    .line 180
    return-void
.end method

.method public setSend(Lcom/client/Send;)V
    .locals 1
    .parameter "msend"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/common/TranObject;->mSend:Lcom/client/Send;

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/common/TranObject;->query:I

    .line 90
    return-void
.end method
