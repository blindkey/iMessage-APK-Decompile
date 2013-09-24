.class public Lactivity/SettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/SettingAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final ABOUTMESSAGE:I = 0x8

.field private static final CHECKINGUPDATE:I = 0x7

.field private static final CLEARDATA:I = 0x5

.field private static final GETFROMTHESYSTEMCONTACT:I = 0x4

.field private static final SETTINGEXIT:I = 0x2

.field protected static final UPDATESETTING:I = 0x3


# instance fields
.field private application:Lactivity/MyApplication;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lactivity/SettingListEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendListActivity:Lactivity/FriendListActivity;

.field private util:Lcom/setting/SharePreferenceUtil;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "handler"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lactivity/SettingListEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lactivity/SettingListEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    iput-object p2, p0, Lactivity/SettingAdapter;->context:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lactivity/SettingAdapter;->handler:Landroid/os/Handler;

    .line 51
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/SettingAdapter;->application:Lactivity/MyApplication;

    .line 53
    new-instance v0, Lcom/setting/SharePreferenceUtil;

    const-string v1, "saveUser"

    invoke-direct {v0, p2, v1}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/SettingAdapter;->util:Lcom/setting/SharePreferenceUtil;

    .line 54
    iput-object p3, p0, Lactivity/SettingAdapter;->list:Ljava/util/List;

    .line 55
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/SettingAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method

.method static synthetic access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lactivity/SettingAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteContactDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 91
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lactivity/SettingAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 67
    iget-object v0, p0, Lactivity/SettingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 77
    iget-object v1, p0, Lactivity/SettingAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/SettingListEntity;

    .line 79
    .local v0, entity:Lactivity/SettingListEntity;
    invoke-virtual {v0}, Lactivity/SettingListEntity;->getType()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0b00ac

    const v6, 0x7f0b00ab

    .line 96
    iget-object v4, p0, Lactivity/SettingAdapter;->list:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/SettingListEntity;

    .line 97
    .local v0, entity:Lactivity/SettingListEntity;
    move v3, p1

    .line 98
    .local v3, pos:I
    new-instance v2, Lactivity/SettingAdapter$1;

    invoke-direct {v2, p0, v3}, Lactivity/SettingAdapter$1;-><init>(Lactivity/SettingAdapter;I)V

    .line 149
    .local v2, listener:Landroid/view/View$OnClickListener;
    invoke-virtual {v0}, Lactivity/SettingListEntity;->getType()I

    move-result v4

    sget v5, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL_BUTTOM:I

    if-ne v4, v5, :cond_2

    .line 150
    if-nez p2, :cond_1

    .line 151
    iget-object v4, p0, Lactivity/SettingAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030020

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 152
    new-instance v1, Lactivity/SettingAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/SettingAdapter$ViewHolder;-><init>()V

    .line 154
    .local v1, holder:Lactivity/SettingAdapter$ViewHolder;
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 153
    iput-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 155
    invoke-virtual {v0}, Lactivity/SettingListEntity;->getType()I

    move-result v4

    iput v4, v1, Lactivity/SettingAdapter$ViewHolder;->type:I

    .line 157
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 156
    iput-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->buttom:Landroid/widget/RelativeLayout;

    .line 158
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    :goto_0
    iget-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/SettingListEntity;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->buttom:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .end local v1           #holder:Lactivity/SettingAdapter$ViewHolder;
    :cond_0
    :goto_1
    return-object p2

    .line 160
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/SettingAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/SettingAdapter$ViewHolder;
    goto :goto_0

    .line 165
    .end local v1           #holder:Lactivity/SettingAdapter$ViewHolder;
    :cond_2
    invoke-virtual {v0}, Lactivity/SettingListEntity;->getType()I

    move-result v4

    sget v5, Lactivity/SettingViewType;->SETTING_VIEW_RED_BUTTOM:I

    if-ne v4, v5, :cond_0

    .line 166
    if-nez p2, :cond_3

    .line 167
    iget-object v4, p0, Lactivity/SettingAdapter;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030021

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 168
    new-instance v1, Lactivity/SettingAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/SettingAdapter$ViewHolder;-><init>()V

    .line 170
    .restart local v1       #holder:Lactivity/SettingAdapter$ViewHolder;
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 169
    iput-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 171
    iput-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->buttom:Landroid/widget/RelativeLayout;

    .line 173
    invoke-virtual {v0}, Lactivity/SettingListEntity;->getType()I

    move-result v4

    iput v4, v1, Lactivity/SettingAdapter$ViewHolder;->type:I

    .line 174
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    :goto_2
    iget-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/SettingListEntity;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v4, v1, Lactivity/SettingAdapter$ViewHolder;->buttom:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 176
    .end local v1           #holder:Lactivity/SettingAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/SettingAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/SettingAdapter$ViewHolder;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lactivity/SettingViewType;->SETTING_VIEW_COUNT:I

    return v0
.end method

.method public remove(Lactivity/ContactListEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 87
    iget-object v0, p0, Lactivity/SettingAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method
