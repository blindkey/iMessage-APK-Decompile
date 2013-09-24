.class public Lactivity/SettingViewType;
.super Ljava/lang/Object;
.source "SettingViewType.java"


# static fields
.field public static SETTING_VIEW_COUNT:I

.field public static SETTING_VIEW_NORMAL:I

.field public static SETTING_VIEW_NORMAL_BUTTOM:I

.field public static SETTING_VIEW_RED_BUTTOM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const/4 v0, 0x0

    sput v0, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL:I

    .line 5
    const/4 v0, 0x1

    sput v0, Lactivity/SettingViewType;->SETTING_VIEW_NORMAL_BUTTOM:I

    .line 6
    const/4 v0, 0x2

    sput v0, Lactivity/SettingViewType;->SETTING_VIEW_RED_BUTTOM:I

    .line 7
    const/4 v0, 0x3

    sput v0, Lactivity/SettingViewType;->SETTING_VIEW_COUNT:I

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
