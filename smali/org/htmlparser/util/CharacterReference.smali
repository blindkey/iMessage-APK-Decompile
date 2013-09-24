.class public Lorg/htmlparser/util/CharacterReference;
.super Ljava/lang/Object;
.source "CharacterReference.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lorg/htmlparser/util/sort/Ordered;


# instance fields
.field protected mCharacter:I

.field protected mKernel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "kernel"
    .parameter "character"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/htmlparser/util/CharacterReference;->mKernel:Ljava/lang/String;

    .line 46
    iput p2, p0, Lorg/htmlparser/util/CharacterReference;->mCharacter:I

    .line 47
    iget-object v0, p0, Lorg/htmlparser/util/CharacterReference;->mKernel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lorg/htmlparser/util/CharacterReference;->mKernel:Ljava/lang/String;

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;)I
    .locals 3
    .parameter "that"

    .prologue
    .line 123
    move-object v0, p1

    check-cast v0, Lorg/htmlparser/util/CharacterReference;

    .line 125
    .local v0, r:Lorg/htmlparser/util/CharacterReference;
    invoke-virtual {p0}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getCharacter()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/htmlparser/util/CharacterReference;->mCharacter:I

    return v0
.end method

.method public getKernel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/htmlparser/util/CharacterReference;->mKernel:Ljava/lang/String;

    return-object v0
.end method

.method setCharacter(I)V
    .locals 0
    .parameter "character"

    .prologue
    .line 86
    iput p1, p0, Lorg/htmlparser/util/CharacterReference;->mCharacter:I

    .line 87
    return-void
.end method

.method setKernel(Ljava/lang/String;)V
    .locals 0
    .parameter "kernel"

    .prologue
    .line 67
    iput-object p1, p0, Lorg/htmlparser/util/CharacterReference;->mKernel:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 99
    .local v2, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/util/CharacterReference;->getCharacter()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, hex:Ljava/lang/String;
    const-string v3, "\\u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, i:I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 102
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {p0}, Lorg/htmlparser/util/CharacterReference;->getKernel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
