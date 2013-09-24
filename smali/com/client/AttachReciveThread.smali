.class public Lcom/client/AttachReciveThread;
.super Ljava/lang/Thread;
.source "AttachReciveThread.java"


# instance fields
.field private Alist:Ljava/util/ArrayList;

.field private Alock:Ljava/util/concurrent/locks/ReentrantLock;

.field private attachListener:Lcom/client/MessageListener;

.field private client:Lcom/client/Client;

.field private flag:Z

.field private key:Lcom/common/CoreBuffer;

.field private mContext:Landroid/content/Context;

.field private mime_type:Ljava/lang/String;

.field private mmcs_owner:Lcom/common/CoreBuffer;

.field private mmcs_url:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private object:Ljava/lang/String;

.field private rMRU:Lattach/ReciveAttachMRU;

.field private server:Ljava/lang/String;

.field private signature:Lcom/common/CoreBuffer;

.field private size:I

.field private uti_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/client/Client;Landroid/content/Context;)V
    .locals 1
    .parameter "client"
    .parameter "mContext"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/client/AttachReciveThread;->flag:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/client/AttachReciveThread;->Alist:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/client/AttachReciveThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 33
    new-instance v0, Lattach/ReciveAttachMRU;

    invoke-direct {v0}, Lattach/ReciveAttachMRU;-><init>()V

    iput-object v0, p0, Lcom/client/AttachReciveThread;->rMRU:Lattach/ReciveAttachMRU;

    .line 34
    iput-object p1, p0, Lcom/client/AttachReciveThread;->client:Lcom/client/Client;

    .line 35
    iput-object p2, p0, Lcom/client/AttachReciveThread;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getMRU()Lattach/ReciveAttachMRU;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/client/AttachReciveThread;->rMRU:Lattach/ReciveAttachMRU;

    return-object v0
.end method

.method public getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "Body"
    .parameter "head"

    .prologue
    const/4 v4, -0x1

    .line 68
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 69
    .local v1, st:I
    const-string v2, "\""

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 70
    .local v0, ed:I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    .line 71
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public overThread()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/AttachReciveThread;->flag:Z

    .line 42
    monitor-enter p0

    .line 43
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 42
    monitor-exit p0

    .line 46
    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public parserAttach(Ljava/lang/String;)V
    .locals 8
    .parameter "Body"

    .prologue
    const/16 v7, 0x8

    .line 77
    const-string v4, "name="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/client/AttachReciveThread;->name:Ljava/lang/String;

    .line 78
    const-string v4, "mime-type="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/client/AttachReciveThread;->mime_type:Ljava/lang/String;

    .line 79
    const-string v4, "uti-type="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/client/AttachReciveThread;->uti_type:Ljava/lang/String;

    .line 81
    const-string v4, "mmcs-owner="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, smmcs_owner:Ljava/lang/String;
    new-instance v4, Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v4, p0, Lcom/client/AttachReciveThread;->mmcs_owner:Lcom/common/CoreBuffer;

    .line 84
    const-string v4, "mmcs-url="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    .line 86
    iget-object v4, p0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    iget-object v5, p0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/client/AttachReciveThread;->server:Ljava/lang/String;

    .line 87
    iget-object v4, p0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    iget-object v5, p0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/client/AttachReciveThread;->object:Ljava/lang/String;

    .line 89
    const-string v4, "decryption-key="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, skey:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v4, Lcom/common/CoreBuffer;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v4, p0, Lcom/client/AttachReciveThread;->key:Lcom/common/CoreBuffer;

    .line 92
    iget-object v4, p0, Lcom/client/AttachReciveThread;->key:Lcom/common/CoreBuffer;

    invoke-virtual {v4}, Lcom/common/CoreBuffer;->turnToInt()V

    .line 93
    const-string v4, "file-size="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, ssize:Ljava/lang/String;
    const-string v4, "mmcs-signature-hex="

    invoke-virtual {p0, p1, v4}, Lcom/client/AttachReciveThread;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, ssignature:Ljava/lang/String;
    new-instance v4, Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/common/CoreBuffer;-><init>([BI)V

    iput-object v4, p0, Lcom/client/AttachReciveThread;->signature:Lcom/common/CoreBuffer;

    .line 96
    iget-object v4, p0, Lcom/client/AttachReciveThread;->signature:Lcom/common/CoreBuffer;

    invoke-virtual {v4}, Lcom/common/CoreBuffer;->turnToInt()V

    .line 97
    const-string v4, "Rec Attach"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Sig "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v4, "Rec Attach"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Len "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v4, "Rec Attach"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "url "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v4, "Rec Attach"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mmcs_owner "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/client/AttachReciveThread;->size:I

    .line 103
    return-void
.end method

.method public pushAttach(Lcom/common/TranObject;)V
    .locals 1
    .parameter "textObject"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/client/AttachReciveThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 49
    iget-object v0, p0, Lcom/client/AttachReciveThread;->Alist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/client/AttachReciveThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 51
    monitor-exit p0

    .line 54
    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestMRU(Ljava/lang/String;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/client/AttachReciveThread;->parserAttach(Ljava/lang/String;)V

    .line 107
    iget-object v4, p0, Lcom/client/AttachReciveThread;->rMRU:Lattach/ReciveAttachMRU;

    iget-object v5, p0, Lcom/client/AttachReciveThread;->signature:Lcom/common/CoreBuffer;

    iget-object v6, p0, Lcom/client/AttachReciveThread;->mmcs_owner:Lcom/common/CoreBuffer;

    invoke-virtual {v4, v5, v6}, Lattach/ReciveAttachMRU;->setSignature(Lcom/common/CoreBuffer;Lcom/common/CoreBuffer;)V

    .line 109
    new-instance v3, Lcom/common/TranObject;

    invoke-direct {v3}, Lcom/common/TranObject;-><init>()V

    .line 110
    .local v3, tranObject:Lcom/common/TranObject;
    iget-object v4, p0, Lcom/client/AttachReciveThread;->rMRU:Lattach/ReciveAttachMRU;

    invoke-virtual {v4}, Lattach/ReciveAttachMRU;->messageBody()Lcom/common/CoreBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 111
    iget-object v4, p0, Lcom/client/AttachReciveThread;->client:Lcom/client/Client;

    invoke-virtual {v4, v3}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    .line 113
    const/4 v0, 0x0

    .local v0, count:I
    move v1, v0

    .line 114
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const/16 v4, 0x28

    if-lt v1, v4, :cond_0

    .line 126
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 115
    :cond_0
    iget-object v4, p0, Lcom/client/AttachReciveThread;->rMRU:Lattach/ReciveAttachMRU;

    invoke-virtual {v4}, Lattach/ReciveAttachMRU;->getRespone()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    const/4 v4, 0x1

    goto :goto_1

    .line 120
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 121
    .end local v1           #count:I
    .restart local v0       #count:I
    :catch_0
    move-exception v2

    .line 123
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 131
    const-string v6, "attach recive"

    const-string v7, " start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/client/AttachReciveThread;->flag:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    .line 189
    :cond_0
    :goto_1
    const-string v6, "attach recive"

    const-string v7, " over"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 135
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 137
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->Alist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 139
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V

    .line 139
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/client/AttachReciveThread;->flag:Z

    if-eqz v6, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 146
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->Alist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/common/TranObject;

    .line 147
    .local v18, textObject:Lcom/common/TranObject;
    invoke-virtual/range {v18 .. v18}, Lcom/common/TranObject;->getRecive()Lcom/client/Recive;

    move-result-object v16

    .line 148
    .local v16, recive:Lcom/client/Recive;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->Alist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 149
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->Alock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 150
    const/16 v17, 0x1

    .line 151
    .local v17, succFlag:Z
    invoke-virtual/range {v16 .. v16}, Lcom/client/Recive;->getFileList()Ljava/util/ArrayList;

    move-result-object v14

    .line 152
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v12, v6, :cond_4

    .line 182
    :cond_3
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/common/TranObject;->setRecStatus(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->attachListener:Lcom/client/MessageListener;

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lcom/client/MessageListener;->Message(Lcom/common/TranObject;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 186
    .end local v12           #i:I
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16           #recive:Lcom/client/Recive;
    .end local v17           #succFlag:Z
    .end local v18           #textObject:Lcom/common/TranObject;
    :catch_0
    move-exception v11

    .line 187
    .local v11, e:Ljava/lang/InterruptedException;
    invoke-virtual {v11}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v11           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6

    .line 153
    .restart local v12       #i:I
    .restart local v14       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16       #recive:Lcom/client/Recive;
    .restart local v17       #succFlag:Z
    .restart local v18       #textObject:Lcom/common/TranObject;
    :cond_4
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 154
    .local v9, context:Ljava/lang/String;
    const-string v6, "In Thread:"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v20, "data: "

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v13, 0x0

    .local v13, k:I
    :goto_3
    const/4 v6, 0x1

    if-lt v13, v6, :cond_6

    .line 179
    :cond_5
    if-eqz v17, :cond_3

    .line 152
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 156
    :cond_6
    new-instance v2, Lattach/ReciveFile;

    invoke-direct {v2}, Lattach/ReciveFile;-><init>()V

    .line 157
    .local v2, mRecive:Lattach/ReciveFile;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/client/AttachReciveThread;->requestMRU(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 158
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->rMRU:Lattach/ReciveAttachMRU;

    invoke-virtual {v6}, Lattach/ReciveAttachMRU;->getMU()Lcom/common/CoreBuffer;

    move-result-object v10

    .line 159
    .local v10, dsid:Lcom/common/CoreBuffer;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->rMRU:Lattach/ReciveAttachMRU;

    invoke-virtual {v6}, Lattach/ReciveAttachMRU;->getMA()Lcom/common/CoreBuffer;

    move-result-object v19

    .line 160
    .local v19, token:Lcom/common/CoreBuffer;
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v19 .. v19}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V

    .line 161
    .local v5, stoken:Ljava/lang/String;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v10}, Lcom/common/CoreBuffer;->getLen()I

    move-result v20

    move/from16 v0, v20

    invoke-direct {v3, v6, v7, v0}, Ljava/lang/String;-><init>([BII)V

    .line 162
    .local v3, sdsid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->signature:Lcom/common/CoreBuffer;

    invoke-virtual {v6}, Lcom/common/CoreBuffer;->toIntString()Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, ssig:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->mmcs_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/client/AttachReciveThread;->size:I

    invoke-virtual/range {v2 .. v7}, Lattach/ReciveFile;->SetData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 169
    const/16 v6, 0x20

    new-array v8, v6, [B

    .line 170
    .local v8, bkey:[B
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/client/AttachReciveThread;->key:Lcom/common/CoreBuffer;

    invoke-virtual {v6}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v6

    const/4 v7, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v6, v7, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/client/AttachReciveThread;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 172
    .local v15, path:Ljava/lang/String;
    invoke-virtual {v2, v15, v8}, Lattach/ReciveFile;->Recive(Ljava/lang/String;[B)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v17

    .line 173
    if-nez v17, :cond_5

    .line 155
    .end local v3           #sdsid:Ljava/lang/String;
    .end local v4           #ssig:Ljava/lang/String;
    .end local v5           #stoken:Ljava/lang/String;
    .end local v8           #bkey:[B
    .end local v10           #dsid:Lcom/common/CoreBuffer;
    .end local v15           #path:Ljava/lang/String;
    .end local v19           #token:Lcom/common/CoreBuffer;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 176
    :cond_7
    const/16 v17, 0x0

    goto :goto_4
.end method

.method public setAttachListener(Lcom/client/MessageListener;)V
    .locals 0
    .parameter "messageListener"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/client/AttachReciveThread;->attachListener:Lcom/client/MessageListener;

    .line 57
    return-void
.end method
