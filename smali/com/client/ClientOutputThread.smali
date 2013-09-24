.class public Lcom/client/ClientOutputThread;
.super Ljava/lang/Thread;
.source "ClientOutputThread.java"


# instance fields
.field private List:Ljava/util/ArrayList;

.field private LoginList:Ljava/util/ArrayList;

.field private curUser:Ljava/lang/String;

.field private curlist:Ljava/util/ArrayList;

.field private curlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private flag:Z

.field private lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private loginlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mContext:Landroid/content/Context;

.field private mQueryUser:Lattach/queryUser;

.field private mTokenDB:Lcom/DB/TokenDB;

.field private oos:Ljava/io/DataOutputStream;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V
    .locals 1
    .parameter "outlist"
    .parameter "outlock"
    .parameter "mContext"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/client/ClientOutputThread;->flag:Z

    .line 43
    iput-object p1, p0, Lcom/client/ClientOutputThread;->List:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/client/ClientOutputThread;->LoginList:Ljava/util/ArrayList;

    .line 45
    iput-object p2, p0, Lcom/client/ClientOutputThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/client/ClientOutputThread;->loginlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 47
    iget-object v0, p0, Lcom/client/ClientOutputThread;->LoginList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p0, Lcom/client/ClientOutputThread;->loginlock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v0, p0, Lcom/client/ClientOutputThread;->curlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    iput-object p3, p0, Lcom/client/ClientOutputThread;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private queryToUser(Ljava/lang/String;)Z
    .locals 3
    .parameter "toUser"

    .prologue
    .line 183
    new-instance v0, Lattach/queryUser;

    iget-object v1, p0, Lcom/client/ClientOutputThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lattach/queryUser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    .line 184
    iget-object v0, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    iget-object v1, p0, Lcom/client/ClientOutputThread;->curUser:Ljava/lang/String;

    iget-object v2, p0, Lcom/client/ClientOutputThread;->mTokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v0, v1, v2}, Lattach/queryUser;->start(Ljava/lang/String;Lcom/DB/TokenDB;)Z

    move-result v0

    return v0
.end method

.method private sendMsg(Lcom/common/CoreBuffer;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 190
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 191
    .local v0, buf:[B
    aget-byte v4, v0, v8

    .line 192
    .local v4, type:B
    const-string v5, "SendMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Type "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-ne v4, v10, :cond_0

    .line 194
    const-string v5, "SendMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sType "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    aget-byte v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    .line 196
    .local v2, size:I
    if-eq v4, v9, :cond_1

    .line 197
    invoke-static {v0}, LdataEncode/aesCode;->Encrypt([B)[B

    move-result-object v3

    .line 198
    .local v3, tbuf:[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x5

    new-array v0, v5, [B

    .line 199
    const/16 v5, 0x3c

    aput-byte v5, v0, v8

    .line 200
    array-length v5, v3

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v0, v9

    .line 201
    const/4 v5, 0x2

    array-length v6, v3

    shr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 202
    const/4 v5, 0x3

    array-length v6, v3

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    .line 203
    array-length v5, v3

    shr-int/lit8 v5, v5, 0x0

    int-to-byte v5, v5

    aput-byte v5, v0, v10

    .line 204
    const/4 v5, 0x5

    array-length v6, v3

    invoke-static {v3, v8, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    array-length v5, v3

    add-int/lit8 v2, v5, 0x5

    .line 209
    .end local v3           #tbuf:[B
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/client/ClientOutputThread;->oos:Ljava/io/DataOutputStream;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 210
    iget-object v5, p0, Lcom/client/ClientOutputThread;->oos:Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v1

    .line 213
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public change()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/client/ClientOutputThread;->List:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p0, Lcom/client/ClientOutputThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object v0, p0, Lcom/client/ClientOutputThread;->curlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 69
    const-string v0, "outThread"

    const-string v1, "change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    monitor-enter p0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 71
    monitor-exit p0

    .line 75
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 57
    iget-object v1, p0, Lcom/client/ClientOutputThread;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/client/ClientOutputThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getFlag()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/client/ClientOutputThread;->flag:Z

    return v0
.end method

.method public overThread()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/ClientOutputThread;->flag:Z

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 78
    monitor-exit p0

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 108
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/client/ClientOutputThread;->flag:Z

    if-nez v6, :cond_3

    .line 170
    :cond_1
    iget-object v6, p0, Lcom/client/ClientOutputThread;->oos:Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 171
    iget-object v6, p0, Lcom/client/ClientOutputThread;->socket:Ljava/net/Socket;

    if-eqz v6, :cond_2

    .line 172
    iget-object v6, p0, Lcom/client/ClientOutputThread;->socket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    :cond_2
    :goto_1
    const-string v6, "outThread"

    const-string v7, "over"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 109
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/client/ClientOutputThread;->curlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 110
    iget-object v6, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 111
    iget-object v6, p0, Lcom/client/ClientOutputThread;->curlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 112
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 112
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    iget-boolean v6, p0, Lcom/client/ClientOutputThread;->flag:Z

    if-eqz v6, :cond_1

    .line 117
    iget-object v6, p0, Lcom/client/ClientOutputThread;->curlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 120
    :cond_4
    iget-object v6, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/common/TranObject;

    .line 121
    .local v3, msg:Lcom/common/TranObject;
    iget-object v6, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    iget-object v6, p0, Lcom/client/ClientOutputThread;->curlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 125
    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v3}, Lcom/common/TranObject;->getSendType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-virtual {v3}, Lcom/common/TranObject;->GetMsg()Lcom/common/CoreBuffer;

    move-result-object v5

    .line 130
    .local v5, tmp:Lcom/common/CoreBuffer;
    invoke-direct {p0, v5}, Lcom/client/ClientOutputThread;->sendMsg(Lcom/common/CoreBuffer;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 173
    .end local v3           #msg:Lcom/common/TranObject;
    .end local v5           #tmp:Lcom/common/CoreBuffer;
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 112
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 175
    :catch_1
    move-exception v1

    .line 176
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 137
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #msg:Lcom/common/TranObject;
    :pswitch_1
    :try_start_6
    invoke-virtual {v3}, Lcom/common/TranObject;->getNewMessageActivity()Lactivity/NewMessageActivity;

    move-result-object v6

    invoke-virtual {v3}, Lcom/common/TranObject;->getToUser()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/client/ClientOutputThread;->queryToUser(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lactivity/NewMessageActivity;->UserExit(Z)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v6, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    invoke-virtual {v6}, Lattach/queryUser;->getExit()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 141
    invoke-virtual {v3}, Lcom/common/TranObject;->getSend()Lcom/client/Send;

    move-result-object v2

    .line 142
    .local v2, mS:Lcom/client/Send;
    iget-object v6, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    invoke-virtual {v2, v6}, Lcom/client/Send;->setQueryUser(Lattach/queryUser;)V

    .line 143
    invoke-virtual {v2}, Lcom/client/Send;->body()Lcom/common/CoreBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/client/ClientOutputThread;->sendMsg(Lcom/common/CoreBuffer;)V

    goto/16 :goto_0

    .line 148
    .end local v2           #mS:Lcom/client/Send;
    :pswitch_3
    new-instance v6, Lattach/queryUser;

    invoke-virtual {v3}, Lcom/common/TranObject;->getToUser()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/client/ClientOutputThread;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v8}, Lattach/queryUser;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v6, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    .line 149
    iget-object v6, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    iget-object v7, p0, Lcom/client/ClientOutputThread;->curUser:Ljava/lang/String;

    iget-object v8, p0, Lcom/client/ClientOutputThread;->mTokenDB:Lcom/DB/TokenDB;

    invoke-virtual {v6, v7, v8}, Lattach/queryUser;->getFromDB(Ljava/lang/String;Lcom/DB/TokenDB;)V

    .line 150
    iget-object v6, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    invoke-virtual {v6}, Lattach/queryUser;->getExit()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 151
    invoke-virtual {v3}, Lcom/common/TranObject;->getSend()Lcom/client/Send;

    move-result-object v2

    .line 152
    .restart local v2       #mS:Lcom/client/Send;
    iget-object v6, p0, Lcom/client/ClientOutputThread;->mQueryUser:Lattach/queryUser;

    invoke-virtual {v2, v6}, Lcom/client/Send;->setQueryUser(Lattach/queryUser;)V

    .line 153
    invoke-virtual {v2}, Lcom/client/Send;->body()Lcom/common/CoreBuffer;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/client/ClientOutputThread;->sendMsg(Lcom/common/CoreBuffer;)V

    goto/16 :goto_0

    .line 155
    .end local v2           #mS:Lcom/client/Send;
    :cond_5
    const/4 v4, 0x0

    .line 157
    .local v4, object:Lcom/common/TranProcess;
    new-instance v4, Lcom/common/TranProcess;

    .end local v4           #object:Lcom/common/TranProcess;
    invoke-direct {v4}, Lcom/common/TranProcess;-><init>()V

    .line 158
    .restart local v4       #object:Lcom/common/TranProcess;
    invoke-virtual {v3}, Lcom/common/TranObject;->getSend()Lcom/client/Send;

    move-result-object v6

    invoke-virtual {v6}, Lcom/client/Send;->getmMsgid()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Lcom/common/TranProcess;->setTheError(J)V

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, broadCast:Landroid/content/Intent;
    const-string v6, "com.way.update"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v6, "message"

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    iget-object v6, p0, Lcom/client/ClientOutputThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setLoginMsg(Lcom/common/TranObject;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/client/ClientOutputThread;->loginlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 84
    iget-object v0, p0, Lcom/client/ClientOutputThread;->LoginList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/client/ClientOutputThread;->loginlock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 86
    iget-object v0, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/client/ClientOutputThread;->LoginList:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 87
    monitor-exit p0

    .line 90
    :cond_0
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMsg(Lcom/common/TranObject;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/client/ClientOutputThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 93
    iget-object v0, p0, Lcom/client/ClientOutputThread;->List:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/client/ClientOutputThread;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    iget-object v0, p0, Lcom/client/ClientOutputThread;->curlist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/client/ClientOutputThread;->List:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    .line 96
    monitor-enter p0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 96
    monitor-exit p0

    .line 101
    :cond_0
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 3
    .parameter "socket"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/client/ClientOutputThread;->socket:Ljava/net/Socket;

    .line 225
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/client/ClientOutputThread;->oos:Ljava/io/DataOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setTokeDB(Ljava/lang/String;Lcom/DB/TokenDB;)V
    .locals 0
    .parameter "curUser"
    .parameter "tokenDB"

    .prologue
    .line 52
    iput-object p2, p0, Lcom/client/ClientOutputThread;->mTokenDB:Lcom/DB/TokenDB;

    .line 53
    iput-object p1, p0, Lcom/client/ClientOutputThread;->curUser:Ljava/lang/String;

    .line 54
    return-void
.end method
