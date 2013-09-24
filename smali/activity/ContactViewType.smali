.class public Lactivity/ContactViewType;
.super Ljava/lang/Object;
.source "ContactViewType.java"


# static fields
.field public static CONTACT_VIEW_COUNT:I

.field public static CONTACT_VIEW_LIST:I

.field public static CONTACT_VIEW_SEARCH_BAR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lactivity/ContactViewType;->CONTACT_VIEW_SEARCH_BAR:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lactivity/ContactViewType;->CONTACT_VIEW_LIST:I

    .line 6
    const/4 v0, 0x2

    sput v0, Lactivity/ContactViewType;->CONTACT_VIEW_COUNT:I

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
