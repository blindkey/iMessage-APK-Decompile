.class public Lorg/htmlparser/parserapplications/filterbuilder/layouts/NullLayoutManager;
.super Ljava/lang/Object;
.source "NullLayoutManager.java"

# interfaces
.implements Ljava/awt/LayoutManager2;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public addLayoutComponent(Ljava/awt/Component;Ljava/lang/Object;)V
    .locals 0
    .parameter "comp"
    .parameter "constraints"

    .prologue
    .line 188
    return-void
.end method

.method public addLayoutComponent(Ljava/lang/String;Ljava/awt/Component;)V
    .locals 0
    .parameter "name"
    .parameter "comp"

    .prologue
    .line 141
    return-void
.end method

.method public getLayoutAlignmentX(Ljava/awt/Container;)F
    .locals 1
    .parameter "target"

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutAlignmentY(Ljava/awt/Container;)F
    .locals 1
    .parameter "target"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateLayout(Ljava/awt/Container;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 225
    return-void
.end method

.method public layoutContainer(Ljava/awt/Container;)V
    .locals 7
    .parameter "target"

    .prologue
    .line 161
    invoke-virtual {p1}, Ljava/awt/Container;->getTreeLock()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 163
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/Container;->getComponentCount()I

    move-result v1

    .line 164
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 166
    invoke-virtual {p1, v3}, Ljava/awt/Container;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    .line 167
    .local v0, component:Ljava/awt/Component;
    invoke-virtual {v0}, Ljava/awt/Component;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/awt/Component;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 170
    .local v2, dimension:Ljava/awt/Dimension;
    iget v4, v2, Ljava/awt/Dimension;->width:I

    iget v6, v2, Ljava/awt/Dimension;->height:I

    invoke-virtual {v0, v4, v6}, Ljava/awt/Component;->setSize(II)V

    .line 164
    .end local v2           #dimension:Ljava/awt/Dimension;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v0           #component:Ljava/awt/Component;
    :cond_1
    monitor-exit v5

    .line 174
    return-void

    .line 173
    .end local v1           #count:I
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public maximumLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;
    .locals 1
    .parameter "target"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/layouts/NullLayoutManager;->preferredLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public minimumLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;
    .locals 1
    .parameter "target"

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/layouts/NullLayoutManager;->preferredLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public preferredLayoutSize(Ljava/awt/Container;)Ljava/awt/Dimension;
    .locals 12
    .parameter "target"

    .prologue
    .line 78
    invoke-virtual {p1}, Ljava/awt/Container;->getTreeLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/Container;->getComponentCount()I

    move-result v1

    .line 81
    .local v1, count:I
    if-nez v1, :cond_1

    .line 84
    invoke-virtual {p1}, Ljava/awt/Container;->getSize()Ljava/awt/Dimension;

    move-result-object v7

    .line 85
    .local v7, ret:Ljava/awt/Dimension;
    invoke-virtual {p1}, Ljava/awt/Container;->getParent()Ljava/awt/Container;

    move-result-object v5

    .line 86
    .local v5, parent:Ljava/awt/Container;
    if-eqz v5, :cond_0

    .line 88
    invoke-virtual {v5}, Ljava/awt/Container;->getInsets()Ljava/awt/Insets;

    move-result-object v4

    .line 89
    .local v4, insets:Ljava/awt/Insets;
    invoke-virtual {v5}, Ljava/awt/Container;->getSize()Ljava/awt/Dimension;

    move-result-object v7

    .line 90
    iget v8, v7, Ljava/awt/Dimension;->width:I

    iget v10, v4, Ljava/awt/Insets;->left:I

    sub-int/2addr v8, v10

    iget v10, v4, Ljava/awt/Insets;->right:I

    sub-int/2addr v8, v10

    iget v10, v7, Ljava/awt/Dimension;->height:I

    iget v11, v4, Ljava/awt/Insets;->top:I

    sub-int/2addr v10, v11

    iget v11, v4, Ljava/awt/Insets;->bottom:I

    sub-int/2addr v10, v11

    invoke-virtual {v7, v8, v10}, Ljava/awt/Dimension;->setSize(II)V

    .line 113
    .end local v4           #insets:Ljava/awt/Insets;
    .end local v5           #parent:Ljava/awt/Container;
    :cond_0
    :goto_0
    monitor-exit v9

    .line 115
    return-object v7

    .line 97
    .end local v7           #ret:Ljava/awt/Dimension;
    :cond_1
    new-instance v7, Ljava/awt/Dimension;

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v10}, Ljava/awt/Dimension;-><init>(II)V

    .line 98
    .restart local v7       #ret:Ljava/awt/Dimension;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 100
    invoke-virtual {p1, v3}, Ljava/awt/Container;->getComponent(I)Ljava/awt/Component;

    move-result-object v0

    .line 101
    .local v0, component:Ljava/awt/Component;
    invoke-virtual {v0}, Ljava/awt/Component;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 103
    invoke-virtual {v0}, Ljava/awt/Component;->getLocation()Ljava/awt/Point;

    move-result-object v6

    .line 104
    .local v6, point:Ljava/awt/Point;
    invoke-virtual {v0}, Ljava/awt/Component;->getPreferredSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 105
    .local v2, dimension:Ljava/awt/Dimension;
    iget v8, v7, Ljava/awt/Dimension;->width:I

    iget v10, v6, Ljava/awt/Point;->x:I

    iget v11, v2, Ljava/awt/Dimension;->width:I

    add-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Ljava/awt/Dimension;->width:I

    .line 106
    iget v8, v7, Ljava/awt/Dimension;->height:I

    iget v10, v6, Ljava/awt/Point;->y:I

    iget v11, v2, Ljava/awt/Dimension;->height:I

    add-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    iput v8, v7, Ljava/awt/Dimension;->height:I

    .line 98
    .end local v2           #dimension:Ljava/awt/Dimension;
    .end local v6           #point:Ljava/awt/Point;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    .end local v0           #component:Ljava/awt/Component;
    :cond_3
    invoke-virtual {p1}, Ljava/awt/Container;->getInsets()Ljava/awt/Insets;

    move-result-object v4

    .line 110
    .restart local v4       #insets:Ljava/awt/Insets;
    iget v8, v7, Ljava/awt/Dimension;->width:I

    iget v10, v4, Ljava/awt/Insets;->left:I

    iget v11, v4, Ljava/awt/Insets;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    iput v8, v7, Ljava/awt/Dimension;->width:I

    .line 111
    iget v8, v7, Ljava/awt/Dimension;->height:I

    iget v10, v4, Ljava/awt/Insets;->top:I

    iget v11, v4, Ljava/awt/Insets;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    iput v8, v7, Ljava/awt/Dimension;->height:I

    goto :goto_0

    .line 113
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #insets:Ljava/awt/Insets;
    .end local v7           #ret:Ljava/awt/Dimension;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public removeLayoutComponent(Ljava/awt/Component;)V
    .locals 0
    .parameter "comp"

    .prologue
    .line 149
    return-void
.end method
