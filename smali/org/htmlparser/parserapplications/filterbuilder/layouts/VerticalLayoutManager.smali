.class public Lorg/htmlparser/parserapplications/filterbuilder/layouts/VerticalLayoutManager;
.super Ljava/lang/Object;
.source "VerticalLayoutManager.java"

# interfaces
.implements Ljava/awt/LayoutManager2;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public addLayoutComponent(Ljava/awt/Component;Ljava/lang/Object;)V
    .locals 0
    .parameter "comp"
    .parameter "constraints"

    .prologue
    .line 192
    return-void
.end method

.method public addLayoutComponent(Ljava/lang/String;Ljava/awt/Component;)V
    .locals 0
    .parameter "name"
    .parameter "comp"

    .prologue
    .line 123
    return-void
.end method

.method public getLayoutAlignmentX(Ljava/awt/Container;)F
    .locals 1
    .parameter "target"

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutAlignmentY(Ljava/awt/Container;)F
    .locals 1
    .parameter "target"

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateLayout(Ljava/awt/Container;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 229
    return-void
.end method

.method public layoutContainer(Ljava/awt/Container;)V
    .locals 11
    .parameter "target"

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/awt/Container;->getTreeLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 149
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/Container;->getInsets()Ljava/awt/Insets;

    move-result-object v4

    .line 150
    .local v4, insets:Ljava/awt/Insets;
    iget v6, v4, Ljava/awt/Insets;->left:I

    .line 151
    .local v6, x:I
    iget v7, v4, Ljava/awt/Insets;->top:I

    .line 152
    .local v7, y:I
    invoke-virtual {p1}, Ljava/awt/Container;->getComponentCount()I

    move-result v1

    .line 153
    .local v1, count:I
    const/4 v5, 0x0

    .line 154
    .local v5, width:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 156
    invoke-virtual {p1, v3}, Ljava/awt/Container;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    .line 157
    .local v0, component:Ljava/awt/Component;
    invoke-virtual {v0}, Ljava/awt/Component;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/awt/Component;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 160
    .local v2, dimension:Ljava/awt/Dimension;
    iget v8, v2, Ljava/awt/Dimension;->width:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 161
    iget v8, v2, Ljava/awt/Dimension;->width:I

    iget v10, v2, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, v8, v10}, Ljava/awt/Component;->setSize(II)V

    .line 162
    invoke-virtual {v0, v6, v7}, Ljava/awt/Component;->setLocation(II)V

    .line 163
    iget v8, v2, Ljava/awt/Dimension;->height:I

    add-int/2addr v7, v8

    .line 154
    .end local v2           #dimension:Ljava/awt/Dimension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v0           #component:Ljava/awt/Component;
    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 169
    invoke-virtual {p1, v3}, Ljava/awt/Container;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    .line 170
    .restart local v0       #component:Ljava/awt/Component;
    invoke-virtual {v0}, Ljava/awt/Component;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 172
    invoke-virtual {v0}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 173
    .restart local v2       #dimension:Ljava/awt/Dimension;
    iput v5, v2, Ljava/awt/Dimension;->width:I

    .line 174
    iget v8, v2, Ljava/awt/Dimension;->width:I

    iget v10, v2, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, v8, v10}, Ljava/awt/Component;->setSize(II)V

    .line 167
    .end local v2           #dimension:Ljava/awt/Dimension;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 177
    .end local v0           #component:Ljava/awt/Component;
    :cond_3
    monitor-exit v9

    .line 178
    return-void

    .line 177
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #insets:Ljava/awt/Insets;
    .end local v5           #width:I
    .end local v6           #x:I
    .end local v7           #y:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public maximumLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;
    .locals 1
    .parameter "target"

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/layouts/VerticalLayoutManager;->preferredLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public minimumLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;
    .locals 1
    .parameter "target"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/layouts/VerticalLayoutManager;->preferredLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public preferredLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;
    .locals 10
    .parameter "target"

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/awt/Container;->getTreeLock()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 80
    :try_start_0
    new-instance v5, Ljava/awt/Dimension;

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8}, Ljava/awt/Dimension;-><init>(II)V

    .line 81
    .local v5, ret:Ljava/awt/Dimension;
    invoke-virtual {p1}, Ljava/awt/Container;->getComponentCount()I

    move-result v1

    .line 82
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 84
    invoke-virtual {p1, v3}, Ljava/awt/Container;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    .line 85
    .local v0, component:Ljava/awt/Component;
    invoke-virtual {v0}, Ljava/awt/Component;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-virtual {v0}, Ljava/awt/Component;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 88
    .local v2, dimension:Ljava/awt/Dimension;
    iget v6, v5, Ljava/awt/Dimension;->width:I

    iget v8, v2, Ljava/awt/Dimension;->width:I

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v5, Ljava/awt/Dimension;->width:I

    .line 89
    iget v6, v5, Ljava/awt/Dimension;->height:I

    iget v8, v2, Ljava/awt/Dimension;->height:I

    add-int/2addr v6, v8

    iput v6, v5, Ljava/awt/Dimension;->height:I

    .line 82
    .end local v2           #dimension:Ljava/awt/Dimension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v0           #component:Ljava/awt/Component;
    :cond_1
    invoke-virtual {p1}, Ljava/awt/Container;->getInsets()Ljava/awt/Insets;

    move-result-object v4

    .line 93
    .local v4, insets:Ljava/awt/Insets;
    iget v6, v5, Ljava/awt/Dimension;->width:I

    iget v8, v4, Ljava/awt/Insets;->left:I

    iget v9, v4, Ljava/awt/Insets;->right:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    iput v6, v5, Ljava/awt/Dimension;->width:I

    .line 94
    iget v6, v5, Ljava/awt/Dimension;->height:I

    iget v8, v4, Ljava/awt/Insets;->top:I

    iget v9, v4, Ljava/awt/Insets;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    iput v6, v5, Ljava/awt/Dimension;->height:I

    .line 95
    monitor-exit v7

    .line 97
    return-object v5

    .line 95
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #insets:Ljava/awt/Insets;
    .end local v5           #ret:Ljava/awt/Dimension;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public removeLayoutComponent(Ljava/awt/Component;)V
    .locals 0
    .parameter "comp"

    .prologue
    .line 131
    return-void
.end method
