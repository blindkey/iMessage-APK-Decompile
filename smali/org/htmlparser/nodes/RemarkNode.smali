.class public Lorg/htmlparser/nodes/RemarkNode;
.super Lorg/htmlparser/nodes/AbstractNode;
.source "RemarkNode.java"

# interfaces
.implements Lorg/htmlparser/Remark;


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
    invoke-virtual {p0, p1}, Lorg/htmlparser/nodes/RemarkNode;->setText(Ljava/lang/String;)V

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

    iput-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public accept(Lorg/htmlparser/visitors/NodeVisitor;)V
    .locals 0
    .parameter "visitor"

    .prologue
    .line 248
    invoke-virtual {p1, p0}, Lorg/htmlparser/visitors/NodeVisitor;->visitRemarkNode(Lorg/htmlparser/Remark;)V

    .line 249
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 82
    iget-object v3, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 84
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v3

    add-int/lit8 v2, v3, 0x4

    .line 85
    .local v2, start:I
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v3

    add-int/lit8 v0, v3, -0x3

    .line 86
    .local v0, end:I
    if-lt v2, v0, :cond_0

    .line 87
    const-string v1, ""

    .line 94
    .end local v0           #end:I
    .end local v2           #start:I
    .local v1, ret:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 89
    .end local v1           #ret:Ljava/lang/String;
    .restart local v0       #end:I
    .restart local v2       #start:I
    :cond_0
    iget-object v3, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v3, v2, v0}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v1

    .line 90
    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0

    .line 92
    .end local v0           #end:I
    .end local v1           #ret:Ljava/lang/String;
    .end local v2           #start:I
    :cond_1
    iget-object v1, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 104
    iput-object p1, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    .line 105
    const-string v0, "<!--"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "-->"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const/4 v0, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeBegin:I

    .line 108
    iget-object v0, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/htmlparser/nodes/AbstractNode;->nodeEnd:I

    .line 109
    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 5
    .parameter "verbatim"

    .prologue
    .line 131
    iget-object v2, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 132
    iget-object v2, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v3

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/htmlparser/lexer/Page;->getText(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, ret:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 135
    .end local v1           #ret:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 136
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v2, "<!--"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    iget-object v2, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v2, "-->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public toPlainTextString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const-string v0, ""

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x4d

    .line 161
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getStartPosition()I

    move-result v6

    .line 162
    .local v6, startpos:I
    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getEndPosition()I

    move-result v2

    .line 163
    .local v2, endpos:I
    new-instance v4, Ljava/lang/StringBuffer;

    sub-int v7, v2, v6

    add-int/lit8 v7, v7, 0x14

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 164
    .local v4, ret:Ljava/lang/StringBuffer;
    iget-object v7, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 166
    new-instance v5, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v7

    invoke-direct {v5, v7, v6}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 167
    .local v5, start:Lorg/htmlparser/lexer/Cursor;
    new-instance v1, Lorg/htmlparser/lexer/Cursor;

    invoke-virtual {p0}, Lorg/htmlparser/nodes/AbstractNode;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v7

    invoke-direct {v1, v7, v2}, Lorg/htmlparser/lexer/Cursor;-><init>(Lorg/htmlparser/lexer/Page;I)V

    .line 168
    .local v1, end:Lorg/htmlparser/lexer/Cursor;
    const-string v7, "Rem ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 170
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 172
    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    add-int/lit8 v7, v6, 0x4

    invoke-virtual {v5, v7}, Lorg/htmlparser/lexer/Cursor;->setPosition(I)V

    .line 174
    add-int/lit8 v2, v2, -0x3

    .line 175
    :cond_0
    invoke-virtual {v5}, Lorg/htmlparser/lexer/Cursor;->getPosition()I

    move-result v7

    if-ge v7, v2, :cond_1

    .line 179
    :try_start_0
    iget-object v7, p0, Lorg/htmlparser/nodes/AbstractNode;->mPage:Lorg/htmlparser/lexer/Page;

    invoke-virtual {v7, v5}, Lorg/htmlparser/lexer/Page;->getCharacter(Lorg/htmlparser/lexer/Cursor;)C

    move-result v0

    .line 180
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 192
    :pswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0           #c:C
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-gt v8, v7, :cond_0

    .line 201
    const-string v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    .end local v1           #end:Lorg/htmlparser/lexer/Cursor;
    .end local v5           #start:Lorg/htmlparser/lexer/Cursor;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 183
    .restart local v0       #c:C
    .restart local v1       #end:Lorg/htmlparser/lexer/Cursor;
    .restart local v5       #start:Lorg/htmlparser/lexer/Cursor;
    :pswitch_1
    :try_start_1
    const-string v7, "\\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 195
    .end local v0           #c:C
    :catch_0
    move-exception v7

    goto :goto_0

    .line 186
    .restart local v0       #c:C
    :pswitch_2
    const-string v7, "\\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 189
    :pswitch_3
    const-string v7, "\\r"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 208
    .end local v0           #c:C
    .end local v1           #end:Lorg/htmlparser/lexer/Cursor;
    .end local v5           #start:Lorg/htmlparser/lexer/Cursor;
    :cond_2
    const-string v7, "Rem ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 210
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 212
    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v7, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 215
    iget-object v7, p0, Lorg/htmlparser/nodes/RemarkNode;->mText:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 216
    .restart local v0       #c:C
    packed-switch v0, :pswitch_data_1

    .line 228
    :pswitch_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-gt v8, v7, :cond_3

    .line 232
    const-string v7, "..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 219
    :pswitch_5
    const-string v7, "\\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 222
    :pswitch_6
    const-string v7, "\\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 225
    :pswitch_7
    const-string v7, "\\r"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 213
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 180
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 216
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
