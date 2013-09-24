.class public Lcom/common/TranProcess;
.super Ljava/lang/Object;
.source "TranProcess.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SETALLERROR:I = 0x0

.field public static final SETTHEERROR:I = 0x2

.field public static final UPDATEPROCESS:I = 0x1

.field private static final serialVersionUID:J = 0x404658L


# instance fields
.field private Type:I

.field private msgid:J

.field private process:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgid()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/common/TranProcess;->msgid:J

    return-wide v0
.end method

.method public getProcess()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/common/TranProcess;->process:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/common/TranProcess;->Type:I

    return v0
.end method

.method public setAllError()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/common/TranProcess;->Type:I

    .line 15
    return-void
.end method

.method public setTheError(J)V
    .locals 1
    .parameter "msgid"

    .prologue
    .line 17
    const/4 v0, 0x2

    iput v0, p0, Lcom/common/TranProcess;->Type:I

    .line 18
    iput-wide p1, p0, Lcom/common/TranProcess;->msgid:J

    .line 19
    return-void
.end method

.method public setUpdateThe(JI)V
    .locals 1
    .parameter "msgid"
    .parameter "process"

    .prologue
    .line 21
    iput p3, p0, Lcom/common/TranProcess;->process:I

    .line 22
    iput-wide p1, p0, Lcom/common/TranProcess;->msgid:J

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/common/TranProcess;->Type:I

    .line 24
    return-void
.end method
