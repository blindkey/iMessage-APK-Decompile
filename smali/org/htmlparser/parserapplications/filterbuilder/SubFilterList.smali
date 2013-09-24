.class public Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
.super Ljavax/swing/JPanel;
.source "SubFilterList.java"


# instance fields
.field protected mExtra:I

.field protected mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

.field protected mMax:I

.field protected mSpacer:Ljava/awt/Component;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/htmlparser/parserapplications/filterbuilder/Filter;Ljava/lang/String;I)V
    .locals 1
    .parameter "home"
    .parameter "title"
    .parameter "max"

    .prologue
    .line 78
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 47
    const/16 v0, 0x19

    iput v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mExtra:I

    .line 79
    iput-object p1, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 80
    iput-object p2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mTitle:Ljava/lang/String;

    .line 81
    iput p3, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mMax:I

    .line 85
    new-instance v0, Lorg/htmlparser/parserapplications/filterbuilder/layouts/VerticalLayoutManager;

    invoke-direct {v0}, Lorg/htmlparser/parserapplications/filterbuilder/layouts/VerticalLayoutManager;-><init>()V

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->setLayout(Ljava/awt/LayoutManager;)V

    .line 86
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->addSpacer()V

    .line 87
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->setSelected(Z)V

    .line 88
    return-void
.end method


# virtual methods
.method public addFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getComponentCount()I

    move-result v0

    .line 163
    .local v0, count:I
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    if-eqz v1, :cond_0

    .line 164
    add-int/lit8 v0, v0, -0x1

    .line 165
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->addFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;I)V

    .line 166
    return-void
.end method

.method public addFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;I)V
    .locals 7
    .parameter "filter"
    .parameter "index"

    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->add(Ljava/awt/Component;I)Ljava/awt/Component;

    .line 180
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v5}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getSubNodeFilters()[Lorg/htmlparser/NodeFilter;

    move-result-object v1

    .line 181
    .local v1, before:[Lorg/htmlparser/NodeFilter;
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    new-array v0, v5, [Lorg/htmlparser/NodeFilter;

    .line 182
    .local v0, after:[Lorg/htmlparser/NodeFilter;
    const/4 v3, 0x0

    .line 183
    .local v3, offset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 184
    if-ne v2, p2, :cond_0

    move-object v5, p1

    :goto_1
    aput-object v5, v0, v2

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    aget-object v5, v1, v3

    move v3, v4

    .end local v4           #offset:I
    .restart local v3       #offset:I
    goto :goto_1

    .line 185
    :cond_1
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v5, v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V

    .line 186
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    if-eqz v5, :cond_2

    iget v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mMax:I

    if-eqz v5, :cond_2

    array-length v5, v0

    iget v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mMax:I

    if-lt v5, v6, :cond_2

    .line 187
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->removeSpacer()V

    .line 188
    :cond_2
    return-void
.end method

.method protected addSpacer()V
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 129
    .local v0, dimension:Ljava/awt/Dimension;
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getInsets()Ljava/awt/Insets;

    move-result-object v1

    .line 131
    .local v1, insets:Ljava/awt/Insets;
    iget v2, v0, Ljava/awt/Dimension;->width:I

    iget v3, v1, Ljava/awt/Insets;->left:I

    sub-int/2addr v2, v3

    iget v3, v1, Ljava/awt/Insets;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mExtra:I

    invoke-virtual {v0, v2, v3}, Ljava/awt/Dimension;->setSize(II)V

    .line 132
    invoke-static {v0}, Ljavax/swing/Box;->createRigidArea(Ljava/awt/Dimension;)Ljava/awt/Component;

    move-result-object v2

    iput-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    .line 133
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 134
    return-void
.end method

.method public canAccept()Z
    .locals 3

    .prologue
    .line 259
    iget v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mMax:I

    if-nez v2, :cond_0

    .line 260
    const/4 v1, 0x1

    .line 269
    .local v1, ret:Z
    :goto_0
    return v1

    .line 263
    .end local v1           #ret:Z
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getComponentCount()I

    move-result v0

    .line 264
    .local v0, count:I
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    if-eqz v2, :cond_1

    .line 265
    add-int/lit8 v0, v0, -0x1

    .line 266
    :cond_1
    iget v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mMax:I

    if-ge v0, v2, :cond_2

    const/4 v1, 0x1

    .restart local v1       #ret:Z
    :goto_1
    goto :goto_0

    .end local v1           #ret:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDropTargets()[Ljava/awt/Component;
    .locals 2

    .prologue
    .line 151
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/awt/Component;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getSubNodeFilters()[Lorg/htmlparser/NodeFilter;

    move-result-object v0

    .line 243
    .local v0, list:[Lorg/htmlparser/NodeFilter;
    array-length v2, v0

    new-array v1, v2, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 244
    .local v1, ret:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    return-object v1
.end method

.method public removeFilter(I)V
    .locals 7
    .parameter "index"

    .prologue
    .line 218
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->remove(I)V

    .line 219
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v5}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getSubNodeFilters()[Lorg/htmlparser/NodeFilter;

    move-result-object v1

    .line 220
    .local v1, before:[Lorg/htmlparser/NodeFilter;
    array-length v5, v1

    if-eqz v5, :cond_2

    .line 222
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [Lorg/htmlparser/NodeFilter;

    .line 223
    .local v0, after:[Lorg/htmlparser/NodeFilter;
    const/4 v3, 0x0

    .line 224
    .local v3, offset:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 225
    if-eq v2, p1, :cond_0

    .line 226
    add-int/lit8 v4, v3, 0x1

    .end local v3           #offset:I
    .local v4, offset:I
    aget-object v5, v1, v2

    aput-object v5, v0, v3

    move v3, v4

    .line 224
    .end local v4           #offset:I
    .restart local v3       #offset:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    :cond_1
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mHome:Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    invoke-virtual {v5, v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V

    .line 228
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    if-nez v5, :cond_2

    iget v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mMax:I

    if-eqz v5, :cond_2

    array-length v5, v0

    iget v6, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mMax:I

    if-ge v5, v6, :cond_2

    .line 229
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->addSpacer()V

    .line 231
    .end local v0           #after:[Lorg/htmlparser/NodeFilter;
    .end local v2           #i:I
    .end local v3           #offset:I
    :cond_2
    return-void
.end method

.method public removeFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V
    .locals 5
    .parameter "filter"

    .prologue
    const/4 v4, -0x1

    .line 199
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    .line 200
    .local v0, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    const/4 v2, -0x1

    .line 201
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ne v4, v2, :cond_1

    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 202
    aget-object v3, v0, v1

    if-ne p1, v3, :cond_0

    .line 203
    move v2, v1

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_1
    if-eq v4, v2, :cond_2

    .line 205
    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->removeFilter(I)V

    .line 206
    :cond_2
    return-void
.end method

.method protected removeSpacer()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->remove(Ljava/awt/Component;)V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mSpacer:Ljava/awt/Component;

    .line 143
    return-void
.end method

.method public setSelected(Z)V
    .locals 7
    .parameter "selected"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v5, 0x1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Ljavax/swing/border/CompoundBorder;

    new-instance v1, Ljavax/swing/border/TitledBorder;

    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mTitle:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v5, v6}, Ljavax/swing/border/TitledBorder;-><init>(Ljavax/swing/border/Border;Ljava/lang/String;II)V

    new-instance v2, Ljavax/swing/border/CompoundBorder;

    new-instance v3, Ljavax/swing/border/LineBorder;

    sget-object v4, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-direct {v3, v4, v6}, Ljavax/swing/border/LineBorder;-><init>(Ljava/awt/Color;I)V

    new-instance v4, Ljavax/swing/border/EmptyBorder;

    invoke-direct {v4, v5, v5, v5, v5}, Ljavax/swing/border/EmptyBorder;-><init>(IIII)V

    invoke-direct {v2, v3, v4}, Ljavax/swing/border/CompoundBorder;-><init>(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)V

    invoke-direct {v0, v1, v2}, Ljavax/swing/border/CompoundBorder;-><init>(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->setBorder(Ljavax/swing/border/Border;)V

    .line 117
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljavax/swing/border/CompoundBorder;

    new-instance v1, Ljavax/swing/border/TitledBorder;

    iget-object v2, p0, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->mTitle:Ljava/lang/String;

    invoke-direct {v1, v4, v2, v5, v6}, Ljavax/swing/border/TitledBorder;-><init>(Ljavax/swing/border/Border;Ljava/lang/String;II)V

    new-instance v2, Ljavax/swing/border/EmptyBorder;

    invoke-direct {v2, v3, v3, v3, v3}, Ljavax/swing/border/EmptyBorder;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Ljavax/swing/border/CompoundBorder;-><init>(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->setBorder(Ljavax/swing/border/Border;)V

    goto :goto_0
.end method

.method public toString(II)Ljava/lang/String;
    .locals 5
    .parameter "indent"
    .parameter "level"

    .prologue
    .line 285
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 287
    .local v2, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->getFilters()[Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v0

    .line 288
    .local v0, filters:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 290
    aget-object v3, v0, v1

    invoke-virtual {v3}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 292
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
