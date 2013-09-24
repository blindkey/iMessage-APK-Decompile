.class public Lattach/Body_File_Entity$CountingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "Body_File_Entity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lattach/Body_File_Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CountingOutputStream"
.end annotation


# instance fields
.field private head:Lcom/common/CoreBuffer;

.field private listener:Lcom/client/MessageRateListener;

.field final synthetic this$0:Lattach/Body_File_Entity;

.field private totsize:I

.field private transferred:J


# direct methods
.method public constructor <init>(Lattach/Body_File_Entity;Ljava/io/OutputStream;Lcom/common/CoreBuffer;Lcom/client/MessageRateListener;I)V
    .locals 2
    .parameter
    .parameter "out"
    .parameter "head"
    .parameter "listener"
    .parameter "totsize"

    .prologue
    .line 75
    iput-object p1, p0, Lattach/Body_File_Entity$CountingOutputStream;->this$0:Lattach/Body_File_Entity;

    .line 76
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    iput-object p3, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    .line 80
    iput-object p4, p0, Lattach/Body_File_Entity$CountingOutputStream;->listener:Lcom/client/MessageRateListener;

    .line 81
    iput p5, p0, Lattach/Body_File_Entity$CountingOutputStream;->totsize:I

    .line 82
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 105
    iget-wide v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 108
    iget-wide v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    iget-object v3, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    .line 109
    iget-object v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->this$0:Lattach/Body_File_Entity;

    #getter for: Lattach/Body_File_Entity;->md:Ljava/security/MessageDigest;
    invoke-static {v1}, Lattach/Body_File_Entity;->access$0(Lattach/Body_File_Entity;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v2, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v3}, Lcom/common/CoreBuffer;->getLen()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 111
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 112
    .local v0, one:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v5

    .line 113
    iget-object v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->this$0:Lattach/Body_File_Entity;

    #getter for: Lattach/Body_File_Entity;->md:Ljava/security/MessageDigest;
    invoke-static {v1}, Lattach/Body_File_Entity;->access$0(Lattach/Body_File_Entity;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 114
    iget-object v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 115
    iget-wide v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    .line 116
    const-string v1, "Send data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public write([BII)V
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 86
    iget-wide v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 89
    iget-wide v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    iget-object v2, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    .line 90
    iget-object v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->this$0:Lattach/Body_File_Entity;

    #getter for: Lattach/Body_File_Entity;->md:Ljava/security/MessageDigest;
    invoke-static {v0}, Lattach/Body_File_Entity;->access$0(Lattach/Body_File_Entity;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lattach/Body_File_Entity$CountingOutputStream;->head:Lcom/common/CoreBuffer;

    invoke-virtual {v2}, Lcom/common/CoreBuffer;->getLen()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 92
    :cond_0
    iget-object v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 93
    iget-object v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->this$0:Lattach/Body_File_Entity;

    #getter for: Lattach/Body_File_Entity;->md:Ljava/security/MessageDigest;
    invoke-static {v0}, Lattach/Body_File_Entity;->access$0(Lattach/Body_File_Entity;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 94
    iget-wide v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    .line 95
    const-string v0, "Send data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->listener:Lcom/client/MessageRateListener;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lattach/Body_File_Entity$CountingOutputStream;->listener:Lcom/client/MessageRateListener;

    iget-wide v1, p0, Lattach/Body_File_Entity$CountingOutputStream;->transferred:J

    long-to-float v1, v1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    iget v2, p0, Lattach/Body_File_Entity$CountingOutputStream;->totsize:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-interface {v0, v5, v5, v1}, Lcom/client/MessageRateListener;->Message(IIF)V

    .line 101
    :cond_1
    return-void
.end method
