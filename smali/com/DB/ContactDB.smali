.class public Lcom/DB/ContactDB;
.super Ljava/lang/Object;
.source "ContactDB.java"


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x7f070006

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 21
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 22
    return-void
.end method


# virtual methods
.method public Update(Lactivity/ContactListEntity;)V
    .locals 9
    .parameter "entity"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 64
    iget-object v1, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * from contactlist where AppleId = ?"

    .line 68
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update [contactlist]  set name = ? where AppleId= ?"

    .line 71
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 70
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object v1, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "update [contactlist]  set img = ? where AppleId= ?"

    .line 73
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getImg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 78
    const-string v2, "insert into contactlist (AppleId,name,img) values(?,?,?)"

    .line 80
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p1}, Lactivity/ContactListEntity;->getImg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    .line 77
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    :cond_0
    return-void
.end method

.method public deleteContact(Ljava/lang/String;)V
    .locals 4
    .parameter "AppleId"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "delete from contactlist where AppleId = ?"

    .line 37
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

.method public getContactList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lactivity/ContactListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ContactListEntity;>;"
    iget-object v6, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)"

    invoke-virtual {v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    iget-object v6, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT * from contactlist"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 44
    .local v1, c:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 52
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    return-object v4

    .line 45
    :cond_0
    const-string v6, "AppleId"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, AppleId:Ljava/lang/String;
    const-string v6, "name"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, name:Ljava/lang/String;
    const-string v6, "img"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 49
    .local v3, img:I
    new-instance v2, Lactivity/ContactListEntity;

    invoke-direct {v2, v0, v5, v3}, Lactivity/ContactListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    .local v2, entity:Lactivity/ContactListEntity;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;
    .locals 11
    .parameter "AppleIdt"

    .prologue
    .line 85
    iget-object v5, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "SELECT * from contactlist where AppleId = ?"

    .line 88
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 87
    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 89
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    const-string v5, "AppleId"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, AppleId:Ljava/lang/String;
    const-string v5, "name"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, name:Ljava/lang/String;
    const-string v5, "img"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 94
    .local v3, img:I
    new-instance v2, Lactivity/ContactListEntity;

    invoke-direct {v2, v0, v4, v3}, Lactivity/ContactListEntity;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    .end local v0           #AppleId:Ljava/lang/String;
    .end local v3           #img:I
    .end local v4           #name:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveContact(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .parameter "appleid"
    .parameter "name"
    .parameter "img"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE table IF NOT EXISTS contactlist (_id INTEGER PRIMARY KEY AUTOINCREMENT,AppleId TEXT, name TEXT ,img TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/DB/ContactDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    const-string v1, "insert into contactlist (AppleId,name,img) values(?,?,?)"

    .line 30
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    return-void
.end method
