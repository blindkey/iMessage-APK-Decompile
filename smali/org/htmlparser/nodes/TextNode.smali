.class public Lorg/htmlparser/nodes/TextNode;
.super Lorg/htmlparser/nodes/AbstractNode;
.source "TextNode.java"

# interfaces
.implements Lorg/htmlparser/Text;


# instance fields
.field protected mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lorg/htmlparser/nodes/AbstractNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    .line 57
    invoke-virtual {p0, p1}, Lorg/htmlparser/nodes/TextNode;->setText(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lorg/htmlparser/lexer/Page;II)V
    .locals 1
    .parameter "page"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lorg/htmlparser/nodes/AbstractNode;-><init>(Lorg/htmlparser/lexer/Page;II)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/visitors/NodeVisitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 232
    invoke-virtual {p1, p0}, Lorg/htmlparser/visitors/NodeVisitor;->visitStringNode(Lorg/htmlparser/Text;)V

    .line 233
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->toHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWhiteSpace()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    :cond_0
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 88
    iput-object p1, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 90
    iget-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 91
    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 4
    .parameter "verbatim"

    .prologue
    .line 113
    iget-object v0, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    .line 114
    .local v0, ret:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 115
    iget-object v1, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v2

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    return-object v0
.end method

.method public toPlainTextString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->toHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x4d

    .line 136
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v6

    .line 137
    .local v6, startpos:I
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v2

    .line 138
    .local v2, endpos:I
    new-instance v4, Ljava/lang/StringBuffer;

    sub-int v7, v2, v6

    add-int/lit8 v7, v7, 0x14

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 139
    .local v4, ret:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 141
    new-instance v5, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 142
    .local v5, start:Lorg/htmlparser/lexer/Cursor;
    new-instance v1, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v7

    invoke-direct {v1, v7, v2}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 143
    .local v1, end:Lorg/htmlparser/lexer/Cursor;
    const-string v7, "Txt ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 145
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 147
    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_0
    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v7

    if-ge v7, v2, :cond_1

    .line 152
    :try_start_0
    iget-object v7, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v7, v5}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 153
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 165
    :pswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0           #c:C
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-gt v8, v7, :cond_0

    .line 174
    const-string v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    .end local v1           #end:Lorg/htmlparser/lexer/Cursor;
    .end local v5           #start:Lorg/htmlparser/lexer/Cursor;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 156
    .restart local v0       #c:C
    .restart local v1       #end:Lorg/htmlparser/lexer/Cursor;
    .restart local v5       #start:Lorg/htmlparser/lexer/Cursor;
    :pswitch_1
    :try_start_1
    const-string v7, "\\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 168
    .end local v0           #c:C
    :catch_0
    move-exception v7

    goto :goto_0

    .line 159
    .restart local v0       #c:C
    :pswitch_2
    const-string v7, "\\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 162
    :pswitch_3
    const-string v7, "\\r"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 181
    .end local v0           #c:C
    .end local v1           #end:Lorg/htmlparser/lexer/Cursor;
    .end local v5           #start:Lorg/htmlparser/lexer/Cursor;
    :cond_2
    const-string v7, "Txt ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 183
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 185
    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v7, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 188
    iget-object v7, p0, Lorg/htmlparser/nodes/TextNode;->mText:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 189
    .restart local v0       #c:C
    packed-switch v0, :pswitch_data_1

    .line 201
    :pswitch_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-gt v8, v7, :cond_3

    .line 205
    const-string v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 192
    :pswitch_5
    const-string v7, "\\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 195
    :pswitch_6
    const-string v7, "\\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 198
    :pswitch_7
    const-string v7, "\\r"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 186
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 189
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
