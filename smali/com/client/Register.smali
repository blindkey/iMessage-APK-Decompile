.class public Lcom/client/Register;
.super Ljava/lang/Thread;
.source "Register.java"


# static fields
.field private static final AlREADYREGISTER:I = 0x0

.field private static final NETWORKERR:I = 0x2

.field private static final REGISTERERR:I = 0x3

.field private static final REGISTERSUCC:I = 0x1


# instance fields
.field private Body:Lcom/common/CoreBuffer;

.field private RegisterStatus:I

.field private ResponeBody:Lcom/common/CoreBuffer;

.field private appleID:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private day:I

.field private firstName:Ljava/lang/String;

.field private getAppleEmail:Z

.field private handler:Landroid/os/Handler;

.field private lastName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private month:I

.field private password:Ljava/lang/String;

.field private quesAns:Ljava/lang/String;

.field private question:Ljava/lang/String;

.field private responeType:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/client/Register;->handler:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lcom/client/Register;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private body()Lcom/common/CoreBuffer;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 189
    iget-object v7, p0, Lcom/client/Register;->appleID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    .line 190
    .local v0, alen:I
    iget-object v7, p0, Lcom/client/Register;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 191
    .local v4, plen:I
    add-int/lit8 v7, v0, 0xa

    add-int/lit8 v7, v7, 0x2

    add-int v5, v7, v4

    .line 192
    .local v5, size:I
    new-array v1, v5, [B

    .line 194
    .local v1, buf:[B
    const/4 v2, 0x0

    .line 195
    .local v2, index:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    const/16 v7, 0xa

    aput-byte v7, v1, v2

    .line 196
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v7, v5, -0x5

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 197
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    add-int/lit8 v7, v5, -0x5

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 198
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    add-int/lit8 v7, v5, -0x5

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 199
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    add-int/lit8 v7, v5, -0x5

    shr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 200
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aput-byte v11, v1, v3

    .line 201
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aput-byte v8, v1, v2

    .line 202
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aput-byte v8, v1, v3

    .line 203
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aput-byte v8, v1, v2

    .line 204
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    int-to-byte v7, v0

    aput-byte v7, v1, v3

    .line 205
    iget-object v7, p0, Lcom/client/Register;->appleID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    add-int/lit8 v2, v0, 0xa

    .line 208
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aput-byte v10, v1, v2

    .line 209
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    int-to-byte v7, v4

    aput-byte v7, v1, v3

    .line 210
    iget-object v7, p0, Lcom/client/Register;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v9, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    add-int/2addr v2, v4

    .line 213
    invoke-static {v1}, LdataEncode/aesCode;->Encrypt([B)[B

    move-result-object v6

    .line 214
    .local v6, tbuf:[B
    array-length v7, v6

    add-int/lit8 v7, v7, 0x5

    new-array v1, v7, [B

    .line 215
    const/16 v7, 0x3c

    aput-byte v7, v1, v9

    .line 216
    array-length v7, v6

    shr-int/lit8 v7, v7, 0x18

    int-to-byte v7, v7

    aput-byte v7, v1, v8

    .line 217
    array-length v7, v6

    shr-int/lit8 v7, v7, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v10

    .line 218
    array-length v7, v6

    shr-int/lit8 v7, v7, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v11

    .line 219
    const/4 v7, 0x4

    array-length v8, v6

    shr-int/lit8 v8, v8, 0x0

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 220
    const/4 v7, 0x5

    array-length v8, v6

    invoke-static {v6, v9, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    array-length v7, v6

    add-int/lit8 v5, v7, 0x5

    .line 223
    new-instance v7, Lcom/common/CoreBuffer;

    invoke-direct {v7, v1, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v7
.end method

.method private getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "head"
    .parameter "msg"

    .prologue
    .line 273
    const-string v1, ""

    .line 275
    .local v1, enurl:Ljava/lang/String;
    :try_start_0
    const-string v2, "gb2312"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 280
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 276
    :catch_0
    move-exception v0

    .line 278
    .local v0, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private handle91Res(Lcom/common/CoreBuffer;)Z
    .locals 5
    .parameter "coreBuffer"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 226
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    const/16 v3, 0x9

    aget-byte v0, v2, v3

    .line 227
    .local v0, sta:I
    if-eqz v0, :cond_0

    if-ne v0, v4, :cond_1

    .line 228
    :cond_0
    iput v1, p0, Lcom/client/Register;->RegisterStatus:I

    .line 232
    :goto_0
    return v1

    .line 231
    :cond_1
    iput v4, p0, Lcom/client/Register;->RegisterStatus:I

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private to91Server()Z
    .locals 24

    .prologue
    .line 90
    const/4 v8, 0x1

    .line 92
    .local v8, flag:Z
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5}, Ljava/net/Socket;-><init>()V

    .line 93
    .local v5, client:Ljava/net/Socket;
    new-instance v20, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Register;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f070002

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/client/Register;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x7f08

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v22

    invoke-direct/range {v20 .. v22}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v21, 0xbb8

    .line 93
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 95
    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 96
    const-string v20, "register"

    const-string v21, "link succ"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v11, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 100
    .local v11, ois:Ljava/io/DataInputStream;
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 102
    .local v12, oos:Ljava/io/DataOutputStream;
    invoke-static {}, LdataEncode/Authentication;->init_aesKey()V

    .line 103
    invoke-static {}, LdataEncode/Authentication;->request_rsaKey()Lcom/common/CoreBuffer;

    move-result-object v13

    .line 106
    .local v13, outbuf:Lcom/common/CoreBuffer;
    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getLen()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 108
    const/16 v17, 0x0

    .line 109
    .local v17, succ:Z
    :goto_0
    if-eqz v8, :cond_0

    if-eqz v17, :cond_1

    .line 171
    :cond_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    .line 172
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->close()V

    .line 177
    .end local v11           #ois:Ljava/io/DataInputStream;
    .end local v12           #oos:Ljava/io/DataOutputStream;
    .end local v13           #outbuf:Lcom/common/CoreBuffer;
    .end local v17           #succ:Z
    :goto_1
    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 185
    .end local v5           #client:Ljava/net/Socket;
    :goto_2
    return v8

    .line 110
    .restart local v5       #client:Ljava/net/Socket;
    .restart local v11       #ois:Ljava/io/DataInputStream;
    .restart local v12       #oos:Ljava/io/DataOutputStream;
    .restart local v13       #outbuf:Lcom/common/CoreBuffer;
    .restart local v17       #succ:Z
    :cond_1
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v9, v0, [B

    .line 112
    .local v9, head:[B
    invoke-virtual {v11, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 113
    const/16 v20, 0x1

    aget-byte v20, v9, v20

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x100

    and-int v20, v20, v21

    const/16 v21, 0x2

    aget-byte v21, v9, v21

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff

    and-int v21, v21, v22

    or-int v20, v20, v21

    const/16 v21, 0x3

    aget-byte v21, v9, v21

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    const/16 v21, 0x4

    aget-byte v21, v9, v21

    shl-int/lit8 v21, v21, 0x0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v16, v20, v21

    .line 114
    .local v16, size:I
    move/from16 v0, v16

    new-array v4, v0, [B

    .line 115
    .local v4, buffer:[B
    invoke-virtual {v11, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 117
    const-string v20, "Register rec "

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " type "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v22, 0x0

    aget-byte v22, v9, v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/16 v20, 0x0

    aget-byte v20, v9, v20

    sparse-switch v20, :sswitch_data_0

    goto :goto_0

    .line 120
    :sswitch_0
    add-int/lit8 v20, v16, 0x5

    move/from16 v0, v20

    new-array v3, v0, [B

    .line 121
    .local v3, buf:[B
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v9, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    const/16 v20, 0x0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v16

    invoke-static {v4, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    new-instance v6, Lcom/common/CoreBuffer;

    add-int/lit8 v20, v16, 0x5

    move/from16 v0, v20

    invoke-direct {v6, v3, v0}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 126
    .local v6, coreBuffer:Lcom/common/CoreBuffer;
    add-int/lit8 v10, v16, 0x5

    .line 127
    .local v10, len:I
    const/16 v20, 0x6

    aget-byte v19, v3, v20

    .line 128
    .local v19, type:B
    packed-switch v19, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 130
    :pswitch_1
    invoke-static {v3, v10}, LdataEncode/Authentication;->Respone_rsaKey([BI)V

    .line 131
    invoke-static {}, LdataEncode/Authentication;->send_aesKey()Lcom/common/CoreBuffer;

    move-result-object v13

    .line 132
    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getLen()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 178
    .end local v3           #buf:[B
    .end local v4           #buffer:[B
    .end local v5           #client:Ljava/net/Socket;
    .end local v6           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v9           #head:[B
    .end local v10           #len:I
    .end local v11           #ois:Ljava/io/DataInputStream;
    .end local v12           #oos:Ljava/io/DataOutputStream;
    .end local v13           #outbuf:Lcom/common/CoreBuffer;
    .end local v16           #size:I
    .end local v17           #succ:Z
    .end local v19           #type:B
    :catch_0
    move-exception v7

    .line 180
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/client/Register;->RegisterStatus:I

    .line 182
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 135
    .end local v7           #e:Ljava/io/IOException;
    .restart local v3       #buf:[B
    .restart local v4       #buffer:[B
    .restart local v5       #client:Ljava/net/Socket;
    .restart local v6       #coreBuffer:Lcom/common/CoreBuffer;
    .restart local v9       #head:[B
    .restart local v10       #len:I
    .restart local v11       #ois:Ljava/io/DataInputStream;
    .restart local v12       #oos:Ljava/io/DataOutputStream;
    .restart local v13       #outbuf:Lcom/common/CoreBuffer;
    .restart local v16       #size:I
    .restart local v17       #succ:Z
    .restart local v19       #type:B
    :pswitch_2
    :try_start_1
    invoke-static {v3, v10}, LdataEncode/Authentication;->Respone_authentication([BI)Z

    .line 136
    invoke-direct/range {p0 .. p0}, Lcom/client/Register;->body()Lcom/common/CoreBuffer;

    move-result-object v13

    .line 137
    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v13}, Lcom/common/CoreBuffer;->getLen()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 142
    .end local v3           #buf:[B
    .end local v6           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v10           #len:I
    .end local v19           #type:B
    :sswitch_1
    invoke-static {v4}, LdataEncode/aesCode;->Decrypt([B)[B

    move-result-object v18

    .line 143
    .local v18, tbuf:[B
    new-instance v6, Lcom/common/CoreBuffer;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 144
    .restart local v6       #coreBuffer:Lcom/common/CoreBuffer;
    const-string v20, "Register "

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, " ttype "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v22

    const/16 v23, 0x0

    aget-byte v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v6}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v20

    const/16 v21, 0x0

    aget-byte v20, v20, v21

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_0

    .line 148
    :pswitch_3
    new-instance v14, LUserLogin/UserRegisterHttpsRequest;

    invoke-direct {v14, v6}, LUserLogin/UserRegisterHttpsRequest;-><init>(Lcom/common/CoreBuffer;)V

    .line 149
    .local v14, reg:LUserLogin/UserRegisterHttpsRequest;
    invoke-virtual {v14}, LUserLogin/UserRegisterHttpsRequest;->start()Z

    move-result v20

    if-nez v20, :cond_2

    .line 150
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/client/Register;->RegisterStatus:I

    .line 151
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 153
    :cond_2
    invoke-virtual {v14}, LUserLogin/UserRegisterHttpsRequest;->res_body()Lcom/common/CoreBuffer;

    move-result-object v15

    .line 154
    .local v15, res:Lcom/common/CoreBuffer;
    invoke-virtual {v15}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual {v15}, Lcom/common/CoreBuffer;->getLen()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v12, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 158
    .end local v14           #reg:LUserLogin/UserRegisterHttpsRequest;
    .end local v15           #res:Lcom/common/CoreBuffer;
    :pswitch_4
    invoke-static {v4}, LdataEncode/aesCode;->Decrypt([B)[B

    move-result-object v18

    .line 159
    new-instance v6, Lcom/common/CoreBuffer;

    .end local v6           #coreBuffer:Lcom/common/CoreBuffer;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 160
    .restart local v6       #coreBuffer:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/client/Register;->handle91Res(Lcom/common/CoreBuffer;)Z

    move-result v8

    .line 161
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 174
    .end local v4           #buffer:[B
    .end local v6           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v9           #head:[B
    .end local v11           #ois:Ljava/io/DataInputStream;
    .end local v12           #oos:Ljava/io/DataOutputStream;
    .end local v13           #outbuf:Lcom/common/CoreBuffer;
    .end local v16           #size:I
    .end local v17           #succ:Z
    .end local v18           #tbuf:[B
    :cond_3
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/client/Register;->RegisterStatus:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 118
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3c -> :sswitch_1
    .end sparse-switch

    .line 128
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 145
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public ResponeType()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/client/Register;->responeType:Z

    return v0
.end method

.method public getHeader()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/536.26.14 (KHTML, like Gecko)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v1, "x-protocol-version"

    const-string v2, "7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v1, "x-vc-ui-layout"

    const-string v2, "desktop-settings1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v1, "Accept"

    const-string v2, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v1, "Origin"

    const-string v2, "https://service.ess.apple.com"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "X-MMe-Client-Info"

    const-string v2, "<Macmini5,1> <Mac OS X;10.8.2;12C54> <com.apple.iChat/7.0.1 (com.apple.iChat/7.0.1)>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "x-vc-service"

    const-string v2, "Messenger"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "x-ds-client-id"

    const-string v2, "t:982450B522CC995FB3B2FBA6FAC184D5D590BCB1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "Referer"

    const-string v2, "https://service.ess.apple.com/WebObjects/VCProfileService.woa/wp/accountSetup"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v1, "Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "Content-Length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/client/Register;->Body:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v1, "Accept-Language"

    const-string v2, "zh-cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v1, "Cookie"

    const-string v2, "vc_ap=0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v1, "Proxy-Connection"

    const-string v2, "keep-alive"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-object v0
.end method

.method public handleResponseBody(Lcom/common/CoreBuffer;)V
    .locals 6
    .parameter "coreBuffer"

    .prologue
    const/4 v5, 0x0

    .line 283
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 284
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, t:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v3

    invoke-static {v3}, LdataEncode/gZip;->uncompressToString([B)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, resBody:Ljava/lang/String;
    const-string v3, "Register res"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v3, "appleIdInUseDialog"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 288
    iput v5, p0, Lcom/client/Register;->RegisterStatus:I

    .line 289
    iput-boolean v5, p0, Lcom/client/Register;->responeType:Z

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/client/Register;->responeType:Z

    goto :goto_0
.end method

.method public messageBody()Lcom/common/CoreBuffer;
    .locals 5

    .prologue
    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastName"

    iget-object v3, p0, Lcom/client/Register;->lastName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "firstName"

    iget-object v3, p0, Lcom/client/Register;->firstName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string v2, "appleId"

    iget-object v3, p0, Lcom/client/Register;->appleID:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password"

    iget-object v3, p0, Lcom/client/Register;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string v2, "verify-password"

    iget-object v3, p0, Lcom/client/Register;->password:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "passwordQuestion"

    iget-object v3, p0, Lcom/client/Register;->question:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    const-string v2, "customPasswordQuestion"

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "passwordAnswer"

    iget-object v3, p0, Lcom/client/Register;->quesAns:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    const-string v2, "birthMonth"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/client/Register;->month:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "birthDay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/client/Register;->day:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    const-string v2, "countryCode"

    iget-object v3, p0, Lcom/client/Register;->country:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "wantsAppleNews"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/client/Register;->getAppleEmail:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/client/Register;->getdata(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, buf:Ljava/lang/String;
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v1, p0, Lcom/client/Register;->Body:Lcom/common/CoreBuffer;

    .line 270
    iget-object v1, p0, Lcom/client/Register;->Body:Lcom/common/CoreBuffer;

    return-object v1
.end method

.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x1

    .line 56
    new-instance v0, Lattach/HttpsConnect;

    iget-object v6, p0, Lcom/client/Register;->mContext:Landroid/content/Context;

    const v7, 0x7f070003

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "POST"

    invoke-direct {v0, v6, v7}, Lattach/HttpsConnect;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .local v0, client:Lattach/HttpsConnect;
    invoke-virtual {p0}, Lcom/client/Register;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v5

    .line 58
    .local v5, send:Lcom/common/CoreBuffer;
    invoke-virtual {p0}, Lcom/client/Register;->getHeader()Ljava/util/Map;

    move-result-object v1

    .line 59
    .local v1, header:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, v1}, Lattach/HttpsConnect;->AddHeader(Ljava/util/Map;)V

    .line 60
    invoke-virtual {v0, v8, v8}, Lattach/HttpsConnect;->setIfInOut(ZZ)V

    .line 61
    new-instance v4, Lcom/common/CoreBuffer;

    new-array v6, v9, [B

    invoke-direct {v4, v6, v9}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 62
    .local v4, rec:Lcom/common/CoreBuffer;
    invoke-virtual {v0, v5, v4}, Lattach/HttpsConnect;->setSendRecType(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 68
    invoke-virtual {v0}, Lattach/HttpsConnect;->execute()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 69
    invoke-virtual {p0, v4}, Lcom/client/Register;->handleResponseBody(Lcom/common/CoreBuffer;)V

    .line 70
    invoke-virtual {p0}, Lcom/client/Register;->ResponeType()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/client/Register;->to91Server()Z

    .line 78
    :cond_0
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v3, purchase:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Register"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/client/Register;->RegisterStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/client/Register;->appleID:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v6, p0, Lcom/client/Register;->mContext:Landroid/content/Context;

    const-string v7, "Register"

    invoke-static {v6, v7, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 82
    iget-object v6, p0, Lcom/client/Register;->handler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 83
    .local v2, message:Landroid/os/Message;
    iget v6, p0, Lcom/client/Register;->RegisterStatus:I

    iput v6, v2, Landroid/os/Message;->what:I

    .line 84
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 85
    iget-object v6, p0, Lcom/client/Register;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 87
    return-void

    .line 75
    .end local v2           #message:Landroid/os/Message;
    .end local v3           #purchase:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v6, 0x2

    iput v6, p0, Lcom/client/Register;->RegisterStatus:I

    goto :goto_0
.end method

.method public setDate(II)V
    .locals 1
    .parameter "month"
    .parameter "day"

    .prologue
    .line 311
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/client/Register;->month:I

    .line 312
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lcom/client/Register;->day:I

    .line 313
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "semailAddress"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/client/Register;->appleID:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setGetAppleEmail(Z)V
    .locals 0
    .parameter "getAppleEmail"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/client/Register;->getAppleEmail:Z

    .line 323
    return-void
.end method

.method public setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "firstName"
    .parameter "lastName"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/client/Register;->firstName:Ljava/lang/String;

    .line 327
    iput-object p2, p0, Lcom/client/Register;->lastName:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "spassword"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/client/Register;->password:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setPositon(Ljava/lang/String;)V
    .locals 0
    .parameter "sposition"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/client/Register;->country:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setQuestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "question"
    .parameter "answer"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/client/Register;->question:Ljava/lang/String;

    .line 332
    iput-object p2, p0, Lcom/client/Register;->quesAns:Ljava/lang/String;

    .line 333
    return-void
.end method
