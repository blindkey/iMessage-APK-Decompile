.class public Lcom/DB/MessageDB;
.super Ljava/lang/Object;
.source "MessageDB.java"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/DB/MessageDB;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f070005

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    return-void
.end method


# virtual methods
.method public UpdateMsgContext(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .parameter "idd"
    .parameter "MsgId"
    .parameter "msg"

    .prologue
    .line 241
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update [_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set message = ? where msgid= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p4, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 243
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    return-void
.end method

.method public UpdateMsgRate(Ljava/lang/String;JI)V
    .locals 7
    .parameter "idd"
    .parameter "MsgId"
    .parameter "rate"

    .prologue
    .line 213
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update [_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set mRate = ? where msgid= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 215
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 203
    :cond_0
    return-void
.end method

.method public deleteMsg(Ljava/lang/String;)V
    .locals 5
    .parameter "idd"

    .prologue
    .line 101
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete from _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public deleteMsg(Ljava/lang/String;J)V
    .locals 7
    .parameter "idd"
    .parameter "msgid"

    .prologue
    .line 93
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete from _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where msgid = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 96
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 95
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public deleteUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "idd"
    .parameter "toAppleId"

    .prologue
    .line 207
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete from _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " where toAppleId = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 209
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public getMsg(Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .parameter "idd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    const/16 v22, 0x40

    const/16 v23, 0x44

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 157
    .local v11, idt:Ljava/lang/String;
    const/16 v22, 0x2e

    const/16 v23, 0x4f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, id:Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v17, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "CREATE table IF NOT EXISTS _"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 161
    const-string v24, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT, mRate TEXT)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 159
    invoke-virtual/range {v22 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "SELECT * from _"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 163
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_0

    .line 196
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 197
    return-object v17

    .line 164
    :cond_0
    const-string v22, "toAppleId"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, toAppleId:Ljava/lang/String;
    const-string v22, "isReach"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 166
    .local v14, isReach:I
    const-string v22, "isRead"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 167
    .local v16, isRead:I
    const-string v22, "date"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, date:Ljava/lang/String;
    const-string v22, "isCome"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 169
    .local v13, isCome:I
    const-string v22, "message"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, message:Ljava/lang/String;
    const-string v22, "xmessage"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 171
    .local v21, xmessage:Ljava/lang/String;
    const-string v22, "msgid"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 172
    .local v19, msgid:J
    const-string v22, "mRate"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 174
    .local v18, mRate:I
    const/4 v12, 0x0

    .line 175
    .local v12, isComMsg:Z
    const/4 v7, 0x0

    .line 176
    .local v7, isReadMsg:Z
    const/4 v15, 0x0

    .line 177
    .local v15, isReachMsg:Z
    const/4 v8, 0x1

    .line 178
    .local v8, viewType:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_1

    .line 179
    const/4 v12, 0x1

    .line 180
    const/4 v8, 0x0

    .line 182
    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 183
    const/4 v7, 0x1

    .line 185
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_3

    .line 186
    const/4 v15, 0x1

    .line 188
    :cond_3
    new-instance v3, Lactivity/ChatMsgEntity;

    invoke-direct/range {v3 .. v8}, Lactivity/ChatMsgEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 190
    .local v3, entity:Lactivity/ChatMsgEntity;
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lactivity/ChatMsgEntity;->setxMessage(Ljava/lang/String;)V

    .line 191
    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 192
    invoke-virtual {v3, v14}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 193
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 194
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getMsgById(Ljava/lang/String;J)Lactivity/ChatMsgEntity;
    .locals 26
    .parameter "idd"
    .parameter "mMsgid"

    .prologue
    .line 249
    const/16 v8, 0x40

    const/16 v9, 0x44

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    .line 250
    .local v12, idt:Ljava/lang/String;
    const/16 v8, 0x2e

    const/16 v9, 0x4f

    invoke-virtual {v12, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 251
    .local v11, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "msgid = ?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p2

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 253
    .local v10, c:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    const-string v8, "toAppleId"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, toAppleId:Ljava/lang/String;
    const-string v8, "isReach"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 256
    .local v15, isReach:I
    const-string v8, "isRead"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 257
    .local v17, isRead:I
    const-string v8, "date"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, date:Ljava/lang/String;
    const-string v8, "isCome"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 259
    .local v14, isCome:I
    const-string v8, "message"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, message:Ljava/lang/String;
    const-string v8, "xmessage"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 261
    .local v23, xmessage:Ljava/lang/String;
    const-string v8, "msgid"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 262
    .local v20, msgid:J
    const-string v8, "mRate"

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 264
    .local v18, mRate:I
    const/4 v13, 0x0

    .line 265
    .local v13, isComMsg:Z
    const/4 v6, 0x0

    .line 266
    .local v6, isReadMsg:Z
    const/16 v16, 0x0

    .line 267
    .local v16, isReachMsg:Z
    const/4 v7, 0x1

    .line 268
    .local v7, viewType:I
    const/4 v8, 0x1

    if-ne v14, v8, :cond_0

    .line 269
    const/4 v13, 0x1

    .line 270
    const/4 v7, 0x0

    .line 272
    :cond_0
    const/4 v8, 0x1

    move/from16 v0, v17

    if-ne v0, v8, :cond_1

    .line 273
    const/4 v6, 0x1

    .line 275
    :cond_1
    const/4 v8, 0x1

    if-ne v15, v8, :cond_2

    .line 276
    const/16 v16, 0x1

    .line 278
    :cond_2
    new-instance v2, Lactivity/ChatMsgEntity;

    invoke-direct/range {v2 .. v7}, Lactivity/ChatMsgEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 280
    .local v2, entity:Lactivity/ChatMsgEntity;
    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lactivity/ChatMsgEntity;->setxMessage(Ljava/lang/String;)V

    .line 281
    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 282
    invoke-virtual {v2, v15}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 283
    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 284
    new-instance v22, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, v22

    invoke-direct {v0, v8, v9}, Ljava/util/Random;-><init>(J)V

    .line 285
    .local v22, random:Ljava/util/Random;
    const/16 v8, 0x10

    new-array v0, v8, [B

    move-object/from16 v19, v0

    .line 287
    .local v19, m_guid:[B
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 288
    const/4 v8, 0x3

    const/16 v9, 0x18

    shr-long v24, v20, v9

    move-wide/from16 v0, v24

    long-to-int v9, v0

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    .line 289
    const/4 v8, 0x2

    const/16 v9, 0x10

    shr-long v24, v20, v9

    move-wide/from16 v0, v24

    long-to-int v9, v0

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    .line 290
    const/4 v8, 0x1

    const/16 v9, 0x8

    shr-long v24, v20, v9

    move-wide/from16 v0, v24

    long-to-int v9, v0

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    .line 291
    const/4 v8, 0x0

    const/4 v9, 0x0

    shr-long v24, v20, v9

    move-wide/from16 v0, v24

    long-to-int v9, v0

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    .line 297
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lactivity/ChatMsgEntity;->setguid([B)V

    .line 302
    .end local v2           #entity:Lactivity/ChatMsgEntity;
    .end local v3           #toAppleId:Ljava/lang/String;
    .end local v4           #date:Ljava/lang/String;
    .end local v5           #message:Ljava/lang/String;
    .end local v6           #isReadMsg:Z
    .end local v7           #viewType:I
    .end local v13           #isComMsg:Z
    .end local v14           #isCome:I
    .end local v15           #isReach:I
    .end local v16           #isReachMsg:Z
    .end local v17           #isRead:I
    .end local v18           #mRate:I
    .end local v19           #m_guid:[B
    .end local v20           #msgid:J
    .end local v22           #random:Ljava/util/Random;
    .end local v23           #xmessage:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getToMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 25
    .parameter "idd"
    .parameter "toAppleId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/16 v22, 0x40

    const/16 v23, 0x44

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 108
    .local v11, idt:Ljava/lang/String;
    const/16 v22, 0x2e

    const/16 v23, 0x4f

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, id:Ljava/lang/String;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v17, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "CREATE table IF NOT EXISTS _"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 112
    const-string v24, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT,mRate TEXT)"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 110
    invoke-virtual/range {v22 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "SELECT * from _"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 116
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v22

    if-nez v22, :cond_1

    .line 152
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 153
    return-object v17

    .line 117
    :cond_1
    const-string v22, "toAppleId"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, ToAppleId:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 120
    const-string v22, "isReach"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 121
    .local v14, isReach:I
    const-string v22, "isRead"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 122
    .local v16, isRead:I
    const-string v22, "date"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, date:Ljava/lang/String;
    const-string v22, "isCome"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 124
    .local v13, isCome:I
    const-string v22, "message"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, message:Ljava/lang/String;
    const-string v22, "xmessage"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 126
    .local v21, xmessage:Ljava/lang/String;
    const-string v22, "msgid"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 127
    .local v19, msgid:J
    const-string v22, "mRate"

    move-object/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 128
    .local v18, mRate:I
    const/4 v12, 0x0

    .line 129
    .local v12, isComMsg:Z
    const/4 v7, 0x0

    .line 130
    .local v7, isReadMsg:Z
    const/4 v15, 0x0

    .line 131
    .local v15, isReachMsg:Z
    const/4 v8, 0x1

    .line 132
    .local v8, viewType:I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_2

    .line 133
    const/4 v12, 0x1

    .line 134
    const/4 v8, 0x0

    .line 136
    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v16

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    .line 137
    const/4 v7, 0x1

    .line 139
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v14, v0, :cond_4

    .line 140
    const/4 v15, 0x1

    .line 142
    :cond_4
    new-instance v3, Lactivity/ChatMsgEntity;

    invoke-direct/range {v3 .. v8}, Lactivity/ChatMsgEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 144
    .local v3, entity:Lactivity/ChatMsgEntity;
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lactivity/ChatMsgEntity;->setxMessage(Ljava/lang/String;)V

    .line 145
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lactivity/ChatMsgEntity;->setisDate(Z)V

    .line 146
    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 147
    invoke-virtual {v3, v14}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 148
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 150
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V
    .locals 18
    .parameter "appleidd"
    .parameter "entity"

    .prologue
    .line 30
    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 31
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 33
    .local v15, purchase:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "from"

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v2, "to"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->mContext:Landroid/content/Context;

    const-string v3, "Recive"

    invoke-static {v2, v3, v15}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 49
    .end local v15           #purchase:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v2, 0x40

    const/16 v3, 0x44

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, appleidt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v11, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 54
    .local v10, appleid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE table IF NOT EXISTS _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    const-string v4, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT,mRate TEXT)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 57
    const/4 v13, 0x0

    .line 58
    .local v13, isCome:I
    const/4 v14, 0x0

    .line 59
    .local v14, isRead:I
    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 85
    :goto_1
    return-void

    .line 37
    .end local v10           #appleid:Ljava/lang/String;
    .end local v11           #appleidt:Ljava/lang/String;
    .end local v13           #isCome:I
    .end local v14           #isRead:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 38
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 41
    .restart local v15       #purchase:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "from"

    move-object/from16 v0, p1

    invoke-virtual {v15, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v2, "to"

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->mContext:Landroid/content/Context;

    const-string v3, "Send"

    invoke-static {v2, v3, v15}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0

    .line 61
    .end local v15           #purchase:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10       #appleid:Ljava/lang/String;
    .restart local v11       #appleidt:Ljava/lang/String;
    .restart local v13       #isCome:I
    .restart local v14       #isRead:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getType()I

    move-result v2

    if-nez v2, :cond_3

    .line 62
    const/4 v13, 0x1

    .line 64
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getisRead()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 65
    const/4 v14, 0x1

    .line 67
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "msgid = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 69
    .local v12, c:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 70
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update [_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set isReach = ? where msgid= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getSendType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update [_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set message = ? where msgid= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 72
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const-string v2, "msg exit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_2
    const-string v2, "save rate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 77
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "insert into _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 79
    const-string v4, " (toAppleId,msgid,isReach,isRead,date,isCome,message,xmessage,mRate) values(?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 80
    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getSendType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 81
    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getxMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    invoke-virtual/range {p2 .. p2}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public setError(Ljava/lang/String;)V
    .locals 7
    .parameter "idd"

    .prologue
    .line 228
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CREATE table IF NOT EXISTS _"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    const-string v4, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,toAppleId TEXT, msgid TEXT, isReach TEXT, isRead TEXT,date TEXT,isCome TEXT,message TEXT,xmessage TEXT, mRate TEXT)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update [_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set isReach = ? where isReach=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 234
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    return-void
.end method

.method public setIsReadMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "idd"
    .parameter "toAppleId"

    .prologue
    const/4 v7, 0x1

    .line 87
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update [_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set isRead = ? where toAppleId=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p2, v4, v7

    .line 89
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public setSendTypeMsg(Ljava/lang/String;JI)V
    .locals 7
    .parameter "idd"
    .parameter "MsgId"
    .parameter "type"

    .prologue
    .line 220
    const/16 v2, 0x40

    const/16 v3, 0x44

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, idt:Ljava/lang/String;
    const/16 v2, 0x2e

    const/16 v3, 0x4f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, id:Ljava/lang/String;
    iget-object v2, p0, Lcom/DB/MessageDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "update [_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " set isReach = ? where msgid= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 222
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    return-void
.end method
