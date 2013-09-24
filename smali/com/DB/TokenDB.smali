.class public Lcom/DB/TokenDB;
.super Ljava/lang/Object;
.source "TokenDB.java"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v0, 0x7f070007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .locals 5
    .parameter "idd"

    .prologue
    .line 98
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE table IF NOT EXISTS _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 102
    const-string v4, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, token TEXT, setoken TEXT, identity TEXT,date TEXT)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete from _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 26
    return-void
.end method

.method public getToken(Ljava/lang/String;Ljava/lang/String;)Lcom/common/TokenList;
    .locals 21
    .parameter "idd"
    .parameter "toid"

    .prologue
    .line 57
    const/16 v17, 0x40

    const/16 v18, 0x44

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, idt:Ljava/lang/String;
    const/16 v17, 0x2e

    const/16 v18, 0x4f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 60
    .local v9, id:Ljava/lang/String;
    const/16 v17, 0x40

    const/16 v18, 0x44

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, toappleidt:Ljava/lang/String;
    const/16 v17, 0x2e

    const/16 v18, 0x4f

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    .line 63
    .local v14, toAppleId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "CREATE table IF NOT EXISTS _"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 65
    const-string v19, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, token TEXT, setoken TEXT, identity TEXT,date TEXT)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 63
    invoke-virtual/range {v17 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "SELECT * from _"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 69
    .local v4, c:Landroid/database/Cursor;
    new-instance v12, Lcom/common/TokenList;

    invoke-direct {v12}, Lcom/common/TokenList;-><init>()V

    .line 70
    .local v12, list:Lcom/common/TokenList;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/common/TokenList;->resToken:Ljava/util/ArrayList;

    .line 71
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/common/TokenList;->resSeToken:Ljava/util/ArrayList;

    .line 72
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v12, Lcom/common/TokenList;->resIdentity:Ljava/util/ArrayList;

    .line 73
    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_2

    .line 90
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 91
    iget-object v0, v12, Lcom/common/TokenList;->resToken:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    iput v0, v12, Lcom/common/TokenList;->size:I

    .line 92
    iget v0, v12, Lcom/common/TokenList;->size:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 93
    const/4 v12, 0x0

    .line 94
    .end local v12           #list:Lcom/common/TokenList;
    :cond_1
    :goto_0
    return-object v12

    .line 74
    .restart local v12       #list:Lcom/common/TokenList;
    :cond_2
    const-string v17, "toAppleId"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, ToAppleId:Ljava/lang/String;
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 77
    const-string v17, "token"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 78
    .local v16, token:Ljava/lang/String;
    const-string v17, "setoken"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, setoken:Ljava/lang/String;
    const-string v17, "identity"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, identity:Ljava/lang/String;
    iget-object v0, v12, Lcom/common/TokenList;->resToken:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, v12, Lcom/common/TokenList;->resSeToken:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, v12, Lcom/common/TokenList;->resIdentity:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v17, "date"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 84
    .local v7, date:J
    invoke-static {}, Lcom/DB/MyDate;->getCurTime()J

    move-result-wide v5

    .line 85
    .local v5, curdate:J
    sub-long v17, v5, v7

    const-wide/32 v19, 0x2932e00

    cmp-long v17, v17, v19

    if-lez v17, :cond_0

    .line 86
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method public saveToken(Ljava/lang/String;Ljava/lang/String;Lcom/common/TokenList;)V
    .locals 15
    .parameter "appleidd"
    .parameter "toid"
    .parameter "list"

    .prologue
    .line 28
    const/16 v9, 0x40

    const/16 v10, 0x44

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, appleidt:Ljava/lang/String;
    const/16 v9, 0x2e

    const/16 v10, 0x4f

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, appleid:Ljava/lang/String;
    const/16 v9, 0x40

    const/16 v10, 0x44

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    .line 32
    .local v7, toappleidt:Ljava/lang/String;
    const/16 v9, 0x2e

    const/16 v10, 0x4f

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 36
    .local v6, toappleid:Ljava/lang/String;
    iget-object v9, p0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "CREATE table IF NOT EXISTS _"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 38
    const-string v11, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, token TEXT, setoken TEXT, identity TEXT,date TEXT)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 36
    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 40
    iget-object v9, p0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "delete from _"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " where toAppleId = ?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 41
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    .line 40
    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p3

    iget v9, v0, Lcom/common/TokenList;->size:I

    if-lt v3, v9, :cond_0

    .line 55
    return-void

    .line 45
    :cond_0
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/common/TokenList;->resToken:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v8

    .line 46
    .local v8, token:[B
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/common/TokenList;->resSeToken:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    .line 47
    .local v5, setoken:[B
    move-object/from16 v0, p3

    iget-object v9, v0, Lcom/common/TokenList;->resIdentity:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    .line 49
    .local v4, identity:[B
    iget-object v9, p0, Lcom/DB/TokenDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "insert into _"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 51
    const-string v11, " (toAppleId,token,setoken,identity,date) values(?,?,?,?,?)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 50
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 52
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v13, v11, v12

    const/4 v12, 0x2

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v13, v11, v12

    const/4 v12, 0x3

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v13, v11, v12

    const/4 v12, 0x4

    .line 53
    invoke-static {}, Lcom/DB/MyDate;->getCurTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    .line 49
    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
