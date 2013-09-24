.class Lactivity/GetMsgService$3;
.super Ljava/lang/Object;
.source "GetMsgService.java"

# interfaces
.implements Lcom/client/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/GetMsgService;->onStart(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/GetMsgService;


# direct methods
.method constructor <init>(Lactivity/GetMsgService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Message(Lcom/common/TranObject;)V
    .locals 37
    .parameter "msg"

    .prologue
    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->getType()I

    move-result v33

    .line 248
    .local v33, type:I
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v9, broadCast:Landroid/content/Intent;
    const-string v5, "InMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v33

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sparse-switch v33, :sswitch_data_0

    .line 465
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 252
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    move-object/from16 v0, p1

    #calls: Lactivity/GetMsgService;->sendLoginType(Lcom/common/TranObject;)V
    invoke-static {v5, v0}, Lactivity/GetMsgService;->access$7(Lactivity/GetMsgService;Lcom/common/TranObject;)V

    goto :goto_0

    .line 259
    :sswitch_2
    const-string v5, "Heart"

    const-string v7, "Respone"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :sswitch_3
    new-instance v16, LUserLogin/UserLoginHttpsRequest;

    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->GetMsg()Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, LUserLogin/UserLoginHttpsRequest;-><init>(Lcom/common/CoreBuffer;)V

    .line 263
    .local v16, login:LUserLogin/UserLoginHttpsRequest;
    invoke-virtual/range {v16 .. v16}, LUserLogin/UserLoginHttpsRequest;->startc()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    new-instance v28, Lcom/common/TranObject;

    invoke-direct/range {v28 .. v28}, Lcom/common/TranObject;-><init>()V

    .line 265
    .local v28, tranObject:Lcom/common/TranObject;
    invoke-virtual/range {v16 .. v16}, LUserLogin/UserLoginHttpsRequest;->res_body()Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v5}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/client/Client;->setLoginMsg(Lcom/common/TranObject;)V

    goto :goto_0

    .line 268
    .end local v28           #tranObject:Lcom/common/TranObject;
    :cond_1
    new-instance v27, Lcom/common/TranObject;

    invoke-direct/range {v27 .. v27}, Lcom/common/TranObject;-><init>()V

    .line 269
    .local v27, tmsg:Lcom/common/TranObject;
    const-string v5, "NetWork "

    const-string v7, "Down"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v5, 0x9

    new-array v10, v5, [B

    const/4 v5, 0x0

    const/4 v7, 0x3

    aput-byte v7, v10, v5

    const/4 v5, 0x4

    const/4 v7, 0x4

    aput-byte v7, v10, v5

    const/4 v5, 0x5

    const/4 v7, 0x3

    aput-byte v7, v10, v5

    const/4 v5, 0x6

    const/4 v7, 0x1

    aput-byte v7, v10, v5

    const/4 v5, 0x7

    const/4 v7, 0x1

    aput-byte v7, v10, v5

    const/16 v5, 0x8

    const/16 v7, 0x70

    aput-byte v7, v10, v5

    .line 271
    .local v10, buf:[B
    new-instance v11, Lcom/common/CoreBuffer;

    array-length v5, v10

    invoke-direct {v11, v10, v5}, Lcom/common/CoreBuffer;-><init>([BI)V

    .line 272
    .local v11, coreBuffer:Lcom/common/CoreBuffer;
    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 273
    invoke-virtual/range {v27 .. v27}, Lcom/common/TranObject;->CreateLoginRespone()V

    .line 275
    const-string v5, "com.way.message"

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    const-string v5, "message"

    move-object/from16 v0, v27

    invoke-virtual {v9, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 278
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    invoke-virtual {v5, v9}, Lactivity/GetMsgService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 282
    .end local v10           #buf:[B
    .end local v11           #coreBuffer:Lcom/common/CoreBuffer;
    .end local v16           #login:LUserLogin/UserLoginHttpsRequest;
    .end local v27           #tmsg:Lcom/common/TranObject;
    :sswitch_4
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->CreateLoginRespone()V

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->getByte()[B

    move-result-object v5

    const/16 v7, 0x8

    aget-byte v5, v5, v7

    if-nez v5, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v5}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/setting/SharePreferenceUtil;->setLogin(Z)V

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v5}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/setting/SharePreferenceUtil;->setLinkStatus(I)V

    .line 288
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->application:Lactivity/MyApplication;
    invoke-static {v5}, Lactivity/GetMsgService;->access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lactivity/MyApplication;->getHeart()Lcom/client/Heart;

    move-result-object v5

    invoke-virtual {v5}, Lcom/client/Heart;->start()V

    .line 289
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->application:Lactivity/MyApplication;
    invoke-static {v5}, Lactivity/GetMsgService;->access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v5

    invoke-virtual {v5}, Lcom/client/Attach;->start()Z

    .line 290
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->getLoginRespone()Lcom/client/LoginRespone;

    move-result-object v17

    .line 291
    .local v17, mLoginRespone:Lcom/client/LoginRespone;
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v5}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->keyDB:Lcom/DB/KeyDB;
    invoke-static {v7}, Lactivity/GetMsgService;->access$9(Lactivity/GetMsgService;)Lcom/DB/KeyDB;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v7}, Lcom/client/LoginRespone;->getCert(Ljava/lang/String;Lcom/DB/KeyDB;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v5}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v5

    invoke-virtual {v5}, Lcom/client/Client;->change()V

    .line 300
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v5}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/setting/SharePreferenceUtil;->setAutoLogin(Z)V

    .line 325
    .end local v17           #mLoginRespone:Lcom/client/LoginRespone;
    :goto_1
    const-string v5, "com.way.message"

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v5, "message"

    move-object/from16 v0, p1

    invoke-virtual {v9, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 328
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    invoke-virtual {v5, v9}, Lactivity/GetMsgService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 302
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v5}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/setting/SharePreferenceUtil;->setLinkStatus(I)V

    .line 303
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v5}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v5

    invoke-virtual {v5}, Lcom/client/Client;->overThread()V

    goto :goto_1

    .line 331
    :sswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->getByte()[B

    move-result-object v5

    const/4 v7, 0x6

    aget-byte v32, v5, v7

    .line 332
    .local v32, ttype:I
    const-string v5, "InMsg"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "stype"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    packed-switch v32, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 411
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->getSendRespone()Lcom/client/SendRespone;

    move-result-object v19

    .line 413
    .local v19, mSendResspone:Lcom/client/SendRespone;
    invoke-virtual/range {v19 .. v19}, Lcom/client/SendRespone;->RessponeMsgId()J

    move-result-wide v14

    .line 415
    .local v14, idt:J
    new-instance v31, Lcom/common/TranObject;

    invoke-direct/range {v31 .. v31}, Lcom/common/TranObject;-><init>()V

    .line 416
    .local v31, tranObjectt:Lcom/common/TranObject;
    invoke-static {v14, v15}, Lcom/client/NewsRes;->body(J)Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v5}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    .line 418
    const/16 v26, 0x8

    .line 419
    .local v26, sendType:I
    invoke-virtual/range {v19 .. v19}, Lcom/client/SendRespone;->ResType()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    .line 430
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;
    invoke-static {v5}, Lactivity/GetMsgService;->access$10(Lactivity/GetMsgService;)Lcom/DB/MessageDB;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->curUser:Lcom/common/User;
    invoke-static {v7}, Lactivity/GetMsgService;->access$11(Lactivity/GetMsgService;)Lcom/common/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/client/SendRespone;->ResGuid()J

    move-result-wide v35

    const/16 v8, 0x64

    move-wide/from16 v0, v35

    invoke-virtual {v5, v7, v0, v1, v8}, Lcom/DB/MessageDB;->UpdateMsgRate(Ljava/lang/String;JI)V

    .line 431
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;
    invoke-static {v5}, Lactivity/GetMsgService;->access$10(Lactivity/GetMsgService;)Lcom/DB/MessageDB;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->curUser:Lcom/common/User;
    invoke-static {v7}, Lactivity/GetMsgService;->access$11(Lactivity/GetMsgService;)Lcom/common/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/client/SendRespone;->ResGuid()J

    move-result-wide v35

    move-wide/from16 v0, v35

    move/from16 v2, v26

    invoke-virtual {v5, v7, v0, v1, v2}, Lcom/DB/MessageDB;->setSendTypeMsg(Ljava/lang/String;JI)V

    .line 434
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->push()V

    .line 435
    const-string v5, "com.way.message"

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v5, "message"

    move-object/from16 v0, p1

    invoke-virtual {v9, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 438
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    invoke-virtual {v5, v9}, Lactivity/GetMsgService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 335
    .end local v14           #idt:J
    .end local v19           #mSendResspone:Lcom/client/SendRespone;
    .end local v26           #sendType:I
    .end local v31           #tranObjectt:Lcom/common/TranObject;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->CreateReciver()V

    .line 336
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->getRecive()Lcom/client/Recive;

    move-result-object v18

    .line 337
    .local v18, mRecive:Lcom/client/Recive;
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getFromUser()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, from:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getContext()Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, content:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 345
    const/16 v21, 0x0

    .line 346
    .local v21, rate:I
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->haveAttach()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 348
    const/16 v21, 0x0

    .line 349
    const-string v6, "...."

    .line 351
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->application:Lactivity/MyApplication;
    invoke-static {v5}, Lactivity/GetMsgService;->access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/client/Attach;->pushRecAttach(Lcom/common/TranObject;)V

    .line 353
    new-instance v3, Lactivity/ChatMsgEntity;

    .line 354
    invoke-static {}, Lcom/DB/MyDate;->getDateEN()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 353
    invoke-direct/range {v3 .. v8}, Lactivity/ChatMsgEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 356
    .local v3, entity:Lactivity/ChatMsgEntity;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 357
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getmsgid()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 358
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getm_guid()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lactivity/ChatMsgEntity;->setguid([B)V

    .line 359
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getxContext()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lactivity/ChatMsgEntity;->setxMessage(Ljava/lang/String;)V

    .line 360
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;
    invoke-static {v5}, Lactivity/GetMsgService;->access$10(Lactivity/GetMsgService;)Lcom/DB/MessageDB;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->curUser:Lcom/common/User;
    invoke-static {v7}, Lactivity/GetMsgService;->access$11(Lactivity/GetMsgService;)Lcom/common/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    .line 376
    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getResMessageID()J

    move-result-wide v12

    .line 378
    .local v12, id:J
    new-instance v28, Lcom/common/TranObject;

    invoke-direct/range {v28 .. v28}, Lcom/common/TranObject;-><init>()V

    .line 379
    .restart local v28       #tranObject:Lcom/common/TranObject;
    invoke-static {v12, v13}, Lcom/client/NewsRes;->m_body(J)Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v5}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    .line 382
    new-instance v34, Lcom/common/User;

    invoke-direct/range {v34 .. v34}, Lcom/common/User;-><init>()V

    .line 383
    .local v34, user:Lcom/common/User;
    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->userDB:Lcom/DB/UserDB;
    invoke-static {v5}, Lactivity/GetMsgService;->access$12(Lactivity/GetMsgService;)Lcom/DB/UserDB;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v5}, Lactivity/GetMsgService;->access$5(Lactivity/GetMsgService;)Lcom/setting/SharePreferenceUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/setting/SharePreferenceUtil;->getIsBack()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 396
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lactivity/GetMsgService;->access$13(Lactivity/GetMsgService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v20

    .line 397
    .local v20, message:Landroid/os/Message;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput v5, v0, Landroid/os/Message;->what:I

    .line 398
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "msg"

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lactivity/GetMsgService;->access$13(Lactivity/GetMsgService;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 365
    .end local v3           #entity:Lactivity/ChatMsgEntity;
    .end local v12           #id:J
    .end local v20           #message:Landroid/os/Message;
    .end local v28           #tranObject:Lcom/common/TranObject;
    .end local v34           #user:Lcom/common/User;
    :cond_3
    new-instance v3, Lactivity/ChatMsgEntity;

    .line 366
    invoke-static {}, Lcom/DB/MyDate;->getDateEN()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 365
    invoke-direct/range {v3 .. v8}, Lactivity/ChatMsgEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 368
    .restart local v3       #entity:Lactivity/ChatMsgEntity;
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 369
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getmsgid()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 370
    invoke-virtual/range {v18 .. v18}, Lcom/client/Recive;->getm_guid()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lactivity/ChatMsgEntity;->setguid([B)V

    .line 372
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->messageDB:Lcom/DB/MessageDB;
    invoke-static {v5}, Lactivity/GetMsgService;->access$10(Lactivity/GetMsgService;)Lcom/DB/MessageDB;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->curUser:Lcom/common/User;
    invoke-static {v7}, Lactivity/GetMsgService;->access$11(Lactivity/GetMsgService;)Lcom/common/User;

    move-result-object v7

    invoke-virtual {v7}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    .line 374
    const/16 v21, 0x64

    goto/16 :goto_3

    .line 401
    .restart local v12       #id:J
    .restart local v28       #tranObject:Lcom/common/TranObject;
    .restart local v34       #user:Lcom/common/User;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->push()V

    .line 402
    const-string v5, "com.way.message"

    invoke-virtual {v9, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v5, "message"

    move-object/from16 v0, p1

    invoke-virtual {v9, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    invoke-virtual {v5, v9}, Lactivity/GetMsgService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 421
    .end local v3           #entity:Lactivity/ChatMsgEntity;
    .end local v4           #from:Ljava/lang/String;
    .end local v6           #content:Ljava/lang/String;
    .end local v12           #id:J
    .end local v18           #mRecive:Lcom/client/Recive;
    .end local v21           #rate:I
    .end local v28           #tranObject:Lcom/common/TranObject;
    .end local v34           #user:Lcom/common/User;
    .restart local v14       #idt:J
    .restart local v19       #mSendResspone:Lcom/client/SendRespone;
    .restart local v26       #sendType:I
    .restart local v31       #tranObjectt:Lcom/common/TranObject;
    :pswitch_3
    const/16 v26, 0x6

    .line 422
    goto/16 :goto_2

    .line 424
    :pswitch_4
    const/16 v26, 0x5

    .line 425
    goto/16 :goto_2

    .line 428
    :pswitch_5
    const/16 v26, 0x7

    goto/16 :goto_2

    .line 446
    .end local v14           #idt:J
    .end local v19           #mSendResspone:Lcom/client/SendRespone;
    .end local v26           #sendType:I
    .end local v31           #tranObjectt:Lcom/common/TranObject;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->application:Lactivity/MyApplication;
    invoke-static {v5}, Lactivity/GetMsgService;->access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v5

    invoke-virtual {v5}, Lcom/client/Attach;->getSendMRU()Lattach/SendAttachMRU;

    move-result-object v25

    .line 447
    .local v25, sendMRU:Lattach/SendAttachMRU;
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->GetMsg()Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lattach/SendAttachMRU;->Respone(Lcom/common/CoreBuffer;)V

    .line 448
    invoke-virtual/range {v25 .. v25}, Lattach/SendAttachMRU;->getResMessageID()J

    move-result-wide v23

    .line 449
    .local v23, res_messageID:J
    new-instance v30, Lcom/common/TranObject;

    invoke-direct/range {v30 .. v30}, Lcom/common/TranObject;-><init>()V

    .line 450
    .local v30, tranObject2:Lcom/common/TranObject;
    move-wide/from16 v0, v23

    long-to-int v5, v0

    int-to-long v7, v5

    invoke-static {v7, v8}, Lcom/client/NewsRes;->body(J)Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v5}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    goto/16 :goto_0

    .line 454
    .end local v23           #res_messageID:J
    .end local v25           #sendMRU:Lattach/SendAttachMRU;
    .end local v30           #tranObject2:Lcom/common/TranObject;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->application:Lactivity/MyApplication;
    invoke-static {v5}, Lactivity/GetMsgService;->access$1(Lactivity/GetMsgService;)Lactivity/MyApplication;

    move-result-object v5

    invoke-virtual {v5}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v5

    invoke-virtual {v5}, Lcom/client/Attach;->getReciveMRU()Lattach/ReciveAttachMRU;

    move-result-object v22

    .line 455
    .local v22, reciveMRU:Lattach/ReciveAttachMRU;
    invoke-virtual/range {p1 .. p1}, Lcom/common/TranObject;->GetMsg()Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lattach/ReciveAttachMRU;->Respone(Lcom/common/CoreBuffer;)V

    .line 456
    invoke-virtual/range {v22 .. v22}, Lattach/ReciveAttachMRU;->getResMessageID()J

    move-result-wide v23

    .line 457
    .restart local v23       #res_messageID:J
    new-instance v29, Lcom/common/TranObject;

    invoke-direct/range {v29 .. v29}, Lcom/common/TranObject;-><init>()V

    .line 458
    .local v29, tranObject1:Lcom/common/TranObject;
    move-wide/from16 v0, v23

    long-to-int v5, v0

    int-to-long v7, v5

    invoke-static {v7, v8}, Lcom/client/NewsRes;->body(J)Lcom/common/CoreBuffer;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Lcom/common/TranObject;->SetMsg(Lcom/common/CoreBuffer;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v5, v0, Lactivity/GetMsgService$3;->this$0:Lactivity/GetMsgService;

    #getter for: Lactivity/GetMsgService;->client:Lcom/client/Client;
    invoke-static {v5}, Lactivity/GetMsgService;->access$8(Lactivity/GetMsgService;)Lcom/client/Client;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    goto/16 :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x9 -> :sswitch_2
        0x3c -> :sswitch_0
    .end sparse-switch

    .line 333
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch

    .line 419
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
