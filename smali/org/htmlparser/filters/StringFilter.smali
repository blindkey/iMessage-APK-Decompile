.class public Lorg/htmlparser/filters/StringFilter;
.super Ljava/lang/Object;
.source "StringFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# instance fields
.field protected mCaseSensitive:Z

.field protected mLocale:Ljava/util/Locale;

.field protected mPattern:Ljava/lang/String;

.field protected mUpperPattern:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/htmlparser/filters/StringFilter;-><init>(Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/filters/StringFilter;-><init>(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pattern"
    .parameter "sensitive"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/htmlparser/filters/StringFilter;-><init>(Ljava/lang/String;ZLjava/util/Locale;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/util/Locale;)V
    .locals 0
    .parameter "pattern"
    .parameter "sensitive"
    .parameter "locale"

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/htmlparser/filters/StringFilter;->mPattern:Ljava/lang/String;

    .line 108
    iput-boolean p2, p0, Lorg/htmlparser/filters/StringFilter;->mCaseSensitive:Z

    .line 109
    if-nez p3, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .end local p3
    :cond_0
    iput-object p3, p0, Lorg/htmlparser/filters/StringFilter;->mLocale:Ljava/util/Locale;

    .line 110
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->setUpperPattern()V

    .line 111
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, ret:Z
    instance-of v2, p1, Lorg/htmlparser/Text;

    if-eqz v2, :cond_1

    .line 204
    check-cast p1, Lorg/htmlparser/Text;

    .end local p1
    invoke-interface {p1}, Lorg/htmlparser/Text;->getText()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, string:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 206
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 207
    :cond_0
    const/4 v2, -0x1

    iget-object v3, p0, Lorg/htmlparser/filters/StringFilter;->mUpperPattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    .line 210
    .end local v1           #string:Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 207
    .restart local v1       #string:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaseSensitive()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/htmlparser/filters/StringFilter;->mCaseSensitive:Z

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/htmlparser/filters/StringFilter;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/htmlparser/filters/StringFilter;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public setCaseSensitive(Z)V
    .locals 0
    .parameter "sensitive"

    .prologue
    .line 144
    iput-boolean p1, p0, Lorg/htmlparser/filters/StringFilter;->mCaseSensitive:Z

    .line 145
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->setUpperPattern()V

    .line 146
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0
    .parameter "locale"

    .prologue
    .line 163
    iput-object p1, p0, Lorg/htmlparser/filters/StringFilter;->mLocale:Ljava/util/Locale;

    .line 164
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->setUpperPattern()V

    .line 165
    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0
    .parameter "pattern"

    .prologue
    .line 182
    iput-object p1, p0, Lorg/htmlparser/filters/StringFilter;->mPattern:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->setUpperPattern()V

    .line 184
    return-void
.end method

.method protected setUpperPattern()V
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->getCaseSensitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->getPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/StringFilter;->mUpperPattern:Ljava/lang/String;

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/filters/StringFilter;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/StringFilter;->mUpperPattern:Ljava/lang/String;

    goto :goto_0
.end method
