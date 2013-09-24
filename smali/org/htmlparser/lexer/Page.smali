.class public Lorg/htmlparser/lexer/Page;
.super Ljava/lang/Object;
.source "Page.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "ISO-8859-1"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "text/html"

.field public static final EOF:C = '\uffff'

.field static class$java$lang$String:Ljava/lang/Class;

.field protected static mConnectionManager:Lorg/htmlparser/http/ConnectionManager;


# instance fields
.field protected mBaseUrl:Ljava/lang/String;

.field protected transient mConnection:Ljava/net/URLConnection;

.field protected mIndex:Lorg/htmlparser/lexer/PageIndex;

.field protected mSource:Lorg/htmlparser/lexer/Source;

.field protected mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lorg/htmlparser/http/ConnectionManager;

    invoke-direct {v0}, Lorg/htmlparser/http/ConnectionManager;-><init>()V

    sput-object v0, Lorg/htmlparser/lexer/Page;->mConnectionManager:Lorg/htmlparser/http/ConnectionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "stream"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    if-nez p2, :cond_1

    .line 153
    const-string p2, "ISO-8859-1"

    .line 154
    :cond_1
    new-instance v0, Lorg/htmlparser/lexer/InputStreamSource;

    invoke-direct {v0, p1, p2}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 155
    new-instance v0, Lorg/htmlparser/lexer/PageIndex;

    invoke-direct {v0, p0}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 156
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    .line 157
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 158
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 189
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/lexer/Page;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "text"
    .parameter "charset"

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    if-nez p1, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    if-nez p2, :cond_1

    .line 173
    const-string p2, "ISO-8859-1"

    .line 174
    :cond_1
    new-instance v0, Lorg/htmlparser/lexer/StringSource;

    invoke-direct {v0, p1, p2}, Lorg/htmlparser/lexer/StringSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 175
    new-instance v0, Lorg/htmlparser/lexer/PageIndex;

    invoke-direct {v0, p0}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 176
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    .line 177
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 178
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public constructor <init>(Ljava/net/URLConnection;)V
    .locals 2
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connection cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    invoke-virtual {p0, p1}, Lorg/htmlparser/lexer/Page;->setConnection(Ljava/net/URLConnection;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Source;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_0
    iput-object p1, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 201
    new-instance v0, Lorg/htmlparser/lexer/PageIndex;

    invoke-direct {v0, p0}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 202
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    .line 203
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 204
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    .line 205
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .parameter "x0"

    .prologue
    .line 332
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static findCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "name"
    .parameter "fallback"

    .prologue
    .line 331
    :try_start_0
    const-string v9, "java.nio.charset.Charset"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 332
    .local v1, cls:Ljava/lang/Class;
    const-string v10, "forName"

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Class;

    const/4 v12, 0x0

    sget-object v9, Lorg/htmlparser/lexer/Page;->class$java$lang$String:Ljava/lang/Class;

    if-nez v9, :cond_0

    const-string v9, "java.lang.String"

    invoke-static {v9}, Lorg/htmlparser/lexer/Page;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/htmlparser/lexer/Page;->class$java$lang$String:Ljava/lang/Class;

    :goto_0
    aput-object v9, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 333
    .local v5, method:Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-virtual {v5, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 334
    .local v7, object:Ljava/lang/Object;
    const-string v9, "name"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 335
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 336
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 366
    .end local v1           #cls:Ljava/lang/Class;
    .end local v5           #method:Ljava/lang/reflect/Method;
    .end local v7           #object:Ljava/lang/Object;
    .local v8, ret:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 332
    .end local v8           #ret:Ljava/lang/String;
    .restart local v1       #cls:Ljava/lang/Class;
    :cond_0
    sget-object v9, Lorg/htmlparser/lexer/Page;->class$java$lang$String:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 338
    .end local v1           #cls:Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 341
    .local v2, cnfe:Ljava/lang/ClassNotFoundException;
    move-object v8, p0

    .line 364
    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_1

    .line 343
    .end local v2           #cnfe:Ljava/lang/ClassNotFoundException;
    .end local v8           #ret:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 346
    .local v6, nsme:Ljava/lang/NoSuchMethodException;
    move-object v8, p0

    .line 364
    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_1

    .line 348
    .end local v6           #nsme:Ljava/lang/NoSuchMethodException;
    .end local v8           #ret:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 351
    .local v3, ia:Ljava/lang/IllegalAccessException;
    move-object v8, p0

    .line 364
    .restart local v8       #ret:Ljava/lang/String;
    goto :goto_1

    .line 353
    .end local v3           #ia:Ljava/lang/IllegalAccessException;
    .end local v8           #ret:Ljava/lang/String;
    :catch_3
    move-exception v4

    .line 358
    .local v4, ita:Ljava/lang/reflect/InvocationTargetException;
    move-object v8, p1

    .line 359
    .restart local v8       #ret:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "unable to determine cannonical charset name for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " - using "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getConnectionManager()Lorg/htmlparser/http/ConnectionManager;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lorg/htmlparser/lexer/Page;->mConnectionManager:Lorg/htmlparser/http/ConnectionManager;

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v1

    .line 437
    .local v1, fromurl:Z
    if-eqz v1, :cond_2

    .line 439
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 440
    .local v4, offset:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 441
    .local v2, href:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 443
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 445
    new-instance v6, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 448
    .local v6, url:Ljava/net/URL;
    :try_start_0
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/htmlparser/lexer/Page;->setConnection(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v6           #url:Ljava/net/URL;
    :cond_0
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    const/4 v7, 0x0

    invoke-direct {v0, p0, v7}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 456
    .local v0, cursor:Lorg/htmlparser/lexer/Cursor;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 459
    :try_start_1
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 456
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v0           #cursor:Lorg/htmlparser/lexer/Cursor;
    .end local v3           #i:I
    .restart local v6       #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 452
    .local v5, pe:Lorg/htmlparser/util/ParserException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 461
    .end local v5           #pe:Lorg/htmlparser/util/ParserException;
    .end local v6           #url:Ljava/net/URL;
    .restart local v0       #cursor:Lorg/htmlparser/lexer/Cursor;
    .restart local v3       #i:I
    :catch_1
    move-exception v5

    .line 463
    .restart local v5       #pe:Lorg/htmlparser/util/ParserException;
    new-instance v7, Ljava/io/IOException;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 465
    .end local v5           #pe:Lorg/htmlparser/util/ParserException;
    :cond_1
    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    .line 473
    .end local v0           #cursor:Lorg/htmlparser/lexer/Cursor;
    .end local v3           #i:I
    .end local v4           #offset:I
    :goto_1
    return-void

    .line 469
    .end local v2           #href:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 470
    .restart local v2       #href:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 471
    invoke-virtual {p0, v2}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setConnectionManager(Lorg/htmlparser/http/ConnectionManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 226
    sput-object p0, Lorg/htmlparser/lexer/Page;->mConnectionManager:Lorg/htmlparser/http/ConnectionManager;

    .line 227
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 390
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getConnection()Ljava/net/URLConnection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 392
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 393
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 394
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, href:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getSource()Lorg/htmlparser/lexer/Source;

    move-result-object v2

    .line 398
    .local v2, source:Lorg/htmlparser/lexer/Source;
    iput-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 399
    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 400
    .local v1, index:Lorg/htmlparser/lexer/PageIndex;
    iput-object v4, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 401
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 402
    iput-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    .line 403
    iput-object v1, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 414
    .end local v1           #index:Lorg/htmlparser/lexer/PageIndex;
    .end local v2           #source:Lorg/htmlparser/lexer/Source;
    :goto_0
    return-void

    .line 407
    .end local v0           #href:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 408
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0       #href:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p0, v4}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 412
    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->setUrl(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getSource()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getSource()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->destroy()V

    .line 492
    :cond_0
    return-void
.end method

.method public column(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1035
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/PageIndex;->column(I)I

    move-result v0

    return v0
.end method

.method public column(Lorg/htmlparser/lexer/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1025
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/PageIndex;->column(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public constructUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .parameter "link"
    .parameter "base"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 880
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/htmlparser/lexer/Page;->constructUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public constructUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/URL;
    .locals 10
    .parameter "link"
    .parameter "base"
    .parameter "strict"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x3f

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 905
    if-nez p3, :cond_1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v7, v6, :cond_1

    .line 907
    invoke-virtual {p2, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, index:I
    if-eq v9, v1, :cond_0

    .line 908
    invoke-virtual {p2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 909
    :cond_0
    new-instance v4, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 913
    .end local v1           #index:I
    .local v4, url:Ljava/net/URL;
    :goto_0
    invoke-virtual {v4}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 915
    .local v2, modified:Z
    const-string v6, "/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 916
    .local v0, absolute:Z
    if-nez v0, :cond_4

    .line 919
    :goto_1
    const-string v6, "/."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 921
    const-string v6, "/../"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 923
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 924
    const/4 v2, 0x1

    .line 925
    goto :goto_1

    .line 912
    .end local v0           #absolute:Z
    .end local v2           #modified:Z
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :cond_1
    new-instance v4, Ljava/net/URL;

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .restart local v4       #url:Ljava/net/URL;
    goto :goto_0

    .line 926
    .restart local v0       #absolute:Z
    .restart local v2       #modified:Z
    .restart local v3       #path:Ljava/lang/String;
    :cond_2
    const-string v6, "/./"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "/."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 928
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 929
    const/4 v2, 0x1

    .line 930
    goto :goto_1

    .line 936
    :cond_4
    :goto_2
    const-string v6, "/\\"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #index:I
    if-eq v9, v1, :cond_5

    .line 938
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    add-int/lit8 v7, v1, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 939
    const/4 v2, 0x1

    .line 940
    goto :goto_2

    .line 941
    :cond_5
    if-eqz v2, :cond_6

    .line 942
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v4, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .end local v4           #url:Ljava/net/URL;
    .local v5, url:Ljava/net/URL;
    move-object v4, v5

    .line 944
    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    :cond_6
    return-object v4
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 504
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->close()V

    .line 505
    return-void
.end method

.method public getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "link"

    .prologue
    .line 955
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/lexer/Page;->getAbsoluteURL(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAbsoluteURL(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .parameter "link"
    .parameter "strict"

    .prologue
    .line 974
    if-eqz p1, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 975
    :cond_0
    const-string v2, ""

    .line 995
    .local v2, ret:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 979
    .end local v2           #ret:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, base:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 981
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 982
    :cond_2
    if-nez v0, :cond_3

    .line 983
    move-object v2, p1

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 986
    .end local v2           #ret:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, v0, p2}, Lorg/htmlparser/lexer/Page;->constructUrl(Ljava/lang/String;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v3

    .line 987
    .local v3, url:Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0

    .line 990
    .end local v0           #base:Ljava/lang/String;
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 992
    .local v1, murle:Ljava/net/MalformedURLException;
    move-object v2, p1

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacter(Lorg/htmlparser/lexer/Cursor;)C
    .locals 8
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/16 v6, 0xa

    .line 700
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v0

    .line 701
    .local v0, i:I
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v2

    .line 702
    .local v2, offset:I
    if-ne v2, v0, :cond_3

    .line 705
    :try_start_0
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 706
    if-ne v7, v0, :cond_2

    .line 707
    const v3, 0xffff

    .line 742
    .local v3, ret:C
    :goto_0
    const/16 v4, 0xd

    if-ne v4, v3, :cond_0

    .line 744
    const/16 v3, 0xa

    .line 747
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v4

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    if-ne v4, v5, :cond_7

    .line 750
    :try_start_1
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    .line 751
    if-ne v7, v0, :cond_5

    .line 788
    :cond_0
    :goto_1
    if-ne v6, v3, :cond_1

    .line 790
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v4, p1}, Lorg/htmlparser/lexer/PageIndex;->add(Lorg/htmlparser/lexer/Cursor;)I

    .line 792
    :cond_1
    return v3

    .line 710
    .end local v3           #ret:C
    :cond_2
    int-to-char v3, v0

    .line 711
    .restart local v3       #ret:C
    :try_start_2
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 714
    .end local v3           #ret:C
    :catch_0
    move-exception v1

    .line 716
    .local v1, ioe:Ljava/io/IOException;
    new-instance v4, Lorg/htmlparser/util/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "problem reading a character at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 720
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_3
    if-le v2, v0, :cond_4

    .line 725
    :try_start_3
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4, v0}, Lorg/htmlparser/lexer/Source;->getCharacter(I)C
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v3

    .line 733
    .restart local v3       #ret:C
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V

    goto :goto_0

    .line 727
    .end local v3           #ret:C
    :catch_1
    move-exception v1

    .line 729
    .restart local v1       #ioe:Ljava/io/IOException;
    new-instance v4, Lorg/htmlparser/util/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "can\'t read a character at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 737
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_4
    new-instance v4, Lorg/htmlparser/util/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "attempt to read future characters from source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v6}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 755
    .restart local v3       #ret:C
    :cond_5
    int-to-char v4, v0

    if-ne v6, v4, :cond_6

    .line 756
    :try_start_4
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 769
    :catch_2
    move-exception v1

    .line 771
    .restart local v1       #ioe:Ljava/io/IOException;
    new-instance v4, Lorg/htmlparser/util/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "problem reading a character at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 760
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_6
    :try_start_5
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->unread()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 762
    :catch_3
    move-exception v1

    .line 764
    .restart local v1       #ioe:Ljava/io/IOException;
    :try_start_6
    new-instance v4, Lorg/htmlparser/util/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "can\'t unread a character at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 778
    .end local v1           #ioe:Ljava/io/IOException;
    :cond_7
    :try_start_7
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/htmlparser/lexer/Source;->getCharacter(I)C

    move-result v4

    if-ne v6, v4, :cond_0

    .line 779
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->advance()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 781
    :catch_4
    move-exception v1

    .line 783
    .restart local v1       #ioe:Ljava/io/IOException;
    new-instance v4, Lorg/htmlparser/util/ParserException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "can\'t read a character at position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "content"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 256
    const-string v0, "charset"

    .line 260
    .local v0, CHARSET_STRING:Ljava/lang/String;
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    if-nez v3, :cond_4

    .line 261
    const-string v2, "ISO-8859-1"

    .line 266
    .local v2, ret:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_3

    .line 268
    const-string v3, "charset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 270
    .local v1, index:I
    if-eq v1, v5, :cond_3

    .line 272
    const-string v3, "charset"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 274
    const-string v3, "="

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 276
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 277
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 278
    if-eq v1, v5, :cond_0

    .line 279
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 282
    :cond_0
    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\""

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 287
    :cond_1
    const-string v3, "\'"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\'"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v4, v3, :cond_2

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 291
    :cond_2
    invoke-static {p1, v2}, Lorg/htmlparser/lexer/Page;->findCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 309
    .end local v1           #index:I
    :cond_3
    return-object v2

    .line 265
    .end local v2           #ret:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Source;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 664
    const-string v2, "text/html"

    .line 665
    .local v2, ret:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 666
    .local v0, connection:Ljava/net/URLConnection;
    if-eqz v0, :cond_0

    .line 670
    const-string v3, "Content-Type"

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, content:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 672
    move-object v2, v1

    .line 675
    .end local v1           #content:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getSource()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 1220
    new-instance v0, Lorg/htmlparser/lexer/Cursor;

    invoke-direct {v0, p0, p1}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/lexer/Page;->getLine(Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine(Lorg/htmlparser/lexer/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "cursor"

    .prologue
    .line 1191
    invoke-virtual {p0, p1}, Lorg/htmlparser/lexer/Page;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    .line 1192
    .local v1, line:I
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/PageIndex;->size()I

    move-result v2

    .line 1193
    .local v2, size:I
    if-ge v1, v2, :cond_1

    .line 1195
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v4, v1}, Lorg/htmlparser/lexer/PageIndex;->elementAt(I)I

    move-result v3

    .line 1196
    .local v3, start:I
    add-int/lit8 v1, v1, 0x1

    .line 1197
    if-gt v1, v2, :cond_0

    .line 1198
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v4, v1}, Lorg/htmlparser/lexer/PageIndex;->elementAt(I)I

    move-result v0

    .line 1209
    .local v0, end:I
    :goto_0
    invoke-virtual {p0, v3, v0}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1200
    .end local v0           #end:I
    :cond_0
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v0

    .line 1201
    .restart local v0       #end:I
    goto :goto_0

    .line 1204
    .end local v0           #end:I
    .end local v3           #start:I
    :cond_1
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Lorg/htmlparser/lexer/PageIndex;->elementAt(I)I

    move-result v3

    .line 1205
    .restart local v3       #start:I
    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v0

    .restart local v0       #end:I
    goto :goto_0
.end method

.method public getSource()Lorg/htmlparser/lexer/Source;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1123
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(II)Ljava/lang/String;
    .locals 5
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1057
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    sub-int v3, p2, p1

    invoke-virtual {v2, p1, v3}, Lorg/htmlparser/lexer/Source;->getString(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1070
    .local v1, ret:Ljava/lang/String;
    return-object v1

    .line 1059
    .end local v1           #ret:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1061
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can\'t get the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sub-int v4, p2, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "characters at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getText(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    .line 1133
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v1}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/htmlparser/lexer/Page;->getText(Ljava/lang/StringBuffer;II)V

    .line 1134
    return-void
.end method

.method public getText(Ljava/lang/StringBuffer;II)V
    .locals 5
    .parameter "buffer"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1089
    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v2

    if-lt v2, p2, :cond_0

    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v2

    if-ge v2, p3, :cond_1

    .line 1090
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "attempt to extract future characters from source"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v4}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1093
    :cond_1
    if-ge p3, p2, :cond_2

    .line 1095
    move v1, p3

    .line 1096
    .local v1, length:I
    move p3, p2

    .line 1097
    move p2, v1

    .line 1099
    .end local v1           #length:I
    :cond_2
    sub-int v1, p3, p2

    .line 1102
    .restart local v1       #length:I
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2, p1, p2, v1}, Lorg/htmlparser/lexer/Source;->getCharacters(Ljava/lang/StringBuffer;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1106
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can\'t get the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sub-int v4, p3, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "characters at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getText([CIII)V
    .locals 5
    .parameter "array"
    .parameter "offset"
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v2

    if-lt v2, p3, :cond_0

    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v2

    if-ge v2, p4, :cond_1

    .line 1154
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "attempt to extract future characters from source"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1155
    :cond_1
    if-ge p4, p3, :cond_2

    .line 1157
    move v1, p4

    .line 1158
    .local v1, length:I
    move p4, p3

    .line 1159
    move p3, v1

    .line 1161
    .end local v1           #length:I
    :cond_2
    sub-int v1, p4, p3

    .line 1164
    .restart local v1       #length:I
    :try_start_0
    iget-object v2, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v2, p1, p2, p3, p4}, Lorg/htmlparser/lexer/Source;->getCharacters([CIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    return-void

    .line 1166
    :catch_0
    move-exception v0

    .line 1168
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "can\'t get the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sub-int v4, p4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "characters at position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 480
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getSource()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Source;->reset()V

    .line 481
    new-instance v0, Lorg/htmlparser/lexer/PageIndex;

    invoke-direct {v0, p0}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    iput-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 482
    return-void
.end method

.method public row(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 1015
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/PageIndex;->row(I)I

    move-result v0

    return v0
.end method

.method public row(Lorg/htmlparser/lexer/Cursor;)I
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/PageIndex;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v0

    return v0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 642
    iput-object p1, p0, Lorg/htmlparser/lexer/Page;->mBaseUrl:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setConnection(Ljava/net/URLConnection;)V
    .locals 11
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 536
    iput-object p1, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    .line 539
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lorg/htmlparser/lexer/Page;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, charset:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, contentEncoding:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, "gzip"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v8, v7, :cond_0

    .line 560
    new-instance v3, Lorg/htmlparser/lexer/Stream;

    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Lorg/htmlparser/lexer/Stream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 576
    .local v3, stream:Lorg/htmlparser/lexer/Stream;
    :goto_0
    :try_start_2
    new-instance v7, Lorg/htmlparser/lexer/InputStreamSource;

    invoke-direct {v7, v3, v0}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 599
    :goto_1
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 600
    new-instance v7, Lorg/htmlparser/lexer/PageIndex;

    invoke-direct {v7, p0}, Lorg/htmlparser/lexer/PageIndex;-><init>(Lorg/htmlparser/lexer/Page;)V

    iput-object v7, p0, Lorg/htmlparser/lexer/Page;->mIndex:Lorg/htmlparser/lexer/PageIndex;

    .line 601
    return-void

    .line 541
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #contentEncoding:Ljava/lang/String;
    .end local v3           #stream:Lorg/htmlparser/lexer/Stream;
    .end local v4           #type:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 543
    .local v6, uhe:Ljava/net/UnknownHostException;
    new-instance v7, Lorg/htmlparser/util/ParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Connect to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " failed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 546
    .end local v6           #uhe:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v2

    .line 548
    .local v2, ioe:Ljava/io/IOException;
    new-instance v7, Lorg/htmlparser/util/ParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Exception connecting to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 563
    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v0       #charset:Ljava/lang/String;
    .restart local v1       #contentEncoding:Ljava/lang/String;
    .restart local v4       #type:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    :try_start_3
    const-string v7, "deflate"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v8, v7, :cond_1

    .line 566
    new-instance v3, Lorg/htmlparser/lexer/Stream;

    new-instance v7, Ljava/util/zip/InflaterInputStream;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    new-instance v9, Ljava/util/zip/Inflater;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v7, v8, v9}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    invoke-direct {v3, v7}, Lorg/htmlparser/lexer/Stream;-><init>(Ljava/io/InputStream;)V

    .line 568
    .restart local v3       #stream:Lorg/htmlparser/lexer/Stream;
    goto/16 :goto_0

    .line 571
    .end local v3           #stream:Lorg/htmlparser/lexer/Stream;
    :cond_1
    new-instance v3, Lorg/htmlparser/lexer/Stream;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/htmlparser/lexer/Stream;-><init>(Ljava/io/InputStream;)V

    .restart local v3       #stream:Lorg/htmlparser/lexer/Stream;
    goto/16 :goto_0

    .line 578
    :catch_2
    move-exception v5

    .line 589
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    const-string v0, "ISO-8859-1"

    .line 590
    new-instance v7, Lorg/htmlparser/lexer/InputStreamSource;

    invoke-direct {v7, v3, v0}, Lorg/htmlparser/lexer/InputStreamSource;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v7, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 593
    .end local v1           #contentEncoding:Ljava/lang/String;
    .end local v3           #stream:Lorg/htmlparser/lexer/Stream;
    .end local v5           #uee:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v2

    .line 595
    .restart local v2       #ioe:Ljava/io/IOException;
    new-instance v7, Lorg/htmlparser/util/ParserException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Exception getting input stream from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, p0, Lorg/htmlparser/lexer/Page;->mConnection:Ljava/net/URLConnection;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ")."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 1
    .parameter "character_set"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Page;->getSource()Lorg/htmlparser/lexer/Source;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/lexer/Source;->setEncoding(Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 624
    iput-object p1, p0, Lorg/htmlparser/lexer/Page;->mUrl:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1233
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v3

    if-lez v3, :cond_1

    .line 1235
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x2b

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1236
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v3

    add-int/lit8 v2, v3, -0x28

    .line 1237
    .local v2, start:I
    if-gez v2, :cond_0

    .line 1238
    const/4 v2, 0x0

    .line 1241
    :goto_0
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v3}, Lorg/htmlparser/lexer/Source;->offset()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(Ljava/lang/StringBuffer;II)V

    .line 1242
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #start:I
    .local v1, ret:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1240
    .end local v1           #ret:Ljava/lang/String;
    .restart local v0       #buffer:Ljava/lang/StringBuffer;
    .restart local v2       #start:I
    :cond_0
    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1245
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #start:I
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_1
.end method

.method public ungetCharacter(Lorg/htmlparser/lexer/Cursor;)V
    .locals 6
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->retreat()V

    .line 812
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    .line 815
    .local v1, i:I
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    invoke-virtual {v3, v1}, Lorg/htmlparser/lexer/Source;->getCharacter(I)C

    move-result v0

    .line 816
    .local v0, ch:C
    const/16 v3, 0xa

    if-ne v3, v0, :cond_0

    if-eqz v1, :cond_0

    .line 818
    iget-object v3, p0, Lorg/htmlparser/lexer/Page;->mSource:Lorg/htmlparser/lexer/Source;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Lorg/htmlparser/lexer/Source;->getCharacter(I)C

    move-result v0

    .line 819
    const/16 v3, 0xd

    if-ne v3, v0, :cond_0

    .line 820
    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->retreat()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :cond_0
    return-void

    .line 823
    .end local v0           #ch:C
    :catch_0
    move-exception v2

    .line 825
    .local v2, ioe:Ljava/io/IOException;
    new-instance v3, Lorg/htmlparser/util/ParserException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "can\'t read a character at position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p1}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
