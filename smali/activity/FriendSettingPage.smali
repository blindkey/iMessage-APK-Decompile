.class public Lactivity/FriendSettingPage;
.super Ljava/lang/Object;
.source "FriendSettingPage.java"


# instance fields
.field private application:Lactivity/MyApplication;

.field private context:Landroid/content/Context;

.field private mSettingAdapter:Lactivity/SettingAdapter;

.field private mSettingList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/SettingListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private util:Lcom/setting/SharePreferenceUtil;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lactivity/FriendSettingPage;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/FriendSettingPage;->application:Lactivity/MyApplication;

    .line 23
    new-instance v0, Lcom/setting/SharePreferenceUtil;

    const-string v1, "saveUser"

    invoke-direct {v0, p2, v1}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/FriendSettingPage;->util:Lcom/setting/SharePreferenceUtil;

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    .line 26
    new-instance v0, Lactivity/SettingAdapter;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-direct {v0, p1, v1, v2}, Lactivity/SettingAdapter;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    .line 26
    iput-object v0, p0, Lactivity/FriendSettingPage;->mSettingAdapter:Lactivity/SettingAdapter;

    .line 28
    return-void
.end method


# virtual methods
.method public getmSettingAdapter()Lactivity/SettingAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lactivity/FriendSettingPage;->mSettingAdapter:Lactivity/SettingAdapter;

    return-object v0
.end method

.method public getmSettingList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/SettingListEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public initList()V
    .locals 9

    .prologue
    .line 39
    iget-object v6, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->clear()V

    .line 41
    new-instance v0, Lactivity/SettingListEntity;

    invoke-direct {v0}, Lactivity/SettingListEntity;-><init>()V

    .line 42
    .local v0, entityt:Lactivity/SettingListEntity;
    sget v6, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL_BUTTOM:I

    invoke-virtual {v0, v6}, Lactivity/SettingListEntity;->setType(I)V

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lactivity/FriendSettingPage;->context:Landroid/content/Context;

    const v8, 0x7f070062

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lactivity/FriendSettingPage;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v7}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lactivity/SettingListEntity;->setText(Ljava/lang/String;)V

    .line 44
    iget-object v6, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lactivity/SettingListEntity;

    invoke-direct {v1}, Lactivity/SettingListEntity;-><init>()V

    .line 47
    .local v1, entityt1:Lactivity/SettingListEntity;
    sget v6, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL_BUTTOM:I

    invoke-virtual {v1, v6}, Lactivity/SettingListEntity;->setType(I)V

    .line 48
    iget-object v6, p0, Lactivity/FriendSettingPage;->context:Landroid/content/Context;

    const v7, 0x7f070063

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lactivity/SettingListEntity;->setText(Ljava/lang/String;)V

    .line 49
    iget-object v6, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lactivity/SettingListEntity;

    invoke-direct {v2}, Lactivity/SettingListEntity;-><init>()V

    .line 52
    .local v2, entityt2:Lactivity/SettingListEntity;
    sget v6, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL_BUTTOM:I

    invoke-virtual {v2, v6}, Lactivity/SettingListEntity;->setType(I)V

    .line 53
    iget-object v6, p0, Lactivity/FriendSettingPage;->context:Landroid/content/Context;

    const v7, 0x7f070064

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lactivity/SettingListEntity;->setText(Ljava/lang/String;)V

    .line 54
    iget-object v6, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v4, Lactivity/SettingListEntity;

    invoke-direct {v4}, Lactivity/SettingListEntity;-><init>()V

    .line 57
    .local v4, entityt4:Lactivity/SettingListEntity;
    sget v6, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL_BUTTOM:I

    invoke-virtual {v4, v6}, Lactivity/SettingListEntity;->setType(I)V

    .line 58
    iget-object v6, p0, Lactivity/FriendSettingPage;->context:Landroid/content/Context;

    const v7, 0x7f070068

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lactivity/SettingListEntity;->setText(Ljava/lang/String;)V

    .line 59
    iget-object v6, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v5, Lactivity/SettingListEntity;

    invoke-direct {v5}, Lactivity/SettingListEntity;-><init>()V

    .line 62
    .local v5, entityt5:Lactivity/SettingListEntity;
    sget v6, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL_BUTTOM:I

    invoke-virtual {v5, v6}, Lactivity/SettingListEntity;->setType(I)V

    .line 63
    iget-object v6, p0, Lactivity/FriendSettingPage;->context:Landroid/content/Context;

    const v7, 0x7f070066

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lactivity/SettingListEntity;->setText(Ljava/lang/String;)V

    .line 64
    iget-object v6, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v3, Lactivity/SettingListEntity;

    invoke-direct {v3}, Lactivity/SettingListEntity;-><init>()V

    .line 67
    .local v3, entityt3:Lactivity/SettingListEntity;
    sget v6, Lactivity/SettingViewType;->SETTING_VIEW_RED_BUTTOM:I

    invoke-virtual {v3, v6}, Lactivity/SettingListEntity;->setType(I)V

    .line 68
    iget-object v6, p0, Lactivity/FriendSettingPage;->context:Landroid/content/Context;

    const v7, 0x7f070067

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lactivity/SettingListEntity;->setText(Ljava/lang/String;)V

    .line 69
    iget-object v6, p0, Lactivity/FriendSettingPage;->mSettingList:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method
