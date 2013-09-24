.class public Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;
.super Ljava/lang/Object;
.source "HtmlTreeModel.java"

# interfaces
.implements Ljavax/swing/tree/TreeModel;


# instance fields
.field protected mRoot:Lorg/htmlparser/Node;

.field protected mTreeListeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lorg/htmlparser/util/NodeList;)V
    .locals 1
    .parameter "root"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    .line 65
    new-instance v0, Lorg/htmlparser/tags/Html;

    invoke-direct {v0}, Lorg/htmlparser/tags/Html;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mRoot:Lorg/htmlparser/Node;

    .line 66
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mRoot:Lorg/htmlparser/Node;

    invoke-interface {v0, p1}, Lorg/htmlparser/Node;->setChildren(Lorg/htmlparser/util/NodeList;)V

    .line 67
    return-void
.end method


# virtual methods
.method public addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 79
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 83
    :cond_0
    monitor-exit v1

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .parameter "parent"
    .parameter "index"

    .prologue
    .line 110
    move-object v1, p1

    check-cast v1, Lorg/htmlparser/Node;

    .line 111
    .local v1, node:Lorg/htmlparser/Node;
    invoke-interface {v1}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 112
    .local v0, list:Lorg/htmlparser/util/NodeList;
    if-nez v0, :cond_0

    .line 113
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "invalid parent for getChild()"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_0
    invoke-virtual {v0, p2}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v2

    .line 117
    .local v2, ret:Lorg/htmlparser/Node;
    return-object v2
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 3
    .parameter "parent"

    .prologue
    .line 131
    const/4 v2, 0x0

    .local v2, ret:I
    move-object v1, p1

    .line 133
    check-cast v1, Lorg/htmlparser/Node;

    .line 134
    .local v1, node:Lorg/htmlparser/Node;
    invoke-interface {v1}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 135
    .local v0, list:Lorg/htmlparser/util/NodeList;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v2

    .line 138
    :cond_0
    return v2
.end method

.method public getIndexOfChild(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .parameter "parent"
    .parameter "child"

    .prologue
    .line 155
    const/4 v4, -0x1

    .local v4, ret:I
    move-object v3, p1

    .line 157
    check-cast v3, Lorg/htmlparser/Node;

    .line 158
    .local v3, node:Lorg/htmlparser/Node;
    invoke-interface {v3}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 159
    .local v2, list:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_2

    .line 161
    invoke-virtual {v2}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    .line 162
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 163
    invoke-virtual {v2, v1}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v5

    if-ne p2, v5, :cond_1

    .line 165
    move v4, v1

    .line 172
    :cond_0
    if-gez v4, :cond_3

    .line 173
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "child not found in getIndexOfChild()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "invalid parent for getIndexOfChild()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 175
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_3
    return v4
.end method

.method public getRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mRoot:Lorg/htmlparser/Node;

    return-object v0
.end method

.method public isLeaf(Ljava/lang/Object;)Z
    .locals 3
    .parameter "node"

    .prologue
    .line 197
    check-cast p1, Lorg/htmlparser/Node;

    .end local p1
    invoke-interface {p1}, Lorg/htmlparser/Node;->getChildren()Lorg/htmlparser/util/NodeList;

    move-result-object v0

    .line 198
    .local v0, list:Lorg/htmlparser/util/NodeList;
    if-nez v0, :cond_0

    .line 199
    const/4 v1, 0x1

    .line 203
    .local v1, ret:Z
    :goto_0
    return v1

    .line 201
    .end local v1           #ret:Z
    :cond_0
    invoke-virtual {v0}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .restart local v1       #ret:Z
    :goto_1
    goto :goto_0

    .end local v1           #ret:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public removeTreeModelListener(Ljavax/swing/event/TreeModelListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 92
    iget-object v1, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public valueForPathChanged(Ljavax/swing/tree/TreePath;Ljava/lang/Object;)V
    .locals 6
    .parameter "path"
    .parameter "newValue"

    .prologue
    .line 216
    new-instance v0, Ljavax/swing/event/TreeModelEvent;

    invoke-direct {v0, p0, p1}, Ljavax/swing/event/TreeModelEvent;-><init>(Ljava/lang/Object;Ljavax/swing/tree/TreePath;)V

    .line 217
    .local v0, event:Ljavax/swing/event/TreeModelEvent;
    iget-object v5, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    monitor-enter v5

    .line 219
    :try_start_0
    iget-object v4, p0, Lorg/htmlparser/parserapplications/filterbuilder/HtmlTreeModel;->mTreeListeners:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    .line 220
    .local v3, v:Ljava/util/Vector;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 224
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/swing/event/TreeModelListener;

    .line 225
    .local v2, listener:Ljavax/swing/event/TreeModelListener;
    invoke-interface {v2, v0}, Ljavax/swing/event/TreeModelListener;->treeStructureChanged(Ljavax/swing/event/TreeModelEvent;)V

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 220
    .end local v1           #i:I
    .end local v2           #listener:Ljavax/swing/event/TreeModelListener;
    .end local v3           #v:Ljava/util/Vector;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 227
    .restart local v1       #i:I
    .restart local v3       #v:Ljava/util/Vector;
    :cond_0
    return-void
.end method
