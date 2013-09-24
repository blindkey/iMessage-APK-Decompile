.class public Lorg/htmlparser/visitors/StringFindingVisitor;
.super Lorg/htmlparser/visitors/NodeVisitor;
.source "StringFindingVisitor.java"


# instance fields
.field private foundCount:I

.field private locale:Ljava/util/Locale;

.field private multipleSearchesWithinStrings:Z

.field private stringToFind:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "stringToFind"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/visitors/StringFindingVisitor;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 2
    .parameter "stringToFind"
    .parameter "locale"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>()V

    .line 47
    if-nez p2, :cond_0

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .end local p2
    :cond_0
    iput-object p2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->locale:Ljava/util/Locale;

    .line 48
    iget-object v0, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->stringToFind:Ljava/lang/String;

    .line 49
    iput v1, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->foundCount:I

    .line 50
    iput-boolean v1, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->multipleSearchesWithinStrings:Z

    .line 51
    return-void
.end method


# virtual methods
.method public doMultipleSearchesWithinStrings()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->multipleSearchesWithinStrings:Z

    .line 56
    return-void
.end method

.method public stringFoundCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->foundCount:I

    return v0
.end method

.method public stringWasFound()Z
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/htmlparser/visitors/StringFindingVisitor;->stringFoundCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visitStringNode(Lorg/htmlparser/Text;)V
    .locals 5
    .parameter "stringNode"

    .prologue
    const/4 v4, -0x1

    .line 60
    invoke-interface {p1}, Lorg/htmlparser/Text;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, stringToBeSearched:Ljava/lang/String;
    iget-boolean v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->multipleSearchesWithinStrings:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->stringToFind:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 63
    iget v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->foundCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->foundCount:I

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-boolean v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->multipleSearchesWithinStrings:Z

    if-eqz v2, :cond_0

    .line 65
    const/4 v0, -0x1

    .line 67
    .local v0, index:I
    :cond_2
    iget-object v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->stringToFind:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 68
    if-eq v0, v4, :cond_3

    .line 69
    iget v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->foundCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/htmlparser/visitors/StringFindingVisitor;->foundCount:I

    .line 70
    :cond_3
    if-ne v0, v4, :cond_2

    goto :goto_0
.end method
