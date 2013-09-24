.class public Lcom/client/Recive;
.super Ljava/lang/Object;
.source "Recive.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xaL


# instance fields
.field private context:Ljava/lang/String;

.field private flag:Z

.field private fromUser:Ljava/lang/String;

.field private isAttach:Z

.field private key:Ljava/lang/String;

.field private m_guid:[B

.field private mime_type:Ljava/lang/String;

.field private mmcs_owner:Ljava/lang/String;

.field private mmcs_url:Ljava/lang/String;

.field private msgid:J

.field private name:Ljava/lang/String;

.field private recTime:J

.field private size:I

.field private uti_type:Ljava/lang/String;

.field private xcontext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/client/Recive;->flag:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Lactivity/ChatMsgEntity;)V
    .locals 4
    .parameter "entity"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/client/Recive;->flag:Z

    .line 41
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Recive;->fromUser:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/client/Recive;->msgid:J

    .line 43
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/client/Recive;->m_guid:[B

    .line 44
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getguid()[B

    move-result-object v0

    iget-object v1, p0, Lcom/client/Recive;->m_guid:[B

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/client/Recive;->recTime:J

    .line 47
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getxMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/client/Recive;->xcontext:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public CheckVersion(I)Z
    .locals 1
    .parameter "version"

    .prologue
    .line 180
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public body(Lcom/common/CoreBuffer;)Z
    .locals 12
    .parameter "Cmsg"

    .prologue
    .line 205
    const/4 v6, 0x0

    .line 206
    .local v6, ret:I
    const/4 v1, 0x1

    .line 212
    .local v1, i:I
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getBuffer()[B

    move-result-object v0

    .line 213
    .local v0, buff:[B
    const/4 v9, 0x5

    aget-byte v9, v0, v9

    invoke-virtual {p0, v9}, Lcom/client/Recive;->CheckVersion(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 214
    const/4 v9, 0x0

    .line 267
    :goto_0
    return v9

    .line 216
    :cond_0
    const/4 v2, 0x7

    .line 218
    .local v2, index:I
    :goto_1
    invoke-virtual {p1}, Lcom/common/CoreBuffer;->getLen()I

    move-result v9

    if-lt v2, v9, :cond_1

    .line 267
    const/4 v9, 0x1

    goto :goto_0

    .line 219
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-byte v9, v0, v2

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 221
    .end local v2           #index:I
    .restart local v3       #index:I
    :pswitch_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v4, v0, v3

    .line 222
    .local v4, len:I
    new-array v9, v4, [B

    iput-object v9, p0, Lcom/client/Recive;->m_guid:[B

    .line 223
    iget-object v9, p0, Lcom/client/Recive;->m_guid:[B

    const/4 v10, 0x0

    invoke-static {v0, v2, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    add-int/2addr v2, v4

    .line 225
    goto :goto_1

    .line 227
    .end local v2           #index:I
    .end local v4           #len:I
    .restart local v3       #index:I
    :pswitch_2
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v4, v0, v3

    .line 228
    .restart local v4       #len:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v9, v0, v2

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x100

    and-int/2addr v9, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v0, v3

    shl-int/lit8 v10, v10, 0x10

    const/high16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    .line 229
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v10, v0, v2

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v0, v3

    shl-int/lit8 v10, v10, 0x0

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    int-to-long v9, v9

    .line 228
    iput-wide v9, p0, Lcom/client/Recive;->msgid:J

    goto :goto_1

    .line 232
    .end local v2           #index:I
    .end local v4           #len:I
    .restart local v3       #index:I
    :pswitch_3
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v4, v0, v3

    .line 233
    .restart local v4       #len:I
    new-array v7, v4, [B

    .line 234
    .local v7, user:[B
    const/4 v9, 0x0

    invoke-static {v0, v2, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    add-int/2addr v2, v4

    .line 236
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v9, p0, Lcom/client/Recive;->fromUser:Ljava/lang/String;

    .line 237
    iget-object v9, p0, Lcom/client/Recive;->fromUser:Ljava/lang/String;

    const-string v10, "mailto:"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 238
    iget-object v9, p0, Lcom/client/Recive;->fromUser:Ljava/lang/String;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/client/Recive;->fromUser:Ljava/lang/String;

    .line 240
    :cond_2
    const-string v9, "From User"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/client/Recive;->fromUser:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 243
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v7           #user:[B
    .restart local v3       #index:I
    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v9, v0, v3

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v10, v0, v2

    and-int/lit16 v10, v10, 0xff

    or-int v4, v9, v10

    .line 244
    .restart local v4       #len:I
    new-array v5, v4, [B

    .line 245
    .local v5, msg:[B
    const/4 v9, 0x0

    invoke-static {v0, v3, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    add-int v2, v3, v4

    .line 247
    .end local v3           #index:I
    .restart local v2       #index:I
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v9, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 248
    iget-object v9, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    invoke-static {v9}, Lcom/common/emoji;->transToAndroidemojiSB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 249
    const-string v9, "Recive"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Msg :"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 252
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v5           #msg:[B
    .restart local v3       #index:I
    :pswitch_5
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v9, v0, v3

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v10, v0, v2

    and-int/lit16 v10, v10, 0xff

    or-int v4, v9, v10

    .line 253
    .restart local v4       #len:I
    new-array v8, v4, [B

    .line 254
    .local v8, xmsg:[B
    const/4 v9, 0x0

    invoke-static {v0, v3, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    add-int v2, v3, v4

    .line 256
    .end local v3           #index:I
    .restart local v2       #index:I
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    iput-object v9, p0, Lcom/client/Recive;->xcontext:Ljava/lang/String;

    goto/16 :goto_1

    .line 259
    .end local v2           #index:I
    .end local v4           #len:I
    .end local v8           #xmsg:[B
    .restart local v3       #index:I
    :pswitch_6
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v4, v0, v3

    .line 260
    .restart local v4       #len:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v9, v0, v2

    shl-int/lit8 v9, v9, 0x18

    const/high16 v10, -0x100

    and-int/2addr v9, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v0, v3

    shl-int/lit8 v10, v10, 0x10

    const/high16 v11, 0xff

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    .line 261
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-byte v10, v0, v2

    shl-int/lit8 v10, v10, 0x8

    const v11, 0xff00

    and-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    aget-byte v10, v0, v3

    shl-int/lit8 v10, v10, 0x0

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    int-to-long v9, v9

    .line 260
    iput-wide v9, p0, Lcom/client/Recive;->recTime:J

    goto/16 :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getFileList()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, ""

    .line 144
    .local v0, body:Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/client/Recive;->xcontext:Ljava/lang/String;

    const-string v11, "gb2312"

    invoke-static {v10, v11}, Lorg/htmlparser/Parser;->createParser(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v9

    .line 145
    .local v9, parser:Lorg/htmlparser/Parser;
    const-string v10, ""

    iput-object v10, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 146
    invoke-virtual {v9}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v2

    .local v2, i:Lorg/htmlparser/util/NodeIterator;
    :cond_0
    invoke-interface {v2}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_2

    .line 175
    .end local v2           #i:Lorg/htmlparser/util/NodeIterator;
    .end local v9           #parser:Lorg/htmlparser/Parser;
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    invoke-static {v10}, Lcom/common/emoji;->transToAndroidemojiSB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 176
    return-object v4

    .line 147
    .restart local v2       #i:Lorg/htmlparser/util/NodeIterator;
    .restart local v9       #parser:Lorg/htmlparser/Parser;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v5

    .line 148
    .local v5, node:Lorg/htmlparser/Node;
    invoke-interface {v5}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v6

    .line 149
    .local v6, nodebody:Lorg/htmlparser/Node;
    if-eqz v6, :cond_1

    .line 151
    invoke-interface {v6}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v8

    .line 152
    .local v8, nodelist:Lorg/htmlparser/util/NodeList;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v8}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v10

    if-ge v3, v10, :cond_0

    .line 153
    invoke-virtual {v8, v3}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v7

    .line 154
    .local v7, nodefile:Lorg/htmlparser/Node;
    const-string v10, "Recive"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "XMsg getText:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/htmlparser/Node;->getText()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-interface {v7}, Lorg/htmlparser/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v3, :cond_3

    .line 159
    iget-object v10, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "\n"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 160
    :cond_3
    const-string v10, "FILE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 161
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/client/Recive;->isAttach:Z

    .line 162
    invoke-virtual {p0, v0}, Lcom/client/Recive;->parserAttach(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    :cond_4
    iget-object v10, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/htmlparser/Node;->toPlainTextString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/client/Recive;->context:Ljava/lang/String;
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 171
    .end local v2           #i:Lorg/htmlparser/util/NodeIterator;
    .end local v3           #j:I
    .end local v5           #node:Lorg/htmlparser/Node;
    .end local v6           #nodebody:Lorg/htmlparser/Node;
    .end local v7           #nodefile:Lorg/htmlparser/Node;
    .end local v8           #nodelist:Lorg/htmlparser/util/NodeList;
    .end local v9           #parser:Lorg/htmlparser/Parser;
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v1}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getFromUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/client/Recive;->fromUser:Ljava/lang/String;

    return-object v0
.end method

.method public getResMessageID()J
    .locals 2

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/client/Recive;->msgid:J

    return-wide v0
.end method

.method public getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "Body"
    .parameter "head"

    .prologue
    const/4 v4, -0x1

    .line 86
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 87
    .local v1, st:I
    const-string v2, "\""

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, ed:I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 92
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getisAttach()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/client/Recive;->isAttach:Z

    return v0
.end method

.method public getkey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/client/Recive;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getm_guid()[B
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/client/Recive;->m_guid:[B

    return-object v0
.end method

.method public getmime_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/client/Recive;->mime_type:Ljava/lang/String;

    return-object v0
.end method

.method public getmmcs_owner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/client/Recive;->mmcs_owner:Ljava/lang/String;

    return-object v0
.end method

.method public getmmcs_url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/client/Recive;->mmcs_url:Ljava/lang/String;

    return-object v0
.end method

.method public getmsgid()J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/client/Recive;->msgid:J

    return-wide v0
.end method

.method public getsize()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/client/Recive;->size:I

    return v0
.end method

.method public getuti_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/client/Recive;->uti_type:Ljava/lang/String;

    return-object v0
.end method

.method public getxContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/client/Recive;->xcontext:Ljava/lang/String;

    return-object v0
.end method

.method public haveAttach()Z
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/client/Recive;->xcontext:Ljava/lang/String;

    const-string v2, "<FILE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 188
    .local v0, f:Z
    :goto_0
    return v0

    .line 187
    .end local v0           #f:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/client/Recive;->xcontext:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/client/Recive;->xcontext:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 199
    :cond_1
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parserAttach(Ljava/lang/String;)V
    .locals 3
    .parameter "Body"

    .prologue
    .line 96
    const-string v1, "name"

    invoke-virtual {p0, p1, v1}, Lcom/client/Recive;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/client/Recive;->name:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "STARTFILE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/client/Recive;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":ENDFILE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 98
    const-string v1, "mime-type"

    invoke-virtual {p0, p1, v1}, Lcom/client/Recive;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/client/Recive;->mime_type:Ljava/lang/String;

    .line 99
    const-string v1, "uti-type"

    invoke-virtual {p0, p1, v1}, Lcom/client/Recive;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/client/Recive;->uti_type:Ljava/lang/String;

    .line 100
    const-string v1, "mmcs-owner"

    invoke-virtual {p0, p1, v1}, Lcom/client/Recive;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/client/Recive;->mmcs_owner:Ljava/lang/String;

    .line 101
    const-string v1, "mmcs-url"

    invoke-virtual {p0, p1, v1}, Lcom/client/Recive;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/client/Recive;->mmcs_url:Ljava/lang/String;

    .line 102
    const-string v1, "decryption-key"

    invoke-virtual {p0, p1, v1}, Lcom/client/Recive;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/client/Recive;->key:Ljava/lang/String;

    .line 103
    const-string v1, "file-size"

    invoke-virtual {p0, p1, v1}, Lcom/client/Recive;->getValu(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, ssize:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/client/Recive;->size:I

    .line 105
    return-void
.end method

.method public parserHtml(Ljava/lang/String;)V
    .locals 12
    .parameter "html"

    .prologue
    .line 107
    const-string v0, ""

    .line 109
    .local v0, body:Ljava/lang/String;
    :try_start_0
    const-string v9, "gb2312"

    invoke-static {p1, v9}, Lorg/htmlparser/Parser;->createParser(Ljava/lang/String;Ljava/lang/String;)Lorg/htmlparser/Parser;

    move-result-object v8

    .line 111
    .local v8, parser:Lorg/htmlparser/Parser;
    invoke-virtual {v8}, Lorg/htmlparser/Parser;->elements()Lorg/htmlparser/util/NodeIterator;

    move-result-object v2

    .local v2, i:Lorg/htmlparser/util/NodeIterator;
    :cond_0
    invoke-interface {v2}, Lorg/htmlparser/util/NodeIterator;->hasMoreNodes()Z

    move-result v9

    if-nez v9, :cond_2

    .line 139
    .end local v2           #i:Lorg/htmlparser/util/NodeIterator;
    .end local v8           #parser:Lorg/htmlparser/Parser;
    :cond_1
    :goto_0
    return-void

    .line 112
    .restart local v2       #i:Lorg/htmlparser/util/NodeIterator;
    .restart local v8       #parser:Lorg/htmlparser/Parser;
    :cond_2
    invoke-interface {v2}, Lorg/htmlparser/util/NodeIterator;->nextNode()Lorg/htmlparser/Node;

    move-result-object v4

    .line 113
    .local v4, node:Lorg/htmlparser/Node;
    invoke-interface {v4}, Lorg/htmlparser/Node;->getFirstChild()Lorg/htmlparser/Node;

    move-result-object v5

    .line 114
    .local v5, nodebody:Lorg/htmlparser/Node;
    if-eqz v5, :cond_1

    .line 116
    invoke-interface {v5}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v7

    .line 117
    .local v7, nodelist:Lorg/htmlparser/util/NodeList;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {v7}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 118
    invoke-virtual {v7, v3}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v6

    .line 119
    .local v6, nodefile:Lorg/htmlparser/Node;
    const-string v9, "Recive"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "XMsg getText:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/htmlparser/Node;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {v6}, Lorg/htmlparser/Node;->getText()Ljava/lang/String;

    move-result-object v0

    .line 123
    if-eqz v3, :cond_3

    .line 124
    iget-object v9, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    .line 125
    :cond_3
    const-string v9, "FILE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 126
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/client/Recive;->isAttach:Z

    .line 127
    invoke-virtual {p0, v0}, Lcom/client/Recive;->parserAttach(Ljava/lang/String;)V

    .line 117
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 130
    :cond_4
    iget-object v9, p0, Lcom/client/Recive;->context:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/htmlparser/Node;->toPlainTextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/client/Recive;->context:Ljava/lang/String;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 135
    .end local v2           #i:Lorg/htmlparser/util/NodeIterator;
    .end local v3           #j:I
    .end local v4           #node:Lorg/htmlparser/Node;
    .end local v5           #nodebody:Lorg/htmlparser/Node;
    .end local v6           #nodefile:Lorg/htmlparser/Node;
    .end local v7           #nodelist:Lorg/htmlparser/util/NodeList;
    .end local v8           #parser:Lorg/htmlparser/Parser;
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v1}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    goto :goto_0
.end method
