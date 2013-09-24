.class public Lactivity/FriendListActivity;
.super Lactivity/MyActivity;
.source "FriendListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/FriendListActivity$GuidePageChangeListener;
    }
.end annotation


# static fields
.field private static final ABOUTMESSAGE:I = 0x8

.field private static final CHECKINGUPDATE:I = 0x7

.field private static final CLEARDATA:I = 0x5

.field private static final GETFROMTHESYSTEMCONTACT:I = 0x4

.field private static final ISNOWNEW:I = 0x9

.field public static final LINKERR:I = 0x1

.field public static final LINKING:I = 0x0

.field public static final LINKSUCC:I = 0x2

.field protected static final MSG:I = 0x1110

.field private static final NETWORKDOWN:I = 0xb

.field private static final PAGE1:I = 0x0

.field private static final PAGE2:I = 0x1

.field private static final PAGE3:I = 0x2

.field private static final READCONTACTSUCC:I = 0x6

.field private static final SETTINGEXIT:I = 0x2

.field protected static final UPDATESETTING:I = 0x3

.field private static final UPDATEVERSION:I = 0xa


# instance fields
.field private final CHATSEARCH:I

.field private final CONTACTSEARCH:I

.field private LinkStatus:I

.field private RecentChatDeleteStatue:Z

.field private handler:Landroid/os/Handler;

.field private layout_body_activity:Landroid/widget/LinearLayout;

.field private mAddressText:Landroid/widget/TextView;

.field private mBtnAddress:Landroid/widget/LinearLayout;

.field private mBtnChat:Landroid/widget/LinearLayout;

.field private mBtnEdit:Landroid/widget/Button;

.field private mBtnNew:Landroid/widget/Button;

.field private mBtnSetting:Landroid/widget/LinearLayout;

.field private mBtnSuccess:Landroid/widget/Button;

.field private mChatPage:Lactivity/FriendChatPage;

.field private mChatSearch:Ljava/lang/String;

.field private mChatText:Landroid/widget/TextView;

.field private mContactListView:Landroid/widget/ListView;

.field private mContactPage:Lactivity/FriendContactPage;

.field private mContactSearch:Ljava/lang/String;

.field private mImageAddress:Landroid/widget/ImageView;

.field private mImageChat:Landroid/widget/ImageView;

.field private mImageSetting:Landroid/widget/ImageView;

.field private mLink:Landroid/widget/TextView;

.field private mListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPager:Landroid/support/v4/view/ViewPager;

.field private mRecentListView:Landroid/widget/ListView;

.field private mSettingListView:Landroid/widget/ListView;

.field private mSettingPage:Lactivity/FriendSettingPage;

.field private mSettingText:Landroid/widget/TextView;

.field private mi:Landroid/view/MenuInflater;

.field private myName:Landroid/widget/TextView;

.field private newNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Lactivity/MyActivity;-><init>()V

    .line 84
    iput v1, p0, Lactivity/FriendListActivity;->CHATSEARCH:I

    .line 85
    const/4 v0, 0x1

    iput v0, p0, Lactivity/FriendListActivity;->CONTACTSEARCH:I

    .line 101
    iput v1, p0, Lactivity/FriendListActivity;->LinkStatus:I

    .line 115
    iput v1, p0, Lactivity/FriendListActivity;->newNum:I

    .line 143
    iput-boolean v1, p0, Lactivity/FriendListActivity;->RecentChatDeleteStatue:Z

    .line 145
    new-instance v0, Lactivity/FriendListActivity$1;

    invoke-direct {v0, p0}, Lactivity/FriendListActivity$1;-><init>(Lactivity/FriendListActivity;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->handler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private ChatBtnDown()V
    .locals 5

    .prologue
    const v4, 0x7f06000c

    const/4 v2, 0x4

    const/4 v3, 0x0

    .line 618
    iget-boolean v0, p0, Lactivity/FriendListActivity;->RecentChatDeleteStatue:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    :goto_0
    iget-object v0, p0, Lactivity/FriendListActivity;->myName:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageChat:Landroid/widget/ImageView;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 635
    iget-object v0, p0, Lactivity/FriendListActivity;->mChatText:Landroid/widget/TextView;

    const v1, 0x7f020258

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 637
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageAddress:Landroid/widget/ImageView;

    const v1, 0x7f020256

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 638
    iget-object v0, p0, Lactivity/FriendListActivity;->mAddressText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 640
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageSetting:Landroid/widget/ImageView;

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 641
    iget-object v0, p0, Lactivity/FriendListActivity;->mSettingText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 642
    iget-object v0, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 643
    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v0}, Lactivity/FriendChatPage;->getmRecentList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 624
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 628
    :goto_1
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 626
    :cond_1
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private ContactBtnDown()V
    .locals 4

    .prologue
    const v3, 0x7f06000c

    const/4 v1, 0x4

    .line 602
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lactivity/FriendListActivity;->myName:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07005b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageChat:Landroid/widget/ImageView;

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 608
    iget-object v0, p0, Lactivity/FriendListActivity;->mChatText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 610
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageAddress:Landroid/widget/ImageView;

    const v1, 0x7f020257

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 611
    iget-object v0, p0, Lactivity/FriendListActivity;->mAddressText:Landroid/widget/TextView;

    const v1, 0x7f020258

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 613
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageSetting:Landroid/widget/ImageView;

    const v1, 0x7f02025b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 614
    iget-object v0, p0, Lactivity/FriendListActivity;->mSettingText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 615
    iget-object v0, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 616
    return-void
.end method

.method private EditBtndown()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 656
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lactivity/FriendListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 658
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lactivity/FriendListActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 659
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 661
    const/4 v1, 0x1

    iput-boolean v1, p0, Lactivity/FriendListActivity;->RecentChatDeleteStatue:Z

    .line 663
    iget-object v1, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 664
    iget-object v1, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 665
    iget-object v1, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 667
    invoke-virtual {p0}, Lactivity/FriendListActivity;->ReadMsgDB()V

    .line 669
    return-void
.end method

.method private SettingBtnDown()V
    .locals 4

    .prologue
    const v3, 0x7f06000c

    const/4 v1, 0x4

    .line 586
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lactivity/FriendListActivity;->myName:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07005a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageChat:Landroid/widget/ImageView;

    const v1, 0x7f020259

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 592
    iget-object v0, p0, Lactivity/FriendListActivity;->mChatText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 594
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageAddress:Landroid/widget/ImageView;

    const v1, 0x7f020256

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 595
    iget-object v0, p0, Lactivity/FriendListActivity;->mAddressText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 597
    iget-object v0, p0, Lactivity/FriendListActivity;->mImageSetting:Landroid/widget/ImageView;

    const v1, 0x7f02025c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 598
    iget-object v0, p0, Lactivity/FriendListActivity;->mSettingText:Landroid/widget/TextView;

    const v1, 0x7f020258

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 599
    iget-object v0, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 600
    return-void
.end method

.method private SuccessBtndown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 646
    iput-boolean v2, p0, Lactivity/FriendListActivity;->RecentChatDeleteStatue:Z

    .line 647
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 648
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 650
    invoke-virtual {p0}, Lactivity/FriendListActivity;->ReadMsgDB()V

    .line 652
    return-void
.end method

.method private UpdateSetting()V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lactivity/FriendListActivity;->mSettingPage:Lactivity/FriendSettingPage;

    invoke-virtual {v0}, Lactivity/FriendSettingPage;->initList()V

    .line 295
    iget-object v0, p0, Lactivity/FriendListActivity;->mSettingPage:Lactivity/FriendSettingPage;

    invoke-virtual {v0}, Lactivity/FriendSettingPage;->getmSettingAdapter()Lactivity/SettingAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lactivity/SettingAdapter;->notifyDataSetChanged()V

    .line 296
    return-void
.end method

.method static synthetic access$0(Lactivity/FriendListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lactivity/FriendListActivity;->mContactSearch:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    invoke-direct {p0}, Lactivity/FriendListActivity;->UpdateSetting()V

    return-void
.end method

.method static synthetic access$2(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 815
    invoke-direct {p0}, Lactivity/FriendListActivity;->readContactDialog()V

    return-void
.end method

.method static synthetic access$3(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    invoke-direct {p0}, Lactivity/FriendListActivity;->readContactErrDialog()V

    return-void
.end method

.method static synthetic access$4(Lactivity/FriendListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lactivity/FriendListActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    invoke-direct {p0}, Lactivity/FriendListActivity;->ChatBtnDown()V

    return-void
.end method

.method static synthetic access$6(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    invoke-direct {p0}, Lactivity/FriendListActivity;->ContactBtnDown()V

    return-void
.end method

.method static synthetic access$7(Lactivity/FriendListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 585
    invoke-direct {p0}, Lactivity/FriendListActivity;->SettingBtnDown()V

    return-void
.end method

.method static synthetic access$8(Lactivity/FriendListActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 729
    invoke-direct {p0, p1, p2, p3, p4}, Lactivity/FriendListActivity;->deleteContactDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private deleteContactDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "msg"
    .parameter "tappleID"

    .prologue
    .line 730
    move-object v0, p4

    .line 731
    .local v0, appleID:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 732
    iget-object v2, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070042

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lactivity/FriendListActivity$5;

    invoke-direct {v3, p0, v0}, Lactivity/FriendListActivity$5;-><init>(Lactivity/FriendListActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 740
    iget-object v2, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f070043

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 741
    return-void
.end method

.method private exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 788
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 789
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/FriendListActivity$8;

    invoke-direct {v2, p0}, Lactivity/FriendListActivity$8;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 813
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 346
    iget-object v1, p0, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    iget-object v2, p0, Lactivity/FriendListActivity;->userDB:Lcom/DB/UserDB;

    invoke-virtual {v1, v2}, Lactivity/MyApplication;->setUserDB(Lcom/DB/UserDB;)V

    .line 347
    iget-object v1, p0, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    iget-object v2, p0, Lactivity/FriendListActivity;->messageDB:Lcom/DB/MessageDB;

    invoke-virtual {v1, v2}, Lactivity/MyApplication;->setMessageDB(Lcom/DB/MessageDB;)V

    .line 348
    iget-object v1, p0, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    iget-object v2, p0, Lactivity/FriendListActivity;->contactDB:Lcom/DB/ContactDB;

    invoke-virtual {v1, v2}, Lactivity/MyApplication;->setContactDB(Lcom/DB/ContactDB;)V

    .line 350
    iget-object v1, p0, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v1, p0}, Lactivity/MyApplication;->SetRecentChat(Lactivity/FriendListActivity;)V

    .line 354
    iget-object v1, p0, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v0

    .line 355
    .local v0, u:Lcom/common/User;
    iget-object v1, p0, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v1}, Lcom/setting/SharePreferenceUtil;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 356
    iget-object v1, p0, Lactivity/FriendListActivity;->userDB:Lcom/DB/UserDB;

    invoke-virtual {v1, v0}, Lcom/DB/UserDB;->updateUser(Lcom/common/User;)V

    .line 358
    return-void
.end method

.method private initUI()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 414
    new-instance v5, Landroid/view/MenuInflater;

    invoke-direct {v5, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lactivity/FriendListActivity;->mi:Landroid/view/MenuInflater;

    .line 416
    const v5, 0x7f0b0049

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lactivity/FriendListActivity;->myName:Landroid/widget/TextView;

    .line 418
    iget-object v5, p0, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v5}, Lactivity/MyApplication;->getCurUser()Lcom/common/User;

    move-result-object v4

    .line 422
    .local v4, u:Lcom/common/User;
    const v5, 0x7f0b004f

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager;

    iput-object v5, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    .line 423
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lactivity/FriendListActivity;->mListViews:Ljava/util/List;

    .line 424
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 425
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 426
    .local v1, lay1:Landroid/view/View;
    const v5, 0x7f030026

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 427
    .local v2, lay2:Landroid/view/View;
    const v5, 0x7f030027

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 428
    .local v3, lay3:Landroid/view/View;
    iget-object v5, p0, Lactivity/FriendListActivity;->mListViews:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v5, p0, Lactivity/FriendListActivity;->mListViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v5, p0, Lactivity/FriendListActivity;->mListViews:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v5, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lactivity/MyPagerAdapter;

    iget-object v7, p0, Lactivity/FriendListActivity;->mListViews:Ljava/util/List;

    invoke-direct {v6, v7}, Lactivity/MyPagerAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 432
    iget-object v5, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 433
    iget-object v5, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    new-instance v6, Lactivity/FriendListActivity$GuidePageChangeListener;

    invoke-direct {v6, p0}, Lactivity/FriendListActivity$GuidePageChangeListener;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 435
    const v5, 0x7f0b004c

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    .line 436
    iget-object v5, p0, Lactivity/FriendListActivity;->mBtnNew:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    const v5, 0x7f0b004b

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    .line 439
    iget-object v5, p0, Lactivity/FriendListActivity;->mBtnSuccess:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    const v5, 0x7f0b004a

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    .line 442
    iget-object v5, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    const v5, 0x7f0b0051

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lactivity/FriendListActivity;->mBtnChat:Landroid/widget/LinearLayout;

    .line 445
    iget-object v5, p0, Lactivity/FriendListActivity;->mBtnChat:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    const v5, 0x7f0b0052

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mImageChat:Landroid/widget/ImageView;

    .line 448
    const v5, 0x7f0b0054

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lactivity/FriendListActivity;->mBtnAddress:Landroid/widget/LinearLayout;

    .line 449
    iget-object v5, p0, Lactivity/FriendListActivity;->mBtnAddress:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    const v5, 0x7f0b0055

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mImageAddress:Landroid/widget/ImageView;

    .line 452
    const v5, 0x7f0b0057

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lactivity/FriendListActivity;->mBtnSetting:Landroid/widget/LinearLayout;

    .line 453
    iget-object v5, p0, Lactivity/FriendListActivity;->mBtnSetting:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    const v5, 0x7f0b0058

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mImageSetting:Landroid/widget/ImageView;

    .line 456
    const v5, 0x7f0b0053

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mChatText:Landroid/widget/TextView;

    .line 457
    iget-object v5, p0, Lactivity/FriendListActivity;->mChatText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 458
    const v5, 0x7f0b0056

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mAddressText:Landroid/widget/TextView;

    .line 459
    iget-object v5, p0, Lactivity/FriendListActivity;->mAddressText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 460
    const v5, 0x7f0b0059

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mSettingText:Landroid/widget/TextView;

    .line 461
    iget-object v5, p0, Lactivity/FriendListActivity;->mSettingText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 463
    const v5, 0x7f0b004d

    invoke-virtual {p0, v5}, Lactivity/FriendListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mLink:Landroid/widget/TextView;

    .line 465
    const v5, 0x7f0b00b1

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    .line 466
    iget-object v5, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    iget-object v6, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v6}, Lactivity/FriendChatPage;->getmRecentAdapter()Lactivity/RecentChatAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 468
    const v5, 0x7f0b00b2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    .line 469
    iget-object v5, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    iget-object v6, p0, Lactivity/FriendListActivity;->mContactPage:Lactivity/FriendContactPage;

    invoke-virtual {v6}, Lactivity/FriendContactPage;->getmContactAdapter()Lactivity/ContactAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 470
    iget-object v5, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v7, -0x100

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v5, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 473
    const v5, 0x7f0b00b3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lactivity/FriendListActivity;->mSettingListView:Landroid/widget/ListView;

    .line 474
    iget-object v5, p0, Lactivity/FriendListActivity;->mSettingListView:Landroid/widget/ListView;

    iget-object v6, p0, Lactivity/FriendListActivity;->mSettingPage:Lactivity/FriendSettingPage;

    invoke-virtual {v6}, Lactivity/FriendSettingPage;->getmSettingAdapter()Lactivity/SettingAdapter;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 475
    iget-object v5, p0, Lactivity/FriendListActivity;->mSettingPage:Lactivity/FriendSettingPage;

    invoke-virtual {v5}, Lactivity/FriendSettingPage;->initList()V

    .line 476
    iget-object v5, p0, Lactivity/FriendListActivity;->mSettingPage:Lactivity/FriendSettingPage;

    invoke-virtual {v5}, Lactivity/FriendSettingPage;->getmSettingAdapter()Lactivity/SettingAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lactivity/SettingAdapter;->notifyDataSetChanged()V

    .line 478
    iget-object v5, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setClickable(Z)V

    .line 479
    iget-object v5, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    new-instance v6, Lactivity/FriendListActivity$2;

    invoke-direct {v6, p0}, Lactivity/FriendListActivity$2;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 505
    iget-object v5, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    new-instance v6, Lactivity/FriendListActivity$3;

    invoke-direct {v6, p0}, Lactivity/FriendListActivity$3;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 549
    return-void
.end method

.method private readContactDialog()V
    .locals 3

    .prologue
    .line 816
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 817
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/FriendListActivity$9;

    invoke-direct {v2, p0}, Lactivity/FriendListActivity$9;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 824
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 825
    return-void
.end method

.method private readContactErrDialog()V
    .locals 3

    .prologue
    .line 721
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070061

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 722
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/FriendListActivity$4;

    invoke-direct {v2, p0}, Lactivity/FriendListActivity$4;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 727
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 728
    return-void
.end method


# virtual methods
.method public ReadContactDB()V
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Lactivity/FriendListActivity;->mContactPage:Lactivity/FriendContactPage;

    iget-object v2, p0, Lactivity/FriendListActivity;->mContactSearch:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lactivity/FriendContactPage;->ReadContactDBToContactList(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 407
    .local v0, selection:I
    iget-object v1, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/FriendListActivity;->mContactPage:Lactivity/FriendContactPage;

    invoke-virtual {v2}, Lactivity/FriendContactPage;->getmContactAdapter()Lactivity/ContactAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 408
    iget-object v1, p0, Lactivity/FriendListActivity;->mContactListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 411
    iget-object v1, p0, Lactivity/FriendListActivity;->mContactPage:Lactivity/FriendContactPage;

    invoke-virtual {v1}, Lactivity/FriendContactPage;->getmContactAdapter()Lactivity/ContactAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lactivity/ContactAdapter;->notifyDataSetChanged()V

    .line 412
    return-void
.end method

.method public ReadMsgDB()V
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lactivity/FriendListActivity;->RecentChatDeleteStatue:Z

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lactivity/FriendListActivity;->mChatSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->ReadMsgDBToRecentDeleteChat(Ljava/lang/String;)V

    .line 401
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lactivity/FriendListActivity;->mChatSearch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->ReadMsgDBToRecentChat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ReadMsgDB(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 387
    iget-boolean v0, p0, Lactivity/FriendListActivity;->RecentChatDeleteStatue:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Lactivity/FriendListActivity;->ReadMsgDBToRecentDeleteChat(Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Lactivity/FriendListActivity;->ReadMsgDBToRecentChat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ReadMsgDBToRecentChat(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 373
    iget-object v1, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v1, p1}, Lactivity/FriendChatPage;->ReadMsgDBToRecentChat(Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lactivity/FriendListActivity;->mChatSearch:Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 377
    .local v0, selection:I
    iget-object v1, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v2}, Lactivity/FriendChatPage;->getmRecentAdapter()Lactivity/RecentChatAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 378
    iget-object v1, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 379
    iget-object v1, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v1}, Lactivity/FriendChatPage;->getmRecentAdapter()Lactivity/RecentChatAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lactivity/RecentChatAdapter;->notifyDataSetChanged()V

    .line 381
    iget-object v1, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v1}, Lactivity/FriendChatPage;->getmRecentList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 382
    iget-object v1, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 385
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lactivity/FriendListActivity;->mBtnEdit:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public ReadMsgDBToRecentDeleteChat(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 360
    iget-object v1, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v1, p1}, Lactivity/FriendChatPage;->ReadMsgDBToRecentDeleteChat(Ljava/lang/String;)V

    .line 362
    iput-object p1, p0, Lactivity/FriendListActivity;->mChatSearch:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 364
    .local v0, selection:I
    iget-object v1, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    iget-object v2, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v2}, Lactivity/FriendChatPage;->getmRecentDeleteAdapter()Lactivity/RecentChatDeleteAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 365
    iget-object v1, p0, Lactivity/FriendListActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 366
    iget-object v1, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v1}, Lactivity/FriendChatPage;->getmRecentDeleteAdapter()Lactivity/RecentChatDeleteAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lactivity/RecentChatDeleteAdapter;->notifyDataSetChanged()V

    .line 368
    iget-object v1, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    invoke-virtual {v1}, Lactivity/FriendChatPage;->getmRecentDeleteList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 369
    invoke-direct {p0}, Lactivity/FriendListActivity;->SuccessBtndown()V

    .line 370
    :cond_0
    return-void
.end method

.method public UpdateMsgUI(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 879
    invoke-virtual {p0}, Lactivity/FriendListActivity;->ReadMsgDB()V

    .line 880
    return-void
.end method

.method public UpdateProcess()V
    .locals 0

    .prologue
    .line 886
    return-void
.end method

.method public UpdateStatus(B)V
    .locals 0
    .parameter "type"

    .prologue
    .line 873
    invoke-virtual {p0}, Lactivity/FriendListActivity;->updateMark()V

    .line 874
    return-void
.end method

.method public changeToSearchMsgView()V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public clearDataDialog()V
    .locals 3

    .prologue
    .line 744
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070060

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 745
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/FriendListActivity$6;

    invoke-direct {v2, p0}, Lactivity/FriendListActivity$6;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 753
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 754
    return-void
.end method

.method public exitLoginDialog()V
    .locals 3

    .prologue
    .line 757
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070040

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070042

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lactivity/FriendListActivity$7;

    invoke-direct {v2, p0}, Lactivity/FriendListActivity$7;-><init>(Lactivity/FriendListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 785
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 831
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 832
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.common.backKey"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 835
    iget-object v2, p0, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/setting/SharePreferenceUtil;->setIsBack(Z)V

    .line 837
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 838
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "status"

    const-string v3, "EXIT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lactivity/FriendListActivity;->setResult(ILandroid/content/Intent;)V

    .line 840
    invoke-virtual {p0}, Lactivity/FriendListActivity;->finish()V

    .line 841
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 584
    :goto_0
    :pswitch_0
    return-void

    .line 562
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 563
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lactivity/NewMessageActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 567
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    invoke-direct {p0}, Lactivity/FriendListActivity;->EditBtndown()V

    goto :goto_0

    .line 570
    :pswitch_3
    invoke-direct {p0}, Lactivity/FriendListActivity;->SuccessBtndown()V

    goto :goto_0

    .line 573
    :pswitch_4
    invoke-direct {p0}, Lactivity/FriendListActivity;->SettingBtnDown()V

    goto :goto_0

    .line 576
    :pswitch_5
    invoke-direct {p0}, Lactivity/FriendListActivity;->ContactBtnDown()V

    goto :goto_0

    .line 579
    :pswitch_6
    invoke-direct {p0}, Lactivity/FriendListActivity;->ChatBtnDown()V

    goto :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x7f0b004a
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 226
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->requestWindowFeature(I)Z

    .line 228
    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lactivity/FriendListActivity;->setContentView(I)V

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lactivity/FriendListActivity;->mChatSearch:Ljava/lang/String;

    .line 249
    const-string v0, ""

    iput-object v0, p0, Lactivity/FriendListActivity;->mContactSearch:Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Lactivity/FriendListActivity;->initData()V

    .line 257
    new-instance v0, Lactivity/FriendChatPage;

    iget-object v1, p0, Lactivity/FriendListActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lactivity/FriendChatPage;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->mChatPage:Lactivity/FriendChatPage;

    .line 258
    new-instance v0, Lactivity/FriendContactPage;

    iget-object v1, p0, Lactivity/FriendListActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lactivity/FriendContactPage;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->mContactPage:Lactivity/FriendContactPage;

    .line 259
    new-instance v0, Lactivity/FriendSettingPage;

    iget-object v1, p0, Lactivity/FriendListActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lactivity/FriendSettingPage;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lactivity/FriendListActivity;->mSettingPage:Lactivity/FriendSettingPage;

    .line 261
    invoke-direct {p0}, Lactivity/FriendListActivity;->initUI()V

    .line 263
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 673
    iget-object v0, p0, Lactivity/FriendListActivity;->mi:Landroid/view/MenuInflater;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 675
    invoke-super {p0, p1}, Lactivity/MyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 691
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 718
    :goto_0
    invoke-super {p0, p1}, Lactivity/MyActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 693
    :pswitch_0
    iget-object v0, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f07005d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v0, v1}, Lactivity/FriendListActivity;->exitDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :pswitch_data_0
    .packed-switch 0x7f0b00b6
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lactivity/MyActivity;->onPause()V

    .line 313
    iget-object v0, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 267
    invoke-super {p0}, Lactivity/MyActivity;->onResume()V

    .line 268
    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 269
    new-instance v1, Lcom/setting/SharePreferenceUtil;

    const-string v2, "saveUser"

    invoke-direct {v1, p0, v2}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/setting/SharePreferenceUtil;->setIsBack(Z)V

    .line 270
    iget-object v1, p0, Lactivity/FriendListActivity;->application:Lactivity/MyApplication;

    invoke-virtual {v1}, Lactivity/MyApplication;->getmNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 271
    .local v0, manager:Landroid/app/NotificationManager;
    if-eqz v0, :cond_0

    .line 272
    const/16 v1, 0x911

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lactivity/FriendListActivity;->ReadMsgDB()V

    .line 277
    invoke-virtual {p0}, Lactivity/FriendListActivity;->ReadContactDB()V

    .line 279
    iget-object v1, p0, Lactivity/FriendListActivity;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 290
    :goto_0
    invoke-virtual {p0}, Lactivity/FriendListActivity;->updateMark()V

    .line 291
    return-void

    .line 281
    :pswitch_0
    invoke-direct {p0}, Lactivity/FriendListActivity;->ChatBtnDown()V

    goto :goto_0

    .line 284
    :pswitch_1
    invoke-direct {p0}, Lactivity/FriendListActivity;->ContactBtnDown()V

    goto :goto_0

    .line 287
    :pswitch_2
    invoke-direct {p0}, Lactivity/FriendListActivity;->SettingBtnDown()V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateMark()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    iget-object v0, p0, Lactivity/FriendListActivity;->util:Lcom/setting/SharePreferenceUtil;

    invoke-virtual {v0}, Lcom/setting/SharePreferenceUtil;->getLinkStatus()I

    move-result v0

    iput v0, p0, Lactivity/FriendListActivity;->LinkStatus:I

    .line 300
    iget v0, p0, Lactivity/FriendListActivity;->LinkStatus:I

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lactivity/FriendListActivity;->mLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lactivity/FriendListActivity;->mLink:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070057

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    :goto_0
    return-void

    .line 303
    :cond_0
    iget v0, p0, Lactivity/FriendListActivity;->LinkStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 304
    iget-object v0, p0, Lactivity/FriendListActivity;->mLink:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lactivity/FriendListActivity;->mLink:Landroid/widget/TextView;

    iget-object v1, p0, Lactivity/FriendListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f070058

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lactivity/FriendListActivity;->mLink:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
