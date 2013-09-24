.class public Lactivity/ContactListEntity;
.super Ljava/lang/Object;
.source "ContactListEntity.java"


# instance fields
.field private AppleId:Ljava/lang/String;

.field private img:I

.field private msg:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "AppleId"
    .parameter "name"
    .parameter "img"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lactivity/ContactListEntity;->AppleId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lactivity/ContactListEntity;->name:Ljava/lang/String;

    .line 13
    iput p3, p0, Lactivity/ContactListEntity;->img:I

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lactivity/ContactListEntity;->msg:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    instance-of v3, p1, Lactivity/ContactListEntity;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 40
    check-cast v0, Lactivity/ContactListEntity;

    .line 41
    .local v0, entity:Lactivity/ContactListEntity;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lactivity/ContactListEntity;->AppleId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 42
    goto :goto_0
.end method

.method public getAppleId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lactivity/ContactListEntity;->AppleId:Ljava/lang/String;

    return-object v0
.end method

.method public getImg()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lactivity/ContactListEntity;->img:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lactivity/ContactListEntity;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lactivity/ContactListEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lactivity/ContactListEntity;->type:I

    return v0
.end method

.method public setAppleId(Ljava/lang/String;)V
    .locals 0
    .parameter "AppleId"

    .prologue
    .line 24
    iput-object p1, p0, Lactivity/ContactListEntity;->AppleId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setImg(I)V
    .locals 0
    .parameter "img"

    .prologue
    .line 54
    iput p1, p0, Lactivity/ContactListEntity;->img:I

    .line 55
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 61
    iput-object p1, p0, Lactivity/ContactListEntity;->msg:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 30
    iput-object p1, p0, Lactivity/ContactListEntity;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 47
    iput p1, p0, Lactivity/ContactListEntity;->type:I

    .line 48
    return-void
.end method
