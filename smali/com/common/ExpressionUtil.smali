.class public Lcom/common/ExpressionUtil;
.super Ljava/lang/Object;
.source "ExpressionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dealExpression(Landroid/content/Context;Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V
    .locals 9
    .parameter "context"
    .parameter "spannableString"
    .parameter "patten"
    .parameter "start"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 26
    .local v5, matcher:Ljava/util/regex/Matcher;
    :cond_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_2

    .line 45
    :cond_1
    :goto_0
    return-void

    .line 27
    :cond_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 28
    .local v4, key:Ljava/lang/String;
    const-string v7, "Key"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    if-lt v7, p3, :cond_0

    .line 32
    const-class v7, Lcom/chat/R$drawable;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 33
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 34
    .local v6, resId:I
    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    .local v3, imageSpan:Landroid/text/style/ImageSpan;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int v1, v7, v8

    .line 38
    .local v1, end:I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    const/16 v8, 0x11

    invoke-virtual {p1, v3, v7, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 39
    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 40
    invoke-static {p0, p1, p2, v1}, Lcom/common/ExpressionUtil;->dealExpression(Landroid/content/Context;Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V

    goto :goto_0
.end method

.method public static getExpressionString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 6
    .parameter "context"
    .parameter "str"
    .parameter "zhengze"

    .prologue
    .line 48
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u8fdb\u6765\u7684\u5185\u5bb9 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 50
    .local v2, spannableString:Landroid/text/SpannableString;
    const/4 v3, 0x2

    invoke-static {p2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 52
    .local v1, sinaPatten:Ljava/util/regex/Pattern;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, v2, v1, v3}, Lcom/common/ExpressionUtil;->dealExpression(Landroid/content/Context;Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v2

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "dealExpression"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
