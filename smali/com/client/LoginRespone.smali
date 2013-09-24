.class public Lcom/client/LoginRespone;
.super Ljava/lang/Object;
.source "LoginRespone.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x456L


# instance fields
.field private ResponeKey:Z

.field private ResponeType:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public body(Lcom/common/CoreBuffer;)V
    .locals 13
    .parameter "msg"

    .prologue
    const v12, 0xff00

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 17
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v7

    .line 18
    .local v7, tmp:[B
    const/16 v3, 0x8

    .line 19
    .local v3, index:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    aget-byte v8, v7, v3

    if-nez v8, :cond_0

    .line 20
    iput-boolean v11, p0, Lcom/client/LoginRespone;->ResponeType:Z

    .line 24
    :goto_0
    iput-boolean v10, p0, Lcom/client/LoginRespone;->ResponeKey:Z

    move v3, v4

    .line 25
    .end local v4           #index:I
    .restart local v3       #index:I
    :goto_1
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v8

    if-lt v3, v8, :cond_1

    .line 60
    return-void

    .line 22
    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_0
    iput-boolean v10, p0, Lcom/client/LoginRespone;->ResponeType:Z

    goto :goto_0

    .line 26
    .end local v4           #index:I
    .restart local v3       #index:I
    :cond_1
    const/4 v5, 0x0

    .line 28
    .local v5, len:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-byte v8, v7, v3

    sparse-switch v8, :sswitch_data_0

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_1

    .line 31
    .end local v3           #index:I
    .restart local v4       #index:I
    :sswitch_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-byte v8, v7, v4

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v12

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-byte v9, v7, v3

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 32
    new-array v0, v5, [B

    .line 33
    .local v0, cert:[B
    invoke-static {v7, v4, v0, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    add-int v3, v4, v5

    .line 37
    .end local v4           #index:I
    .restart local v3       #index:I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 38
    .local v6, tkey:Ljava/lang/String;
    invoke-static {v6}, LdataEncode/Authentication;->StoreCertrsaKey(Ljava/lang/String;)V

    .line 39
    iput-boolean v11, p0, Lcom/client/LoginRespone;->ResponeKey:Z

    goto :goto_1

    .line 43
    .end local v0           #cert:[B
    .end local v3           #index:I
    .end local v6           #tkey:Ljava/lang/String;
    .restart local v4       #index:I
    :sswitch_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-byte v8, v7, v4

    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v12

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    aget-byte v9, v7, v3

    and-int/lit16 v9, v9, 0xff

    or-int v5, v8, v9

    .line 44
    new-array v1, v5, [B

    .line 45
    .local v1, csr:[B
    invoke-static {v7, v4, v1, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    add-int v3, v4, v5

    .line 47
    .end local v4           #index:I
    .restart local v3       #index:I
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    .line 48
    .restart local v6       #tkey:Ljava/lang/String;
    invoke-static {v6}, LdataEncode/Authentication;->StoreCsrrsaKey(Ljava/lang/String;)V

    goto :goto_1

    .line 52
    .end local v1           #csr:[B
    .end local v3           #index:I
    .end local v6           #tkey:Ljava/lang/String;
    .restart local v4       #index:I
    :sswitch_2
    add-int/lit8 v3, v4, 0x1

    .end local v4           #index:I
    .restart local v3       #index:I
    aget-byte v5, v7, v4

    .line 53
    new-array v2, v5, [B

    .line 54
    .local v2, fastlogin:[B
    invoke-static {v7, v3, v2, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    sput-object v2, LdataEncode/KeyLib;->fastloginKey:[B

    goto :goto_1

    .line 28
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_2
    .end sparse-switch
.end method

.method public getCert(Ljava/lang/String;Lcom/DB/KeyDB;)V
    .locals 1
    .parameter "acc"
    .parameter "keyDB"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/client/LoginRespone;->ResponeKey:Z

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p2, p1}, Lcom/DB/KeyDB;->getCert(Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-virtual {p2, p1}, Lcom/DB/KeyDB;->saveCert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loginSuccess()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/client/LoginRespone;->ResponeType:Z

    return v0
.end method
