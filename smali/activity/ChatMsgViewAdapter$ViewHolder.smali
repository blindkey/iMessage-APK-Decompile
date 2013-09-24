.class Lactivity/ChatMsgViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ChatMsgViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lactivity/ChatMsgViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public delete:Landroid/widget/ImageView;

.field public emailButton:Landroid/widget/Button;

.field public icon:Landroid/widget/ImageView;

.field public isComMsg:Z

.field public isDate:Z

.field public linkButton:Landroid/widget/Button;

.field public tvContent:Landroid/widget/TextView;

.field public tvSendTime:Landroid/widget/TextView;

.field public tvUserName:Landroid/widget/TextView;

.field public viewType:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lactivity/ChatMsgViewAdapter$ViewHolder;->isComMsg:Z

    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lactivity/ChatMsgViewAdapter$ViewHolder;->isDate:Z

    .line 443
    return-void
.end method
