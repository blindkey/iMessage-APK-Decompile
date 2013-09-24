.class public Lactivity/RecentChatType;
.super Ljava/lang/Object;
.source "RecentChatType.java"


# static fields
.field public static RECENTCHATCOUNT:I

.field public static RECENT_VIEW_CHAT:I

.field public static RECENT_VIEW_SEARCH_BAR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lactivity/RecentChatType;->RECENT_VIEW_SEARCH_BAR:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lactivity/RecentChatType;->RECENT_VIEW_CHAT:I

    .line 6
    const/4 v0, 0x2

    sput v0, Lactivity/RecentChatType;->RECENTCHATCOUNT:I

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
