.class Lcom/umeng/analytics/a/j;
.super Lorg/json/JSONObject;
.source "LogBody.java"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/g;

.field final synthetic b:Lcom/umeng/analytics/a/i;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/i;Lcom/umeng/analytics/a/g;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/umeng/analytics/a/j;->b:Lcom/umeng/analytics/a/i;

    iput-object p2, p0, Lcom/umeng/analytics/a/j;->a:Lcom/umeng/analytics/a/g;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 180
    iget-object v0, p0, Lcom/umeng/analytics/a/j;->a:Lcom/umeng/analytics/a/g;

    invoke-interface {v0, p0}, Lcom/umeng/analytics/a/g;->b(Lorg/json/JSONObject;)V

    .line 181
    return-void
.end method
