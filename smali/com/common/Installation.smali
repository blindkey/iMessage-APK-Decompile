.class public Lcom/common/Installation;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String;

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/common/Installation;->sID:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INSTALLATION-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    const-string v1, "androidkit"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/common/Installation;->INSTALLATION:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 25
    const-class v3, Lcom/common/Installation;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/common/Installation;->sID:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 26
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    sget-object v4, Lcom/common/Installation;->INSTALLATION:Ljava/lang/String;

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .local v1, installation:Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    invoke-static {p0, v1}, Lcom/common/Installation;->writeInstallationFile(Landroid/content/Context;Ljava/io/File;)V

    .line 31
    :cond_0
    invoke-static {v1}, Lcom/common/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/common/Installation;->sID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 36
    .end local v1           #installation:Ljava/io/File;
    :cond_1
    :goto_0
    :try_start_2
    sget-object v2, Lcom/common/Installation;->sID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return-object v2

    .line 32
    .restart local v1       #installation:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 25
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #installation:Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .parameter "installation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v0, accessFile:Ljava/io/RandomAccessFile;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v1, v2, [B

    .line 52
    .local v1, bs:[B
    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 53
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 54
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static writeInstallationFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 10
    .parameter "context"
    .parameter "installation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    .local v4, out:Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 72
    .local v0, android_id:[B
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 73
    .local v5, t:Landroid/text/format/Time;
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 74
    array-length v7, v0

    add-int/lit8 v7, v7, 0x6

    new-array v1, v7, [B

    .line 77
    .local v1, buf:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v0

    if-lt v2, v7, :cond_0

    .line 80
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    iget v7, v5, Landroid/text/format/Time;->year:I

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 81
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget v7, v5, Landroid/text/format/Time;->month:I

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 82
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget v7, v5, Landroid/text/format/Time;->monthDay:I

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 83
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget v7, v5, Landroid/text/format/Time;->hour:I

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 84
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    iget v7, v5, Landroid/text/format/Time;->minute:I

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 85
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    iget v7, v5, Landroid/text/format/Time;->second:I

    int-to-byte v7, v7

    aput-byte v7, v1, v3

    .line 87
    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, uuid:Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "uuid.."

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 90
    return-void

    .line 78
    .end local v6           #uuid:Ljava/lang/String;
    :cond_0
    aget-byte v7, v0, v2

    aput-byte v7, v1, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
