.class public Lcom/DB/KeyDB;
.super Ljava/lang/Object;
.source "KeyDB.java"


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
    const v0, 0x7f070008

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 50
    return-void
.end method

.method public getCert(Ljava/lang/String;)V
    .locals 11
    .parameter "acc"

    .prologue
    const/4 v10, 0x0

    .line 53
    const/16 v7, 0x40

    const/16 v8, 0x44

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, idt:Ljava/lang/String;
    const/16 v7, 0x2e

    const/16 v8, 0x4f

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, id:Ljava/lang/String;
    iget-object v7, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)"

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    iget-object v7, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "SELECT * from KEYDB"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 61
    .local v1, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 72
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 73
    return-void

    .line 62
    :cond_1
    const-string v7, "AppleId"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, AppleId:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    const-string v7, "cert"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, cert:Ljava/lang/String;
    const-string v7, "csr"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, csr:Ljava/lang/String;
    const-string v7, "fastkey"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, fastkey:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    sput-object v7, LdataEncode/KeyLib;->certrsaKey:[B

    .line 69
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    sput-object v7, LdataEncode/KeyLib;->csrrsaKey:[B

    .line 70
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v10}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    sput-object v7, LdataEncode/KeyLib;->fastloginKey:[B

    goto :goto_0
.end method

.method public getFastKey(Ljava/lang/String;)[B
    .locals 10
    .parameter "acc"

    .prologue
    const/4 v7, 0x0

    .line 27
    const/16 v8, 0x40

    const/16 v9, 0x44

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, idt:Ljava/lang/String;
    const/16 v8, 0x2e

    const/16 v9, 0x4f

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, id:Ljava/lang/String;
    iget-object v8, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)"

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 33
    iget-object v8, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT * from KEYDB"

    invoke-virtual {v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 35
    .local v1, c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 46
    :goto_0
    return-object v7

    .line 36
    :cond_1
    const-string v8, "AppleId"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, AppleId:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 39
    const-string v7, "cert"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, cert:Ljava/lang/String;
    const-string v7, "csr"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, csr:Ljava/lang/String;
    const-string v7, "fastkey"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, fastkey:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    goto :goto_0
.end method

.method public saveCert(Ljava/lang/String;)V
    .locals 11
    .parameter "acc"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 77
    const/16 v5, 0x40

    const/16 v6, 0x44

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, appleidt:Ljava/lang/String;
    const/16 v5, 0x2e

    const/16 v6, 0x4f

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, appleid:Ljava/lang/String;
    iget-object v5, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "CREATE table IF NOT EXISTS KEYDB (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, cert TEXT, csr TEXT, fastkey TEXT,date TEXT)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    iget-object v5, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "delete from KEYDB where AppleId = ?"

    .line 84
    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    .line 83
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    sget-object v5, LdataEncode/KeyLib;->certrsaKey:[B

    invoke-static {v5, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    .line 86
    .local v2, cert:[B
    sget-object v5, LdataEncode/KeyLib;->csrrsaKey:[B

    invoke-static {v5, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v3

    .line 87
    .local v3, csr:[B
    sget-object v5, LdataEncode/KeyLib;->fastloginKey:[B

    invoke-static {v5, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v4

    .line 89
    .local v4, fastkey:[B
    iget-object v5, p0, Lcom/DB/KeyDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 90
    const-string v6, "insert into KEYDB (AppleId,cert,csr,fastkey,date) values(?,?,?,?,?)"

    .line 92
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    aput-object v8, v7, v9

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>([B)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v4}, Ljava/lang/String;-><init>([B)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    .line 93
    invoke-static {}, Lcom/DB/MyDate;->getCurTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    .line 89
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    return-void
.end method
