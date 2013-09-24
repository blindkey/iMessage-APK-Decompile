.class public LFileSignature/CalSignature;
.super Ljava/lang/Object;
.source "CalSignature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calChunkSignature(Ljava/lang/String;)Ljava/util/Vector;
    .locals 12
    .parameter "sendFilePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "LFileSignature/ChunkSignature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 16
    .local v4, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 18
    .local v5, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #fin:Ljava/io/FileInputStream;
    .local v6, fin:Ljava/io/FileInputStream;
    move-object v5, v6

    .line 24
    .end local v6           #fin:Ljava/io/FileInputStream;
    .restart local v5       #fin:Ljava/io/FileInputStream;
    :goto_0
    new-instance v8, LFileSignature/CalChunkSignature;

    invoke-direct {v8}, LFileSignature/CalChunkSignature;-><init>()V

    .line 25
    .local v8, mCalChunkSignature:LFileSignature/CalChunkSignature;
    const/16 v10, 0x5010

    new-array v2, v10, [B

    .line 26
    .local v2, data:[B
    const/high16 v1, 0x10

    .line 28
    .local v1, chunkLen:I
    :cond_0
    invoke-virtual {v8}, LFileSignature/CalChunkSignature;->GeneratorChunkSignatureCreate()Z

    .line 29
    const/4 v0, 0x0

    .local v0, Tindex:I
    const/4 v7, 0x0

    .line 30
    .local v7, len:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 43
    :cond_1
    invoke-virtual {v8}, LFileSignature/CalChunkSignature;->GeneratorChunkSignatureFinal()Z

    .line 45
    if-gtz v7, :cond_0

    .line 50
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 55
    :goto_2
    invoke-virtual {v8}, LFileSignature/CalChunkSignature;->GetChunkSignatureList()Ljava/util/Vector;

    move-result-object v10

    return-object v10

    .line 19
    .end local v0           #Tindex:I
    .end local v1           #chunkLen:I
    .end local v2           #data:[B
    .end local v7           #len:I
    .end local v8           #mCalChunkSignature:LFileSignature/CalChunkSignature;
    :catch_0
    move-exception v3

    .line 21
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #Tindex:I
    .restart local v1       #chunkLen:I
    .restart local v2       #data:[B
    .restart local v7       #len:I
    .restart local v8       #mCalChunkSignature:LFileSignature/CalChunkSignature;
    :cond_2
    const/4 v10, 0x0

    const/16 v11, 0x1000

    :try_start_2
    invoke-virtual {v5, v2, v10, v11}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v7

    .line 37
    :goto_3
    if-lez v7, :cond_1

    .line 39
    add-int/2addr v0, v7

    .line 40
    new-instance v9, Lcom/common/CoreBuffer;

    invoke-direct {v9, v2, v7}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 41
    .local v9, mCoreBuffer:Lcom/common/CoreBuffer;
    invoke-virtual {v8, v9}, LFileSignature/CalChunkSignature;->GeneratorChunkSignatureUpdate(Lcom/common/CoreBuffer;)Z

    goto :goto_1

    .line 33
    .end local v9           #mCoreBuffer:Lcom/common/CoreBuffer;
    :catch_1
    move-exception v3

    .line 35
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 51
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 53
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static calFileSignature(Ljava/lang/String;)Lcom/common/CoreBuffer;
    .locals 10
    .parameter "sendFilePath"

    .prologue
    .line 58
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 61
    .local v3, fin:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #fin:Ljava/io/FileInputStream;
    .local v4, fin:Ljava/io/FileInputStream;
    move-object v3, v4

    .line 67
    .end local v4           #fin:Ljava/io/FileInputStream;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    :goto_0
    const/16 v8, 0x5010

    new-array v0, v8, [B

    .line 70
    .local v0, data:[B
    new-instance v6, LFileSignature/CalFileSignature;

    invoke-direct {v6}, LFileSignature/CalFileSignature;-><init>()V

    .line 71
    .local v6, mCalFileSignature:LFileSignature/CalFileSignature;
    invoke-virtual {v6}, LFileSignature/CalFileSignature;->GeneratorFileSignatureCreate()Z

    .line 76
    :goto_1
    const/4 v5, 0x0

    .line 78
    .local v5, len:I
    const/4 v8, 0x0

    const/16 v9, 0x4000

    :try_start_1
    invoke-virtual {v3, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 83
    :goto_2
    if-gtz v5, :cond_0

    .line 90
    invoke-virtual {v6}, LFileSignature/CalFileSignature;->GeneratorFileSignatureFinal()Z

    .line 92
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 97
    :goto_3
    invoke-virtual {v6}, LFileSignature/CalFileSignature;->GetFileSignature()Lcom/common/CoreBuffer;

    move-result-object v8

    return-object v8

    .line 62
    .end local v0           #data:[B
    .end local v5           #len:I
    .end local v6           #mCalFileSignature:LFileSignature/CalFileSignature;
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v0       #data:[B
    .restart local v5       #len:I
    .restart local v6       #mCalFileSignature:LFileSignature/CalFileSignature;
    :catch_1
    move-exception v1

    .line 81
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 85
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    new-instance v7, Lcom/common/CoreBuffer;

    invoke-direct {v7, v0, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 87
    .local v7, mCoreBuffer:Lcom/common/CoreBuffer;
    invoke-virtual {v6, v7}, LFileSignature/CalFileSignature;->GeneratorFileSignatureUpdate(Lcom/common/CoreBuffer;)Z

    goto :goto_1

    .line 93
    .end local v7           #mCoreBuffer:Lcom/common/CoreBuffer;
    :catch_2
    move-exception v1

    .line 95
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
