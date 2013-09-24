.class public Lactivity/RecentChatDeleteEntity;
.super Ljava/lang/Object;
.source "RecentChatDeleteEntity.java"


# instance fields
.field private appleid:Ljava/lang/String;

.field private count:I

.field private ifdeleteDown:Z

.field private img:I

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appleid"
    .parameter "img"
    .parameter "count"
    .parameter "name"
    .parameter "time"
    .parameter "msg"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lactivity/RecentChatDeleteEntity;->appleid:Ljava/lang/String;

    .line 17
    iput p2, p0, Lactivity/RecentChatDeleteEntity;->img:I

    .line 18
    iput p3, p0, Lactivity/RecentChatDeleteEntity;->count:I

    .line 19
    iput-object p4, p0, Lactivity/RecentChatDeleteEntity;->name:Ljava/lang/String;

    .line 20
    iput-object p5, p0, Lactivity/RecentChatDeleteEntity;->time:Ljava/lang/String;

    .line 21
    iput-object p6, p0, Lactivity/RecentChatDeleteEntity;->msg:Ljava/lang/String;

    .line 23
    sget v0, Lactivity/RecentChatType;->RECENT_VIEW_CHAT:I

    iput v0, p0, Lactivity/RecentChatDeleteEntity;->type:I

    .line 24
    return-void
.end method


# virtual methods
.method public addCount()V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lactivity/RecentChatDeleteEntity;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lactivity/RecentChatDeleteEntity;->count:I

    .line 69
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    instance-of v3, p1, Lactivity/RecentChatDeleteEntity;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 107
    check-cast v0, Lactivity/RecentChatDeleteEntity;

    .line 108
    .local v0, entity:Lactivity/RecentChatDeleteEntity;
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/RecentChatDeleteEntity;->appleid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 109
    goto :goto_0
.end method

.method public getAppleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lactivity/RecentChatDeleteEntity;->appleid:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lactivity/RecentChatDeleteEntity;->count:I

    return v0
.end method

.method public getImg()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lactivity/RecentChatDeleteEntity;->img:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lactivity/RecentChatDeleteEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lactivity/RecentChatDeleteEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lactivity/RecentChatDeleteEntity;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lactivity/RecentChatDeleteEntity;->type:I

    return v0
.end method

.method public getifdeleteDown()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lactivity/RecentChatDeleteEntity;->ifdeleteDown:Z

    return v0
.end method

.method public setAppleId(Ljava/lang/String;)V
    .locals 0
    .parameter "appleid"

    .prologue
    .line 49
    iput-object p1, p0, Lactivity/RecentChatDeleteEntity;->appleid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 65
    iput p1, p0, Lactivity/RecentChatDeleteEntity;->count:I

    .line 66
    return-void
.end method

.method public setImg(I)V
    .locals 0
    .parameter "img"

    .prologue
    .line 57
    iput p1, p0, Lactivity/RecentChatDeleteEntity;->img:I

    .line 58
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 91
    iput-object p1, p0, Lactivity/RecentChatDeleteEntity;->msg:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 30
    iput-object p1, p0, Lactivity/RecentChatDeleteEntity;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 83
    iput-object p1, p0, Lactivity/RecentChatDeleteEntity;->time:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 41
    iput p1, p0, Lactivity/RecentChatDeleteEntity;->type:I

    .line 42
    return-void
.end method

.method public setifdeleteDown()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lactivity/RecentChatDeleteEntity;->ifdeleteDown:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lactivity/RecentChatDeleteEntity;->ifdeleteDown:Z

    .line 95
    return-void

    .line 94
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecentChatEntity [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/RecentChatDeleteEntity;->appleid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", img="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lactivity/RecentChatDeleteEntity;->img:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    iget v1, p0, Lactivity/RecentChatDeleteEntity;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lactivity/RecentChatDeleteEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lactivity/RecentChatDeleteEntity;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lactivity/RecentChatDeleteEntity;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
