.class Lorg/htmlparser/util/CharacterReferenceEx;
.super Lorg/htmlparser/util/CharacterReference;
.source "Translate.java"


# instance fields
.field protected mEnd:I

.field protected mStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/htmlparser/util/CharacterReference;-><init>(Ljava/lang/String;I)V

    .line 65
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;)I
    .locals 8
    .parameter "that"

    .prologue
    .line 108
    const/4 v5, 0x0

    .local v5, ret:I
    move-object v4, p1

    .line 109
    check-cast v4, Lorg/htmlparser/util/CharacterReference;

    .line 110
    .local v4, r:Lorg/htmlparser/util/CharacterReference;
    invoke-virtual {v4}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, kernel:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 112
    .local v3, length:I
    iget v0, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mStart:I

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget v6, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mEnd:I

    if-ge v0, v6, :cond_0

    .line 114
    if-lt v1, v3, :cond_1

    .line 116
    const/4 v5, 0x1

    .line 124
    :cond_0
    return v5

    .line 119
    :cond_1
    iget-object v6, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mKernel:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int v5, v6, v7

    .line 120
    if-nez v5, :cond_0

    .line 112
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getKernel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mKernel:Ljava/lang/String;

    iget v1, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mStart:I

    iget v2, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEnd(I)V
    .locals 0
    .parameter "end"

    .prologue
    .line 81
    iput p1, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mEnd:I

    .line 82
    return-void
.end method

.method public setStart(I)V
    .locals 0
    .parameter "start"

    .prologue
    .line 72
    iput p1, p0, Lorg/htmlparser/util/CharacterReferenceEx;->mStart:I

    .line 73
    return-void
.end method
