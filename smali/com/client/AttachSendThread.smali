.class public Lcom/client/AttachSendThread;
.super Ljava/lang/Thread;
.source "AttachSendThread.java"


# static fields
.field private static final CONNECT:I = 0x0

.field private static final OVER:I = 0x3

.field private static final RECVDATA:I = 0x2

.field private static final SENDDATA:I = 0x1

.field private static final START:I = 0x4


# instance fields
.field private Alist:Ljava/util/ArrayList;

.field private Alock:Ljava/util/concurrent/locks/ReentrantLock;

.field private client:Lcom/client/Client;

.field private curMsgid:I

.field private flag:Z

.field private listener:Lcom/client/MessageRateListener;

.field private mChunkSigList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;"
        }
    .end annotation
.end field

.field private mCodeFilePath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mFileSig:Lcom/common/CoreBuffer;

.field private mFileSize:I

.field private mKey:[B

.field private mToUser:Ljava/lang/String;

.field private preProcess:I

.field private rMRU:Lattach/SendAttachMRU;


# direct methods
.method public constructor <init>(Lcom/client/Client;Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V
    .locals 1
    .parameter "client"
    .parameter "list"
    .parameter "lock"
    .parameter "mContext"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/client/AttachSendThread;->flag:Z

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/client/AttachSendThread;->preProcess:I

    .line 115
    new-instance v0, Lcom/client/AttachSendThread$1;

    invoke-direct {v0, p0}, Lcom/client/AttachSendThread$1;-><init>(Lcom/client/AttachSendThread;)V

    iput-object v0, p0, Lcom/client/AttachSendThread;->listener:Lcom/client/MessageRateListener;

    .line 46
    iput-object p2, p0, Lcom/client/AttachSendThread;->Alist:Ljava/util/ArrayList;

    .line 48
    iput-object p3, p0, Lcom/client/AttachSendThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    new-instance v0, Lattach/SendAttachMRU;

    invoke-direct {v0}, Lattach/SendAttachMRU;-><init>()V

    iput-object v0, p0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    .line 50
    iput-object p1, p0, Lcom/client/AttachSendThread;->client:Lcom/client/Client;

    .line 51
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/client/AttachSendThread;->mKey:[B

    .line 52
    iput-object p4, p0, Lcom/client/AttachSendThread;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/client/AttachSendThread;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/client/AttachSendThread;->preProcess:I

    return-void
.end method

.method static synthetic access$1(Lcom/client/AttachSendThread;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/client/AttachSendThread;->curMsgid:I

    return v0
.end method

.method static synthetic access$2(Lcom/client/AttachSendThread;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lcom/client/AttachSendThread;->preProcess:I

    return v0
.end method

.method static synthetic access$3(Lcom/client/AttachSendThread;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/client/AttachSendThread;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getMRU()Lattach/SendAttachMRU;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    return-object v0
.end method

.method public overThread()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/AttachSendThread;->flag:Z

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 74
    monitor-exit p0

    .line 78
    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pushAttach(Lcom/common/TranObject;)V
    .locals 1
    .parameter "tranObject"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/client/AttachSendThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 66
    iget-object v0, p0, Lcom/client/AttachSendThread;->Alist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/client/AttachSendThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    monitor-enter p0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 68
    monitor-exit p0

    .line 71
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestMRU()Z
    .locals 10

    .prologue
    .line 84
    new-instance v5, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 85
    .local v5, rdm:Ljava/util/Random;
    iget-object v7, p0, Lcom/client/AttachSendThread;->mKey:[B

    invoke-virtual {v5, v7}, Ljava/util/Random;->nextBytes([B)V

    .line 86
    iget-object v7, p0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 87
    .local v4, i:I
    new-instance v7, Ljava/lang/StringBuilder;

    sget-object v8, Lcom/common/Constants;->StortmpFilePath:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".code"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/client/AttachSendThread;->mCodeFilePath:Ljava/lang/String;

    .line 88
    iget-object v7, p0, Lcom/client/AttachSendThread;->mKey:[B

    iget-object v8, p0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    iget-object v9, p0, Lcom/client/AttachSendThread;->mCodeFilePath:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Lattach/FileAes;->Encrypt([BLjava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v7, p0, Lcom/client/AttachSendThread;->mCodeFilePath:Ljava/lang/String;

    invoke-static {v7}, LFileSignature/CalSignature;->calFileSignature(Ljava/lang/String;)Lcom/common/CoreBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/client/AttachSendThread;->mFileSig:Lcom/common/CoreBuffer;

    .line 90
    iget-object v7, p0, Lcom/client/AttachSendThread;->mCodeFilePath:Ljava/lang/String;

    invoke-static {v7}, LFileSignature/CalSignature;->calChunkSignature(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    iput-object v7, p0, Lcom/client/AttachSendThread;->mChunkSigList:Ljava/util/Vector;

    .line 91
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/client/AttachSendThread;->mCodeFilePath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/client/AttachSendThread;->mFileSize:I

    .line 94
    iget-object v7, p0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    iget v8, p0, Lcom/client/AttachSendThread;->mFileSize:I

    iget-object v9, p0, Lcom/client/AttachSendThread;->mFileSig:Lcom/common/CoreBuffer;

    invoke-virtual {v7, v8, v9}, Lattach/SendAttachMRU;->setSignature(ILcom/common/CoreBuffer;)V

    .line 96
    new-instance v6, Lcom/common/TranObject;

    invoke-direct {v6}, Lcom/common/TranObject;-><init>()V

    .line 97
    .local v6, tranObject:Lcom/common/TranObject;
    iget-object v7, p0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    invoke-virtual {v7}, Lattach/SendAttachMRU;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 98
    iget-object v7, p0, Lcom/client/AttachSendThread;->client:Lcom/client/Client;

    invoke-virtual {v7, v6}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    .line 100
    const/4 v0, 0x0

    .local v0, count:I
    move v1, v0

    .line 101
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const/16 v7, 0x28

    if-lt v1, v7, :cond_0

    .line 113
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 102
    :cond_0
    iget-object v7, p0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    invoke-virtual {v7}, Lattach/SendAttachMRU;->getRespone()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 104
    const/4 v7, 0x1

    goto :goto_1

    .line 107
    :cond_1
    const-wide/16 v7, 0x3e8

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 108
    .end local v1           #count:I
    .restart local v0       #count:I
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0
.end method

.method public run()V
    .locals 24

    .prologue
    .line 212
    const-string v3, "attach send"

    const-string v4, " start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v21, 0x1

    .line 215
    .local v21, succFlag:Z
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/client/AttachSendThread;->flag:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    .line 304
    :cond_0
    :goto_1
    const-string v3, "attach send"

    const-string v4, " over"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 216
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->Alist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 220
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 220
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/client/AttachSendThread;->flag:Z

    if-eqz v3, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 227
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->Alist:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/common/TranObject;

    .line 228
    .local v23, tranObject:Lcom/common/TranObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->Alist:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    invoke-virtual/range {v23 .. v23}, Lcom/common/TranObject;->getSend()Lcom/client/Send;

    move-result-object v2

    .line 232
    .local v2, send:Lcom/client/Send;
    invoke-virtual {v2}, Lcom/client/Send;->getmMsgid()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/client/AttachSendThread;->curMsgid:I

    .line 234
    invoke-virtual {v2}, Lcom/client/Send;->getFileList()Ljava/util/ArrayList;

    move-result-object v17

    .line 235
    .local v17, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Lcom/client/Send;->initInfo()V

    .line 237
    const/16 v21, 0x1

    .line 238
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v15, v3, :cond_4

    .line 291
    :cond_3
    if-eqz v21, :cond_9

    .line 292
    invoke-virtual {v2}, Lcom/client/Send;->endInfo()V

    .line 293
    invoke-virtual/range {v23 .. v23}, Lcom/common/TranObject;->getToUser()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v2}, Lcom/common/TranObject;->setQueryAndSend(Ljava/lang/String;Lcom/client/Send;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->client:Lcom/client/Client;

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->listener:Lcom/client/MessageRateListener;

    const/4 v4, 0x4

    const/4 v8, 0x4

    const/high16 v10, 0x3f00

    invoke-interface {v3, v4, v8, v10}, Lcom/client/MessageRateListener;->Message(IIF)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 301
    .end local v2           #send:Lcom/client/Send;
    .end local v15           #i:I
    .end local v17           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23           #tranObject:Lcom/common/TranObject;
    :catch_0
    move-exception v13

    .line 302
    .local v13, e:Ljava/lang/InterruptedException;
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 220
    .end local v13           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3

    .line 239
    .restart local v2       #send:Lcom/client/Send;
    .restart local v15       #i:I
    .restart local v17       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23       #tranObject:Lcom/common/TranObject;
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 240
    .local v19, msg:Ljava/lang/String;
    const-string v3, "STARTFILE:"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 241
    const/16 v3, 0xa

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    .line 242
    const-string v3, "Out Thread:"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "data: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->listener:Lcom/client/MessageRateListener;

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/high16 v10, 0x3f00

    invoke-interface {v3, v4, v8, v10}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/client/AttachSendThread;->requestMRU()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->listener:Lcom/client/MessageRateListener;

    const/4 v4, 0x3

    const/4 v8, 0x3

    const/high16 v10, 0x3f80

    invoke-interface {v3, v4, v8, v10}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 247
    new-instance v18, Lattach/SendFile;

    invoke-direct/range {v18 .. v18}, Lattach/SendFile;-><init>()V

    .line 248
    .local v18, mSendFile:Lattach/SendFile;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->listener:Lcom/client/MessageRateListener;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lattach/SendFile;->setListener(Lcom/client/MessageRateListener;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mChunkSigList:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/client/AttachSendThread;->mFileSig:Lcom/common/CoreBuffer;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lattach/SendFile;->SetSignature(Ljava/util/Vector;Lcom/common/CoreBuffer;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    invoke-virtual {v3}, Lattach/SendAttachMRU;->getServerName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lattach/SendFile;->SetAuthorizePutServer(Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    invoke-virtual {v3}, Lattach/SendAttachMRU;->getMU()Lcom/common/CoreBuffer;

    move-result-object v12

    .line 253
    .local v12, dsid:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    invoke-virtual {v3}, Lattach/SendAttachMRU;->getMA()Lcom/common/CoreBuffer;

    move-result-object v22

    .line 254
    .local v22, token:Lcom/common/CoreBuffer;
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v12}, Lcom/common/CoreBuffer;->getLen()I

    move-result v8

    invoke-direct {v7, v3, v4, v8}, Ljava/lang/String;-><init>([BII)V

    .line 255
    .local v7, sDsid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mFileSig:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->toIntString()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, sFileSig:Ljava/lang/String;
    new-instance v20, Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {v22 .. v22}, Lcom/common/CoreBuffer;->getLen()I

    move-result v8

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v4, v8}, Ljava/lang/String;-><init>([BII)V

    .line 257
    .local v20, sToken:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/client/AttachSendThread;->mFileSize:I

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v9, v1, v3}, Lattach/SendFile;->SetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mCodeFilePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/client/AttachSendThread;->mKey:[B

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Lattach/SendFile;->Send(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 260
    .local v16, j:I
    new-instance v11, Lcom/common/CoreBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mKey:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/client/AttachSendThread;->mKey:[B

    array-length v4, v4

    invoke-direct {v11, v3, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 263
    .local v11, ckey:Lcom/common/CoreBuffer;
    const-string v6, "public.plain-text"

    .line 264
    .local v6, type:Ljava/lang/String;
    const-string v5, "text/plain"

    .line 265
    .local v5, ttype:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 266
    const-string v5, ""

    .line 267
    const-string v6, "dyn.age80c6dp"

    .line 269
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mFilePath:Ljava/lang/String;

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/client/AttachSendThread;->mFileSize:I

    .line 270
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/client/AttachSendThread;->rMRU:Lattach/SendAttachMRU;

    invoke-virtual {v8}, Lattach/SendAttachMRU;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/common/CoreBuffer;->toIntString()Ljava/lang/String;

    move-result-object v10

    .line 269
    invoke-virtual/range {v2 .. v10}, Lcom/client/Send;->addFileInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v5           #ttype:Ljava/lang/String;
    .end local v6           #type:Ljava/lang/String;
    .end local v11           #ckey:Lcom/common/CoreBuffer;
    .end local v16           #j:I
    :goto_3
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->mCodeFilePath:Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    .local v14, f:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 284
    .end local v7           #sDsid:Ljava/lang/String;
    .end local v9           #sFileSig:Ljava/lang/String;
    .end local v12           #dsid:Lcom/common/CoreBuffer;
    .end local v14           #f:Ljava/io/File;
    .end local v18           #mSendFile:Lattach/SendFile;
    .end local v20           #sToken:Ljava/lang/String;
    .end local v22           #token:Lcom/common/CoreBuffer;
    :goto_4
    if-eqz v21, :cond_3

    .line 238
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 274
    .restart local v7       #sDsid:Ljava/lang/String;
    .restart local v9       #sFileSig:Ljava/lang/String;
    .restart local v12       #dsid:Lcom/common/CoreBuffer;
    .restart local v18       #mSendFile:Lattach/SendFile;
    .restart local v20       #sToken:Ljava/lang/String;
    .restart local v22       #token:Lcom/common/CoreBuffer;
    :cond_6
    const/16 v21, 0x0

    goto :goto_3

    .line 282
    .end local v7           #sDsid:Ljava/lang/String;
    .end local v9           #sFileSig:Ljava/lang/String;
    .end local v12           #dsid:Lcom/common/CoreBuffer;
    .end local v18           #mSendFile:Lattach/SendFile;
    .end local v20           #sToken:Ljava/lang/String;
    .end local v22           #token:Lcom/common/CoreBuffer;
    :cond_7
    const/16 v21, 0x0

    goto :goto_4

    .line 288
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/client/Send;->addMsgInfo(Ljava/lang/String;)V

    goto :goto_5

    .line 298
    .end local v19           #msg:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/client/AttachSendThread;->listener:Lcom/client/MessageRateListener;

    const/4 v4, 0x4

    const/4 v8, 0x5

    const/high16 v10, 0x3f00

    invoke-interface {v3, v4, v8, v10}, Lcom/client/MessageRateListener;->Message(IIF)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
