.class public Lattach/ProtoData;
.super Ljava/lang/Object;
.source "ProtoData.java"


# instance fields
.field public mId:I

.field public mMsg:Lcom/common/CoreBuffer;

.field public mType:I

.field public mValu:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "valu"
    .parameter "id"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lattach/ProtoData;->mType:I

    .line 13
    iput p2, p0, Lattach/ProtoData;->mId:I

    .line 14
    iput p1, p0, Lattach/ProtoData;->mValu:I

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/common/CoreBuffer;I)V
    .locals 1
    .parameter "data"
    .parameter "id"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lattach/ProtoData;->mType:I

    .line 20
    iput p2, p0, Lattach/ProtoData;->mId:I

    .line 21
    iput-object p1, p0, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    .line 22
    return-void
.end method
