.class public Lactivity/SettingListEntity;
.super Ljava/lang/Object;
.source "SettingListEntity.java"


# instance fields
.field private text:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lactivity/SettingListEntity;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lactivity/SettingListEntity;->type:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 7
    iput-object p1, p0, Lactivity/SettingListEntity;->text:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 13
    iput p1, p0, Lactivity/SettingListEntity;->type:I

    .line 14
    return-void
.end method
