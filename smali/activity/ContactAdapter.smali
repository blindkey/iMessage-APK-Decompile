.class public Lactivity/ContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lactivity/ContactAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final CONTACTSEARCH:I

.field private application:Lactivity/MyApplication;

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private imgs:[I

.field private inflater:Landroid/view/LayoutInflater;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lactivity/ContactListEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
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
            "Lactivity/ContactListEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, list:Ljava/util/List;,"Ljava/util/List<Lactivity/ContactListEntity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lactivity/ContactAdapter;->CONTACTSEARCH:I

    .line 35
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 37
    iput-object v0, p0, Lactivity/ContactAdapter;->imgs:[I

    .line 41
    iput-object p2, p0, Lactivity/ContactAdapter;->context:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lactivity/ContactAdapter;->handler:Landroid/os/Handler;

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lactivity/MyApplication;

    iput-object v0, p0, Lactivity/ContactAdapter;->application:Lactivity/MyApplication;

    .line 44
    iput-object p3, p0, Lactivity/ContactAdapter;->list:Ljava/util/List;

    .line 45
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lactivity/ContactAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 46
    return-void

    .line 35
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

.method static synthetic access$0(Lactivity/ContactAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lactivity/ContactAdapter;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lactivity/ContactAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 57
    iget-object v0, p0, Lactivity/ContactAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 67
    iget-object v1, p0, Lactivity/ContactAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ContactListEntity;

    .line 69
    .local v0, entity:Lactivity/ContactListEntity;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getType()I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 84
    iget-object v2, p0, Lactivity/ContactAdapter;->list:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lactivity/ContactListEntity;

    .line 85
    .local v0, entity:Lactivity/ContactListEntity;
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getType()I

    move-result v2

    sget v3, Lactivity/ContactViewType;->CONTACT_VIEW_LIST:I

    if-ne v2, v3, :cond_1

    .line 86
    if-nez p2, :cond_0

    .line 87
    iget-object v2, p0, Lactivity/ContactAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 88
    new-instance v1, Lactivity/ContactAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/ContactAdapter$ViewHolder;-><init>()V

    .line 90
    .local v1, holder:Lactivity/ContactAdapter$ViewHolder;
    const v2, 0x7f0b003c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 89
    iput-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 91
    const v2, 0x7f0b003e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f0b003f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->AppleId:Landroid/widget/TextView;

    .line 93
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getType()I

    move-result v2

    iput v2, v1, Lactivity/ContactAdapter$ViewHolder;->type:I

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_0
    iget-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lactivity/ContactAdapter;->imgs:[I

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getImg()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    iget-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->AppleId:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :goto_1
    return-object p2

    .line 96
    .end local v1           #holder:Lactivity/ContactAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/ContactAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/ContactAdapter$ViewHolder;
    goto :goto_0

    .line 103
    .end local v1           #holder:Lactivity/ContactAdapter$ViewHolder;
    :cond_1
    if-nez p2, :cond_2

    .line 104
    iget-object v2, p0, Lactivity/ContactAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001e

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 105
    new-instance v1, Lactivity/ContactAdapter$ViewHolder;

    invoke-direct {v1}, Lactivity/ContactAdapter$ViewHolder;-><init>()V

    .line 106
    .restart local v1       #holder:Lactivity/ContactAdapter$ViewHolder;
    const v2, 0x7f0b00a7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->layout_search_bar:Landroid/widget/LinearLayout;

    .line 107
    const v2, 0x7f0b00a8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->search:Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0}, Lactivity/ContactListEntity;->getType()I

    move-result v2

    iput v2, v1, Lactivity/ContactAdapter$ViewHolder;->type:I

    .line 133
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    :goto_2
    iget-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->search:Landroid/widget/TextView;

    invoke-virtual {v0}, Lactivity/ContactListEntity;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->search:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 140
    iget-object v2, v1, Lactivity/ContactAdapter$ViewHolder;->search:Landroid/widget/TextView;

    new-instance v3, Lactivity/ContactAdapter$1;

    invoke-direct {v3, p0}, Lactivity/ContactAdapter$1;-><init>(Lactivity/ContactAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 135
    .end local v1           #holder:Lactivity/ContactAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lactivity/ContactAdapter$ViewHolder;

    .restart local v1       #holder:Lactivity/ContactAdapter$ViewHolder;
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 73
    sget v0, Lactivity/ContactViewType;->CONTACT_VIEW_COUNT:I

    return v0
.end method

.method public remove(Lactivity/ContactListEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 77
    iget-object v0, p0, Lactivity/ContactAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method
