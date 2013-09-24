.class public Lcom/client/Send;
.super Ljava/lang/Object;
.source "Send.java"


# static fields
.field private static final MESSAGE_OTHER_SIZE:I = 0x27


# instance fields
.field private TotFileSize:I

.field private context:Ljava/lang/String;

.field private mQueryUser:Lattach/queryUser;

.field private m_guid:[B

.field private msgid:J

.field private socontext:Ljava/lang/String;

.field private toUser:Ljava/lang/String;

.field private xcontext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lactivity/ChatMsgEntity;)V
    .locals 2
    .parameter "entity"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Send;->toUser:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    invoke-static {v0}, Lcom/common/emoji;->transSBToIOS5emoji(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/client/Send;->msgid:J

    .line 31
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getguid()[B

    move-result-object v0

    iput-object v0, p0, Lcom/client/Send;->m_guid:[B

    .line 33
    return-void
.end method


# virtual methods
.method public addFileInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "name"
    .parameter "size"
    .parameter "type"
    .parameter "utitype"
    .parameter "owner"
    .parameter "url"
    .parameter "sig"
    .parameter "key"

    .prologue
    .line 239
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, sLen:Ljava/lang/String;
    const-string v0, "<FILE"

    .line 243
    .local v0, sBuf:Ljava/lang/String;
    const-string v3, " name"

    invoke-virtual {p0, v0, v3, p1}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v3, " width"

    const-string v4, "0"

    invoke-virtual {p0, v0, v3, v4}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    const-string v3, " height"

    const-string v4, "0"

    invoke-virtual {p0, v0, v3, v4}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v3, " datasize"

    invoke-virtual {p0, v0, v3, v1}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 248
    const-string v3, " mime-type"

    invoke-virtual {p0, v0, v3, p3}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :cond_0
    const-string v3, " uti-type"

    invoke-virtual {p0, v0, v3, p4}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v3, " mmcs-owner"

    invoke-virtual {p0, v0, v3, p5}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    const-string v3, " mmcs-url"

    invoke-virtual {p0, v0, v3, p6}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    const-string v3, " mmcs-signature-hex"

    invoke-virtual {p0, v0, v3, p7}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string v3, " file-size"

    invoke-virtual {p0, v0, v3, v1}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, tkey:Ljava/lang/String;
    const-string v3, " decryption-key"

    invoke-virtual {p0, v0, v3, v2}, Lcom/client/Send;->pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v3, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/client/Send;->context:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/client/Send;->context:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public addMsgInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "<span style=\"font-family: \'Helvetica\';font-size: 12px;\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</span>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    iput-object v0, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/client/Send;->context:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Send;->context:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public body()Lcom/common/CoreBuffer;
    .locals 25

    .prologue
    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->toUser:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v12, v0

    .line 123
    .local v12, lengthuser:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->context:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v11, v0

    .line 124
    .local v11, lengthmsg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    array-length v13, v0

    .line 126
    .local v13, lengthxmsg:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->mQueryUser:Lattach/queryUser;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lattach/queryUser;->getResToken()Ljava/util/ArrayList;

    move-result-object v16

    .line 127
    .local v16, resToken:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->mQueryUser:Lattach/queryUser;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lattach/queryUser;->getResSeToken()Ljava/util/ArrayList;

    move-result-object v15

    .line 128
    .local v15, resSeToken:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->mQueryUser:Lattach/queryUser;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lattach/queryUser;->getResIdentity()Ljava/util/ArrayList;

    move-result-object v14

    .line 130
    .local v14, resIdentity:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v9, 0x0

    .line 131
    .local v9, keysize:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    .line 134
    add-int v22, v12, v11

    add-int v22, v22, v13

    add-int/lit8 v22, v22, 0x27

    add-int v18, v22, v9

    .line 135
    .local v18, size:I
    move/from16 v0, v18

    new-array v3, v0, [B

    .line 136
    .local v3, buf:[B
    add-int/lit8 v19, v18, -0x5

    .line 138
    .local v19, temp:I
    const/4 v4, 0x0

    .line 139
    .local v4, i:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    const/16 v22, 0x4

    aput-byte v22, v3, v4

    .line 140
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    shr-int/lit8 v22, v19, 0x18

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 141
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    shr-int/lit8 v22, v19, 0x10

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 142
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    shr-int/lit8 v22, v19, 0x8

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 143
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 145
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/16 v22, 0x3

    aput-byte v22, v3, v5

    .line 146
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    const/16 v22, 0x1

    aput-byte v22, v3, v4

    .line 149
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/16 v22, 0x1

    aput-byte v22, v3, v5

    .line 150
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    const/16 v22, 0x10

    aput-byte v22, v3, v4

    .line 152
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    const/16 v22, 0x10

    move/from16 v0, v22

    if-lt v7, v0, :cond_2

    .line 157
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/16 v22, 0x2

    aput-byte v22, v3, v5

    .line 158
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    const/16 v22, 0x4

    aput-byte v22, v3, v4

    .line 159
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/client/Send;->msgid:J

    move-wide/from16 v22, v0

    const/16 v24, 0x18

    shr-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 160
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/client/Send;->msgid:J

    move-wide/from16 v22, v0

    const/16 v24, 0x10

    shr-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 161
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/client/Send;->msgid:J

    move-wide/from16 v22, v0

    const/16 v24, 0x8

    shr-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 162
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/client/Send;->msgid:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 165
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/16 v22, 0x3

    aput-byte v22, v3, v5

    .line 166
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    int-to-byte v0, v12

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->toUser:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 168
    .local v20, tmp:[B
    const/4 v7, 0x0

    :goto_2
    if-lt v7, v12, :cond_3

    .line 173
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/16 v22, 0x5

    aput-byte v22, v3, v5

    .line 174
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    shr-int/lit8 v22, v11, 0x8

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 175
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    int-to-byte v0, v11

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->context:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 177
    const/4 v7, 0x0

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    :goto_3
    if-lt v7, v11, :cond_4

    .line 181
    if-lez v13, :cond_0

    .line 183
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    const/16 v22, 0x6

    aput-byte v22, v3, v5

    .line 184
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    shr-int/lit8 v22, v13, 0x8

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 185
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    int-to-byte v0, v13

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    .line 187
    const/4 v7, 0x0

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    :goto_4
    if-lt v7, v13, :cond_5

    :cond_0
    move v4, v5

    .line 192
    .end local v5           #i:I
    .restart local v4       #i:I
    const/4 v8, 0x0

    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-lt v8, v0, :cond_6

    .line 214
    new-instance v22, Lcom/common/CoreBuffer;

    move-object/from16 v0, v22

    invoke-direct {v0, v3, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v22

    .line 132
    .end local v3           #buf:[B
    .end local v4           #i:I
    .end local v7           #j:I
    .end local v18           #size:I
    .end local v19           #temp:I
    .end local v20           #tmp:[B
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v23, v23, v22

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [B

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v22, v22, v23

    add-int/lit8 v22, v22, 0x6

    add-int v9, v9, v22

    .line 131
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 153
    .restart local v3       #buf:[B
    .restart local v5       #i:I
    .restart local v7       #j:I
    .restart local v18       #size:I
    .restart local v19       #temp:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Send;->m_guid:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v7

    aput-byte v22, v3, v5

    .line 152
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto/16 :goto_1

    .line 169
    .restart local v20       #tmp:[B
    :cond_3
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-byte v22, v20, v7

    aput-byte v22, v3, v5

    .line 168
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto/16 :goto_2

    .line 178
    :cond_4
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-byte v22, v20, v7

    aput-byte v22, v3, v5

    .line 177
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto/16 :goto_3

    .line 188
    :cond_5
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-byte v22, v20, v7

    aput-byte v22, v3, v5

    .line 187
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_4

    .line 193
    .end local v5           #i:I
    .restart local v4       #i:I
    :cond_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [B

    .line 194
    .local v21, token:[B
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    .line 195
    .local v17, setoken:[B
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 197
    .local v6, identity:[B
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    array-length v0, v6

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int/lit8 v10, v22, 0x3

    .line 198
    .local v10, len:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    const/16 v22, 0xa

    aput-byte v22, v3, v4

    .line 199
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    shr-int/lit8 v22, v10, 0x8

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 200
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    int-to-byte v0, v10

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 202
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v5

    .line 203
    const/16 v22, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    add-int v4, v4, v22

    .line 206
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 207
    const/16 v22, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    add-int v4, v5, v22

    .line 210
    .end local v5           #i:I
    .restart local v4       #i:I
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v4

    .line 211
    const/16 v22, 0x0

    array-length v0, v6

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v6, v0, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    array-length v0, v6

    move/from16 v22, v0

    add-int v4, v5, v22

    .line 192
    .end local v5           #i:I
    .restart local v4       #i:I
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5
.end method

.method public endInfo()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "</body><html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 56
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 58
    .local v3, index:I
    const/4 v8, 0x0

    iput v8, p0, Lcom/client/Send;->TotFileSize:I

    .line 59
    const-string v8, "Send"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "socontext"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    iget-object v8, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 80
    :cond_0
    iget-object v8, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_1

    .line 81
    iget-object v8, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 82
    .local v7, text:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 83
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v7           #text:Ljava/lang/String;
    :cond_1
    return-object v4

    .line 61
    :cond_2
    iget-object v8, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    const-string v9, "STARTFILE:"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 62
    .local v6, start:I
    iget-object v8, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    const-string v9, ":ENDFILE"

    invoke-virtual {v8, v9, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, end:I
    if-eq v6, v11, :cond_0

    if-eq v0, v11, :cond_0

    .line 65
    iget-object v8, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    invoke-virtual {v8, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 66
    .restart local v7       #text:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 67
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_3
    add-int/lit8 v3, v0, 0x8

    .line 69
    const-string v8, "Send"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "start:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " end:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v8, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    invoke-virtual {v8, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, file:Ljava/lang/String;
    const/16 v8, 0xa

    const-string v9, ":ENDFILE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, ff:Ljava/io/File;
    if-eqz v1, :cond_4

    .line 75
    iget v8, p0, Lcom/client/Send;->TotFileSize:I

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v9, v9

    add-int/2addr v8, v9

    iput v8, p0, Lcom/client/Send;->TotFileSize:I

    .line 77
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getmMsgid()I
    .locals 4

    .prologue
    .line 35
    iget-object v1, p0, Lcom/client/Send;->m_guid:[B

    const/4 v2, 0x3

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lcom/client/Send;->m_guid:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/client/Send;->m_guid:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lcom/client/Send;->m_guid:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    or-int v0, v1, v2

    .line 36
    .local v0, tmsgid:I
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 37
    return v0
.end method

.method public haveAttach()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 40
    iget-object v2, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    const-string v3, "STARTFILE:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, start:I
    iget-object v2, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    const-string v3, ":ENDFILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 42
    .local v0, end:I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    .line 43
    const/4 v2, 0x1

    .line 47
    :goto_0
    return v2

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/client/Send;->socontext:Ljava/lang/String;

    iput-object v2, p0, Lcom/client/Send;->context:Ljava/lang/String;

    .line 46
    const-string v2, ""

    iput-object v2, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    .line 47
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public initInfo()V
    .locals 1

    .prologue
    .line 224
    const-string v0, "<html><body style=\"background-color:#e9e9e9;color:#000000;\">"

    iput-object v0, p0, Lcom/client/Send;->xcontext:Ljava/lang/String;

    .line 225
    const-string v0, ""

    iput-object v0, p0, Lcom/client/Send;->context:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public pushData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "to"
    .parameter "head"
    .parameter "data"

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setQueryUser(Lattach/queryUser;)V
    .locals 0
    .parameter "mQueryUser"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/client/Send;->mQueryUser:Lattach/queryUser;

    .line 219
    return-void
.end method
