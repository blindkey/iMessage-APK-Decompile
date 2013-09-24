.class public Lcom/common/StringEllipsis;
.super Ljava/lang/Object;
.source "StringEllipsis.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;Landroid/graphics/Paint;F)Ljava/lang/String;
    .locals 9
    .parameter "text"
    .parameter "paint"
    .parameter "viewWidth"

    .prologue
    const/4 v8, 0x0

    .line 8
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 11
    .local v5, textWidth:F
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 12
    move-object v0, p0

    .line 14
    .local v0, ellipsisStr:Ljava/lang/String;
    cmpl-float v6, v5, p2

    if-lez v6, :cond_1

    .line 15
    const/4 v4, 0x0

    .line 16
    .local v4, tempWidth:F
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 17
    .local v2, strEnd:I
    const-string v1, "..."

    .line 20
    .local v1, plusStr:Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, -0x1

    .end local v2           #strEnd:I
    .local v3, strEnd:I
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 21
    cmpl-float v6, v4, p2

    if-lez v6, :cond_0

    if-gtz v3, :cond_3

    .line 24
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 28
    .end local v0           #ellipsisStr:Ljava/lang/String;
    .end local v1           #plusStr:Ljava/lang/String;
    .end local v3           #strEnd:I
    .end local v4           #tempWidth:F
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0       #ellipsisStr:Ljava/lang/String;
    .restart local v1       #plusStr:Ljava/lang/String;
    .restart local v3       #strEnd:I
    .restart local v4       #tempWidth:F
    :cond_3
    move v2, v3

    .end local v3           #strEnd:I
    .restart local v2       #strEnd:I
    goto :goto_0
.end method
