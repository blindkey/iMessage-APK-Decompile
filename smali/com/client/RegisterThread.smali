.class public Lcom/client/RegisterThread;
.super Ljava/lang/Thread;
.source "RegisterThread.java"


# instance fields
.field private appleid:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "id"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/client/RegisterThread;->appleid:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/client/RegisterThread;->context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method private body()Lcom/common/CoreBuffer;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 29
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 30
    .local v4, client:Ljava/net/Socket;
    new-instance v13, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/client/RegisterThread;->context:Landroid/content/Context;

    const v15, 0x7f070002

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 31
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/client/RegisterThread;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const/high16 v16, 0x7f08

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    invoke-direct {v13, v14, v15}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v14, 0xbb8

    .line 30
    invoke-virtual {v4, v13, v14}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 32
    invoke-virtual {v4}, Ljava/net/Socket;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 33
    const-string v13, "register"

    const-string v14, "link succ"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v9, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v9, ois:Ljava/io/DataInputStream;
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 39
    .local v10, oos:Ljava/io/DataOutputStream;
    invoke-direct/range {p0 .. p0}, Lcom/client/RegisterThread;->body()Lcom/common/CoreBuffer;

    move-result-object v11

    .line 40
    .local v11, outbuf:Lcom/common/CoreBuffer;
    invoke-virtual {v11}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11}, Lcom/common/CoreBuffer;->getLen()I

    move-result v15

    invoke-virtual {v10, v13, v14, v15}, Ljava/io/DataOutputStream;->write([BII)V

    .line 42
    const/4 v13, 0x5

    new-array v7, v13, [B

    .line 44
    .local v7, head:[B
    invoke-virtual {v9, v7}, Ljava/io/DataInputStream;->readFully([B)V

    .line 45
    const/4 v13, 0x1

    aget-byte v13, v7, v13

    shl-int/lit8 v13, v13, 0x18

    const/high16 v14, -0x100

    and-int/2addr v13, v14

    const/4 v14, 0x2

    aget-byte v14, v7, v14

    shl-int/lit8 v14, v14, 0x10

    const/high16 v15, 0xff

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    const/4 v14, 0x3

    aget-byte v14, v7, v14

    shl-int/lit8 v14, v14, 0x8

    const v15, 0xff00

    and-int/2addr v14, v15

    or-int/2addr v13, v14

    const/4 v14, 0x4

    aget-byte v14, v7, v14

    shl-int/lit8 v14, v14, 0x0

    and-int/lit16 v14, v14, 0xff

    or-int v12, v13, v14

    .line 46
    .local v12, size:I
    new-array v3, v12, [B

    .line 47
    .local v3, buffer:[B
    invoke-virtual {v9, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 48
    add-int/lit8 v13, v12, 0x5

    new-array v2, v13, [B

    .line 49
    .local v2, buf:[B
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x5

    invoke-static {v7, v13, v2, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    const/4 v13, 0x0

    const/4 v14, 0x5

    invoke-static {v3, v13, v2, v14, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    new-instance v5, Lcom/common/CoreBuffer;

    add-int/lit8 v13, v12, 0x5

    invoke-direct {v5, v2, v13}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 52
    .local v5, coreBuffer:Lcom/common/CoreBuffer;
    new-instance v8, Lcom/common/TranObject;

    invoke-direct {v8}, Lcom/common/TranObject;-><init>()V

    .line 53
    .local v8, msg:Lcom/common/TranObject;
    invoke-virtual {v8, v5}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 55
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v1, broadCast:Landroid/content/Intent;
    const-string v13, "com.way.message"

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v13, "message"

    invoke-virtual {v1, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 59
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/client/RegisterThread;->context:Landroid/content/Context;

    invoke-virtual {v13, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #broadCast:Landroid/content/Intent;
    .end local v2           #buf:[B
    .end local v3           #buffer:[B
    .end local v4           #client:Ljava/net/Socket;
    .end local v5           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v7           #head:[B
    .end local v8           #msg:Lcom/common/TranObject;
    .end local v9           #ois:Ljava/io/DataInputStream;
    .end local v10           #oos:Ljava/io/DataOutputStream;
    .end local v11           #outbuf:Lcom/common/CoreBuffer;
    .end local v12           #size:I
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v6

    .line 64
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
