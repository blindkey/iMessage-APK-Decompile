.class public Lorg/htmlparser/tags/OptionTag;
.super Lorg/htmlparser/tags/CompositeTag;
.source "OptionTag.java"


# static fields
.field private static final mEndTagEnders:[Ljava/lang/String;

.field private static final mEnders:[Ljava/lang/String;

.field private static final mIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "OPTION"

    aput-object v1, v0, v2

    sput-object v0, Lorg/htmlparser/tags/OptionTag;->mIds:[Ljava/lang/String;

    .line 42
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "INPUT"

    aput-object v1, v0, v2

    const-string v1, "TEXTAREA"

    aput-object v1, v0, v3

    const-string v1, "SELECT"

    aput-object v1, v0, v4

    const-string v1, "OPTION"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/tags/OptionTag;->mEnders:[Ljava/lang/String;

    .line 47
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "SELECT"

    aput-object v1, v0, v2

    const-string v1, "FORM"

    aput-object v1, v0, v3

    const-string v1, "BODY"

    aput-object v1, v0, v4

    const-string v1, "HTML"

    aput-object v1, v0, v5

    sput-object v0, Lorg/htmlparser/tags/OptionTag;->mEndTagEnders:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/htmlparser/tags/CompositeTag;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public getEndTagEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/htmlparser/tags/OptionTag;->mEndTagEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnders()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/htmlparser/tags/OptionTag;->mEnders:[Ljava/lang/String;

    return-object v0
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/htmlparser/tags/OptionTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getOptionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/htmlparser/tags/OptionTag;->toPlainTextString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "VALUE"

    invoke-virtual {p0, v0}, Lorg/htmlparser/tags/OptionTag;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 99
    const-string v0, "VALUE"

    invoke-virtual {p0, v0, p1}, Lorg/htmlparser/tags/OptionTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 117
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "OPTION VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/htmlparser/tags/OptionTag;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " TEXT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/htmlparser/tags/OptionTag;->getOptionText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, output:Ljava/lang/String;
    return-object v0
.end method
