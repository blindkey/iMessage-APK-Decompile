.class Lcom/umeng/analytics/e;
.super Lorg/json/JSONObject;
.source "PolicyManager.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 285
    iput-object p1, p0, Lcom/umeng/analytics/e;->a:Lcom/umeng/analytics/d;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 287
    iget-object v0, p0, Lcom/umeng/analytics/e;->a:Lcom/umeng/analytics/d;

    iget-object v0, v0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/a/f;->b(Lorg/json/JSONObject;)V

    .line 288
    return-void
.end method
