.class public Lactivity/RecentChatDeleteAdapter;
.super Landroid/widget/BaseAdapter;
.source "RecentChatDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/RecentChatDeleteAdapter$ViewHolder;,
        Lactivity/RecentChatDeleteAdapter$deleteButtonListener;,
        Lactivity/RecentChatDeleteAdapter$ifdeleteButtonListener;
    }
.end annotation


# instance fields
.field private final CHATSEARCH:I

.field private CurUser:Lcom/common/User;

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
            "Lactivity/RecentChatDeleteEntity;",
            ">;"
        }
    .end annotation
.end field

.field private messageDB:Lcom/DB/MessageDB;

.field private pre:I

.field private userDB:Lcom/DB/UserDB;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 1
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
            "Lactivity/RecentChatDeleteEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p3, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lactivity/RecentChatDeleteEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    const v0, 0x1234567

    iput v0, p0, Lactivity/RecentChatDeleteAdapter;->CHATSEARCH:I

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lactivity/RecentChatDeleteAdapter;->pre:I

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 53
    iput-object v0, p0, Lactivity/RecentChatDeleteAdapter;->imgs:[I

    .line 57
    iput-object p2, p0, Lactivity/RecentChatDeleteAdapter;->context:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter;->handler:Landroid/os/Handler;

    .line 59
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/RecentChatDeleteAdapter;->application:Lactivity/MyApplication;

    .line 61
    iput-object p3, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    .line 62
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/RecentChatDeleteAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 63
    return-void

    .line 51
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

.method static synthetic access$0(Lactivity/RecentChatDeleteAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Lactivity/RecentChatDeleteAdapter;)Lactivity/MyApplication;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->application:Lactivity/MyApplication;

    return-object v0
.end method

.method static synthetic access$2(Lactivity/RecentChatDeleteAdapter;Lcom/DB/MessageDB;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter;->messageDB:Lcom/DB/MessageDB;

    return-void
.end method

.method static synthetic access$3(Lactivity/RecentChatDeleteAdapter;Lcom/DB/UserDB;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter;->userDB:Lcom/DB/UserDB;

    return-void
.end method

.method static synthetic access$4(Lactivity/RecentChatDeleteAdapter;Lcom/common/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter;->CurUser:Lcom/common/User;

    return-void
.end method

.method static synthetic access$5(Lactivity/RecentChatDeleteAdapter;)Lcom/DB/MessageDB;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->messageDB:Lcom/DB/MessageDB;

    return-object v0
.end method

.method static synthetic access$6(Lactivity/RecentChatDeleteAdapter;)Lcom/common/User;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->CurUser:Lcom/common/User;

    return-object v0
.end method

.method static synthetic access$7(Lactivity/RecentChatDeleteAdapter;)Lcom/DB/UserDB;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->userDB:Lcom/DB/UserDB;

    return-object v0
.end method

.method static synthetic access$8(Lactivity/RecentChatDeleteAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lactivity/RecentChatDeleteAdapter;->pre:I

    return-void
.end method

.method static synthetic access$9(Lactivity/RecentChatDeleteAdapter;)I
    .locals 1
    .parameter

    .prologue
    .line 43
    iget v0, p0, Lactivity/RecentChatDeleteAdapter;->pre:I

    return v0
.end method

.method private setTextMsg(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 9
    .parameter "text"
    .parameter "msg"

    .prologue
    const/4 v8, -0x1

    .line 269
    const-string v6, ""

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, begin:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v1, v6, :cond_1

    .line 286
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 287
    return-void

    .line 272
    :cond_1
    const-string v6, "STARTFILE:"

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 273
    .local v5, start:I
    const-string v6, ":ENDFILE"

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 274
    .local v2, end:I
    if-eq v5, v8, :cond_0

    if-eq v2, v8, :cond_0

    .line 276
    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 278
    add-int/lit8 v6, v5, 0xa

    invoke-virtual {p2, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, file:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 282
    .local v4, index:I
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, FileName:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 284
    add-int/lit8 v1, v2, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 80
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 84
    iget-object v1, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/RecentChatDeleteEntity;

    .line 86
    .local v0, entity:Lactivity/RecentChatDeleteEntity;
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getType()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0xb

    const/4 v10, 0x0

    const/4 v9, 0x4

    .line 101
    move v3, p1

    .line 102
    .local v3, pos:I
    iget-object v5, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v5, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/RecentChatDeleteEntity;

    .line 103
    .local v0, entity:Lactivity/RecentChatDeleteEntity;
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getType()I

    move-result v5

    sget v6, Lactivity/RecentChatType;->RECENT_VIEW_CHAT:I

    if-ne v5, v6, :cond_4

    .line 104
    if-nez p2, :cond_1

    .line 105
    iget-object v5, p0, Lactivity/RecentChatDeleteAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03001c

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 106
    new-instance v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/RecentChatDeleteAdapter$ViewHolder;-><init>()V

    .line 108
    .local v1, holder:Lactivity/RecentChatDeleteAdapter$ViewHolder;
    const v5, 0x7f0b0081

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 107
    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 109
    const v5, 0x7f0b0083

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 110
    const v5, 0x7f0b0084

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 111
    const v5, 0x7f0b0085

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    .line 113
    const v5, 0x7f0b0086

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 112
    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->count:Landroid/widget/TextView;

    .line 116
    const v5, 0x7f0b0080

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 115
    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->ifdeletebutton:Landroid/widget/Button;

    .line 118
    const v5, 0x7f0b0087

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 117
    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->deletebutton:Landroid/widget/Button;

    .line 119
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getType()I

    move-result v5

    iput v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->type:I

    .line 120
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    :goto_0
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lactivity/RecentChatDeleteAdapter;->imgs:[I

    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getImg()I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {}, Lcom/common/TelPhoneConstant;->getFriendDeleteShowWidth()F

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/common/StringEllipsis;->getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getTime()Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, time:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v11, :cond_0

    .line 131
    const/16 v5, 0x10

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 132
    :cond_0
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->msg:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lactivity/RecentChatDeleteAdapter;->setTextMsg(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getifdeleteDown()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->ifdeletebutton:Landroid/widget/Button;

    const v6, 0x7f020266

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 140
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->deletebutton:Landroid/widget/Button;

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :goto_1
    new-instance v2, Lactivity/RecentChatDeleteAdapter$1;

    invoke-direct {v2, p0, v0, v3}, Lactivity/RecentChatDeleteAdapter$1;-><init>(Lactivity/RecentChatDeleteAdapter;Lactivity/RecentChatDeleteEntity;I)V

    .line 196
    .local v2, listener:Landroid/view/View$OnClickListener;
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->ifdeletebutton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->deletebutton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    new-instance v5, Lactivity/RecentChatDeleteAdapter$2;

    invoke-direct {v5, p0}, Lactivity/RecentChatDeleteAdapter$2;-><init>(Lactivity/RecentChatDeleteAdapter;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    .end local v2           #listener:Landroid/view/View$OnClickListener;
    .end local v4           #time:Ljava/lang/String;
    :goto_2
    return-object p2

    .line 123
    .end local v1           #holder:Lactivity/RecentChatDeleteAdapter$ViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/RecentChatDeleteAdapter$ViewHolder;
    goto :goto_0

    .line 145
    .restart local v4       #time:Ljava/lang/String;
    :cond_2
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->ifdeletebutton:Landroid/widget/Button;

    const v6, 0x7f020267

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 146
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->deletebutton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 147
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 149
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->count:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->count:Landroid/widget/TextView;

    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 153
    :cond_3
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->count:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 214
    .end local v1           #holder:Lactivity/RecentChatDeleteAdapter$ViewHolder;
    .end local v4           #time:Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_5

    .line 215
    iget-object v5, p0, Lactivity/RecentChatDeleteAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f03001f

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 216
    new-instance v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/RecentChatDeleteAdapter$ViewHolder;-><init>()V

    .line 217
    .restart local v1       #holder:Lactivity/RecentChatDeleteAdapter$ViewHolder;
    const v5, 0x7f0b00a9

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    #setter for: Lactivity/RecentChatDeleteAdapter$ViewHolder;->layout_search_bar:Landroid/widget/LinearLayout;
    invoke-static {v1, v5}, Lactivity/RecentChatDeleteAdapter$ViewHolder;->access$0(Lactivity/RecentChatDeleteAdapter$ViewHolder;Landroid/widget/LinearLayout;)V

    .line 218
    const v5, 0x7f0b00aa

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->search:Landroid/widget/TextView;

    .line 221
    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getType()I

    move-result v5

    iput v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->type:I

    .line 222
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 230
    :goto_3
    iget-object v5, v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;->search:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/RecentChatDeleteEntity;->getMsg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 227
    .end local v1           #holder:Lactivity/RecentChatDeleteAdapter$ViewHolder;
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/RecentChatDeleteAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/RecentChatDeleteAdapter$ViewHolder;
    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 90
    sget v0, Lactivity/RecentChatType;->RECENTCHATCOUNT:I

    return v0
.end method

.method public remove(Lactivity/RecentChatDeleteEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 94
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public removeItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 302
    iget-object v0, p0, Lactivity/RecentChatDeleteAdapter;->list:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 304
    return-void
.end method
