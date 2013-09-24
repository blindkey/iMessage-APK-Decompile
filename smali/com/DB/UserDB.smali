.class public Lcom/DB/UserDB;
.super Ljava/lang/Object;
.source "UserDB.java"


# instance fields
.field private helper:Lcom/DB/DBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/DB/DBHelper;

    invoke-direct {v0, p1}, Lcom/DB/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/DB/UserDB;->helper:Lcom/DB/DBHelper;

    .line 18
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/DB/UserDB;->helper:Lcom/DB/DBHelper;

    invoke-virtual {v1}, Lcom/DB/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from user"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 45
    return-void
.end method

.method public delete(Lcom/common/User;)V
    .locals 6
    .parameter "myUser"

    .prologue
    .line 37
    iget-object v1, p0, Lcom/DB/UserDB;->helper:Lcom/DB/DBHelper;

    invoke-virtual {v1}, Lcom/DB/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 38
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete * from user where id =?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 40
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 6
    .parameter "appleid"

    .prologue
    .line 49
    iget-object v1, p0, Lcom/DB/UserDB;->helper:Lcom/DB/DBHelper;

    invoke-virtual {v1}, Lcom/DB/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 50
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "delete from user where id=?"

    .line 51
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 50
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 53
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 54
    return-void
.end method

.method public updateUser(Lcom/common/User;)V
    .locals 8
    .parameter "myUser"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    iget-object v2, p0, Lcom/DB/UserDB;->helper:Lcom/DB/DBHelper;

    invoke-virtual {v2}, Lcom/DB/DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 22
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "select * from user where id=?"

    .line 23
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 24
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    const-string v2, "img"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/common/User;->setImg(I)V

    .line 34
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 35
    return-void

    .line 31
    :cond_0
    const-string v2, "insert into user (id,img) values(?,?)"

    .line 32
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1}, Lcom/common/User;->getImg()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 30
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
