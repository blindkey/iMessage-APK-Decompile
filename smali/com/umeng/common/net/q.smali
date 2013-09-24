.class final Lcom/umeng/common/net/q;
.super Ljava/lang/Object;
.source "ResUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/umeng/common/net/q;->a:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/umeng/common/net/q;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/umeng/common/net/p;->a(Ljava/io/File;)V

    .line 141
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/common/net/p;->a(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 142
    return-void
.end method
