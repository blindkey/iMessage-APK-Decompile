.class public Lattach/putFile;
.super Lattach/message;
.source "putFile.java"


# instance fields
.field private ResEtag:Ljava/lang/String;

.field private ResMD5:Ljava/lang/String;

.field private mAuthToken:Lcom/common/CoreBuffer;

.field private mChunkSignature:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;"
        }
    .end annotation
.end field

.field private mFileSignature:Lcom/common/CoreBuffer;

.field private mMethod:Ljava/lang/String;

.field private mObjectName:Ljava/lang/String;

.field private mPort:I

.field private mPutFileHeaderLen:I

.field private mPutFileLen:I

.field private mServerName:Ljava/lang/String;

.field private mSignature:Lcom/common/CoreBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lattach/message;-><init>()V

    return-void
.end method


# virtual methods
.method public SetChunkSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter
    .parameter "mSignature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;",
            "Lcom/common/CoreBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, mchunkSignature:Ljava/util/Vector;,"Ljava/util/Vector<LFileSignature/ChunkSignature;>;"
    iput-object p1, p0, Lattach/putFile;->mChunkSignature:Ljava/util/Vector;

    .line 28
    iput-object p2, p0, Lattach/putFile;->mSignature:Lcom/common/CoreBuffer;

    .line 29
    return-void
.end method

.method public getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;
    .locals 22
    .parameter "Header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/common/CoreBuffer;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 49
    .local v10, mProtoData1:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 50
    .local v11, mProtoData2:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 51
    .local v12, mProtoData3:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 53
    .local v13, mProtoData4:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v18

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 54
    .local v15, tbody:[B
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    new-instance v4, Lcom/common/CoreBuffer;

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v18

    move/from16 v0, v18

    invoke-direct {v4, v15, v0}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 57
    .local v4, Sour:Lcom/common/CoreBuffer;
    invoke-static {v4}, Lattach/ProtoBuf;->GetAllProtoData(Lcom/common/CoreBuffer;)Ljava/util/Vector;

    move-result-object v9

    .line 60
    .local v9, mProtoData:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v5, v0, :cond_0

    .line 69
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v5, v0, :cond_2

    .line 82
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v5, v0, :cond_6

    .line 100
    const/16 v18, 0x1bb

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lattach/putFile;->mPort:I

    .line 105
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 107
    .local v14, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-lt v5, v0, :cond_b

    .line 180
    const-string v18, "User-Agent"

    const-string v19, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v18, "x-apple-request-uuid"

    invoke-static {}, Lattach/CreateUUID;->Create8_4_4_4_12UUIDString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v18, "Connection"

    const-string v19, "close"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v18, "Proxy-Connection"

    const-string v19, "close"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-object v14

    .line 62
    .end local v14           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 63
    .local v6, iter:Lattach/ProtoData;
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 64
    new-instance v16, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    .line 65
    .local v16, tmp:Lcom/common/CoreBuffer;
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lattach/ProtoBuf;->GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;

    .line 60
    .end local v16           #tmp:Lcom/common/CoreBuffer;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 71
    .end local v6           #iter:Lattach/ProtoData;
    :cond_2
    invoke-virtual {v10, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 72
    .restart local v6       #iter:Lattach/ProtoData;
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 73
    new-instance v16, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    .line 74
    .restart local v16       #tmp:Lcom/common/CoreBuffer;
    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lattach/ProtoBuf;->GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;

    .line 69
    .end local v16           #tmp:Lcom/common/CoreBuffer;
    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 75
    :cond_4
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 76
    new-instance v18, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/putFile;->mFileSignature:Lcom/common/CoreBuffer;

    goto :goto_4

    .line 77
    :cond_5
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 78
    new-instance v18, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/putFile;->mAuthToken:Lcom/common/CoreBuffer;

    goto :goto_4

    .line 84
    .end local v6           #iter:Lattach/ProtoData;
    :cond_6
    invoke-virtual {v11, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 89
    .restart local v6       #iter:Lattach/ProtoData;
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 90
    new-instance v16, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    .line 91
    .restart local v16       #tmp:Lcom/common/CoreBuffer;
    move-object/from16 v0, v16

    invoke-static {v12, v0}, Lattach/ProtoBuf;->GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;

    .line 82
    .end local v16           #tmp:Lcom/common/CoreBuffer;
    :cond_7
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 92
    :cond_8
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 93
    new-instance v18, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v19

    const/16 v20, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/common/CoreBuffer;->getLen()I

    move-result v21

    invoke-direct/range {v18 .. v21}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/putFile;->mServerName:Ljava/lang/String;

    goto :goto_5

    .line 94
    :cond_9
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 95
    new-instance v18, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v19

    const/16 v20, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/common/CoreBuffer;->getLen()I

    move-result v21

    invoke-direct/range {v18 .. v21}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/putFile;->mObjectName:Ljava/lang/String;

    goto :goto_5

    .line 96
    :cond_a
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v18, v0

    sget v19, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 97
    new-instance v18, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v19

    const/16 v20, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/common/CoreBuffer;->getLen()I

    move-result v21

    invoke-direct/range {v18 .. v21}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/putFile;->mMethod:Ljava/lang/String;

    goto/16 :goto_5

    .line 109
    .end local v6           #iter:Lattach/ProtoData;
    .restart local v14       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_b
    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 110
    .restart local v6       #iter:Lattach/ProtoData;
    new-instance v16, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    const/16 v19, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 111
    .local v16, tmp:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 112
    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lattach/ProtoData;

    .line 113
    .local v7, iter1:Lattach/ProtoData;
    new-instance v17, Ljava/lang/String;

    iget-object v0, v7, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    const/16 v19, 0x0

    iget-object v0, v7, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    invoke-direct/range {v17 .. v20}, Ljava/lang/String;-><init>([BII)V

    .line 114
    .local v17, tmp1:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, ltmp:Ljava/lang/String;
    const-string v18, "Content-Length"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 107
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 126
    :cond_c
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v18, "putfile"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, ":"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lattach/putFile;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getPutFileURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lattach/putFile;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":443"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lattach/putFile;->mObjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lattach/putFile;->ResEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getResMD5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lattach/putFile;->ResMD5:Ljava/lang/String;

    return-object v0
.end method

.method public getSig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lattach/putFile;->mFileSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lattach/putFile;->mFileSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lattach/putFile;->mAuthToken:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lattach/putFile;->mAuthToken:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "coreBuffer"

    .prologue
    .line 236
    const/4 v0, 0x1

    iput v0, p0, Lattach/putFile;->m_ResponseStatus:I

    .line 237
    return-void
.end method

.method public handleResponseHeaders(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, resHeader:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 251
    const-string v2, "Content-MD5"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 252
    .local v1, md5:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "ETag"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 253
    .local v0, etag:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lattach/putFile;->ResMD5:Ljava/lang/String;

    .line 254
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lattach/putFile;->ResEtag:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public handleResponseHeaders(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "mmd5"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, resHeader:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 240
    const-string v2, "Content-MD5"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 241
    .local v1, md5:Ljava/lang/String;
    const-string v2, "ETag"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    .local v0, etag:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 243
    move-object v1, p2

    .line 245
    :cond_0
    iput-object v1, p0, Lattach/putFile;->ResMD5:Ljava/lang/String;

    .line 246
    iput-object v0, p0, Lattach/putFile;->ResEtag:Ljava/lang/String;

    .line 247
    const/4 v2, 0x1

    return v2
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 196
    iput v10, p0, Lattach/putFile;->mPutFileHeaderLen:I

    .line 197
    const/4 v5, 0x0

    .line 198
    .local v5, maxChunk:I
    iput v10, p0, Lattach/putFile;->mPutFileLen:I

    .line 199
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lattach/putFile;->mChunkSignature:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_0

    .line 206
    iget v8, p0, Lattach/putFile;->mPutFileHeaderLen:I

    add-int/lit8 v8, v8, 0x4

    iput v8, p0, Lattach/putFile;->mPutFileHeaderLen:I

    .line 208
    iget v8, p0, Lattach/putFile;->mPutFileHeaderLen:I

    add-int/lit8 v8, v8, 0xa

    new-array v0, v8, [B

    .line 210
    .local v0, buf:[B
    iget-object v8, p0, Lattach/putFile;->mChunkSignature:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v7

    .line 212
    .local v7, size:I
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    .line 213
    const/4 v8, 0x1

    shr-int/lit8 v9, v7, 0x10

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 214
    const/4 v8, 0x2

    shr-int/lit8 v9, v7, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 215
    const/4 v8, 0x3

    and-int/lit16 v9, v7, 0xff

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 217
    const/4 v2, 0x4

    .line 218
    .local v2, index:I
    const/4 v1, 0x0

    :goto_1
    iget-object v8, p0, Lattach/putFile;->mChunkSignature:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 229
    new-instance v6, Lcom/common/CoreBuffer;

    invoke-direct {v6, v0, v2}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 231
    .local v6, result:Lcom/common/CoreBuffer;
    return-object v6

    .line 200
    .end local v0           #buf:[B
    .end local v2           #index:I
    .end local v6           #result:Lcom/common/CoreBuffer;
    .end local v7           #size:I
    :cond_0
    iget-object v8, p0, Lattach/putFile;->mChunkSignature:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LFileSignature/ChunkSignature;

    .line 201
    .local v4, iter:LFileSignature/ChunkSignature;
    iget v8, p0, Lattach/putFile;->mPutFileHeaderLen:I

    add-int/lit8 v8, v8, 0x19

    iput v8, p0, Lattach/putFile;->mPutFileHeaderLen:I

    .line 202
    iget v8, p0, Lattach/putFile;->mPutFileLen:I

    invoke-virtual {v4}, LFileSignature/ChunkSignature;->getChunkSize()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lattach/putFile;->mPutFileLen:I

    .line 203
    invoke-virtual {v4}, LFileSignature/ChunkSignature;->getChunkSize()I

    move-result v8

    if-le v8, v5, :cond_1

    .line 204
    invoke-virtual {v4}, LFileSignature/ChunkSignature;->getChunkSize()I

    move-result v5

    .line 199
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v4           #iter:LFileSignature/ChunkSignature;
    .restart local v0       #buf:[B
    .restart local v2       #index:I
    .restart local v7       #size:I
    :cond_2
    iget-object v8, p0, Lattach/putFile;->mChunkSignature:Ljava/util/Vector;

    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LFileSignature/ChunkSignature;

    .line 220
    .restart local v4       #iter:LFileSignature/ChunkSignature;
    invoke-virtual {v4}, LFileSignature/ChunkSignature;->getChunkSignature()Lcom/common/CoreBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v8

    invoke-virtual {v4}, LFileSignature/ChunkSignature;->getChunkSignature()Lcom/common/CoreBuffer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/common/CoreBuffer;->getLen()I

    move-result v9

    invoke-static {v8, v10, v0, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    invoke-virtual {v4}, LFileSignature/ChunkSignature;->getChunkSignature()Lcom/common/CoreBuffer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/common/CoreBuffer;->getLen()I

    move-result v8

    add-int/2addr v2, v8

    .line 222
    invoke-virtual {v4}, LFileSignature/ChunkSignature;->getChunkSize()I

    move-result v7

    .line 224
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 225
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 226
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 227
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    and-int/lit16 v8, v7, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v3

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
