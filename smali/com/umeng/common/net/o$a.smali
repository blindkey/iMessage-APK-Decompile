.class public final enum Lcom/umeng/common/net/o$a;
.super Ljava/lang/Enum;
.source "ReportResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/common/net/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/umeng/common/net/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/umeng/common/net/o$a;

.field public static final enum b:Lcom/umeng/common/net/o$a;

.field private static final synthetic c:[Lcom/umeng/common/net/o$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/umeng/common/net/o$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/umeng/common/net/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    new-instance v0, Lcom/umeng/common/net/o$a;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3}, Lcom/umeng/common/net/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/common/net/o$a;

    sget-object v1, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/common/net/o$a;->c:[Lcom/umeng/common/net/o$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/common/net/o$a;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/umeng/common/net/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/common/net/o$a;

    return-object v0
.end method

.method public static values()[Lcom/umeng/common/net/o$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/umeng/common/net/o$a;->c:[Lcom/umeng/common/net/o$a;

    invoke-virtual {v0}, [Lcom/umeng/common/net/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/common/net/o$a;

    return-object v0
.end method
