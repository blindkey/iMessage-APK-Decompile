.class public LFileSignature/ChunkSignature;
.super Ljava/lang/Object;
.source "ChunkSignature.java"


# instance fields
.field private mChunkSignature:Lcom/common/CoreBuffer;

.field private mChunkSize:I


# direct methods
.method public constructor <init>(Lcom/common/CoreBuffer;I)V
    .locals 0
    .parameter "signature"
    .parameter "size"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, LFileSignature/ChunkSignature;->mChunkSignature:Lcom/common/CoreBuffer;

    .line 12
    iput p2, p0, LFileSignature/ChunkSignature;->mChunkSize:I

    .line 13
    return-void
.end method


# virtual methods
.method public getChunkSignature()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, LFileSignature/ChunkSignature;->mChunkSignature:Lcom/common/CoreBuffer;

    return-object v0
.end method

.method public getChunkSize()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, LFileSignature/ChunkSignature;->mChunkSize:I

    return v0
.end method
