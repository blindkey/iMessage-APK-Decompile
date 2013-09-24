.class public Lactivity/FriendContactPage;
.super Ljava/lang/Object;
.source "FriendContactPage.java"


# instance fields
.field private application:Lactivity/MyApplication;

.field private contactDB:Lcom/DB/ContactDB;

.field private context:Landroid/content/Context;

.field private mContactAdapter:Lactivity/ContactAdapter;

.field private mContactList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/ContactListEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p2, p0, Lactivity/FriendContactPage;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/FriendContactPage;->application:Lactivity/MyApplication;

    .line 25
    iget-object v0, p0, Lactivity/FriendContactPage;->application:Lactivity/MyApplication;

    invoke-virtual {v0}, Lactivity/MyApplication;->getContactDB()Lcom/DB/ContactDB;

    move-result-object v0

    iput-object v0, p0, Lactivity/FriendContactPage;->contactDB:Lcom/DB/ContactDB;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/FriendContactPage;->mContactList:Ljava/util/LinkedList;

    .line 28
    new-instance v0, Lactivity/ContactAdapter;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    iget-object v2, p0, Lactivity/FriendContactPage;->mContactList:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/ContactAdapter;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    .line 28
    iput-object v0, p0, Lactivity/FriendContactPage;->mContactAdapter:Lactivity/ContactAdapter;

    .line 30
    return-void
.end method


# virtual methods
.method public ReadContactDBToContactList(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 41
    iget-object v3, p0, Lactivity/FriendContactPage;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v3}, Lcom/DB/ContactDB;->getContactList()Ljava/util/List;

    move-result-object v2

    .line 43
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ContactListEntity;>;"
    iget-object v3, p0, Lactivity/FriendContactPage;->mContactList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 45
    new-instance v1, Lactivity/ContactListEntity;

    invoke-direct {v1}, Lactivity/ContactListEntity;-><init>()V

    .line 46
    .local v1, entityts:Lactivity/ContactListEntity;
    sget v3, Lactivity/ContactViewType;->CONTACT_VIEW_SEARCH_BAR:I

    invoke-virtual {v1, v3}, Lactivity/ContactListEntity;->setType(I)V

    .line 47
    invoke-virtual {v1, p1}, Lactivity/ContactListEntity;->setMsg(Ljava/lang/String;)V

    .line 48
    iget-object v3, p0, Lactivity/FriendContactPage;->mContactList:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 51
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 59
    :cond_1
    return-void

    .line 51
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ContactListEntity;

    .line 52
    .local v0, entity:Lactivity/ContactListEntity;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 53
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    :cond_3
    sget v4, Lactivity/ContactViewType;->CONTACT_VIEW_LIST:I

    invoke-virtual {v0, v4}, Lactivity/ContactListEntity;->setType(I)V

    .line 55
    iget-object v4, p0, Lactivity/FriendContactPage;->mContactList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getmContactAdapter()Lactivity/ContactAdapter;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lactivity/FriendContactPage;->mContactAdapter:Lactivity/ContactAdapter;

    return-object v0
.end method

.method public getmContactList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/ContactListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lactivity/FriendContactPage;->mContactList:Ljava/util/LinkedList;

    return-object v0
.end method
