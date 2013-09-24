.class public Lcom/client/ClientInputThread;
.super Ljava/lang/Thread;
.source "ClientInputThread.java"


# instance fields
.field private flag:Z

.field private mContext:Landroid/content/Context;

.field private messageListener:Lcom/client/MessageListener;

.field private ois:Ljava/io/DataInputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/client/ClientInputThread;->flag:Z

    .line 25
    iput-object p1, p0, Lcom/client/ClientInputThread;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public getFlag()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/client/ClientInputThread;->flag:Z

    return v0
.end method

.method public overThread()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/ClientInputThread;->flag:Z

    .line 36
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x5

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    new-array v4, v12, [B

    .line 43
    .local v4, head:[B
    :goto_0
    :try_start_0
    iget-boolean v7, p0, Lcom/client/ClientInputThread;->flag:Z

    if-nez v7, :cond_2

    .line 76
    :cond_0
    iget-object v7, p0, Lcom/client/ClientInputThread;->ois:Ljava/io/DataInputStream;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V

    .line 77
    iget-object v7, p0, Lcom/client/ClientInputThread;->socket:Ljava/net/Socket;

    if-eqz v7, :cond_1

    .line 78
    iget-object v7, p0, Lcom/client/ClientInputThread;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_1
    :goto_1
    new-instance v5, Lcom/common/TranObject;

    invoke-direct {v5}, Lcom/common/TranObject;-><init>()V

    .line 83
    .local v5, msg:Lcom/common/TranObject;
    iput-boolean v10, p0, Lcom/client/ClientInputThread;->flag:Z

    .line 84
    const-string v7, "inThread"

    const-string v8, "over"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/16 v7, 0x9

    new-array v0, v7, [B

    aput-byte v13, v0, v10

    aput-byte v14, v0, v14

    aput-byte v13, v0, v12

    const/4 v7, 0x6

    aput-byte v11, v0, v7

    const/4 v7, 0x7

    aput-byte v11, v0, v7

    const/16 v7, 0x8

    aput-byte v11, v0, v7

    .line 86
    .local v0, buf:[B
    new-instance v2, Lcom/common/CoreBuffer;

    array-length v7, v0

    invoke-direct {v2, v0, v7}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 87
    .local v2, coreBuffer:Lcom/common/CoreBuffer;
    invoke-virtual {v5, v2}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 88
    invoke-virtual {v5}, Lcom/common/TranObject;->CreateLoginRespone()V

    .line 89
    iget-object v7, p0, Lcom/client/ClientInputThread;->messageListener:Lcom/client/MessageListener;

    invoke-interface {v7, v5}, Lcom/client/MessageListener;->Message(Lcom/common/TranObject;)V

    .line 90
    return-void

    .line 46
    .end local v0           #buf:[B
    .end local v2           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v5           #msg:Lcom/common/TranObject;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/client/ClientInputThread;->ois:Ljava/io/DataInputStream;

    invoke-virtual {v7, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 47
    iget-boolean v7, p0, Lcom/client/ClientInputThread;->flag:Z

    if-eqz v7, :cond_0

    .line 49
    const/4 v7, 0x1

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x18

    const/high16 v8, -0x100

    and-int/2addr v7, v8

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x10

    const/high16 v9, 0xff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x8

    const v9, 0xff00

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    const/4 v8, 0x4

    aget-byte v8, v4, v8

    shl-int/lit8 v8, v8, 0x0

    and-int/lit16 v8, v8, 0xff

    or-int v6, v7, v8

    .line 51
    .local v6, size:I
    new-array v1, v6, [B

    .line 52
    .local v1, buffer:[B
    iget-object v7, p0, Lcom/client/ClientInputThread;->ois:Ljava/io/DataInputStream;

    invoke-virtual {v7, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 53
    const/4 v2, 0x0

    .line 54
    .restart local v2       #coreBuffer:Lcom/common/CoreBuffer;
    const/4 v7, 0x0

    aget-byte v7, v4, v7

    if-ne v7, v11, :cond_3

    .line 55
    add-int/lit8 v7, v6, 0x5

    new-array v0, v7, [B

    .line 56
    .restart local v0       #buf:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    invoke-static {v4, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-static {v1, v7, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    new-instance v2, Lcom/common/CoreBuffer;

    .end local v2           #coreBuffer:Lcom/common/CoreBuffer;
    add-int/lit8 v7, v6, 0x5

    invoke-direct {v2, v0, v7}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 64
    .restart local v2       #coreBuffer:Lcom/common/CoreBuffer;
    :goto_2
    new-instance v5, Lcom/common/TranObject;

    invoke-direct {v5}, Lcom/common/TranObject;-><init>()V

    .line 65
    .restart local v5       #msg:Lcom/common/TranObject;
    invoke-virtual {v5, v2}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 68
    iget-object v7, p0, Lcom/client/ClientInputThread;->messageListener:Lcom/client/MessageListener;

    invoke-interface {v7, v5}, Lcom/client/MessageListener;->Message(Lcom/common/TranObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 79
    .end local v0           #buf:[B
    .end local v1           #buffer:[B
    .end local v2           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v5           #msg:Lcom/common/TranObject;
    .end local v6           #size:I
    :catch_0
    move-exception v3

    .line 80
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 60
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #buffer:[B
    .restart local v2       #coreBuffer:Lcom/common/CoreBuffer;
    .restart local v6       #size:I
    :cond_3
    :try_start_2
    invoke-static {v1}, LdataEncode/aesCode;->Decrypt([B)[B

    move-result-object v0

    .line 61
    .restart local v0       #buf:[B
    new-instance v2, Lcom/common/CoreBuffer;

    .end local v2           #coreBuffer:Lcom/common/CoreBuffer;
    array-length v7, v0

    invoke-direct {v2, v0, v7}, Lcom/common/CoreBuffer;-><init>([BI)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v2       #coreBuffer:Lcom/common/CoreBuffer;
    goto :goto_2
.end method

.method public setMessageListener(Lcom/client/MessageListener;)V
    .locals 0
    .parameter "messageListener"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/client/ClientInputThread;->messageListener:Lcom/client/MessageListener;

    .line 30
    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 3
    .parameter "socket"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/client/ClientInputThread;->socket:Ljava/net/Socket;

    .line 97
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/client/ClientInputThread;->ois:Ljava/io/DataInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
