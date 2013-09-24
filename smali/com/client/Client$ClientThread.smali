.class public Lcom/client/Client$ClientThread;
.super Ljava/lang/Thread;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/client/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientThread"
.end annotation


# instance fields
.field private in:Lcom/client/ClientInputThread;

.field private out:Lcom/client/ClientOutputThread;

.field final synthetic this$0:Lcom/client/Client;


# direct methods
.method public constructor <init>(Lcom/client/Client;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public getIn()Lcom/client/ClientInputThread;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/client/Client$ClientThread;->in:Lcom/client/ClientInputThread;

    return-object v0
.end method

.method public getOut()Lcom/client/ClientOutputThread;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/client/Client$ClientThread;->out:Lcom/client/ClientOutputThread;

    return-object v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 116
    :try_start_0
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->client:Ljava/net/Socket;
    invoke-static {v5}, Lcom/client/Client;->access$0(Lcom/client/Client;)Ljava/net/Socket;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 117
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->client:Ljava/net/Socket;
    invoke-static {v5}, Lcom/client/Client;->access$0(Lcom/client/Client;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    .line 119
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mMessageListener:Lcom/client/MessageListener;
    invoke-static {v5}, Lcom/client/Client;->access$1(Lcom/client/Client;)Lcom/client/MessageListener;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 128
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    #setter for: Lcom/client/Client;->client:Ljava/net/Socket;
    invoke-static {v5, v6}, Lcom/client/Client;->access$2(Lcom/client/Client;Ljava/net/Socket;)V

    .line 130
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->client:Ljava/net/Socket;
    invoke-static {v5}, Lcom/client/Client;->access$0(Lcom/client/Client;)Ljava/net/Socket;

    move-result-object v5

    new-instance v6, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/client/Client;->access$3(Lcom/client/Client;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f070002

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 131
    iget-object v8, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/client/Client;->access$3(Lcom/client/Client;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f08

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0xbb8

    .line 130
    invoke-virtual {v5, v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 132
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->client:Ljava/net/Socket;
    invoke-static {v5}, Lcom/client/Client;->access$0(Lcom/client/Client;)Ljava/net/Socket;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 133
    const-string v5, "Client"

    const-string v6, "link succ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v5, Lcom/client/ClientInputThread;

    iget-object v6, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/client/Client;->access$3(Lcom/client/Client;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/client/ClientInputThread;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/client/Client$ClientThread;->in:Lcom/client/ClientInputThread;

    .line 136
    iget-object v5, p0, Lcom/client/Client$ClientThread;->in:Lcom/client/ClientInputThread;

    iget-object v6, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mMessageListener:Lcom/client/MessageListener;
    invoke-static {v6}, Lcom/client/Client;->access$1(Lcom/client/Client;)Lcom/client/MessageListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/client/ClientInputThread;->setMessageListener(Lcom/client/MessageListener;)V

    .line 137
    new-instance v5, Lcom/client/ClientOutputThread;

    iget-object v6, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->outList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/client/Client;->access$4(Lcom/client/Client;)Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->outlock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v7}, Lcom/client/Client;->access$5(Lcom/client/Client;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v7

    iget-object v8, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/client/Client;->access$3(Lcom/client/Client;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lcom/client/ClientOutputThread;-><init>(Ljava/util/ArrayList;Ljava/util/concurrent/locks/ReentrantLock;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/client/Client$ClientThread;->out:Lcom/client/ClientOutputThread;

    .line 138
    iget-object v5, p0, Lcom/client/Client$ClientThread;->out:Lcom/client/ClientOutputThread;

    iget-object v6, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->acc:Ljava/lang/String;
    invoke-static {v6}, Lcom/client/Client;->access$6(Lcom/client/Client;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mTokenDB:Lcom/DB/TokenDB;
    invoke-static {v7}, Lcom/client/Client;->access$7(Lcom/client/Client;)Lcom/DB/TokenDB;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/client/ClientOutputThread;->setTokeDB(Ljava/lang/String;Lcom/DB/TokenDB;)V

    .line 139
    iget-object v5, p0, Lcom/client/Client$ClientThread;->in:Lcom/client/ClientInputThread;

    iget-object v6, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->client:Ljava/net/Socket;
    invoke-static {v6}, Lcom/client/Client;->access$0(Lcom/client/Client;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/client/ClientInputThread;->setSocket(Ljava/net/Socket;)V

    .line 140
    iget-object v5, p0, Lcom/client/Client$ClientThread;->out:Lcom/client/ClientOutputThread;

    iget-object v6, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->client:Ljava/net/Socket;
    invoke-static {v6}, Lcom/client/Client;->access$0(Lcom/client/Client;)Ljava/net/Socket;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/client/ClientOutputThread;->setSocket(Ljava/net/Socket;)V

    .line 142
    iget-object v5, p0, Lcom/client/Client$ClientThread;->in:Lcom/client/ClientInputThread;

    invoke-virtual {v5}, Lcom/client/ClientInputThread;->start()V

    .line 143
    iget-object v5, p0, Lcom/client/Client$ClientThread;->out:Lcom/client/ClientOutputThread;

    invoke-virtual {v5}, Lcom/client/ClientOutputThread;->start()V

    .line 145
    new-instance v4, Lcom/common/TranObject;

    invoke-direct {v4}, Lcom/common/TranObject;-><init>()V

    .line 146
    .local v4, tranObject:Lcom/common/TranObject;
    invoke-static {}, LdataEncode/Authentication;->init_aesKey()V

    .line 147
    invoke-static {}, LdataEncode/Authentication;->request_rsaKey()Lcom/common/CoreBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 148
    iget-object v5, p0, Lcom/client/Client$ClientThread;->out:Lcom/client/ClientOutputThread;

    invoke-virtual {v5, v4}, Lcom/client/ClientOutputThread;->setLoginMsg(Lcom/common/TranObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v4           #tranObject:Lcom/common/TranObject;
    :goto_1
    const-string v5, "Client"

    const-string v6, "over"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 121
    :cond_1
    const-wide/16 v5, 0x3e8

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 126
    :goto_2
    :try_start_2
    const-string v5, "client"

    const-string v6, "wait service to start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Ljava/io/IOException;
    const-string v5, "Client"

    const-string v6, "Network is unreachable"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #setter for: Lcom/client/Client;->Linking:Z
    invoke-static {v5, v11}, Lcom/client/Client;->access$8(Lcom/client/Client;Z)V

    .line 164
    const/16 v5, 0x9

    new-array v0, v5, [B

    aput-byte v12, v0, v11

    aput-byte v13, v0, v13

    aput-byte v12, v0, v14

    const/4 v5, 0x6

    aput-byte v10, v0, v5

    const/4 v5, 0x7

    aput-byte v10, v0, v5

    const/16 v5, 0x8

    aput-byte v10, v0, v5

    .line 165
    .local v0, buf:[B
    new-instance v1, Lcom/common/CoreBuffer;

    array-length v5, v0

    invoke-direct {v1, v0, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 166
    .local v1, coreBuffer:Lcom/common/CoreBuffer;
    new-instance v3, Lcom/common/TranObject;

    invoke-direct {v3}, Lcom/common/TranObject;-><init>()V

    .line 167
    .local v3, msg:Lcom/common/TranObject;
    invoke-virtual {v3, v1}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 168
    invoke-virtual {v3}, Lcom/common/TranObject;->CreateLoginRespone()V

    .line 169
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mMessageListener:Lcom/client/MessageListener;
    invoke-static {v5}, Lcom/client/Client;->access$1(Lcom/client/Client;)Lcom/client/MessageListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/client/MessageListener;->Message(Lcom/common/TranObject;)V

    .line 170
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v0           #buf:[B
    .end local v1           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #msg:Lcom/common/TranObject;
    :catch_1
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 150
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_2
    const-string v5, "Client"

    const-string v6, "internet down"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    const/4 v6, 0x0

    #setter for: Lcom/client/Client;->Linking:Z
    invoke-static {v5, v6}, Lcom/client/Client;->access$8(Lcom/client/Client;Z)V

    .line 152
    const/16 v5, 0x9

    new-array v0, v5, [B

    const/4 v5, 0x0

    const/4 v6, 0x3

    aput-byte v6, v0, v5

    const/4 v5, 0x4

    const/4 v6, 0x4

    aput-byte v6, v0, v5

    const/4 v5, 0x5

    const/4 v6, 0x3

    aput-byte v6, v0, v5

    const/4 v5, 0x6

    const/4 v6, 0x1

    aput-byte v6, v0, v5

    const/4 v5, 0x7

    const/4 v6, 0x1

    aput-byte v6, v0, v5

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-byte v6, v0, v5

    .line 153
    .restart local v0       #buf:[B
    new-instance v1, Lcom/common/CoreBuffer;

    array-length v5, v0

    invoke-direct {v1, v0, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 154
    .restart local v1       #coreBuffer:Lcom/common/CoreBuffer;
    new-instance v3, Lcom/common/TranObject;

    invoke-direct {v3}, Lcom/common/TranObject;-><init>()V

    .line 155
    .restart local v3       #msg:Lcom/common/TranObject;
    invoke-virtual {v3, v1}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 156
    invoke-virtual {v3}, Lcom/common/TranObject;->CreateLoginRespone()V

    .line 157
    iget-object v5, p0, Lcom/client/Client$ClientThread;->this$0:Lcom/client/Client;

    #getter for: Lcom/client/Client;->mMessageListener:Lcom/client/MessageListener;
    invoke-static {v5}, Lcom/client/Client;->access$1(Lcom/client/Client;)Lcom/client/MessageListener;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/client/MessageListener;->Message(Lcom/common/TranObject;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1
.end method
