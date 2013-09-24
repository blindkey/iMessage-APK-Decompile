.class public Lcom/client/Client;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/client/Client$ClientThread;
    }
.end annotation


# instance fields
.field private Linking:Z

.field private acc:Ljava/lang/String;

.field private client:Ljava/net/Socket;

.field private clientThread:Lcom/client/Client$ClientThread;

.field private ip:Ljava/lang/String;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/common/TranObject;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMessageListener:Lcom/client/MessageListener;

.field private mTokenDB:Lcom/DB/TokenDB;

.field private outList:Ljava/util/ArrayList;

.field private outlock:Ljava/util/concurrent/locks/ReentrantLock;

.field private port:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "ip"
    .parameter "port"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/Client;->Linking:Z

    .line 37
    iput-object p2, p0, Lcom/client/Client;->ip:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/client/Client;->port:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/client/Client;->outList:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/client/Client;->outlock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    iput-object p1, p0, Lcom/client/Client;->mContext:Landroid/content/Context;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/client/Client;->list:Ljava/util/ArrayList;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/client/Client;)Ljava/net/Socket;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/client/Client;->client:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1(Lcom/client/Client;)Lcom/client/MessageListener;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/client/Client;->mMessageListener:Lcom/client/MessageListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/client/Client;Ljava/net/Socket;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/client/Client;->client:Ljava/net/Socket;

    return-void
.end method

.method static synthetic access$3(Lcom/client/Client;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/client/Client;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/client/Client;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/client/Client;->outList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5(Lcom/client/Client;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/client/Client;->outlock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$6(Lcom/client/Client;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/client/Client;->acc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/client/Client;)Lcom/DB/TokenDB;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/client/Client;->mTokenDB:Lcom/DB/TokenDB;

    return-object v0
.end method

.method static synthetic access$8(Lcom/client/Client;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/client/Client;->Linking:Z

    return-void
.end method


# virtual methods
.method public change()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v0}, Lcom/client/Client$ClientThread;->getOut()Lcom/client/ClientOutputThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/client/ClientOutputThread;->change()V

    .line 201
    return-void
.end method

.method public destory()V
    .locals 2

    .prologue
    .line 213
    iget-object v1, p0, Lcom/client/Client;->client:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/client/Client;->client:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLinkStatu()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/client/Client;->Linking:Z

    return v0
.end method

.method public overThread()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/client/Client;->outList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/Client;->Linking:Z

    .line 206
    iget-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v0}, Lcom/client/Client$ClientThread;->getOut()Lcom/client/ClientOutputThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v0}, Lcom/client/Client$ClientThread;->getOut()Lcom/client/ClientOutputThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/client/ClientOutputThread;->overThread()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v0}, Lcom/client/Client$ClientThread;->getIn()Lcom/client/ClientInputThread;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v0}, Lcom/client/Client$ClientThread;->getIn()Lcom/client/ClientInputThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/client/ClientInputThread;->overThread()V

    .line 210
    :cond_1
    return-void
.end method

.method public setLoginMsg(Lcom/common/TranObject;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v0}, Lcom/client/Client$ClientThread;->getOut()Lcom/client/ClientOutputThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/client/ClientOutputThread;->setLoginMsg(Lcom/common/TranObject;)V

    .line 63
    return-void
.end method

.method public setMessageListener(Lcom/client/MessageListener;)V
    .locals 0
    .parameter "mMessageListener"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/client/Client;->mMessageListener:Lcom/client/MessageListener;

    .line 46
    return-void
.end method

.method public setMsg(Lcom/common/TranObject;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 65
    iget-object v2, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v2}, Lcom/client/Client$ClientThread;->getIn()Lcom/client/ClientInputThread;

    move-result-object v0

    .line 66
    .local v0, in:Lcom/client/ClientInputThread;
    iget-object v2, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v2}, Lcom/client/Client$ClientThread;->getOut()Lcom/client/ClientOutputThread;

    move-result-object v1

    .line 67
    .local v1, out:Lcom/client/ClientOutputThread;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/client/ClientInputThread;->getFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/client/ClientOutputThread;->getFlag()Z

    move-result v2

    if-nez v2, :cond_3

    .line 69
    :cond_0
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {v0}, Lcom/client/ClientInputThread;->overThread()V

    .line 72
    :cond_1
    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v1}, Lcom/client/ClientOutputThread;->overThread()V

    .line 75
    :cond_2
    iget-object v2, p0, Lcom/client/Client;->outList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    const-string v2, "client"

    const-string v3, "down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {p0}, Lcom/client/Client;->start()Z

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v2}, Lcom/client/Client$ClientThread;->getOut()Lcom/client/ClientOutputThread;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/client/ClientOutputThread;->setMsg(Lcom/common/TranObject;)V

    goto :goto_0
.end method

.method public setTokenDB(Ljava/lang/String;Lcom/DB/TokenDB;)V
    .locals 0
    .parameter "account"
    .parameter "tokenDB"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/client/Client;->acc:Ljava/lang/String;

    .line 196
    iput-object p2, p0, Lcom/client/Client;->mTokenDB:Lcom/DB/TokenDB;

    .line 197
    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-boolean v0, p0, Lcom/client/Client;->Linking:Z

    if-nez v0, :cond_0

    .line 53
    iput-boolean v1, p0, Lcom/client/Client;->Linking:Z

    .line 55
    new-instance v0, Lcom/client/Client$ClientThread;

    invoke-direct {v0, p0}, Lcom/client/Client$ClientThread;-><init>(Lcom/client/Client;)V

    iput-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    .line 56
    iget-object v0, p0, Lcom/client/Client;->clientThread:Lcom/client/Client$ClientThread;

    invoke-virtual {v0}, Lcom/client/Client$ClientThread;->start()V

    .line 58
    :cond_0
    return v1
.end method
