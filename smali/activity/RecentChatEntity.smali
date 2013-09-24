.class public Lactivity/RecentChatEntity;
.super Ljava/lang/Object;
.source "RecentChatEntity.java"


# instance fields
.field private appleid:Ljava/lang/String;

.field private count:I

.field private img:I

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private time:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lactivity/RecentChatEntity;->appleid:Ljava/lang/String;

    .line 20
    iput p2, p0, Lactivity/RecentChatEntity;->img:I

    .line 21
    iput p3, p0, Lactivity/RecentChatEntity;->count:I

    .line 22
    iput-object p4, p0, Lactivity/RecentChatEntity;->name:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lactivity/RecentChatEntity;->time:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lactivity/RecentChatEntity;->msg:Ljava/lang/String;

    .line 26
    sget v0, Lactivity/RecentChatType;->RECENT_VIEW_CHAT:I

    iput v0, p0, Lactivity/RecentChatEntity;->type:I

    .line 27
    return-void
.end method


# virtual methods
.method public addCount()V
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lactivity/RecentChatEntity;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lactivity/RecentChatEntity;->count:I

    .line 68
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 94
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    instance-of v3, p1, Lactivity/RecentChatEntity;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 101
    check-cast v0, Lactivity/RecentChatEntity;

    .line 102
    .local v0, entity:Lactivity/RecentChatEntity;
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/RecentChatEntity;->appleid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 103
    goto :goto_0
.end method

.method public getAppleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lactivity/RecentChatEntity;->appleid:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lactivity/RecentChatEntity;->count:I

    return v0
.end method

.method public getImg()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lactivity/RecentChatEntity;->img:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lactivity/RecentChatEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lactivity/RecentChatEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lactivity/RecentChatEntity;->time:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lactivity/RecentChatEntity;->type:I

    return v0
.end method

.method public setAppleId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 48
    iget-object v0, p0, Lactivity/RecentChatEntity;->appleid:Ljava/lang/String;

    iput-object v0, p0, Lactivity/RecentChatEntity;->appleid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 64
    iput p1, p0, Lactivity/RecentChatEntity;->count:I

    .line 65
    return-void
.end method

.method public setImg(I)V
    .locals 0
    .parameter "img"

    .prologue
    .line 56
    iput p1, p0, Lactivity/RecentChatEntity;->img:I

    .line 57
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 90
    iput-object p1, p0, Lactivity/RecentChatEntity;->msg:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 29
    iput-object p1, p0, Lactivity/RecentChatEntity;->name:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 82
    iput-object p1, p0, Lactivity/RecentChatEntity;->time:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 40
    iput p1, p0, Lactivity/RecentChatEntity;->type:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecentChatEntity [id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lactivity/RecentChatEntity;->appleid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", img="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lactivity/RecentChatEntity;->img:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    iget v1, p0, Lactivity/RecentChatEntity;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lactivity/RecentChatEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lactivity/RecentChatEntity;->time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lactivity/RecentChatEntity;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
