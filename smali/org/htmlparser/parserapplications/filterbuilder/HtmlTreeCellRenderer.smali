.class public Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "HtmlTreeCellRenderer.java"

# interfaces
.implements Ljavax/swing/tree/TreeCellRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    .line 58
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    .line 59
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 60
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 2
    .parameter "tree"
    .parameter "value"
    .parameter "selected"
    .parameter "expanded"
    .parameter "leaf"
    .parameter "row"
    .parameter "hasFocus"

    .prologue
    .line 177
    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    move-object v0, p2

    .line 178
    check-cast v0, Lorg/htmlparser/Node;

    .line 179
    .local v0, node:Lorg/htmlparser/Node;
    instance-of v1, v0, Lorg/htmlparser/nodes/TagNode;

    if-eqz v1, :cond_0

    .line 180
    check-cast v0, Lorg/htmlparser/nodes/TagNode;

    .end local v0           #node:Lorg/htmlparser/Node;
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->toHtml(Lorg/htmlparser/nodes/TagNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->setText(Ljava/lang/String;)V

    .line 186
    :goto_0
    return-object p0

    .line 181
    .restart local v0       #node:Lorg/htmlparser/Node;
    :cond_0
    instance-of v1, v0, Lorg/htmlparser/nodes/TextNode;

    if-eqz v1, :cond_1

    .line 182
    check-cast v0, Lorg/htmlparser/nodes/TextNode;

    .end local v0           #node:Lorg/htmlparser/Node;
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->toText(Lorg/htmlparser/nodes/TextNode;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .restart local v0       #node:Lorg/htmlparser/Node;
    :cond_1
    invoke-interface {v0}, Lorg/htmlparser/Node;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeCellRenderer;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toHtml(Lorg/htmlparser/nodes/TagNode;)Ljava/lang/String;
    .locals 10
    .parameter "tag"

    .prologue
    const/4 v8, 0x0

    .line 82
    const/4 v4, 0x2

    .line 83
    .local v4, length:I
    invoke-virtual {p1}, Lorg/htmlparser/nodes/TagNode;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 84
    .local v1, attributes:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    .line 85
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 87
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 88
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getLength()I

    move-result v9

    add-int/2addr v4, v9

    .line 85
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 91
    .local v5, ret:Ljava/lang/StringBuffer;
    const-string v9, "<"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_1

    .line 94
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 95
    .restart local v0       #attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0, v5}, Lorg/htmlparser/Attribute;->toString(Ljava/lang/StringBuffer;)V

    .line 92
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    :cond_1
    const-string v9, ">"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/htmlparser/util/Translate;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, s:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/htmlparser/nodes/TagNode;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v9

    if-eqz v9, :cond_5

    const/4 v2, 0x1

    .line 100
    .local v2, children:Z
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #ret:Ljava/lang/StringBuffer;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xd

    if-eqz v2, :cond_2

    const/16 v8, 0x10

    :cond_2
    add-int/2addr v8, v9

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 101
    .restart local v5       #ret:Ljava/lang/StringBuffer;
    const-string v8, "<html>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    if-eqz v2, :cond_3

    .line 103
    const-string v8, "<font color=\"blue\">"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    if-eqz v2, :cond_4

    .line 106
    const-string v8, "</font>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :cond_4
    const-string v8, "</html>"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .end local v2           #children:Z
    :cond_5
    move v2, v8

    .line 99
    goto :goto_2
.end method

.method public toText(Lorg/htmlparser/nodes/TextNode;)Ljava/lang/String;
    .locals 8
    .parameter "node"

    .prologue
    .line 128
    invoke-virtual {p1}, Lorg/htmlparser/nodes/TextNode;->getStartPosition()I

    move-result v5

    .line 129
    .local v5, startpos:I
    invoke-virtual {p1}, Lorg/htmlparser/nodes/TextNode;->getEndPosition()I

    move-result v1

    .line 130
    .local v1, endpos:I
    new-instance v3, Ljava/lang/StringBuffer;

    sub-int v6, v1, v5

    add-int/lit8 v6, v6, 0x14

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 131
    .local v3, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/htmlparser/nodes/TextNode;->toHtml()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 134
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 135
    .local v0, c:C
    packed-switch v0, :pswitch_data_0

    .line 147
    :pswitch_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 149
    :goto_1
    const/16 v6, 0x4d

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-gt v6, v7, :cond_1

    .line 151
    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 138
    .restart local v0       #c:C
    :pswitch_1
    const-string v6, "\\t"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 141
    :pswitch_2
    const-string v6, "\\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 144
    :pswitch_3
    const-string v6, "\\r"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
