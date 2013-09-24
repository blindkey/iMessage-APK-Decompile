.class public Lactivity/ChatActivity;
.super Lactivity/MyActivity;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/ChatActivity$GuidePageChangeListener;
    }
.end annotation


# static fields
.field private static final RERECMSG:I = 0x321323

.field private static final RESENDMSG:I = 0x12131


# instance fields
.field private CurUser:Lcom/common/User;

.field private DeleteBar:Landroid/widget/RelativeLayout;

.field private final GETFILECODE:I

.field private SendBar:Landroid/widget/RelativeLayout;

.field private final TAKEPHOTO:I

.field private final TAKEVIDEO:I

.field private choosegrids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private choosegridsview:Landroid/widget/GridView;

.field private chooseview:Landroid/support/v4/view/ViewPager;

.field private datePre:J

.field private deleteNum:I

.field private deleteView:Landroid/widget/ImageView;

.field private face_pagenum:I

.field private grids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private mAdapter:Lactivity/ChatMsgViewAdapter;

.field private mBtnBack:Landroid/widget/Button;

.field private mBtnClear:Landroid/widget/Button;

.field private mBtnDelete:Landroid/widget/Button;

.field private mBtnEdit:Landroid/widget/Button;

.field private mBtnPhoto:Landroid/widget/Button;

.field private mBtnReSend:Landroid/widget/Button;

.field private mBtnSend:Landroid/widget/Button;

.field private mBtnSuccess:Landroid/widget/Button;

.field private mDataArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mDataDeleteArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lactivity/ChatMsgDeleteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAdapter:Lactivity/ChatMsgDeleteViewAdapter;

.field private mEditTextContent:Landroid/widget/EditText;

.field private mFriendName:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressbarlayout:Landroid/widget/LinearLayout;

.field private page_select:Landroid/widget/LinearLayout;

.field private perpagenum:I

.field private start_page_id:I

.field private strImgPath:Ljava/lang/String;

.field private strVideoPath:Ljava/lang/String;

.field private user:Lcom/common/User;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    .line 96
    const v0, 0x11010

    iput v0, p0, Lactivity/ChatActivity;->GETFILECODE:I

    .line 97
    const v0, 0x11011

    iput v0, p0, Lactivity/ChatActivity;->TAKEPHOTO:I

    .line 98
    const v0, 0x11012

    iput v0, p0, Lactivity/ChatActivity;->TAKEVIDEO:I

    .line 102
    const v0, 0x12900

    iput v0, p0, Lactivity/ChatActivity;->start_page_id:I

    .line 103
    iput v2, p0, Lactivity/ChatActivity;->face_pagenum:I

    .line 104
    const/16 v0, 0x17

    iput v0, p0, Lactivity/ChatActivity;->perpagenum:I

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    .line 128
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lactivity/ChatActivity;->datePre:J

    .line 129
    iput v2, p0, Lactivity/ChatActivity;->deleteNum:I

    .line 144
    new-instance v0, Lactivity/ChatActivity$1;

    invoke-direct {v0, p0}, Lactivity/ChatActivity$1;-><init>(Lactivity/ChatActivity;)V

    iput-object v0, p0, Lactivity/ChatActivity;->handler:Landroid/os/Handler;

    .line 95
    return-void
.end method

.method private ReadMsgToChat()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 920
    iget-object v7, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    add-int/lit8 v4, v7, 0x1

    .line 922
    .local v4, selection:I
    iget-object v7, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 923
    new-instance v1, Lactivity/ChatMsgEntity;

    invoke-direct {v1}, Lactivity/ChatMsgEntity;-><init>()V

    .line 924
    .local v1, entitys:Lactivity/ChatMsgEntity;
    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lactivity/ChatMsgEntity;->setType(I)V

    .line 925
    iget-object v7, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v7}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lactivity/ChatMsgEntity;->setAppleId(Ljava/lang/String;)V

    .line 926
    iget-object v7, p0, Lactivity/ChatActivity;->contactDB:Lcom/DB/ContactDB;

    iget-object v8, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v8}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v7

    if-nez v7, :cond_2

    .line 927
    iget-object v7, p0, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f07004f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lactivity/ChatMsgEntity;->setMessage(Ljava/lang/String;)V

    .line 931
    :goto_0
    iget-object v7, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v7, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v8, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v8}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v8

    .line 934
    iget-object v9, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v9}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v9

    .line 933
    invoke-virtual {v7, v8, v9}, Lcom/DB/MessageDB;->getToMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 935
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    const/4 v3, 0x1

    .local v3, rate:I
    const/4 v6, 0x1

    .line 936
    .local v6, totp:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 937
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 964
    :goto_2
    int-to-float v7, v3

    const/high16 v8, 0x3f80

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    const/high16 v8, 0x42c8

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v7}, Lactivity/ChatActivity;->setProcess(I)V

    .line 968
    iget-object v7, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lactivity/ChatActivity;->mAdapter:Lactivity/ChatMsgViewAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 969
    iget-object v7, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_1

    add-int/lit8 v4, v4, -0x1

    .line 970
    :cond_1
    iget-object v7, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 971
    iget-object v7, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 972
    iget-object v7, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 974
    iget-object v7, p0, Lactivity/ChatActivity;->mAdapter:Lactivity/ChatMsgViewAdapter;

    invoke-virtual {v7}, Lactivity/ChatMsgViewAdapter;->notifyDataSetChanged()V

    .line 976
    iget-object v7, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setClickable(Z)V

    .line 978
    iget-object v7, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 979
    iget-object v7, p0, Lactivity/ChatActivity;->mBtnEdit:Landroid/widget/Button;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 982
    :goto_3
    return-void

    .line 929
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    .end local v3           #rate:I
    .end local v6           #totp:I
    :cond_2
    iget-object v7, p0, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    const v8, 0x7f070050

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lactivity/ChatMsgEntity;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 937
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    .restart local v3       #rate:I
    .restart local v6       #totp:I
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgEntity;

    .line 938
    .local v0, entity:Lactivity/ChatMsgEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v8

    cmp-long v8, v8, v12

    if-eqz v8, :cond_0

    .line 939
    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->handleTime(Lactivity/ChatMsgEntity;)V

    .line 940
    iget-object v8, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->handleReach(Lactivity/ChatMsgEntity;)V

    .line 943
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getType()I

    move-result v8

    if-ne v8, v11, :cond_0

    .line 944
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v8

    const/16 v9, 0x64

    if-eq v8, v9, :cond_0

    .line 945
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getSendType()I

    move-result v8

    const/4 v9, 0x7

    if-eq v8, v9, :cond_0

    .line 946
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v8

    add-int/2addr v3, v8

    .line 947
    add-int/lit8 v6, v6, 0x64

    goto/16 :goto_1

    .line 953
    .end local v0           #entity:Lactivity/ChatMsgEntity;
    :cond_4
    new-instance v5, Lactivity/ChatMsgEntity;

    invoke-direct {v5}, Lactivity/ChatMsgEntity;-><init>()V

    .line 954
    .local v5, spentity:Lactivity/ChatMsgEntity;
    invoke-virtual {v5, v10}, Lactivity/ChatMsgEntity;->setType(I)V

    .line 955
    const-string v7, ""

    invoke-virtual {v5, v7}, Lactivity/ChatMsgEntity;->setDate(Ljava/lang/String;)V

    .line 956
    const-string v7, ""

    invoke-virtual {v5, v7}, Lactivity/ChatMsgEntity;->setMessage(Ljava/lang/String;)V

    .line 957
    invoke-virtual {v5, v12, v13}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 958
    iget-object v7, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v7}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lactivity/ChatMsgEntity;->setAppleId(Ljava/lang/String;)V

    .line 959
    invoke-virtual {v5, v11}, Lactivity/ChatMsgEntity;->setisRead(Z)V

    .line 960
    invoke-virtual {v5, v10}, Lactivity/ChatMsgEntity;->setisDate(Z)V

    .line 961
    iget-object v7, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v8, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v8}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    goto/16 :goto_2

    .line 981
    .end local v5           #spentity:Lactivity/ChatMsgEntity;
    :cond_5
    iget-object v7, p0, Lactivity/ChatActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3
.end method

.method private ReadMsgToDeleteChat()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 987
    iget-object v1, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v2, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    .line 988
    iget-object v3, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    .line 987
    invoke-virtual {v1, v2, v3}, Lcom/DB/MessageDB;->getToMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 989
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    iget-object v1, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 990
    const/4 v8, 0x1

    .local v8, rate:I
    const/4 v10, 0x1

    .line 991
    .local v10, totp:I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 992
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1011
    :cond_1
    int-to-float v1, v8

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    int-to-float v2, v10

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->setProcess(I)V

    .line 1013
    iget-object v1, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v9

    .line 1015
    .local v9, selection:I
    iget-object v1, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/ChatActivity;->mDeleteAdapter:Lactivity/ChatMsgDeleteViewAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1016
    iget-object v1, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setSelection(I)V

    .line 1018
    iget-object v1, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v3, -0x100

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1019
    iget-object v1, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v12}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 1020
    iget-object v1, p0, Lactivity/ChatActivity;->mDeleteAdapter:Lactivity/ChatMsgDeleteViewAdapter;

    invoke-virtual {v1}, Lactivity/ChatMsgDeleteViewAdapter;->notifyDataSetChanged()V

    .line 1022
    iget-object v1, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 1023
    invoke-virtual {p0}, Lactivity/ChatActivity;->editsuccess()V

    .line 1024
    :cond_2
    return-void

    .line 992
    .end local v9           #selection:I
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lactivity/ChatMsgEntity;

    .line 993
    .local v6, entity:Lactivity/ChatMsgEntity;
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 994
    new-instance v0, Lactivity/ChatMsgDeleteEntity;

    .line 995
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 996
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getisRead()Z

    move-result v4

    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getType()I

    move-result v5

    .line 994
    invoke-direct/range {v0 .. v5}, Lactivity/ChatMsgDeleteEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 997
    .local v0, entityt:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lactivity/ChatMsgDeleteEntity;->setMsgid(J)V

    .line 998
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getSendType()I

    move-result v1

    invoke-virtual {v0, v1}, Lactivity/ChatMsgDeleteEntity;->setSendType(I)V

    .line 999
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getType()I

    move-result v1

    if-ne v1, v12, :cond_4

    .line 1000
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    .line 1001
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getSendType()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    .line 1002
    invoke-virtual {v6}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v1

    add-int/2addr v8, v1

    .line 1003
    add-int/lit8 v10, v10, 0x64

    .line 1005
    :cond_4
    invoke-direct {p0, v0}, Lactivity/ChatActivity;->handleDelTime(Lactivity/ChatMsgDeleteEntity;)V

    .line 1006
    iget-object v1, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1007
    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->handleDelReach(Lactivity/ChatMsgDeleteEntity;)V

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lactivity/ChatActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lactivity/ChatActivity;->face_pagenum:I

    return v0
.end method

.method static synthetic access$1(Lactivity/ChatActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 102
    iget v0, p0, Lactivity/ChatActivity;->start_page_id:I

    return v0
.end method

.method static synthetic access$10(Lactivity/ChatActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnSuccess:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$11(Lactivity/ChatActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lactivity/ChatActivity;->deleteNum:I

    return v0
.end method

.method static synthetic access$12(Lactivity/ChatActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput p1, p0, Lactivity/ChatActivity;->deleteNum:I

    return-void
.end method

.method static synthetic access$13(Lactivity/ChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1145
    invoke-direct {p0}, Lactivity/ChatActivity;->changeButtonState()V

    return-void
.end method

.method static synthetic access$14(Lactivity/ChatActivity;)Lactivity/ChatMsgDeleteViewAdapter;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lactivity/ChatActivity;->mDeleteAdapter:Lactivity/ChatMsgDeleteViewAdapter;

    return-object v0
.end method

.method static synthetic access$2(Lactivity/ChatActivity;)Lcom/common/User;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    return-object v0
.end method

.method static synthetic access$3(Lactivity/ChatActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$4(Lactivity/ChatActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$5(Lactivity/ChatActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lactivity/ChatActivity;->page_select:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$6(Lactivity/ChatActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lactivity/ChatActivity;->choosegrids:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lactivity/ChatActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 104
    iget v0, p0, Lactivity/ChatActivity;->perpagenum:I

    return v0
.end method

.method static synthetic access$8(Lactivity/ChatActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$9(Lactivity/ChatActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lactivity/ChatActivity;->grids:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addToContact()V
    .locals 3

    .prologue
    .line 1099
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lactivity/AddToContactActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1101
    const-string v1, "user"

    iget-object v2, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1102
    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 1103
    return-void
.end method

.method private changeButtonState()V
    .locals 6

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x64

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1147
    iget v1, p0, Lactivity/ChatActivity;->deleteNum:I

    if-lez v1, :cond_0

    .line 1148
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " ( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lactivity/ChatActivity;->deleteNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, string:Ljava/lang/String;
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1150
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1151
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1152
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1160
    :goto_0
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070051

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f070052

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1162
    return-void

    .line 1154
    .end local v0           #string:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .line 1155
    .restart local v0       #string:Ljava/lang/String;
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 1156
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 1157
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1158
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0
.end method

.method private deletedata()V
    .locals 6

    .prologue
    .line 1167
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1174
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 1176
    const/4 v2, 0x0

    iput v2, p0, Lactivity/ChatActivity;->deleteNum:I

    .line 1177
    invoke-direct {p0}, Lactivity/ChatActivity;->changeButtonState()V

    .line 1178
    return-void

    .line 1168
    :cond_0
    iget-object v2, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgDeleteEntity;

    .line 1169
    .local v0, entity:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getIsPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1170
    iget-object v2, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v3, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getMsgid()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/DB/MessageDB;->deleteMsg(Ljava/lang/String;J)V

    .line 1167
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getFilebyPath(Ljava/lang/String;)V
    .locals 24
    .parameter "img_path"

    .prologue
    .line 688
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    .local v7, currentPath:Ljava/io/File;
    const/4 v8, 0x0

    .line 690
    .local v8, drawable:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 692
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    .line 693
    .local v10, fileName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lactivity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 694
    const v22, 0x7f050002

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 693
    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 695
    const v21, 0x3e99999a

    const/16 v22, 0xfa

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/common/VideoThumBnail;->getImageThumbnail(Ljava/lang/String;FI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 704
    .end local v10           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v21, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 705
    .local v13, index:I
    add-int/lit8 v21, v13, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 712
    .local v4, FileName:Ljava/lang/String;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 713
    .local v6, canvas:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 714
    .local v17, paint:Landroid/graphics/Paint;
    const/high16 v21, -0x100

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 715
    const/high16 v21, 0x41a0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 717
    invoke-static {}, Lcom/common/TelPhoneConstant;->getNewMessageSendFileShowWidth()F

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v4

    .line 719
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v21

    move/from16 v0, v21

    float-to-int v14, v0

    .line 722
    .local v14, len:I
    int-to-float v0, v14

    move/from16 v21, v0

    invoke-static {}, Lcom/common/TelPhoneConstant;->getImageBarLeftSpace()F

    move-result v22

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 723
    .local v16, nptlen:I
    if-eqz v8, :cond_2

    .line 724
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 725
    .local v20, width:I
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 737
    .local v11, height:I
    :goto_1
    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 736
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 741
    .local v5, bmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lactivity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 742
    .local v18, resources:Landroid/content/res/Resources;
    const v21, 0x7f020211

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/NinePatchDrawable;

    .line 743
    .local v15, ninepatch:Landroid/graphics/drawable/NinePatchDrawable;
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 748
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 749
    invoke-virtual {v15, v6}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 755
    if-nez v8, :cond_3

    .line 756
    sub-int v21, v16, v14

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    invoke-static {}, Lcom/common/TelPhoneConstant;->getSendFileShowHeight()F

    move-result v22

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    const/high16 v23, 0x40e0

    add-float v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v6, v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 760
    :goto_2
    new-instance v12, Landroid/text/style/ImageSpan;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 761
    .local v12, imageSpan:Landroid/text/style/ImageSpan;
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "STARTFILE:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":ENDFILE"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 762
    .local v9, file:Ljava/lang/CharSequence;
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 763
    .local v19, spannableString:Landroid/text/SpannableString;
    const/16 v21, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v22

    .line 764
    const/16 v23, 0x21

    .line 763
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 768
    return-void

    .line 696
    .end local v4           #FileName:Ljava/lang/String;
    .end local v5           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #canvas:Landroid/graphics/Canvas;
    .end local v9           #file:Ljava/lang/CharSequence;
    .end local v11           #height:I
    .end local v12           #imageSpan:Landroid/text/style/ImageSpan;
    .end local v13           #index:I
    .end local v14           #len:I
    .end local v15           #ninepatch:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v16           #nptlen:I
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #resources:Landroid/content/res/Resources;
    .end local v19           #spannableString:Landroid/text/SpannableString;
    .end local v20           #width:I
    .restart local v10       #fileName:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lactivity/ChatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 697
    const v22, 0x7f050004

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 696
    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/common/OpenFiles;->checkEndsWithInStringArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 698
    const/16 v21, 0x96

    const/16 v22, 0x64

    const/16 v23, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/common/VideoThumBnail;->getVideoThumbnail(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_0

    .line 732
    .end local v10           #fileName:Ljava/lang/String;
    .restart local v4       #FileName:Ljava/lang/String;
    .restart local v6       #canvas:Landroid/graphics/Canvas;
    .restart local v13       #index:I
    .restart local v14       #len:I
    .restart local v16       #nptlen:I
    .restart local v17       #paint:Landroid/graphics/Paint;
    :cond_2
    move/from16 v20, v16

    .line 733
    .restart local v20       #width:I
    invoke-static {}, Lcom/common/TelPhoneConstant;->getSendFileShowHeight()F

    move-result v21

    move/from16 v0, v21

    float-to-int v11, v0

    .restart local v11       #height:I
    goto/16 :goto_1

    .line 758
    .restart local v5       #bmp:Landroid/graphics/Bitmap;
    .restart local v15       #ninepatch:Landroid/graphics/drawable/NinePatchDrawable;
    .restart local v18       #resources:Landroid/content/res/Resources;
    :cond_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v6, v8, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private handleDelTime(Lactivity/ChatMsgDeleteEntity;)V
    .locals 8
    .parameter "entity"

    .prologue
    .line 869
    invoke-virtual {p1}, Lactivity/ChatMsgDeleteEntity;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 871
    .local v0, date:Ljava/lang/String;
    invoke-static {v0}, Lcom/DB/MyDate;->turnTimeEN(Ljava/lang/String;)J

    move-result-wide v1

    .line 872
    .local v1, datecur:J
    iget-wide v4, p0, Lactivity/ChatActivity;->datePre:J

    sub-long v4, v1, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 873
    new-instance v3, Lactivity/ChatMsgDeleteEntity;

    invoke-direct {v3}, Lactivity/ChatMsgDeleteEntity;-><init>()V

    .line 874
    .local v3, entityt:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v3, v0}, Lactivity/ChatMsgDeleteEntity;->setDate(Ljava/lang/String;)V

    .line 875
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lactivity/ChatMsgDeleteEntity;->setisDate(Z)V

    .line 876
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lactivity/ChatMsgDeleteEntity;->setType(I)V

    .line 877
    const-string v4, "Error"

    invoke-virtual {v3, v4}, Lactivity/ChatMsgDeleteEntity;->setMessage(Ljava/lang/String;)V

    .line 879
    iput-wide v1, p0, Lactivity/ChatActivity;->datePre:J

    .line 880
    iget-object v4, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    .end local v3           #entityt:Lactivity/ChatMsgDeleteEntity;
    :cond_0
    return-void
.end method

.method private nextPowerOfTwo(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 628
    const/4 v0, 0x1

    .line 630
    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 634
    return v0

    .line 632
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 629
    goto :goto_0
.end method

.method private resend()V
    .locals 6

    .prologue
    .line 1107
    const/4 v3, 0x0

    .line 1108
    .local v3, msg:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 1118
    invoke-virtual {p0}, Lactivity/ChatActivity;->editsuccess()V

    .line 1120
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1121
    .local v2, intent:Landroid/content/Intent;
    const-class v4, Lactivity/NewMessageActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1122
    const-string v4, "msg"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->startActivity(Landroid/content/Intent;)V

    .line 1125
    invoke-virtual {p0}, Lactivity/ChatActivity;->finish()V

    .line 1126
    return-void

    .line 1109
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgDeleteEntity;

    .line 1110
    .local v0, entity:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getIsPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1111
    if-eqz v3, :cond_2

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1108
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1114
    :cond_2
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private send()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1221
    iget-object v5, p0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, contString:Ljava/lang/String;
    iget-object v5, p0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    const/4 v3, 0x0

    .line 1225
    .local v3, index:I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 1242
    :cond_0
    invoke-virtual {p0}, Lactivity/ChatActivity;->disableSend()V

    .line 1243
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1244
    new-instance v2, Lactivity/ChatMsgEntity;

    invoke-direct {v2}, Lactivity/ChatMsgEntity;-><init>()V

    .line 1245
    .local v2, entity:Lactivity/ChatMsgEntity;
    iget-object v5, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v5}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lactivity/ChatMsgEntity;->setAppleId(Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Lcom/DB/MyDate;->getDateEN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lactivity/ChatMsgEntity;->setDate(Ljava/lang/String;)V

    .line 1247
    invoke-virtual {v2, v0}, Lactivity/ChatMsgEntity;->setMessage(Ljava/lang/String;)V

    .line 1248
    iget-object v5, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v5}, Lcom/common/User;->getImg()I

    move-result v5

    invoke-virtual {v2, v5}, Lactivity/ChatMsgEntity;->setImg(I)V

    .line 1249
    invoke-virtual {v2, v7}, Lactivity/ChatMsgEntity;->setMsgType(Z)V

    .line 1250
    invoke-virtual {v2, v9}, Lactivity/ChatMsgEntity;->setisRead(Z)V

    .line 1251
    invoke-virtual {v2, v7}, Lactivity/ChatMsgEntity;->setisDate(Z)V

    .line 1252
    invoke-virtual {v2, v9}, Lactivity/ChatMsgEntity;->setType(I)V

    .line 1253
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lactivity/ChatMsgEntity;->setSendType(I)V

    .line 1257
    invoke-direct {p0, v2}, Lactivity/ChatActivity;->setguID(Lactivity/ChatMsgEntity;)V

    .line 1259
    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->SendMsg(Lactivity/ChatMsgEntity;)V

    .line 1260
    const-string v5, "setRate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v5, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v6, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v6}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/DB/MessageDB;->saveMsg(Ljava/lang/String;Lactivity/ChatMsgEntity;)V

    .line 1264
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 1266
    iget-object v5, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 1268
    iget-object v5, p0, Lactivity/ChatActivity;->mAdapter:Lactivity/ChatMsgViewAdapter;

    invoke-virtual {v5}, Lactivity/ChatMsgViewAdapter;->notifyDataSetChanged()V

    .line 1281
    .end local v2           #entity:Lactivity/ChatMsgEntity;
    :cond_1
    return-void

    .line 1226
    :cond_2
    const-string v5, "STARTFILE:"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 1227
    .local v4, st:I
    const-string v5, ":ENDFILE"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 1228
    .local v1, ed:I
    if-eq v4, v8, :cond_0

    if-eq v1, v8, :cond_0

    .line 1231
    if-lez v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_3

    .line 1232
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1233
    add-int/lit8 v1, v1, 0x1

    .line 1235
    :cond_3
    add-int/lit8 v5, v1, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    add-int/lit8 v5, v1, 0x8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v10, :cond_4

    .line 1236
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v1, 0x8

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x8

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    :cond_4
    add-int/lit8 v3, v1, 0x8

    goto/16 :goto_0
.end method

.method private setguID(Lactivity/ChatMsgEntity;)V
    .locals 6
    .parameter "entity"

    .prologue
    .line 1285
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    .line 1286
    .local v3, random:Ljava/util/Random;
    const/16 v4, 0x10

    new-array v0, v4, [B

    .line 1289
    .local v0, m_guid:[B
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 1290
    const/4 v4, 0x3

    aget-byte v4, v0, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x2

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x0

    aget-byte v5, v0, v5

    or-int/2addr v4, v5

    int-to-long v1, v4

    .line 1291
    .local v1, msgid:J
    const-wide/32 v4, 0x7fffffff

    and-long/2addr v1, v4

    .line 1292
    iget-object v4, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v5, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v5}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v2}, Lcom/DB/MessageDB;->getMsgById(Ljava/lang/String;J)Lactivity/ChatMsgEntity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1294
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 1297
    invoke-virtual {p1, v0}, Lactivity/ChatMsgEntity;->setguid([B)V

    .line 1298
    invoke-virtual {p1, v1, v2}, Lactivity/ChatMsgEntity;->setMsgid(J)V

    .line 1299
    return-void
.end method


# virtual methods
.method public CloseFacePicture()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1069
    iget-object v0, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1071
    iget-object v0, p0, Lactivity/ChatActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1072
    return-void
.end method

.method public SendMsg(Lactivity/ChatMsgEntity;)V
    .locals 5
    .parameter "entity"

    .prologue
    .line 1303
    iget-object v4, p0, Lactivity/ChatActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v4}, Lactivity/MyApplication;->getClient()Lcom/client/Client;

    move-result-object v1

    .line 1305
    .local v1, client:Lcom/client/Client;
    iget-object v4, p0, Lactivity/ChatActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v4}, Lactivity/MyApplication;->getAttach()Lcom/client/Attach;

    move-result-object v0

    .line 1308
    .local v0, attach:Lcom/client/Attach;
    new-instance v2, Lcom/client/Send;

    invoke-direct {v2, p1}, Lcom/client/Send;-><init>(Lactivity/ChatMsgEntity;)V

    .line 1309
    .local v2, mSend:Lcom/client/Send;
    new-instance v3, Lcom/common/TranObject;

    invoke-direct {v3}, Lcom/common/TranObject;-><init>()V

    .line 1311
    .local v3, tranObject:Lcom/common/TranObject;
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/common/TranObject;->setQueryAndSend(Ljava/lang/String;Lcom/client/Send;)V

    .line 1312
    invoke-virtual {v2}, Lcom/client/Send;->haveAttach()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1313
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 1314
    invoke-virtual {v0, v3}, Lcom/client/Attach;->pushAttach(Lcom/common/TranObject;)V

    .line 1322
    :goto_0
    return-void

    .line 1317
    :cond_0
    const/16 v4, 0x32

    invoke-virtual {p1, v4}, Lactivity/ChatMsgEntity;->setMsgRate(I)V

    .line 1318
    invoke-virtual {v1, v3}, Lcom/client/Client;->setMsg(Lcom/common/TranObject;)V

    goto :goto_0
.end method

.method public ShowFacePicture()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1074
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1076
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lactivity/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1077
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 1076
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1079
    iget-object v1, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1080
    iget-object v1, p0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1081
    :cond_0
    iget-object v1, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1082
    iget-object v1, p0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 1083
    iget-object v1, p0, Lactivity/ChatActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1096
    :goto_0
    return-void

    .line 1085
    :cond_1
    iget-object v1, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    goto :goto_0
.end method

.method public UpdateChatUI()V
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v1, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v1}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/DB/MessageDB;->setIsReadMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lactivity/ChatActivity;->datePre:J

    .line 887
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 888
    invoke-direct {p0}, Lactivity/ChatActivity;->ReadMsgToDeleteChat()V

    .line 894
    :goto_0
    return-void

    .line 891
    :cond_0
    invoke-direct {p0}, Lactivity/ChatActivity;->ReadMsgToChat()V

    goto :goto_0
.end method

.method public UpdateMsgUI(B)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1371
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 1372
    const-string v0, "UpdateChatUI"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1374
    iget-object v0, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 1375
    :cond_0
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 1384
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateProcessUI()V

    .line 1385
    return-void
.end method

.method public UpdateProcessUI()V
    .locals 9

    .prologue
    .line 897
    iget-object v4, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v5, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v5}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v5

    .line 898
    iget-object v6, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v6}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v6

    .line 897
    invoke-virtual {v4, v5, v6}, Lcom/DB/MessageDB;->getToMsg(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 899
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ChatMsgEntity;>;"
    const/4 v2, 0x1

    .local v2, rate:I
    const/4 v3, 0x1

    .line 900
    .local v3, totp:I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 901
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 916
    :cond_1
    int-to-float v4, v2

    const/high16 v5, 0x3f80

    mul-float/2addr v4, v5

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x42c8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p0, v4}, Lactivity/ChatActivity;->setProcess(I)V

    .line 917
    return-void

    .line 901
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgEntity;

    .line 902
    .local v0, entity:Lactivity/ChatMsgEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgid()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 907
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 908
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_0

    .line 909
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getSendType()I

    move-result v5

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    .line 910
    invoke-virtual {v0}, Lactivity/ChatMsgEntity;->getMsgRate()I

    move-result v5

    add-int/2addr v2, v5

    .line 911
    add-int/lit8 v3, v3, 0x64

    goto :goto_0
.end method

.method public UpdateStatus(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1380
    return-void
.end method

.method public cleardata()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1129
    :goto_0
    iget-object v1, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1138
    iput v5, p0, Lactivity/ChatActivity;->deleteNum:I

    .line 1139
    invoke-direct {p0}, Lactivity/ChatActivity;->changeButtonState()V

    .line 1140
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 1143
    return-void

    .line 1130
    :cond_0
    iget-object v1, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ChatMsgDeleteEntity;

    .line 1131
    .local v0, entity:Lactivity/ChatMsgDeleteEntity;
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1133
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getType()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 1134
    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getType()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1135
    :cond_1
    iget-object v1, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v2, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lactivity/ChatMsgDeleteEntity;->getMsgid()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/DB/MessageDB;->deleteMsg(Ljava/lang/String;J)V

    .line 1136
    :cond_2
    iget-object v1, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public disableNavigationBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 780
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 783
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 785
    return-void
.end method

.method public disableSend()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnSend:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 776
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnSend:Landroid/widget/Button;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 777
    return-void
.end method

.method public editdown()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1197
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1198
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1200
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1201
    iget-object v1, p0, Lactivity/ChatActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1203
    iget-object v1, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1205
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1207
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lactivity/ChatActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1208
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 1207
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1210
    iget-object v1, p0, Lactivity/ChatActivity;->SendBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1211
    iget-object v1, p0, Lactivity/ChatActivity;->DeleteBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1213
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 1214
    invoke-direct {p0}, Lactivity/ChatActivity;->changeButtonState()V

    .line 1215
    return-void
.end method

.method public editsuccess()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1181
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1182
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lactivity/ChatActivity;->SendBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1188
    iget-object v0, p0, Lactivity/ChatActivity;->DeleteBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1190
    iget-object v0, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 1192
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 1193
    return-void
.end method

.method public enableNavigationBar()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 788
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 791
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 793
    return-void
.end method

.method public enableSend()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnSend:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 771
    iget-object v0, p0, Lactivity/ChatActivity;->mBtnSend:Landroid/widget/Button;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 772
    return-void
.end method

.method public handleDelReach(Lactivity/ChatMsgDeleteEntity;)V
    .locals 4
    .parameter "entity"

    .prologue
    .line 826
    invoke-virtual {p1}, Lactivity/ChatMsgDeleteEntity;->getSendType()I

    move-result v2

    .line 827
    .local v2, stype:I
    invoke-virtual {p1}, Lactivity/ChatMsgDeleteEntity;->getType()I

    move-result v1

    .line 828
    .local v1, htype:I
    packed-switch v2, :pswitch_data_0

    .line 849
    :goto_0
    :pswitch_0
    return-void

    .line 830
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 832
    :pswitch_2
    new-instance v0, Lactivity/ChatMsgDeleteEntity;

    invoke-direct {v0}, Lactivity/ChatMsgDeleteEntity;-><init>()V

    .line 833
    .local v0, entityt:Lactivity/ChatMsgDeleteEntity;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lactivity/ChatMsgDeleteEntity;->setType(I)V

    .line 834
    iget-object v3, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 839
    .end local v0           #entityt:Lactivity/ChatMsgDeleteEntity;
    :pswitch_3
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 841
    :pswitch_4
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lactivity/ChatMsgDeleteEntity;->setType(I)V

    goto :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 830
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 839
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch
.end method

.method public handleReach(Lactivity/ChatMsgEntity;)V
    .locals 4
    .parameter "entity"

    .prologue
    .line 798
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getSendType()I

    move-result v2

    .line 799
    .local v2, stype:I
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getType()I

    move-result v1

    .line 800
    .local v1, htype:I
    packed-switch v2, :pswitch_data_0

    .line 821
    :goto_0
    :pswitch_0
    return-void

    .line 802
    :pswitch_1
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 804
    :pswitch_2
    new-instance v0, Lactivity/ChatMsgEntity;

    invoke-direct {v0}, Lactivity/ChatMsgEntity;-><init>()V

    .line 805
    .local v0, entityt:Lactivity/ChatMsgEntity;
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lactivity/ChatMsgEntity;->setType(I)V

    .line 806
    iget-object v3, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    .end local v0           #entityt:Lactivity/ChatMsgEntity;
    :pswitch_3
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 816
    :pswitch_4
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lactivity/ChatMsgEntity;->setType(I)V

    goto :goto_0

    .line 813
    :pswitch_5
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lactivity/ChatMsgEntity;->setType(I)V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 802
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    .line 811
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleTime(Lactivity/ChatMsgEntity;)V
    .locals 8
    .parameter "entity"

    .prologue
    .line 852
    invoke-virtual {p1}, Lactivity/ChatMsgEntity;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, date:Ljava/lang/String;
    invoke-static {v0}, Lcom/DB/MyDate;->turnTimeEN(Ljava/lang/String;)J

    move-result-wide v1

    .line 855
    .local v1, datecur:J
    iget-wide v4, p0, Lactivity/ChatActivity;->datePre:J

    sub-long v4, v1, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 856
    new-instance v3, Lactivity/ChatMsgEntity;

    invoke-direct {v3}, Lactivity/ChatMsgEntity;-><init>()V

    .line 857
    .local v3, entityt:Lactivity/ChatMsgEntity;
    invoke-virtual {v3, v0}, Lactivity/ChatMsgEntity;->setDate(Ljava/lang/String;)V

    .line 858
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setisDate(Z)V

    .line 859
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setType(I)V

    .line 860
    const-string v4, "Error"

    invoke-virtual {v3, v4}, Lactivity/ChatMsgEntity;->setMessage(Ljava/lang/String;)V

    .line 862
    iput-wide v1, p0, Lactivity/ChatActivity;->datePre:J

    .line 863
    iget-object v4, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    .end local v3           #entityt:Lactivity/ChatMsgEntity;
    :cond_0
    return-void
.end method

.method public initChooseView()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    .line 250
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    .line 251
    iget-object v1, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lactivity/ChatActivity;->choosegrids:Ljava/util/ArrayList;

    .line 253
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 254
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v6, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lactivity/ChatActivity;->choosegridsview:Landroid/widget/GridView;

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v2, chooseItems:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 269
    .local v7, listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f020011

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "TITLE"

    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 275
    .local v8, listItem1:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f020012

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v1, "TITLE"

    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v9, listItem2:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f020010

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v1, "TITLE"

    const v3, 0x7f070047

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 285
    .local v10, listItem3:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "image"

    const v3, 0x7f02000f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v1, "TITLE"

    const v3, 0x7f070048

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 293
    const v3, 0x7f03000c

    .line 294
    new-array v4, v12, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "image"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "TITLE"

    aput-object v5, v4, v1

    new-array v5, v12, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 292
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 297
    .local v0, simpleAdapter:Landroid/widget/SimpleAdapter;
    iget-object v1, p0, Lactivity/ChatActivity;->choosegridsview:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 298
    iget-object v1, p0, Lactivity/ChatActivity;->choosegridsview:Landroid/widget/GridView;

    new-instance v3, Lactivity/ChatActivity$4;

    invoke-direct {v3, p0}, Lactivity/ChatActivity$4;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 338
    iget-object v1, p0, Lactivity/ChatActivity;->choosegrids:Ljava/util/ArrayList;

    iget-object v3, p0, Lactivity/ChatActivity;->choosegridsview:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    new-instance v11, Lactivity/ChatActivity$5;

    invoke-direct {v11, p0}, Lactivity/ChatActivity$5;-><init>(Lactivity/ChatActivity;)V

    .line 363
    .local v11, mPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lactivity/ChatActivity;->chooseview:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v11}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 365
    return-void

    .line 294
    :array_0
    .array-data 0x4
        0x3at 0x0t 0xbt 0x7ft
        0x3bt 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public initData()V
    .locals 0

    .prologue
    .line 1029
    invoke-direct {p0}, Lactivity/ChatActivity;->ReadMsgToChat()V

    .line 1030
    return-void
.end method

.method public initFace()V
    .locals 21

    .prologue
    .line 384
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    .line 385
    .local v13, inflater:Landroid/view/LayoutInflater;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lactivity/ChatActivity;->grids:Ljava/util/ArrayList;

    .line 386
    const/4 v11, 0x0

    .line 387
    .local v11, index:I
    sget-object v3, Lcom/common/emoji;->emojiImgs:[I

    array-length v9, v3

    .line 388
    .local v9, emojinum:I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lactivity/ChatActivity;->face_pagenum:I

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lactivity/ChatActivity;->start_page_id:I

    move/from16 v17, v0

    .line 390
    .local v17, page_select_id:I
    :goto_0
    if-lt v11, v9, :cond_0

    .line 457
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "GridView\u7684\u957f\u5ea6 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lactivity/ChatActivity;->grids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    new-instance v16, Lactivity/ChatActivity$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lactivity/ChatActivity$7;-><init>(Lactivity/ChatActivity;)V

    .line 483
    .local v16, mPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lactivity/ChatActivity$GuidePageChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lactivity/ChatActivity$GuidePageChangeListener;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 487
    return-void

    .line 391
    .end local v16           #mPagerAdapter:Landroid/support/v4/view/PagerAdapter;
    :cond_0
    const v3, 0x7f030013

    const/4 v5, 0x0

    invoke-virtual {v13, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/GridView;

    .line 392
    .local v10, gViewt:Landroid/widget/GridView;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v4, listItems:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/16 v18, 0x0

    .line 395
    .local v18, size:I
    move/from16 v19, v11

    .line 396
    .local v19, start:I
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lactivity/ChatActivity;->perpagenum:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    if-lt v11, v9, :cond_2

    .line 402
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 403
    .local v14, listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "image"

    const v5, 0x7f020205

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 408
    .local v8, btn:Landroid/widget/ImageView;
    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 409
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v5, -0x2

    invoke-direct {v15, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 410
    .local v15, lp:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lactivity/ChatActivity;->face_pagenum:I

    if-nez v3, :cond_3

    .line 411
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15, v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 412
    const v3, 0x7f02022c

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 418
    :goto_2
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/ChatActivity;->page_select:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v5, v0, Lactivity/ChatActivity;->face_pagenum:I

    invoke-virtual {v3, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 421
    add-int/lit8 v17, v17, 0x1

    .line 422
    move-object/from16 v0, p0

    iget v3, v0, Lactivity/ChatActivity;->face_pagenum:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lactivity/ChatActivity;->face_pagenum:I

    .line 424
    new-instance v2, Landroid/widget/SimpleAdapter;

    .line 425
    const v5, 0x7f030023

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v7, "image"

    aput-object v7, v6, v3

    .line 426
    const/4 v3, 0x1

    new-array v7, v3, [I

    const/4 v3, 0x0

    const v20, 0x7f0b00b0

    aput v20, v7, v3

    move-object/from16 v3, p0

    .line 424
    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 427
    .local v2, simpleAdapter:Landroid/widget/SimpleAdapter;
    invoke-virtual {v10, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 428
    new-instance v3, Lactivity/ChatActivity$6;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v3, v0, v1}, Lactivity/ChatActivity$6;-><init>(Lactivity/ChatActivity;I)V

    invoke-virtual {v10, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lactivity/ChatActivity;->grids:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 397
    .end local v2           #simpleAdapter:Landroid/widget/SimpleAdapter;
    .end local v8           #btn:Landroid/widget/ImageView;
    .end local v14           #listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 398
    .restart local v14       #listItem:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "image"

    sget-object v5, Lcom/common/emoji;->emojiImgs:[I

    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v18, v18, 0x1

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto/16 :goto_1

    .line 415
    .restart local v8       #btn:Landroid/widget/ImageView;
    .restart local v15       #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    const/16 v3, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15, v3, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 416
    const v3, 0x7f02022d

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method public initView()V
    .locals 5

    .prologue
    .line 513
    const v3, 0x7f0b0016

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lactivity/ChatActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 514
    const v3, 0x7f0b0014

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lactivity/ChatActivity;->mProgressbarlayout:Landroid/widget/LinearLayout;

    .line 515
    iget-object v3, p0, Lactivity/ChatActivity;->mProgressbarlayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    iget-object v3, p0, Lactivity/ChatActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 519
    const v3, 0x7f0b0019

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    .line 520
    const v3, 0x7f0b001d

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnSend:Landroid/widget/Button;

    .line 521
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnSend:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnBack:Landroid/widget/Button;

    .line 524
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnBack:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 525
    const v3, 0x7f0b0012

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnClear:Landroid/widget/Button;

    .line 526
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnClear:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 528
    const v3, 0x7f0b0021

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    .line 529
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    const v3, 0x7f0b0020

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    .line 531
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnReSend:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    const v3, 0x7f0b0013

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lactivity/ChatActivity;->mFriendName:Landroid/widget/TextView;

    .line 535
    const v3, 0x7f0b001c

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnPhoto:Landroid/widget/Button;

    .line 536
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnPhoto:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 538
    iget-object v3, p0, Lactivity/ChatActivity;->contactDB:Lcom/DB/ContactDB;

    iget-object v4, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v4}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v1

    .line 540
    .local v1, tentity:Lactivity/ContactListEntity;
    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v1}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, tname:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lactivity/ChatActivity;->mFriendName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-static {}, Lcom/common/TelPhoneConstant;->getChatShowWidth()F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v2

    .line 546
    const-string v3, "ChatName "

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v3, p0, Lactivity/ChatActivity;->mFriendName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    .line 551
    iget-object v3, p0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    new-instance v4, Lactivity/ChatActivity$8;

    invoke-direct {v4, p0}, Lactivity/ChatActivity$8;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 564
    const v3, 0x7f0b001b

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lactivity/ChatActivity;->SendBar:Landroid/widget/RelativeLayout;

    .line 565
    const v3, 0x7f0b001f

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lactivity/ChatActivity;->DeleteBar:Landroid/widget/RelativeLayout;

    .line 566
    const v3, 0x7f0b0017

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnEdit:Landroid/widget/Button;

    .line 567
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    const v3, 0x7f0b0018

    invoke-virtual {p0, v3}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lactivity/ChatActivity;->mBtnSuccess:Landroid/widget/Button;

    .line 569
    iget-object v3, p0, Lactivity/ChatActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 571
    new-instance v0, Lactivity/ChatActivity$9;

    invoke-direct {v0, p0}, Lactivity/ChatActivity$9;-><init>(Lactivity/ChatActivity;)V

    .line 596
    .local v0, mTextWatcher:Landroid/text/TextWatcher;
    invoke-virtual {p0}, Lactivity/ChatActivity;->disableSend()V

    .line 598
    iget-object v3, p0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 599
    iget-object v3, p0, Lactivity/ChatActivity;->mEditTextContent:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 601
    iget-object v3, p0, Lactivity/ChatActivity;->mListView:Landroid/widget/ListView;

    new-instance v4, Lactivity/ChatActivity$10;

    invoke-direct {v4, p0}, Lactivity/ChatActivity$10;-><init>(Lactivity/ChatActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 625
    return-void

    .line 543
    .end local v0           #mTextWatcher:Landroid/text/TextWatcher;
    .end local v2           #tname:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #tname:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 639
    packed-switch p1, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 641
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 643
    .local v1, uriVideo:Landroid/net/Uri;
    invoke-virtual {p0}, Lactivity/ChatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 644
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "_data"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/ChatActivity;->strVideoPath:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lactivity/ChatActivity;->strVideoPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 648
    const-string v0, "Video Path"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lactivity/ChatActivity;->strVideoPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lactivity/ChatActivity;->strVideoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->getFilebyPath(Ljava/lang/String;)V

    goto :goto_0

    .line 654
    .end local v1           #uriVideo:Landroid/net/Uri;
    .end local v10           #cursor:Landroid/database/Cursor;
    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 655
    iget-object v0, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 656
    const-string v0, "Photo Path"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v0, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lactivity/ChatActivity;->getFilebyPath(Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :pswitch_2
    if-eqz p3, :cond_0

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 663
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 664
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_data"

    aput-object v2, v4, v0

    .line 667
    .local v4, proj:[Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 670
    .local v12, uriString:Ljava/lang/String;
    const/4 v0, 0x7

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 678
    .end local v12           #uriString:Ljava/lang/String;
    .local v11, img_path:Ljava/lang/String;
    :goto_1
    const-string v0, "ht"

    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-direct {p0, v11}, Lactivity/ChatActivity;->getFilebyPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 672
    .end local v11           #img_path:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lactivity/ChatActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 673
    .local v9, actualimagecursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 674
    .local v8, actual_image_column_index:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 675
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #img_path:Ljava/lang/String;
    goto :goto_1

    .line 639
    :pswitch_data_0
    .packed-switch 0x11010
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1067
    :goto_0
    return-void

    .line 1037
    :sswitch_0
    invoke-direct {p0}, Lactivity/ChatActivity;->send()V

    goto :goto_0

    .line 1040
    :sswitch_1
    invoke-virtual {p0}, Lactivity/ChatActivity;->finish()V

    goto :goto_0

    .line 1043
    :sswitch_2
    invoke-virtual {p0}, Lactivity/ChatActivity;->cleardata()V

    goto :goto_0

    .line 1046
    :sswitch_3
    invoke-virtual {p0}, Lactivity/ChatActivity;->editdown()V

    goto :goto_0

    .line 1049
    :sswitch_4
    invoke-virtual {p0}, Lactivity/ChatActivity;->editsuccess()V

    goto :goto_0

    .line 1052
    :sswitch_5
    invoke-direct {p0}, Lactivity/ChatActivity;->deletedata()V

    goto :goto_0

    .line 1055
    :sswitch_6
    invoke-direct {p0}, Lactivity/ChatActivity;->resend()V

    goto :goto_0

    .line 1058
    :sswitch_7
    invoke-direct {p0}, Lactivity/ChatActivity;->addToContact()V

    goto :goto_0

    .line 1061
    :sswitch_8
    invoke-virtual {p0}, Lactivity/ChatActivity;->ShowFacePicture()V

    goto :goto_0

    .line 1064
    :sswitch_9
    invoke-virtual {p0}, Lactivity/ChatActivity;->CloseFacePicture()V

    goto :goto_0

    .line 1035
    :sswitch_data_0
    .sparse-switch
        0x7f0b0011 -> :sswitch_1
        0x7f0b0012 -> :sswitch_2
        0x7f0b0017 -> :sswitch_3
        0x7f0b0018 -> :sswitch_4
        0x7f0b001c -> :sswitch_8
        0x7f0b001d -> :sswitch_0
        0x7f0b001e -> :sswitch_9
        0x7f0b0020 -> :sswitch_6
        0x7f0b0021 -> :sswitch_5
        0x7f0b0048 -> :sswitch_7
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x8

    .line 214
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->requestWindowFeature(I)Z

    .line 216
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->setContentView(I)V

    .line 219
    invoke-virtual {p0}, Lactivity/ChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/common/User;

    iput-object v0, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    .line 222
    iget-object v0, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lcom/common/User;

    invoke-direct {v0}, Lcom/common/User;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    .line 224
    iget-object v0, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    iget-object v1, p0, Lactivity/ChatActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v1}, Lcom/setting/SharePreferenceUtil;->getChatUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lactivity/ChatActivity;->userDB:Lcom/DB/UserDB;

    iget-object v1, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v0, v1}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lactivity/ChatActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v0}, Lcom/setting/SharePreferenceUtil;->getChatUser()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lactivity/ChatActivity;->mActiId:Ljava/lang/String;

    .line 228
    new-instance v0, Lcom/common/User;

    invoke-direct {v0}, Lcom/common/User;-><init>()V

    iput-object v0, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    .line 229
    iget-object v0, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    iget-object v1, p0, Lactivity/ChatActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v1}, Lcom/setting/SharePreferenceUtil;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lactivity/ChatActivity;->userDB:Lcom/DB/UserDB;

    iget-object v1, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v0, v1}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 232
    new-instance v0, Lactivity/ChatMsgViewAdapter;

    iget-object v1, p0, Lactivity/ChatActivity;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lactivity/ChatActivity;->mDataArrays:Ljava/util/List;

    invoke-direct {v0, v1, p0, v2}, Lactivity/ChatMsgViewAdapter;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/ChatActivity;->mAdapter:Lactivity/ChatMsgViewAdapter;

    .line 233
    new-instance v0, Lactivity/ChatMsgDeleteViewAdapter;

    iget-object v1, p0, Lactivity/ChatActivity;->mDataDeleteArrays:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lactivity/ChatMsgDeleteViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lactivity/ChatActivity;->mDeleteAdapter:Lactivity/ChatMsgDeleteViewAdapter;

    .line 235
    iget-object v0, p0, Lactivity/ChatActivity;->messageDB:Lcom/DB/MessageDB;

    iget-object v1, p0, Lactivity/ChatActivity;->CurUser:Lcom/common/User;

    invoke-virtual {v1}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/DB/MessageDB;->setIsReadMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 239
    const v0, 0x7f0b0024

    invoke-virtual {p0, v0}, Lactivity/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lactivity/ChatActivity;->page_select:Landroid/widget/LinearLayout;

    .line 240
    iget-object v0, p0, Lactivity/ChatActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lactivity/ChatActivity;->page_select:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lactivity/ChatActivity;->initView()V

    .line 244
    invoke-virtual {p0}, Lactivity/ChatActivity;->initData()V

    .line 246
    invoke-virtual {p0}, Lactivity/ChatActivity;->initFace()V

    .line 247
    invoke-virtual {p0}, Lactivity/ChatActivity;->initChooseView()V

    .line 248
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 509
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 510
    iget-object v0, p0, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 511
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 491
    invoke-virtual {p0}, Lactivity/ChatActivity;->UpdateChatUI()V

    .line 492
    iget-object v2, p0, Lactivity/ChatActivity;->contactDB:Lcom/DB/ContactDB;

    iget-object v3, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v3}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/DB/ContactDB;->ifExit(Ljava/lang/String;)Lactivity/ContactListEntity;

    move-result-object v0

    .line 495
    .local v0, tentity:Lactivity/ContactListEntity;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, tname:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lactivity/ChatActivity;->mFriendName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {}, Lcom/common/TelPhoneConstant;->getChatShowWidth()F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v1

    .line 501
    const-string v2, "ChatName "

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v2, p0, Lactivity/ChatActivity;->mFriendName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 505
    iget-object v2, p0, Lactivity/ChatActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 506
    return-void

    .line 498
    .end local v1           #tname:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lactivity/ChatActivity;->user:Lcom/common/User;

    invoke-virtual {v2}, Lcom/common/User;->getAppleId()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #tname:Ljava/lang/String;
    goto :goto_0
.end method

.method public reRecMsg(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 193
    move v0, p1

    .line 194
    .local v0, idt:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 195
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lactivity/ChatActivity$3;

    invoke-direct {v3, p0, v0}, Lactivity/ChatActivity$3;-><init>(Lactivity/ChatActivity;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 211
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 212
    return-void
.end method

.method public reSendMsg(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 164
    move v0, p1

    .line 165
    .local v0, idt:I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070040

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070041

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 166
    const v2, 0x7f070042

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lactivity/ChatActivity$2;

    invoke-direct {v3, p0, v0}, Lactivity/ChatActivity$2;-><init>(Lactivity/ChatActivity;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    const v2, 0x7f070043

    invoke-virtual {p0, v2}, Lactivity/ChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 191
    return-void
.end method

.method public setProcess(I)V
    .locals 5
    .parameter "process"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1355
    const-string v0, "send Rage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/16 v0, 0x5a

    if-lt p1, v0, :cond_0

    .line 1357
    iget-object v0, p0, Lactivity/ChatActivity;->mProgressbarlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1358
    iget-object v0, p0, Lactivity/ChatActivity;->mFriendName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1359
    const/16 p1, 0x64

    .line 1365
    :goto_0
    iget-object v0, p0, Lactivity/ChatActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1367
    return-void

    .line 1361
    :cond_0
    iget-object v0, p0, Lactivity/ChatActivity;->mFriendName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1362
    iget-object v0, p0, Lactivity/ChatActivity;->mProgressbarlayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startTakePhoto()V
    .locals 7

    .prologue
    .line 368
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, imageCaptureIntent:Landroid/content/Intent;
    sget-object v4, Lcom/common/Constants;->StorFilePath:Ljava/lang/String;

    iput-object v4, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMddHHmmss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    .local v0, fileName:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v2, out:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 375
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2           #out:Ljava/io/File;
    iget-object v4, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .restart local v2       #out:Ljava/io/File;
    iget-object v4, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lactivity/ChatActivity;->strImgPath:Ljava/lang/String;

    .line 377
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 378
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "output"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 379
    const-string v4, "android.intent.extra.videoQuality"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const v4, 0x11011

    invoke-virtual {p0, v1, v4}, Lactivity/ChatActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 381
    return-void
.end method
