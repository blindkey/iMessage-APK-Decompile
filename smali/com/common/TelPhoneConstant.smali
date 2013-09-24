.class public Lcom/common/TelPhoneConstant;
.super Ljava/lang/Object;
.source "TelPhoneConstant.java"


# static fields
.field public static height:F

.field public static width:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddToContactBackShowWidth()F
    .locals 2

    .prologue
    .line 17
    sget v0, Lcom/common/TelPhoneConstant;->width:F

    const/high16 v1, 0x4316

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getChatShowWidth()F
    .locals 2

    .prologue
    .line 14
    sget v0, Lcom/common/TelPhoneConstant;->width:F

    const/high16 v1, 0x437a

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getFriendDeleteShowWidth()F
    .locals 2

    .prologue
    .line 11
    sget v0, Lcom/common/TelPhoneConstant;->width:F

    const/high16 v1, 0x4387

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getFriendShowWidth()F
    .locals 2

    .prologue
    .line 8
    sget v0, Lcom/common/TelPhoneConstant;->width:F

    const/high16 v1, 0x4391

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getImageBarLeftSpace()F
    .locals 2

    .prologue
    .line 33
    sget v0, Lcom/common/TelPhoneConstant;->width:F

    const/high16 v1, 0x4248

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getNewMessageSendFileShowWidth()F
    .locals 2

    .prologue
    .line 23
    sget v0, Lcom/common/TelPhoneConstant;->width:F

    const/high16 v1, 0x437a

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getNewMessageToUserShowWidth()F
    .locals 2

    .prologue
    .line 20
    sget v0, Lcom/common/TelPhoneConstant;->width:F

    const/high16 v1, 0x4387

    mul-float/2addr v0, v1

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    return v0
.end method

.method public static getSendFileShowHeight()F
    .locals 2

    .prologue
    .line 26
    sget v0, Lcom/common/TelPhoneConstant;->height:F

    const/high16 v1, 0x4234

    mul-float/2addr v0, v1

    const v1, 0x44558000

    div-float/2addr v0, v1

    return v0
.end method

.method public static getToUserShowHeight()F
    .locals 2

    .prologue
    .line 29
    sget v0, Lcom/common/TelPhoneConstant;->height:F

    const/high16 v1, 0x4234

    mul-float/2addr v0, v1

    const v1, 0x44558000

    div-float/2addr v0, v1

    return v0
.end method
