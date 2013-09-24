.class public Lorg/htmlparser/lexer/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/htmlparser/util/sort/Ordered;
.implements Ljava/lang/Cloneable;


# instance fields
.field protected mPage:Lorg/htmlparser/lexer/Page;

.field protected mPosition:I


# direct methods
.method public constructor <init>(Lorg/htmlparser/lexer/Page;I)V
    .locals 0
    .parameter "page"
    .parameter "offset"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    .line 60
    iput p2, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 61
    return-void
.end method


# virtual methods
.method public advance()V
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 96
    return-void
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 3
    .parameter "that"

    .prologue
    .line 165
    move-object v0, p1

    check-cast v0, Lorg/htmlparser/lexer/Cursor;

    .line 166
    .local v0, r:Lorg/htmlparser/lexer/Cursor;
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public dup()Lorg/htmlparser/lexer/Cursor;
    .locals 4

    .prologue
    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/lexer/Cursor;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, cnse:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Cursor;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v2

    invoke-virtual {p0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    goto :goto_0
.end method

.method public getPage()Lorg/htmlparser/lexer/Page;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    return v0
.end method

.method public retreat()V
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 104
    iget v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    if-gez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 106
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 87
    iput p1, p0, Lorg/htmlparser/lexer/Cursor;->mPosition:I

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 135
    .local v0, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 136
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v1, p0}, Lorg/htmlparser/lexer/Page;->row(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 141
    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lorg/htmlparser/lexer/Cursor;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v1, p0}, Lorg/htmlparser/lexer/Page;->column(Lorg/htmlparser/lexer/Cursor;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 146
    :goto_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 140
    :cond_0
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 145
    :cond_1
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
