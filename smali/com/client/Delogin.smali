.class public Lcom/client/Delogin;
.super Ljava/lang/Object;
.source "Delogin.java"


# static fields
.field private static DELOGIN_OTHER_SIZE:I


# instance fields
.field private account:Ljava/lang/String;

.field private password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x1c

    sput v0, Lcom/client/Delogin;->DELOGIN_OTHER_SIZE:I

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "acc"
    .parameter "pass"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/client/Delogin;->account:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/client/Delogin;->password:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public body()Lcom/common/CoreBuffer;
    .locals 14

    .prologue
    const/4 v13, 0x2

    .line 22
    sget-object v5, LdataEncode/KeyLib;->autrsaKey:[B

    .line 23
    .local v5, key:[B
    const/4 v6, 0x0

    check-cast v6, [B

    .line 30
    .local v6, passcode:[B
    iget-object v11, p0, Lcom/client/Delogin;->password:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 33
    iget-object v11, p0, Lcom/client/Delogin;->account:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    .line 34
    .local v0, alen:I
    array-length v7, v6

    .line 37
    .local v7, plen:I
    add-int v11, v0, v7

    sget v12, Lcom/client/Delogin;->DELOGIN_OTHER_SIZE:I

    add-int v8, v11, v12

    .line 38
    .local v8, size:I
    new-array v1, v8, [B

    .line 39
    .local v1, buf:[B
    add-int/lit8 v10, v8, -0x5

    .line 42
    .local v10, temp:I
    const/4 v2, 0x0

    .line 43
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-byte v13, v1, v2

    .line 44
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v11, v10, 0x18

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    .line 45
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v11, v10, 0x10

    int-to-byte v11, v11

    aput-byte v11, v1, v2

    .line 46
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v11, v10, 0x8

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    .line 47
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v11, v10

    aput-byte v11, v1, v2

    .line 49
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v11, 0x3

    aput-byte v11, v1, v3

    .line 50
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    aput-byte v13, v1, v2

    .line 53
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-byte v11, v0

    aput-byte v11, v1, v3

    .line 55
    iget-object v11, p0, Lcom/client/Delogin;->account:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 56
    .local v9, str:[B
    const/4 v4, 0x0

    .local v4, j:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 61
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-byte v11, v7

    aput-byte v11, v1, v3

    .line 63
    move-object v9, v6

    .line 64
    const/4 v4, 0x0

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    :goto_1
    if-lt v4, v7, :cond_1

    .line 69
    new-instance v11, Lcom/common/CoreBuffer;

    invoke-direct {v11, v1, v8}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v11

    .line 57
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v11, v9, v4

    aput-byte v11, v1, v3

    .line 56
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 65
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v11, v9, v4

    aput-byte v11, v1, v3

    .line 64
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1
.end method
