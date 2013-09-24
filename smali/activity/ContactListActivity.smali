.class public Lactivity/ContactListActivity;
.super Lactivity/MyActivity;
.source "ContactListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final CONTACTSEARCH:I

.field private contactDB:Lcom/DB/ContactDB;

.field private handler:Landroid/os/Handler;

.field private mAdapter:Lactivity/ContactAdapter;

.field private mBtnBack:Landroid/widget/Button;

.field private mContactSearch:Ljava/lang/String;

.field private mDataArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lactivity/ContactListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    .line 30
    const v0, 0x1234568

    iput v0, p0, Lactivity/ContactListActivity;->CONTACTSEARCH:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ContactListActivity;->mDataArrays:Ljava/util/List;

    .line 37
    new-instance v0, Lactivity/ContactListActivity$1;

    invoke-direct {v0, p0}, Lactivity/ContactListActivity$1;-><init>(Lactivity/ContactListActivity;)V

    iput-object v0, p0, Lactivity/ContactListActivity;->handler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method private ReadContactDB()V
    .locals 7

    .prologue
    .line 100
    iget-object v4, p0, Lactivity/ContactListActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v4}, Lcom/DB/ContactDB;->getContactList()Ljava/util/List;

    move-result-object v2

    .line 101
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ContactListEntity;>;"
    iget-object v4, p0, Lactivity/ContactListActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 103
    new-instance v1, Lactivity/ContactListEntity;

    invoke-direct {v1}, Lactivity/ContactListEntity;-><init>()V

    .line 104
    .local v1, entityts:Lactivity/ContactListEntity;
    sget v4, Lactivity/ContactViewType;->CONTACT_VIEW_SEARCH_BAR:I

    invoke-virtual {v1, v4}, Lactivity/ContactListEntity;->setType(I)V

    .line 105
    iget-object v4, p0, Lactivity/ContactListActivity;->mContactSearch:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lactivity/ContactListEntity;->setMsg(Ljava/lang/String;)V

    .line 106
    iget-object v4, p0, Lactivity/ContactListActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 119
    :cond_1
    iget-object v4, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 121
    .local v3, selection:I
    iget-object v4, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lactivity/ContactListActivity;->mAdapter:Lactivity/ContactAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v4, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 124
    iget-object v4, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v6, -0x100

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v4, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 126
    iget-object v4, p0, Lactivity/ContactListActivity;->mAdapter:Lactivity/ContactAdapter;

    invoke-virtual {v4}, Lactivity/ContactAdapter;->notifyDataSetChanged()V

    .line 127
    return-void

    .line 109
    .end local v3           #selection:I
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ContactListEntity;

    .line 110
    .local v0, entity:Lactivity/ContactListEntity;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lactivity/ContactListActivity;->mContactSearch:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 111
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lactivity/ContactListActivity;->mContactSearch:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    :cond_3
    sget v5, Lactivity/ContactViewType;->CONTACT_VIEW_LIST:I

    invoke-virtual {v0, v5}, Lactivity/ContactListEntity;->setType(I)V

    .line 113
    iget-object v5, p0, Lactivity/ContactListActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lactivity/ContactListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lactivity/ContactListActivity;->mContactSearch:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lactivity/ContactListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lactivity/ContactListActivity;->ReadContactDB()V

    return-void
.end method


# virtual methods
.method public UpdateMsgUI(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 146
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public UpdateStatus(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 141
    :goto_0
    return-void

    .line 138
    :pswitch_0
    invoke-virtual {p0}, Lactivity/ContactListActivity;->finish()V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x7f0b0043
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 48
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0, v3}, Lactivity/ContactListActivity;->requestWindowFeature(I)Z

    .line 50
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lactivity/ContactListActivity;->setContentView(I)V

    .line 51
    new-instance v0, Lcom/DB/ContactDB;

    invoke-direct {v0, p0}, Lcom/DB/ContactDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/ContactListActivity;->contactDB:Lcom/DB/ContactDB;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lactivity/ContactListActivity;->mContactSearch:Ljava/lang/String;

    .line 54
    new-instance v0, Lactivity/ContactAdapter;

    iget-object v1, p0, Lactivity/ContactListActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lactivity/ContactListActivity;->mDataArrays:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lactivity/ContactAdapter;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/ContactListActivity;->mAdapter:Lactivity/ContactAdapter;

    .line 55
    const v0, 0x7f0b0043

    invoke-virtual {p0, v0}, Lactivity/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lactivity/ContactListActivity;->mBtnBack:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lactivity/ContactListActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0b0044

    invoke-virtual {p0, v0}, Lactivity/ContactListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    .line 58
    iget-object v0, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setClickable(Z)V

    .line 59
    iget-object v0, p0, Lactivity/ContactListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lactivity/ContactListActivity$2;

    invoke-direct {v1, p0}, Lactivity/ContactListActivity$2;-><init>(Lactivity/ContactListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 83
    invoke-direct {p0}, Lactivity/ContactListActivity;->ReadContactDB()V

    .line 84
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lactivity/MyActivity;->onDestroy()V

    .line 131
    iget-object v0, p0, Lactivity/ContactListActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v0}, Lcom/DB/ContactDB;->close()V

    .line 132
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 93
    iget-object v0, p0, Lactivity/ContactListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lactivity/ContactListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 89
    return-void
.end method
