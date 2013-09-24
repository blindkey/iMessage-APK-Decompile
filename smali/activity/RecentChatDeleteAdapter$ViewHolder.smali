.class Lactivity/RecentChatDeleteAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RecentChatDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/RecentChatDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public count:Landroid/widget/TextView;

.field public date:Landroid/widget/TextView;

.field public deletebutton:Landroid/widget/Button;

.field public icon:Landroid/widget/ImageView;

.field public ifdeletebutton:Landroid/widget/Button;

.field private layout_search_bar:Landroid/widget/LinearLayout;

.field public msg:Landroid/widget/TextView;

.field public name:Landroid/widget/TextView;

.field public search:Landroid/widget/TextView;

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lactivity/RecentChatDeleteAdapter$ViewHolder;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 298
    iput-object p1, p0, Lactivity/RecentChatDeleteAdapter$ViewHolder;->layout_search_bar:Landroid/widget/LinearLayout;

    return-void
.end method
