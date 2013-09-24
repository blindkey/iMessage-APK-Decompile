.class public Lactivity/RecentChatAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/RecentChatAdapter$RecentViewType;,
        Lactivity/RecentChatAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final RecentViewCount:I = 0x2


# instance fields
.field private final CHATSEARCH:I

.field private application:Lactivity/MyApplication;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private imgs:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/RecentChatEntity;",
            ">;"
        }
    .end annotation
.end field

.field private util:Lcom/setting/SharePreferenceUtil;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 2
    .parameter "handler"
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<",
            "Lactivity/RecentChatEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lactivity/RecentChatEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lactivity/RecentChatAdapter;->CHATSEARCH:I

    .line 38
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 40
    iput-object v0, p0, Lactivity/RecentChatAdapter;->imgs:[I

    .line 51
    iput-object p2, p0, Lactivity/RecentChatAdapter;->context:Landroid/content/Context;

    .line 52
    iput-object p1, p0, Lactivity/RecentChatAdapter;->handler:Landroid/os/Handler;

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/RecentChatAdapter;->application:Lactivity/MyApplication;

    .line 54
    iput-object p3, p0, Lactivity/RecentChatAdapter;->list:Ljava/util/LinkedList;

    .line 55
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/RecentChatAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 56
    new-instance v0, Lcom/setting/SharePreferenceUtil;

    const-string v1, "saveUser"

    invoke-direct {v0, p2, v1}, Lcom/setting/SharePreferenceUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lactivity/RecentChatAdapter;->util:Lcom/setting/SharePreferenceUtil;

    .line 58
    return-void

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x16t 0x2t 0x2t 0x7ft
        0x6t 0x2t 0x2t 0x7ft
        0x7t 0x2t 0x2t 0x7ft
        0x8t 0x2t 0x2t 0x7ft
        0x9t 0x2t 0x2t 0x7ft
        0xat 0x2t 0x2t 0x7ft
        0xbt 0x2t 0x2t 0x7ft
        0xct 0x2t 0x2t 0x7ft
        0xdt 0x2t 0x2t 0x7ft
        0xet 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$0(Lactivity/RecentChatAdapter;)Lactivity/MyApplication;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lactivity/RecentChatAdapter;->application:Lactivity/MyApplication;

    return-object v0
.end method

.method static synthetic access$1(Lactivity/RecentChatAdapter;)Lcom/setting/SharePreferenceUtil;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lactivity/RecentChatAdapter;->util:Lcom/setting/SharePreferenceUtil;

    return-object v0
.end method

.method static synthetic access$2(Lactivity/RecentChatAdapter;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lactivity/RecentChatAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lactivity/RecentChatAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lactivity/RecentChatAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private setTextMsg(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9
    .parameter "text"
    .parameter "msg"

    .prologue
    const/4 v8, -0x1

    .line 93
    const-string v6, ""

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, begin:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 110
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 111
    return-void

    .line 96
    :cond_1
    const-string v6, "STARTFILE:"

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 97
    .local v5, start:I
    const-string v6, ":ENDFILE"

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 98
    .local v2, end:I
    if-eq v5, v8, :cond_0

    if-eq v2, v8, :cond_0

    .line 100
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 102
    add-int/lit8 v6, v5, 0xa

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, file:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 106
    .local v4, index:I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, FileName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 108
    add-int/lit8 v1, v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lactivity/RecentChatAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 69
    iget-object v0, p0, Lactivity/RecentChatAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 75
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 79
    iget-object v1, p0, Lactivity/RecentChatAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/RecentChatEntity;

    .line 81
    .local v0, entity:Lactivity/RecentChatEntity;
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getType()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xb

    .line 116
    iget-object v3, p0, Lactivity/RecentChatAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/RecentChatEntity;

    .line 117
    .local v0, entity:Lactivity/RecentChatEntity;
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getType()I

    move-result v3

    sget v4, Lactivity/RecentChatType;->RECENT_VIEW_CHAT:I

    if-ne v3, v4, :cond_3

    .line 118
    if-nez p2, :cond_1

    .line 119
    iget-object v3, p0, Lactivity/RecentChatAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001b

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    new-instance v1, Lactivity/RecentChatAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/RecentChatAdapter$ViewHolder;-><init>()V

    .line 122
    .local v1, holder:Lactivity/RecentChatAdapter$ViewHolder;
    const v3, 0x7f0b007a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 121
    iput-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 123
    const v3, 0x7f0b007b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f0b007c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 125
    const v3, 0x7f0b007d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    .line 126
    const v3, 0x7f0b007f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->chevron:Landroid/widget/ImageView;

    .line 128
    const v3, 0x7f0b007e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 127
    iput-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->count:Landroid/widget/TextView;

    .line 129
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getType()I

    move-result v3

    iput v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->type:I

    .line 130
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 135
    :goto_0
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lactivity/RecentChatAdapter;->imgs:[I

    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getImg()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lactivity/RecentChatAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-static {}, Lcom/common/TelPhoneConstant;->getFriendShowWidth()F

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getTime()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, time:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v7, :cond_0

    .line 142
    const/16 v3, 0x10

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 143
    :cond_0
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lactivity/RecentChatAdapter;->setTextMsg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 149
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->count:Landroid/widget/TextView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_1
    new-instance v3, Lactivity/RecentChatAdapter$1;

    invoke-direct {v3, p0, v0}, Lactivity/RecentChatAdapter$1;-><init>(Lactivity/RecentChatAdapter;Lactivity/RecentChatEntity;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    .end local v2           #time:Ljava/lang/String;
    :goto_2
    return-object p2

    .line 132
    .end local v1           #holder:Lactivity/RecentChatAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/RecentChatAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/RecentChatAdapter$ViewHolder;
    goto :goto_0

    .line 153
    .restart local v2       #time:Ljava/lang/String;
    :cond_2
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->count:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 181
    .end local v1           #holder:Lactivity/RecentChatAdapter$ViewHolder;
    .end local v2           #time:Ljava/lang/String;
    :cond_3
    if-nez p2, :cond_5

    .line 182
    iget-object v3, p0, Lactivity/RecentChatAdapter;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001e

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 183
    new-instance v1, Lactivity/RecentChatAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/RecentChatAdapter$ViewHolder;-><init>()V

    .line 184
    .restart local v1       #holder:Lactivity/RecentChatAdapter$ViewHolder;
    const v3, 0x7f0b00a7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    #setter for: Lactivity/RecentChatAdapter$ViewHolder;->layout_search_bar:Landroid/widget/LinearLayout;
    invoke-static {v1, v3}, Lactivity/RecentChatAdapter$ViewHolder;->access$0(Lactivity/RecentChatAdapter$ViewHolder;Landroid/widget/LinearLayout;)V

    .line 185
    const v3, 0x7f0b00a8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->search:Landroid/widget/EditText;

    .line 206
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getType()I

    move-result v3

    iput v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->type:I

    .line 207
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 212
    :goto_3
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->search:Landroid/widget/EditText;

    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {v0}, Lactivity/RecentChatEntity;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->search:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 216
    :cond_4
    iget-object v3, v1, Lactivity/RecentChatAdapter$ViewHolder;->search:Landroid/widget/EditText;

    new-instance v4, Lactivity/RecentChatAdapter$2;

    invoke-direct {v4, p0}, Lactivity/RecentChatAdapter$2;-><init>(Lactivity/RecentChatAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_2

    .line 209
    .end local v1           #holder:Lactivity/RecentChatAdapter$ViewHolder;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/RecentChatAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/RecentChatAdapter$ViewHolder;
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lactivity/RecentChatType;->RECENTCHATCOUNT:I

    return v0
.end method

.method public remove(Lactivity/RecentChatEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 89
    iget-object v0, p0, Lactivity/RecentChatAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method
