.class public Lcom/client/Login;
.super Ljava/lang/Object;
.source "Login.java"


# static fields
.field private static LOGIN_OTHER_SIZE:I


# instance fields
.field private account:Ljava/lang/String;

.field private password:[B

.field private puid:[B

.field private radomKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x10

    sput v0, Lcom/client/Login;->LOGIN_OTHER_SIZE:I

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[B[B)V
    .locals 0
    .parameter "acc"
    .parameter "pass"
    .parameter "puid"
    .parameter "radomkey"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/client/Login;->account:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/client/Login;->password:[B

    .line 20
    iput-object p3, p0, Lcom/client/Login;->puid:[B

    .line 21
    iput-object p4, p0, Lcom/client/Login;->radomKey:[B

    .line 22
    return-void
.end method


# virtual methods
.method public body()Lcom/common/CoreBuffer;
    .locals 11

    .prologue
    .line 166
    const/4 v5, 0x0

    check-cast v5, [B

    .line 173
    .local v5, passcode:[B
    iget-object v5, p0, Lcom/client/Login;->password:[B

    .line 176
    iget-object v10, p0, Lcom/client/Login;->account:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    .line 177
    .local v0, alen:I
    array-length v6, v5

    .line 181
    .local v6, plen:I
    add-int v10, v0, v6

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x4

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v10, 0x1

    .line 182
    .local v7, size:I
    new-array v1, v7, [B

    .line 183
    .local v1, buf:[B
    add-int/lit8 v9, v7, -0x5

    .line 186
    .local v9, temp:I
    const/4 v2, 0x0

    .line 187
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    const/4 v10, 0x2

    aput-byte v10, v1, v2

    .line 188
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    .line 189
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    aput-byte v10, v1, v2

    .line 190
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    aput-byte v10, v1, v3

    .line 191
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v10, v9

    aput-byte v10, v1, v2

    .line 193
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v10, 0x3

    aput-byte v10, v1, v3

    .line 194
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v10, 0x1

    aput-byte v10, v1, v2

    .line 198
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-byte v10, v0

    aput-byte v10, v1, v3

    .line 200
    iget-object v10, p0, Lcom/client/Login;->account:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 201
    .local v8, str:[B
    const/4 v4, 0x0

    .local v4, j:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 206
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-byte v10, v6

    aput-byte v10, v1, v3

    .line 208
    move-object v8, v5

    .line 209
    const/4 v4, 0x0

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    :goto_1
    if-lt v4, v6, :cond_1

    .line 215
    new-instance v10, Lcom/common/CoreBuffer;

    invoke-direct {v10, v1, v7}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v10

    .line 202
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v10, v8, v4

    aput-byte v10, v1, v3

    .line 201
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 210
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v10, v8, v4

    aput-byte v10, v1, v3

    .line 209
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1
.end method

.method public body_fast()Lcom/common/CoreBuffer;
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    .line 35
    iget-object v11, p0, Lcom/client/Login;->account:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    .line 37
    .local v0, alen:I
    iget-object v11, p0, Lcom/client/Login;->puid:[B

    array-length v10, v11

    .line 38
    .local v10, uuidlen:I
    iget-object v11, p0, Lcom/client/Login;->radomKey:[B

    array-length v6, v11

    .line 39
    .local v6, ranlen:I
    iget-object v11, p0, Lcom/client/Login;->password:[B

    array-length v2, v11

    .line 41
    .local v2, fastlen:I
    add-int/lit8 v11, v0, 0xf

    add-int/2addr v11, v2

    add-int/2addr v11, v10

    add-int v7, v11, v6

    .line 42
    .local v7, size:I
    new-array v1, v7, [B

    .line 43
    .local v1, buf:[B
    add-int/lit8 v9, v7, -0x5

    .line 46
    .local v9, temp:I
    const/4 v3, 0x0

    .line 47
    .local v3, i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .local v4, i:I
    aput-byte v13, v1, v3

    .line 48
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v11, v9, 0x18

    int-to-byte v11, v11

    aput-byte v11, v1, v4

    .line 49
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    shr-int/lit8 v11, v9, 0x10

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    .line 50
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v11, v9, 0x8

    int-to-byte v11, v11

    aput-byte v11, v1, v4

    .line 51
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    int-to-byte v11, v9

    aput-byte v11, v1, v3

    .line 53
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    const/4 v11, 0x3

    aput-byte v11, v1, v4

    .line 54
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    aput-byte v13, v1, v3

    .line 56
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    const/4 v11, 0x5

    aput-byte v11, v1, v4

    .line 58
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    int-to-byte v11, v0

    aput-byte v11, v1, v3

    .line 60
    iget-object v11, p0, Lcom/client/Login;->account:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 61
    .local v8, str:[B
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-lt v5, v0, :cond_0

    .line 75
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    const/4 v11, 0x7

    aput-byte v11, v1, v4

    .line 76
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    int-to-byte v11, v10

    aput-byte v11, v1, v3

    .line 77
    iget-object v11, p0, Lcom/client/Login;->puid:[B

    invoke-static {v11, v12, v1, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    add-int v3, v4, v10

    .line 80
    .end local v4           #i:I
    .restart local v3       #i:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    const/16 v11, 0x8

    aput-byte v11, v1, v3

    .line 81
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    int-to-byte v11, v6

    aput-byte v11, v1, v4

    .line 82
    iget-object v11, p0, Lcom/client/Login;->radomKey:[B

    invoke-static {v11, v12, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    add-int/2addr v3, v6

    .line 85
    add-int/lit8 v4, v3, 0x1

    .end local v3           #i:I
    .restart local v4       #i:I
    const/16 v11, 0x9

    aput-byte v11, v1, v3

    .line 86
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    int-to-byte v11, v2

    aput-byte v11, v1, v4

    .line 87
    iget-object v11, p0, Lcom/client/Login;->password:[B

    invoke-static {v11, v12, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    add-int/2addr v3, v2

    .line 91
    new-instance v11, Lcom/common/CoreBuffer;

    invoke-direct {v11, v1, v3}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v11

    .line 62
    .end local v3           #i:I
    .restart local v4       #i:I
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aget-byte v11, v8, v5

    aput-byte v11, v1, v4

    .line 61
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_0
.end method

.method public body_new()Lcom/common/CoreBuffer;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 98
    const/4 v5, 0x0

    check-cast v5, [B

    .line 105
    .local v5, passcode:[B
    iget-object v5, p0, Lcom/client/Login;->password:[B

    .line 108
    iget-object v12, p0, Lcom/client/Login;->account:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    .line 109
    .local v0, alen:I
    array-length v6, v5

    .line 110
    .local v6, plen:I
    iget-object v12, p0, Lcom/client/Login;->puid:[B

    array-length v11, v12

    .line 111
    .local v11, uuidlen:I
    iget-object v12, p0, Lcom/client/Login;->radomKey:[B

    array-length v7, v12

    .line 113
    .local v7, ranlen:I
    add-int/lit8 v12, v0, 0x10

    add-int/2addr v12, v6

    add-int/2addr v12, v11

    add-int v8, v12, v7

    .line 114
    .local v8, size:I
    new-array v1, v8, [B

    .line 115
    .local v1, buf:[B
    add-int/lit8 v10, v8, -0x5

    .line 118
    .local v10, temp:I
    const/4 v2, 0x0

    .line 119
    .local v2, i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    const/4 v12, 0x2

    aput-byte v12, v1, v2

    .line 120
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v12, v10, 0x18

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    .line 121
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    aput-byte v12, v1, v2

    .line 122
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    shr-int/lit8 v12, v10, 0x8

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    .line 123
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v12, v10

    aput-byte v12, v1, v2

    .line 125
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v12, 0x3

    aput-byte v12, v1, v3

    .line 126
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    aput-byte v14, v1, v2

    .line 127
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aput-byte v14, v1, v3

    .line 129
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/4 v12, 0x5

    aput-byte v12, v1, v2

    .line 131
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-byte v12, v0

    aput-byte v12, v1, v3

    .line 133
    iget-object v12, p0, Lcom/client/Login;->account:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 134
    .local v9, str:[B
    const/4 v4, 0x0

    .local v4, j:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 137
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v12, 0x6

    aput-byte v12, v1, v3

    .line 139
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v12, v6

    aput-byte v12, v1, v2

    .line 141
    move-object v9, v5

    .line 142
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v6, :cond_1

    .line 147
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    const/4 v12, 0x7

    aput-byte v12, v1, v3

    .line 148
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    int-to-byte v12, v11

    aput-byte v12, v1, v2

    .line 149
    iget-object v12, p0, Lcom/client/Login;->puid:[B

    invoke-static {v12, v13, v1, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    add-int v2, v3, v11

    .line 152
    .end local v3           #i:I
    .restart local v2       #i:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    const/16 v12, 0x8

    aput-byte v12, v1, v2

    .line 154
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    int-to-byte v12, v7

    aput-byte v12, v1, v3

    .line 155
    iget-object v12, p0, Lcom/client/Login;->radomKey:[B

    invoke-static {v12, v13, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    add-int/2addr v2, v7

    .line 159
    new-instance v12, Lcom/common/CoreBuffer;

    invoke-direct {v12, v1, v2}, Lcom/common/CoreBuffer;-><init>([BI)V

    return-object v12

    .line 135
    .end local v2           #i:I
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v12, v9, v4

    aput-byte v12, v1, v3

    .line 134
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 143
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aget-byte v12, v9, v4

    aput-byte v12, v1, v3

    .line 142
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1
.end method
