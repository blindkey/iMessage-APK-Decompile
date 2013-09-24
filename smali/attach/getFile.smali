.class public Lattach/getFile;
.super Lattach/message;
.source "getFile.java"


# instance fields
.field private RecBodySize:I

.field private mAuthToken:Lcom/common/CoreBuffer;

.field private mFileSignature:Lcom/common/CoreBuffer;

.field private mMethod:Ljava/lang/String;

.field private mObjectName:Ljava/lang/String;

.field private mPort:I

.field private mServerName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lattach/message;-><init>()V

    return-void
.end method


# virtual methods
.method public getGetFileURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lattach/getFile;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lattach/getFile;->mObjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Lcom/common/CoreBuffer;)Ljava/util/Map;
    .locals 21
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
    .line 20
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 21
    .local v9, mProtoData1:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 22
    .local v10, mProtoData2:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    new-instance v11, Ljava/util/Vector;

    invoke-direct {v11}, Ljava/util/Vector;-><init>()V

    .line 23
    .local v11, mProtoData3:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v12, mProtoData4:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v17

    move/from16 v0, v17

    new-array v14, v0, [B

    .line 26
    .local v14, tbody:[B
    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    new-instance v4, Lcom/common/CoreBuffer;

    invoke-virtual/range {p1 .. p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v17

    move/from16 v0, v17

    invoke-direct {v4, v14, v0}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 29
    .local v4, Sour:Lcom/common/CoreBuffer;
    invoke-static {v4}, Lattach/ProtoBuf;->GetAllProtoData(Lcom/common/CoreBuffer;)Ljava/util/Vector;

    move-result-object v8

    .line 31
    .local v8, mProtoData:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_0

    .line 40
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_2

    .line 56
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_4

    .line 77
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_8

    .line 100
    const-string v17, "GetFile"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Host:"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/getFile;->mServerName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lattach/getFile;->mPort:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/getFile;->mObjectName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v17, "GetFile"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "Method: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lattach/getFile;->mMethod:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v13, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_e

    .line 134
    const-string v17, "User-Agent"

    const-string v18, "IMTransferAgent/900 CFNetwork/596.2.3 Darwin/12.2.0 (x86_64) (Macmini5%2C1)"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v17, "x-apple-request-uuid"

    invoke-static {}, Lattach/CreateUUID;->Create8_4_4_4_12UUIDString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_10

    .line 145
    return-object v13

    .line 33
    .end local v13           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v8, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 34
    .local v6, iter:Lattach/ProtoData;
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 35
    new-instance v15, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    .line 36
    .local v15, tmp:Lcom/common/CoreBuffer;
    invoke-static {v9, v15}, Lattach/ProtoBuf;->GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;

    .line 31
    .end local v15           #tmp:Lcom/common/CoreBuffer;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 42
    .end local v6           #iter:Lattach/ProtoData;
    :cond_2
    invoke-virtual {v9, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 43
    .restart local v6       #iter:Lattach/ProtoData;
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v17, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    .line 49
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 50
    new-instance v15, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    .line 51
    .restart local v15       #tmp:Lcom/common/CoreBuffer;
    invoke-static {v10, v15}, Lattach/ProtoBuf;->GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;

    .line 40
    .end local v15           #tmp:Lcom/common/CoreBuffer;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 58
    .end local v6           #iter:Lattach/ProtoData;
    :cond_4
    invoke-virtual {v10, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 59
    .restart local v6       #iter:Lattach/ProtoData;
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v17, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    .line 66
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 67
    new-instance v15, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    .line 68
    .restart local v15       #tmp:Lcom/common/CoreBuffer;
    invoke-static {v11, v15}, Lattach/ProtoBuf;->GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;

    .line 56
    .end local v15           #tmp:Lcom/common/CoreBuffer;
    :cond_5
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 69
    :cond_6
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 70
    new-instance v17, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/getFile;->mFileSignature:Lcom/common/CoreBuffer;

    goto :goto_6

    .line 72
    :cond_7
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 73
    new-instance v17, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/getFile;->mAuthToken:Lcom/common/CoreBuffer;

    goto :goto_6

    .line 79
    .end local v6           #iter:Lattach/ProtoData;
    :cond_8
    invoke-virtual {v11, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 80
    .restart local v6       #iter:Lattach/ProtoData;
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v17, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    .line 86
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 87
    new-instance v15, Lcom/common/CoreBuffer;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Lcom/common/CoreBuffer;-><init>(Lcom/common/CoreBuffer;)V

    .line 88
    .restart local v15       #tmp:Lcom/common/CoreBuffer;
    invoke-static {v12, v15}, Lattach/ProtoBuf;->GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;

    .line 77
    .end local v15           #tmp:Lcom/common/CoreBuffer;
    :cond_9
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 90
    :cond_a
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 91
    new-instance v17, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    const/16 v19, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    invoke-direct/range {v17 .. v20}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/getFile;->mServerName:Ljava/lang/String;

    goto :goto_7

    .line 92
    :cond_b
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 93
    new-instance v17, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    const/16 v19, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    invoke-direct/range {v17 .. v20}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/getFile;->mObjectName:Ljava/lang/String;

    goto :goto_7

    .line 94
    :cond_c
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPEINT:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 95
    iget v0, v6, Lattach/ProtoData;->mValu:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lattach/getFile;->mPort:I

    goto/16 :goto_7

    .line 96
    :cond_d
    iget v0, v6, Lattach/ProtoData;->mType:I

    move/from16 v17, v0

    sget v18, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    iget v0, v6, Lattach/ProtoData;->mId:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 97
    new-instance v17, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v18

    const/16 v19, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    invoke-direct/range {v17 .. v20}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lattach/getFile;->mMethod:Ljava/lang/String;

    goto/16 :goto_7

    .line 106
    .end local v6           #iter:Lattach/ProtoData;
    .restart local v13       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_e
    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lattach/ProtoData;

    .line 107
    .restart local v6       #iter:Lattach/ProtoData;
    new-instance v15, Ljava/lang/String;

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v17

    const/16 v18, 0x0

    iget-object v0, v6, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getLen()I

    move-result v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v15, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 108
    .local v15, tmp:Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 109
    invoke-virtual {v12, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lattach/ProtoData;

    .line 110
    .local v7, iter1:Lattach/ProtoData;
    new-instance v16, Ljava/lang/String;

    iget-object v0, v7, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v17

    const/16 v18, 0x0

    iget-object v0, v7, Lattach/ProtoData;->mMsg:Lcom/common/CoreBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getLen()I

    move-result v19

    invoke-direct/range {v16 .. v19}, Ljava/lang/String;-><init>([BII)V

    .line 111
    .local v16, tmp1:Ljava/lang/String;
    const-string v17, "Content-Length"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 104
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 113
    :cond_f
    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 136
    .end local v6           #iter:Lattach/ProtoData;
    .end local v7           #iter1:Lattach/ProtoData;
    .end local v15           #tmp:Ljava/lang/String;
    .end local v16           #tmp1:Ljava/lang/String;
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lattach/getFile;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getSig()Ljava/lang/String;
    .locals 4

    .prologue
    .line 180
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lattach/getFile;->mFileSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lattach/getFile;->mFileSignature:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 181
    .local v0, sig:Ljava/lang/String;
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lattach/getFile;->mAuthToken:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lattach/getFile;->mAuthToken:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 187
    .local v0, token:Ljava/lang/String;
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lattach/getFile;->mServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lattach/getFile;->mObjectName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getfileSize()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lattach/getFile;->RecBodySize:I

    return v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 1
    .parameter "coreBuffer"

    .prologue
    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lattach/getFile;->m_ResponseStatus:I

    .line 173
    return-void
.end method

.method public handleResponseHeaders(Lcom/common/CoreBuffer;)V
    .locals 0
    .parameter "coreBuffer"

    .prologue
    .line 176
    return-void
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/common/CoreBuffer;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 160
    .local v0, result:Lcom/common/CoreBuffer;
    return-object v0
.end method

.method public setfileSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 195
    iput p1, p0, Lattach/getFile;->RecBodySize:I

    .line 196
    return-void
.end method
