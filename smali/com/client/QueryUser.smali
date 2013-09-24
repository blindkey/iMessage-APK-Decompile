.class public Lcom/client/QueryUser;
.super Ljava/lang/Object;
.source "QueryUser.java"


# instance fields
.field private account:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/client/QueryUser;->account:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public body()Lcom/common/CoreBuffer;
    .locals 10

    .prologue
    .line 15
    iget-object v9, p0, Lcom/client/QueryUser;->account:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    .line 16
    .local v0, alen:I
    add-int/lit8 v6, v0, 0x9

    .line 17
    .local v6, tlen:I
    add-int/lit8 v9, v6, -0x1

    add-int/lit8 v5, v9, -0x4

    .line 18
    .local v5, mlen:I
    add-int/lit8 v9, v6, 0x1

    new-array v8, v9, [B

    .line 19
    .local v8, tmsg:[B
    const/4 v3, 0x0

    .line 20
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Byte;->byteValue()B

    move-result v9

    aput-byte v9, v8, v3

    .line 27
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    shl-int/lit8 v9, v0, 0x18

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 28
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    shl-int/lit8 v9, v0, 0x10

    int-to-byte v9, v9

    aput-byte v9, v8, v3

    .line 29
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    shl-int/lit8 v9, v0, 0x8

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 30
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    and-int/lit16 v9, v0, 0xff

    int-to-byte v9, v9

    aput-byte v9, v8, v3

    .line 31
    iget-object v9, p0, Lcom/client/QueryUser;->account:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 32
    .local v7, tmp:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 35
    new-instance v1, Lcom/common/CoreBuffer;

    invoke-direct {v1, v8, v4}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 36
    .local v1, buf:Lcom/common/CoreBuffer;
    return-object v1

    .line 33
    .end local v1           #buf:Lcom/common/CoreBuffer;
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-char v9, v7, v2

    int-to-byte v9, v9

    aput-byte v9, v8, v4

    .line 32
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #index:I
    .restart local v4       #index:I
    goto :goto_0
.end method
