.class public LVerisonControl/UpdateVersion;
.super Ljava/lang/Thread;
.source "UpdateVersion.java"


# static fields
.field private static final ISNOWNEW:I = 0x9

.field private static final NETWORKDOWN:I = 0xb

.field private static final TAG:Ljava/lang/String; = "DOWNLOADAPK"

.field private static final UPDATEVERSION:I = 0xa


# instance fields
.field private NowVersion:Ljava/lang/String;

.field private PastVersion:Ljava/lang/String;

.field private apkName:Ljava/lang/String;

.field private currentFilePath:Ljava/lang/String;

.field private fileEx:Ljava/lang/String;

.field private fileNa:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private isLogin:Z

.field private mContext:Landroid/content/Context;

.field public pBar:Landroid/app/ProgressDialog;

.field private strURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, LVerisonControl/UpdateVersion;->currentFilePath:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, LVerisonControl/UpdateVersion;->fileEx:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, LVerisonControl/UpdateVersion;->fileNa:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, LVerisonControl/UpdateVersion;->isLogin:Z

    .line 145
    iput-object p1, p0, LVerisonControl/UpdateVersion;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    .line 148
    return-void
.end method

.method static synthetic access$0(LVerisonControl/UpdateVersion;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-direct {p0, p1}, LVerisonControl/UpdateVersion;->getDataSource(Ljava/lang/String;)V

    return-void
.end method

.method private delFile(Ljava/lang/String;)V
    .locals 2
    .parameter "strFileName"

    .prologue
    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, myFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 300
    :cond_0
    return-void
.end method

.method private getDataSource(Ljava/lang/String;)V
    .locals 11
    .parameter "strPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 187
    const-string v8, "Tag"

    const-string v9, "error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 194
    .local v6, myURL:Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 195
    .local v1, conn:Ljava/net/URLConnection;
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 197
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 198
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_1

    .line 200
    const-string v8, "tag"

    const-string v9, "error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "stream is null"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 204
    :cond_1
    const-string v8, "DOWNLOADAPK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fileNa:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, LVerisonControl/UpdateVersion;->fileNa:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " fileEx:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, LVerisonControl/UpdateVersion;->fileEx:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v8, p0, LVerisonControl/UpdateVersion;->fileNa:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, LVerisonControl/UpdateVersion;->fileEx:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 206
    .local v5, myTempFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 208
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 209
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v8, 0x80

    new-array v0, v8, [B

    .line 212
    .local v0, buf:[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .line 213
    .local v7, numread:I
    if-gtz v7, :cond_2

    .line 221
    invoke-direct {p0, v5}, LVerisonControl/UpdateVersion;->openFile(Ljava/io/File;)V

    .line 225
    :try_start_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v2

    .line 229
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "Tag"

    const-string v9, "error"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v8, "DOWNLOADAPK"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "error: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 217
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1
.end method

.method private getFile(Ljava/lang/String;)V
    .locals 3
    .parameter "strPath"

    .prologue
    .line 152
    iget-object v2, p0, LVerisonControl/UpdateVersion;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 155
    :try_start_0
    iget-object v2, p0, LVerisonControl/UpdateVersion;->currentFilePath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-direct {p0, p1}, LVerisonControl/UpdateVersion;->getDataSource(Ljava/lang/String;)V

    .line 159
    :cond_0
    iput-object p1, p0, LVerisonControl/UpdateVersion;->currentFilePath:Ljava/lang/String;

    .line 160
    new-instance v1, LVerisonControl/UpdateVersion$1;

    invoke-direct {v1, p0, p1}, LVerisonControl/UpdateVersion$1;-><init>(LVerisonControl/UpdateVersion;Ljava/lang/String;)V

    .line 174
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getMIMEType(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .parameter "f"

    .prologue
    .line 253
    const-string v2, ""

    .line 254
    .local v2, type:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, fName:Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, end:Ljava/lang/String;
    const-string v3, "m4a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mp3"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mid"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "xmf"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ogg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "wav"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 261
    :cond_0
    const-string v2, "audio"

    .line 281
    :goto_0
    const-string v3, "apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 288
    :cond_1
    return-object v2

    .line 263
    :cond_2
    const-string v3, "3gp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "mp4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    :cond_3
    const-string v2, "video"

    goto :goto_0

    .line 267
    :cond_4
    const-string v3, "jpg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "png"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "jpeg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "bmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 269
    :cond_5
    const-string v2, "image"

    goto :goto_0

    .line 271
    :cond_6
    const-string v3, "apk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 274
    const-string v2, "application/vnd.android.package-archive"

    goto :goto_0

    .line 278
    :cond_7
    const-string v2, "*"

    goto :goto_0
.end method

.method private openFile(Ljava/io/File;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 238
    iget-object v2, p0, LVerisonControl/UpdateVersion;->pBar:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->cancel()V

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 241
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-direct {p0, p1}, LVerisonControl/UpdateVersion;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, type:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    iget-object v2, p0, LVerisonControl/UpdateVersion;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method


# virtual methods
.method load()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 304
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 307
    .local v1, properties:Ljava/util/Properties;
    :try_start_0
    iget-object v4, p0, LVerisonControl/UpdateVersion;->mContext:Landroid/content/Context;

    const-string v5, "Versionfile.cfg"

    invoke-virtual {v4, v5}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 309
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    const-string v3, "Version"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, LVerisonControl/UpdateVersion;->PastVersion:Ljava/lang/String;

    .line 320
    const-string v3, "UpdateActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Pastversion:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, LVerisonControl/UpdateVersion;->PastVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/4 v3, 0x1

    .end local v2           #stream:Ljava/io/FileInputStream;
    :goto_0
    return v3

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 315
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 317
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 94
    :try_start_0
    iget-object v5, p0, LVerisonControl/UpdateVersion;->mContext:Landroid/content/Context;

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LVerisonControl/NetworkTool;->getContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, jsonversion:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 96
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 97
    .local v3, messaget:Landroid/os/Message;
    const/16 v5, 0xb

    iput v5, v3, Landroid/os/Message;->what:I

    .line 98
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 99
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    .end local v2           #jsonversion:Ljava/lang/String;
    :goto_0
    return-void

    .line 103
    .end local v3           #messaget:Landroid/os/Message;
    .restart local v2       #jsonversion:Ljava/lang/String;
    :cond_0
    const-string v5, "DOWNLOADAPK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "verjson:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 107
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 108
    .local v4, obj:Lorg/json/JSONObject;
    const-string v5, "verCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LVerisonControl/UpdateVersion;->NowVersion:Ljava/lang/String;

    .line 109
    const-string v5, "apkUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LVerisonControl/UpdateVersion;->strURL:Ljava/lang/String;

    .line 110
    const-string v5, "apkname"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LVerisonControl/UpdateVersion;->apkName:Ljava/lang/String;

    .line 111
    const-string v5, "DOWNLOADAPK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "version:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, LVerisonControl/UpdateVersion;->NowVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "strURL:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LVerisonControl/UpdateVersion;->strURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "apkName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LVerisonControl/UpdateVersion;->apkName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v4           #obj:Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, LVerisonControl/UpdateVersion;->mContext:Landroid/content/Context;

    const v6, 0x7f07000d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LVerisonControl/UpdateVersion;->PastVersion:Ljava/lang/String;

    .line 128
    const-string v5, "update"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "pastVersion:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, LVerisonControl/UpdateVersion;->PastVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&&Nowversion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, LVerisonControl/UpdateVersion;->NowVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, LVerisonControl/UpdateVersion;->PastVersion:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, LVerisonControl/UpdateVersion;->PastVersion:Ljava/lang/String;

    iget-object v6, p0, LVerisonControl/UpdateVersion;->NowVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 133
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 134
    .restart local v3       #messaget:Landroid/os/Message;
    const/16 v5, 0xa

    iput v5, v3, Landroid/os/Message;->what:I

    .line 135
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    iget-object v7, p0, LVerisonControl/UpdateVersion;->strURL:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 136
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 113
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #jsonversion:Ljava/lang/String;
    .end local v3           #messaget:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 116
    .restart local v3       #messaget:Landroid/os/Message;
    iput v9, v3, Landroid/os/Message;->what:I

    .line 117
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 118
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 119
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 138
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #messaget:Landroid/os/Message;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #jsonversion:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 139
    .restart local v3       #messaget:Landroid/os/Message;
    const/16 v5, 0x9

    iput v5, v3, Landroid/os/Message;->what:I

    .line 140
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 141
    iget-object v5, p0, LVerisonControl/UpdateVersion;->handler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method save()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 326
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 327
    .local v1, properties:Ljava/util/Properties;
    const-string v4, "Version"

    iget-object v5, p0, LVerisonControl/UpdateVersion;->NowVersion:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :try_start_0
    iget-object v4, p0, LVerisonControl/UpdateVersion;->mContext:Landroid/content/Context;

    const-string v5, "Versionfile.cfg"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 332
    .local v2, stream:Ljava/io/FileOutputStream;
    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 342
    const/4 v3, 0x1

    .end local v2           #stream:Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 338
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method
