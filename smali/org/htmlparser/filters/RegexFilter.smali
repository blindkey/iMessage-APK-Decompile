.class public Lorg/htmlparser/filters/RegexFilter;
.super Ljava/lang/Object;
.source "RegexFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# static fields
.field public static final FIND:I = 0x3

.field public static final LOOKINGAT:I = 0x2

.field public static final MATCH:I = 0x1


# instance fields
.field protected mPattern:Ljava/util/regex/Pattern;

.field protected mPatternString:Ljava/lang/String;

.field protected mStrategy:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 108
    const-string v0, ".*"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/htmlparser/filters/RegexFilter;-><init>(Ljava/lang/String;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 118
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/filters/RegexFilter;-><init>(Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "pattern"
    .parameter "strategy"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p0, p1}, Lorg/htmlparser/filters/RegexFilter;->setPattern(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, p2}, Lorg/htmlparser/filters/RegexFilter;->setStrategy(I)V

    .line 139
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 4
    .parameter "node"

    .prologue
    .line 194
    const/4 v1, 0x0

    .line 195
    .local v1, ret:Z
    instance-of v3, p1, Lorg/htmlparser/Text;

    if-eqz v3, :cond_0

    .line 197
    check-cast p1, Lorg/htmlparser/Text;

    .end local p1
    invoke-interface {p1}, Lorg/htmlparser/Text;->getText()Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, string:Ljava/lang/String;
    iget-object v3, p0, Lorg/htmlparser/filters/RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 199
    .local v0, matcher:Ljava/util/regex/Matcher;
    iget v3, p0, Lorg/htmlparser/filters/RegexFilter;->mStrategy:I

    packed-switch v3, :pswitch_data_0

    .line 209
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 214
    .end local v0           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 202
    .restart local v0       #matcher:Ljava/util/regex/Matcher;
    .restart local v2       #string:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 203
    goto :goto_0

    .line 205
    :pswitch_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    .line 206
    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/htmlparser/filters/RegexFilter;->mPatternString:Ljava/lang/String;

    return-object v0
.end method

.method public getStrategy()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/htmlparser/filters/RegexFilter;->mStrategy:I

    return v0
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 156
    iput-object p1, p0, Lorg/htmlparser/filters/RegexFilter;->mPatternString:Ljava/lang/String;

    .line 157
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/RegexFilter;->mPattern:Ljava/util/regex/Pattern;

    .line 158
    return-void
.end method

.method public setStrategy(I)V
    .locals 3
    .parameter "strategy"

    .prologue
    .line 175
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "illegal strategy ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    iput p1, p0, Lorg/htmlparser/filters/RegexFilter;->mStrategy:I

    .line 180
    return-void
.end method
