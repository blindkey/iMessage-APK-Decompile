.class Lcom/umeng/analytics/a/c;
.super Lorg/json/JSONObject;
.source "EKVHub.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/a;

.field final synthetic b:Lcom/umeng/analytics/a/b;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/b;Lcom/umeng/analytics/a/a;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    iput-object p1, p0, Lcom/umeng/analytics/a/c;->b:Lcom/umeng/analytics/a/b;

    iput-object p2, p0, Lcom/umeng/analytics/a/c;->a:Lcom/umeng/analytics/a/a;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    iget-object v0, p0, Lcom/umeng/analytics/a/c;->a:Lcom/umeng/analytics/a/a;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/a/a;->b(Lorg/json/JSONObject;)V

    .line 56
    return-void
.end method
