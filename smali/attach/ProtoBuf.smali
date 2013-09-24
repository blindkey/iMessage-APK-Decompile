.class public Lattach/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# static fields
.field public static PROTOBUFTYPECHAR:I

.field public static PROTOBUFTYPEINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput v0, Lattach/ProtoBuf;->PROTOBUFTYPEINT:I

    .line 11
    const/4 v0, 0x2

    sput v0, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAllProtoData(Lcom/common/CoreBuffer;)Ljava/util/Vector;
    .locals 9
    .parameter "from"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/common/CoreBuffer;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lattach/ProtoData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 15
    const/4 v3, 0x0

    .line 19
    .local v3, id:I
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    .line 20
    .local v2, flen:I
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    .line 21
    .local v1, fbuf:[B
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 22
    .local v4, protodata:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    :goto_0
    if-gtz v2, :cond_0

    .line 43
    return-object v4

    .line 23
    :cond_0
    aget-byte v7, v1, v8

    invoke-static {v7, v3}, Lattach/ProtoBuf;->TypeInt(BI)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 24
    aget-byte v7, v1, v8

    invoke-static {v7}, Lattach/ProtoBuf;->GetId(B)I

    move-result v3

    .line 25
    invoke-static {p0}, Lattach/ProtoBuf;->GetInt(Lcom/common/CoreBuffer;)I

    move-result v6

    .line 26
    .local v6, valu:I
    new-instance v5, Lattach/ProtoData;

    invoke-direct {v5, v6, v3}, Lattach/ProtoData;-><init>(II)V

    .line 27
    .local v5, tmp:Lattach/ProtoData;
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 40
    .end local v6           #valu:I
    :goto_1
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    .line 41
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    goto :goto_0

    .line 30
    .end local v5           #tmp:Lattach/ProtoData;
    :cond_1
    aget-byte v7, v1, v8

    invoke-static {v7, v3}, Lattach/ProtoBuf;->TypeChar(BI)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 31
    aget-byte v7, v1, v8

    invoke-static {v7}, Lattach/ProtoBuf;->GetId(B)I

    move-result v3

    .line 32
    invoke-static {p0}, Lattach/ProtoBuf;->GetChar(Lcom/common/CoreBuffer;)Lcom/common/CoreBuffer;

    move-result-object v0

    .line 33
    .local v0, data:Lcom/common/CoreBuffer;
    new-instance v5, Lattach/ProtoData;

    invoke-direct {v5, v0, v3}, Lattach/ProtoData;-><init>(Lcom/common/CoreBuffer;I)V

    .line 34
    .restart local v5       #tmp:Lattach/ProtoData;
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    .end local v0           #data:Lcom/common/CoreBuffer;
    .end local v5           #tmp:Lattach/ProtoData;
    :cond_2
    :goto_2
    const-string v7, "protoBuf"

    const-string v8, "error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static GetAllProtoData(Ljava/util/Vector;Lcom/common/CoreBuffer;)Ljava/util/Vector;
    .locals 8
    .parameter
    .parameter "from"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lattach/ProtoData;",
            ">;",
            "Lcom/common/CoreBuffer;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lattach/ProtoData;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, protodata:Ljava/util/Vector;,"Ljava/util/Vector<Lattach/ProtoData;>;"
    const/4 v7, 0x0

    .line 47
    const/4 v3, 0x0

    .line 51
    .local v3, id:I
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    .line 52
    .local v2, flen:I
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    .line 53
    .local v1, fbuf:[B
    :goto_0
    if-gtz v2, :cond_0

    .line 74
    return-object p0

    .line 54
    :cond_0
    aget-byte v6, v1, v7

    invoke-static {v6, v3}, Lattach/ProtoBuf;->TypeInt(BI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 55
    aget-byte v6, v1, v7

    invoke-static {v6}, Lattach/ProtoBuf;->GetId(B)I

    move-result v3

    .line 56
    invoke-static {p1}, Lattach/ProtoBuf;->GetInt(Lcom/common/CoreBuffer;)I

    move-result v5

    .line 57
    .local v5, valu:I
    new-instance v4, Lattach/ProtoData;

    invoke-direct {v4, v5, v3}, Lattach/ProtoData;-><init>(II)V

    .line 58
    .local v4, tmp:Lattach/ProtoData;
    invoke-virtual {p0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 71
    .end local v5           #valu:I
    :goto_1
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    .line 72
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    goto :goto_0

    .line 61
    .end local v4           #tmp:Lattach/ProtoData;
    :cond_1
    aget-byte v6, v1, v7

    invoke-static {v6, v3}, Lattach/ProtoBuf;->TypeChar(BI)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 62
    aget-byte v6, v1, v7

    invoke-static {v6}, Lattach/ProtoBuf;->GetId(B)I

    move-result v3

    .line 63
    invoke-static {p1}, Lattach/ProtoBuf;->GetChar(Lcom/common/CoreBuffer;)Lcom/common/CoreBuffer;

    move-result-object v0

    .line 64
    .local v0, data:Lcom/common/CoreBuffer;
    new-instance v4, Lattach/ProtoData;

    invoke-direct {v4, v0, v3}, Lattach/ProtoData;-><init>(Lcom/common/CoreBuffer;I)V

    .line 65
    .restart local v4       #tmp:Lattach/ProtoData;
    invoke-virtual {p0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local v0           #data:Lcom/common/CoreBuffer;
    .end local v4           #tmp:Lattach/ProtoData;
    :cond_2
    :goto_2
    const-string v6, "protoBuf"

    const-string v7, "error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static GetChar(Lcom/common/CoreBuffer;)Lcom/common/CoreBuffer;
    .locals 15
    .parameter "from"

    .prologue
    .line 193
    const/4 v6, 0x0

    .line 194
    .local v6, index:I
    const/4 v11, 0x0

    .line 195
    .local v11, out:Lcom/common/CoreBuffer;
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v4

    .line 196
    .local v4, flen:I
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v3

    .line 197
    .local v3, fbuf:[B
    if-ge v6, v4, :cond_0

    .line 198
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .local v7, index:I
    aget-byte v0, v3, v6

    .line 199
    .local v0, Type:B
    and-int/lit8 v10, v0, 0x7

    .line 200
    .local v10, mtype:I
    shr-int/lit8 v13, v0, 0x3

    and-int/lit8 v9, v13, 0xf

    .line 201
    .local v9, mid:I
    const/4 v8, 0x0

    .line 203
    .local v8, len:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v13, v3, v7

    and-int/lit16 v2, v13, 0xff

    .line 204
    .local v2, cur:I
    const/4 v12, 0x0

    .local v12, t:I
    move v7, v6

    .line 205
    .end local v6           #index:I
    .restart local v7       #index:I
    :goto_0
    and-int/lit16 v13, v2, 0x80

    if-nez v13, :cond_1

    .line 212
    shl-int v13, v2, v12

    or-int/2addr v8, v13

    .line 214
    add-int/lit8 v13, v8, 0x2

    new-array v1, v13, [B

    .line 215
    .local v1, buf:[B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-lt v5, v8, :cond_2

    .line 218
    new-instance v11, Lcom/common/CoreBuffer;

    .end local v11           #out:Lcom/common/CoreBuffer;
    invoke-direct {v11, v1, v8}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 219
    .restart local v11       #out:Lcom/common/CoreBuffer;
    const/4 v13, 0x0

    sub-int v14, v4, v7

    invoke-static {v3, v7, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    sub-int v13, v4, v7

    invoke-virtual {p0, v3, v13}, Lcom/common/CoreBuffer;->setBuf([BI)V

    move v6, v7

    .line 224
    .end local v0           #Type:B
    .end local v1           #buf:[B
    .end local v2           #cur:I
    .end local v5           #i:I
    .end local v7           #index:I
    .end local v8           #len:I
    .end local v9           #mid:I
    .end local v10           #mtype:I
    .end local v12           #t:I
    .restart local v6       #index:I
    :cond_0
    return-object v11

    .line 206
    .end local v6           #index:I
    .restart local v0       #Type:B
    .restart local v2       #cur:I
    .restart local v7       #index:I
    .restart local v8       #len:I
    .restart local v9       #mid:I
    .restart local v10       #mtype:I
    .restart local v12       #t:I
    :cond_1
    and-int/lit8 v2, v2, 0x7f

    .line 207
    shl-int v13, v2, v12

    or-int/2addr v8, v13

    .line 208
    add-int/lit8 v12, v12, 0x7

    .line 209
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v13, v3, v7

    and-int/lit16 v2, v13, 0xff

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_0

    .line 216
    .restart local v1       #buf:[B
    .restart local v5       #i:I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-byte v13, v3, v7

    aput-byte v13, v1, v5

    .line 215
    add-int/lit8 v5, v5, 0x1

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_1
.end method

.method public static GetId(B)I
    .locals 1
    .parameter "Data"

    .prologue
    .line 158
    shr-int/lit8 v0, p0, 0x3

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static GetInt(Lcom/common/CoreBuffer;)I
    .locals 11
    .parameter "from"

    .prologue
    const/4 v9, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    .line 164
    .local v2, fbuf:[B
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    .line 165
    .local v3, flen:I
    const/4 v4, 0x0

    .line 166
    .local v4, index:I
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 168
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aget-byte v0, v2, v4

    .line 169
    .local v0, Type:B
    and-int/lit8 v7, v0, 0x7

    .line 171
    .local v7, mtype:I
    const/4 v6, 0x0

    .line 173
    .local v6, len:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-byte v10, v2, v5

    and-int/lit16 v1, v10, 0xff

    .line 174
    .local v1, cur:I
    const/4 v8, 0x0

    .local v8, t:I
    move v5, v4

    .line 175
    .end local v4           #index:I
    .restart local v5       #index:I
    :goto_0
    and-int/lit16 v10, v1, 0x80

    if-nez v10, :cond_0

    .line 181
    shl-int v10, v1, v8

    or-int/2addr v6, v10

    .line 182
    sub-int v10, v3, v5

    invoke-static {v2, v5, v2, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    sub-int v9, v3, v5

    invoke-virtual {p0, v2, v9}, Lcom/common/CoreBuffer;->setBuf([BI)V

    move v4, v5

    .line 188
    .end local v0           #Type:B
    .end local v1           #cur:I
    .end local v5           #index:I
    .end local v6           #len:I
    .end local v7           #mtype:I
    .end local v8           #t:I
    .restart local v4       #index:I
    :goto_1
    return v6

    .line 176
    .end local v4           #index:I
    .restart local v0       #Type:B
    .restart local v1       #cur:I
    .restart local v5       #index:I
    .restart local v6       #len:I
    .restart local v7       #mtype:I
    .restart local v8       #t:I
    :cond_0
    and-int/lit16 v1, v1, 0x80

    .line 177
    shl-int v10, v1, v8

    or-int/2addr v6, v10

    .line 178
    add-int/lit8 v8, v8, 0x8

    .line 179
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    aget-byte v10, v2, v5

    and-int/lit16 v1, v10, 0xff

    move v5, v4

    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .end local v0           #Type:B
    .end local v1           #cur:I
    .end local v5           #index:I
    .end local v6           #len:I
    .end local v7           #mtype:I
    .end local v8           #t:I
    .restart local v4       #index:I
    :cond_1
    move v6, v9

    .line 188
    goto :goto_1
.end method

.method public static PushByte(Lcom/common/CoreBuffer;ILcom/common/CoreBuffer;)V
    .locals 17
    .parameter "to"
    .parameter "id"
    .parameter "from"

    .prologue
    .line 107
    shl-int/lit8 v13, p1, 0x3

    and-int/lit8 v13, v13, 0x78

    sget v14, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    and-int/lit8 v14, v14, 0x7

    or-int/2addr v13, v14

    int-to-byte v2, v13

    .line 108
    .local v2, Type:B
    const/16 v13, 0x64

    new-array v1, v13, [B

    .line 109
    .local v1, Len:[B
    const/4 v8, 0x0

    .line 110
    .local v8, index:I
    invoke-virtual/range {p2 .. p2}, Lcom/common/CoreBuffer;->getLen()I

    move-result v12

    .local v12, length:I
    move v9, v8

    .line 111
    .end local v8           #index:I
    .local v9, index:I
    :goto_0
    if-nez v12, :cond_0

    move v8, v9

    .line 124
    .end local v9           #index:I
    .restart local v8       #index:I
    :goto_1
    add-int/lit8 v13, v8, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/common/CoreBuffer;->getLen()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x2

    new-array v3, v13, [B

    .line 125
    .local v3, buf:[B
    invoke-virtual/range {p0 .. p0}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v13, v14, v3, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v10

    .line 128
    .local v10, j:I
    add-int/lit8 v11, v10, 0x1

    .end local v10           #j:I
    .local v11, j:I
    aput-byte v2, v3, v10

    .line 130
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-lt v7, v8, :cond_2

    .line 134
    invoke-virtual/range {p2 .. p2}, Lcom/common/CoreBuffer;->getLen()I

    move-result v6

    .line 135
    .local v6, flen:I
    invoke-virtual/range {p2 .. p2}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v5

    .line 136
    .local v5, fbuf:[B
    const/4 v7, 0x0

    :goto_3
    if-lt v7, v6, :cond_3

    .line 139
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 140
    return-void

    .line 112
    .end local v3           #buf:[B
    .end local v5           #fbuf:[B
    .end local v6           #flen:I
    .end local v7           #i:I
    .end local v8           #index:I
    .end local v11           #j:I
    .restart local v9       #index:I
    :cond_0
    and-int/lit8 v13, v12, 0x7f

    int-to-byte v4, v13

    .line 113
    .local v4, cur:B
    shr-int/lit8 v12, v12, 0x7

    .line 114
    if-nez v12, :cond_1

    .line 115
    add-int/lit8 v8, v9, 0x1

    .end local v9           #index:I
    .restart local v8       #index:I
    aput-byte v4, v1, v9

    goto :goto_1

    .line 119
    .end local v8           #index:I
    .restart local v9       #index:I
    :cond_1
    or-int/lit16 v13, v4, 0x80

    int-to-byte v4, v13

    .line 120
    add-int/lit8 v8, v9, 0x1

    .end local v9           #index:I
    .restart local v8       #index:I
    aput-byte v4, v1, v9

    move v9, v8

    .end local v8           #index:I
    .restart local v9       #index:I
    goto :goto_0

    .line 131
    .end local v4           #cur:B
    .end local v9           #index:I
    .restart local v3       #buf:[B
    .restart local v7       #i:I
    .restart local v8       #index:I
    .restart local v11       #j:I
    :cond_2
    add-int/lit8 v10, v11, 0x1

    .end local v11           #j:I
    .restart local v10       #j:I
    aget-byte v13, v1, v7

    aput-byte v13, v3, v11

    .line 130
    add-int/lit8 v7, v7, 0x1

    move v11, v10

    .end local v10           #j:I
    .restart local v11       #j:I
    goto :goto_2

    .line 137
    .restart local v5       #fbuf:[B
    .restart local v6       #flen:I
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .end local v11           #j:I
    .restart local v10       #j:I
    aget-byte v13, v5, v7

    aput-byte v13, v3, v11

    .line 136
    add-int/lit8 v7, v7, 0x1

    move v11, v10

    .end local v10           #j:I
    .restart local v11       #j:I
    goto :goto_3
.end method

.method public static PushInt(Lcom/common/CoreBuffer;II)V
    .locals 13
    .parameter "to"
    .parameter "id"
    .parameter "valu"

    .prologue
    const/4 v12, 0x0

    .line 78
    shl-int/lit8 v10, p1, 0x3

    and-int/lit8 v10, v10, 0x78

    sget v11, Lattach/ProtoBuf;->PROTOBUFTYPEINT:I

    and-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    int-to-byte v1, v10

    .line 79
    .local v1, Type:B
    const/16 v10, 0x64

    new-array v0, v10, [B

    .line 80
    .local v0, Len:[B
    const/4 v5, 0x0

    .line 81
    .local v5, index:I
    move v9, p2

    .local v9, length:I
    move v6, v5

    .line 82
    .end local v5           #index:I
    .local v6, index:I
    :goto_0
    if-nez v9, :cond_0

    move v5, v6

    .line 95
    .end local v6           #index:I
    .restart local v5       #index:I
    :goto_1
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x2

    new-array v2, v10, [B

    .line 96
    .local v2, buf:[B
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v10

    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v11

    invoke-static {v10, v12, v2, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    invoke-virtual {p0}, Lcom/common/CoreBuffer;->getLen()I

    move-result v7

    .line 98
    .local v7, j:I
    add-int/lit8 v8, v7, 0x1

    .end local v7           #j:I
    .local v8, j:I
    aput-byte v1, v2, v7

    .line 100
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-lt v4, v5, :cond_2

    .line 103
    invoke-virtual {p0, v2, v8}, Lcom/common/CoreBuffer;->setBuf([BI)V

    .line 104
    return-void

    .line 83
    .end local v2           #buf:[B
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v8           #j:I
    .restart local v6       #index:I
    :cond_0
    and-int/lit8 v10, v9, 0x7f

    int-to-byte v3, v10

    .line 84
    .local v3, cur:B
    shr-int/lit8 v9, v9, 0x7

    .line 85
    if-nez v9, :cond_1

    .line 86
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    aput-byte v3, v0, v6

    goto :goto_1

    .line 90
    .end local v5           #index:I
    .restart local v6       #index:I
    :cond_1
    or-int/lit16 v10, v3, 0x80

    int-to-byte v3, v10

    .line 91
    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    aput-byte v3, v0, v6

    move v6, v5

    .end local v5           #index:I
    .restart local v6       #index:I
    goto :goto_0

    .line 101
    .end local v3           #cur:B
    .end local v6           #index:I
    .restart local v2       #buf:[B
    .restart local v4       #i:I
    .restart local v5       #index:I
    .restart local v8       #j:I
    :cond_2
    add-int/lit8 v7, v8, 0x1

    .end local v8           #j:I
    .restart local v7       #j:I
    aget-byte v10, v0, v4

    aput-byte v10, v2, v8

    .line 100
    add-int/lit8 v4, v4, 0x1

    move v8, v7

    .end local v7           #j:I
    .restart local v8       #j:I
    goto :goto_2
.end method

.method public static TypeChar(BI)Z
    .locals 2
    .parameter "Data"
    .parameter "Id"

    .prologue
    .line 151
    and-int/lit8 v0, p0, 0x7

    .line 152
    .local v0, Type:I
    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 p1, v1, 0xf

    .line 153
    sget v1, Lattach/ProtoBuf;->PROTOBUFTYPECHAR:I

    if-ne v0, v1, :cond_0

    .line 154
    const/4 v1, 0x1

    .line 155
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static TypeInt(BI)Z
    .locals 2
    .parameter "Data"
    .parameter "Id"

    .prologue
    .line 143
    and-int/lit8 v0, p0, 0x7

    .line 144
    .local v0, Type:I
    shr-int/lit8 v1, p0, 0x3

    and-int/lit8 p1, v1, 0xf

    .line 145
    sget v1, Lattach/ProtoBuf;->PROTOBUFTYPEINT:I

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 147
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
