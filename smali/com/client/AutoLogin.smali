.class public Lcom/client/AutoLogin;
.super Ljava/lang/Thread;
.source "AutoLogin.java"


# instance fields
.field private client:Lcom/client/Client;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/client/Client;)V
    .locals 0
    .parameter "context"
    .parameter "client"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/client/AutoLogin;->client:Lcom/client/Client;

    .line 10
    iput-object p1, p0, Lcom/client/AutoLogin;->context:Landroid/content/Context;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method
