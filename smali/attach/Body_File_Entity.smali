.class public Lattach/Body_File_Entity;
.super Lorg/apache/http/entity/InputStreamEntity;
.source "Body_File_Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lattach/Body_File_Entity$CountingOutputStream;
    }
.end annotation


# static fields
.field private static final CONNECT:I = 0x0

.field private static final OVER:I = 0x3

.field private static final RECVDATA:I = 0x2

.field private static final SENDBODYRECBODY:I = 0x3

.field private static final SENDBODYRECFILE:I = 0x1

.field private static final SENDDATA:I = 0x1

.field private static final SENDFILERECBODY:I = 0x2

.field private static final SENDFILERECFILE:I

.field private static final START:I


# instance fields
.field private head:Lcom/common/CoreBuffer;

.field private listener:Lcom/client/MessageRateListener;

.field private md:Ljava/security/MessageDigest;

.field public totsize:I


# direct methods
.method public constructor <init>(Ljava/io/FileInputStream;JLcom/common/CoreBuffer;Lcom/client/MessageRateListener;)V
    .locals 3
    .parameter "fileInputStream"
    .parameter "size"
    .parameter "head"
    .parameter "listener"

    .prologue
    .line 39
    invoke-virtual {p4}, Lcom/common/CoreBuffer;->getLen()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p2

    invoke-direct {p0, p1, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 40
    invoke-virtual {p4}, Lcom/common/CoreBuffer;->getLen()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v1, p2

    long-to-int v1, v1

    iput v1, p0, Lattach/Body_File_Entity;->totsize:I

    .line 41
    iput-object p4, p0, Lattach/Body_File_Entity;->head:Lcom/common/CoreBuffer;

    .line 42
    iput-object p5, p0, Lattach/Body_File_Entity;->listener:Lcom/client/MessageRateListener;

    .line 44
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iput-object v1, p0, Lattach/Body_File_Entity;->md:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Lattach/Body_File_Entity;)Ljava/security/MessageDigest;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lattach/Body_File_Entity;->md:Ljava/security/MessageDigest;

    return-object v0
.end method


# virtual methods
.method public getMD5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 56
    iget-object v2, p0, Lattach/Body_File_Entity;->md:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 57
    .local v0, md5:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 58
    .local v1, mmd5:Ljava/lang/String;
    const-string v2, "putFile md5"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lattach/Body_File_Entity$CountingOutputStream;

    iget-object v3, p0, Lattach/Body_File_Entity;->head:Lcom/common/CoreBuffer;

    iget-object v4, p0, Lattach/Body_File_Entity;->listener:Lcom/client/MessageRateListener;

    iget v5, p0, Lattach/Body_File_Entity;->totsize:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lattach/Body_File_Entity$CountingOutputStream;-><init>(Lattach/Body_File_Entity;Ljava/io/OutputStream;Lcom/common/CoreBuffer;Lcom/client/MessageRateListener;I)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/InputStreamEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 67
    return-void
.end method
