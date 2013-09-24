.class public Lorg/htmlparser/util/ChainedException;
.super Ljava/lang/Exception;
.source "ChainedException.java"


# instance fields
.field protected throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "throwable"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 83
    iput-object p2, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "throwable"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    .line 78
    return-void
.end method


# virtual methods
.method public getMessageChain()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/htmlparser/util/ChainedException;->getMessageList()Ljava/util/Vector;

    move-result-object v1

    .line 89
    .local v1, list:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 90
    .local v0, chain:[Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 91
    return-object v0
.end method

.method public getMessageList()Ljava/util/Vector;
    .locals 6

    .prologue
    .line 96
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 97
    .local v2, list:Ljava/util/Vector;
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 98
    iget-object v5, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 100
    iget-object v5, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    instance-of v5, v5, Lorg/htmlparser/util/ChainedException;

    if-eqz v5, :cond_0

    .line 102
    iget-object v0, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    check-cast v0, Lorg/htmlparser/util/ChainedException;

    .line 103
    .local v0, chain:Lorg/htmlparser/util/ChainedException;
    invoke-virtual {v0}, Lorg/htmlparser/util/ChainedException;->getMessageList()Ljava/util/Vector;

    move-result-object v4

    .line 104
    .local v4, sublist:Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 105
    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0           #chain:Lorg/htmlparser/util/ChainedException;
    .end local v1           #i:I
    .end local v4           #sublist:Ljava/util/Vector;
    :cond_0
    iget-object v5, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 112
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    .end local v3           #message:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public printStackTrace()V
    .locals 1

    .prologue
    .line 126
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/htmlparser/util/ChainedException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 127
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 131
    monitor-enter p1

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 143
    :goto_0
    monitor-exit p1

    .line 144
    return-void

    .line 141
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "out"

    .prologue
    .line 148
    monitor-enter p1

    .line 150
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/htmlparser/util/ChainedException;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 160
    :goto_0
    monitor-exit p1

    .line 161
    return-void

    .line 158
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
