.class Lactivity/RecentChatAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecentChatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/RecentChatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public chevron:Landroid/widget/ImageView;

.field public count:Landroid/widget/TextView;

.field public date:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field private layout_search_bar:Landroid/widget/LinearLayout;

.field public msg:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public search:Landroid/widget/EditText;

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lactivity/RecentChatAdapter$ViewHolder;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lactivity/RecentChatAdapter$ViewHolder;->layout_search_bar:Landroid/widget/LinearLayout;

    return-void
.end method
