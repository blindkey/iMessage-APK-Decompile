.class public abstract Lorg/htmlparser/parserapplications/filterbuilder/Filter;
.super Ljavax/swing/JComponent;
.source "Filter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# static fields
.field protected static mWrappers:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->mWrappers:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 105
    invoke-direct {p0}, Ljavax/swing/JComponent;-><init>()V

    .line 110
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setToolTipText(Ljava/lang/String;)V

    .line 114
    new-instance v3, Lorg/htmlparser/parserapplications/filterbuilder/layouts/VerticalLayoutManager;

    invoke-direct {v3}, Lorg/htmlparser/parserapplications/filterbuilder/layouts/VerticalLayoutManager;-><init>()V

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setLayout(Ljava/awt/LayoutManager;)V

    .line 115
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSelected(Z)V

    .line 116
    new-instance v2, Ljavax/swing/JLabel;

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getIcon()Ljavax/swing/Icon;

    move-result-object v4

    invoke-direct {v2, v3, v4, v5}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;Ljavax/swing/Icon;I)V

    .line 117
    .local v2, label:Ljavax/swing/JLabel;
    sget-object v3, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljavax/swing/JLabel;->setBackground(Ljava/awt/Color;)V

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/swing/JLabel;->setAlignmentX(F)V

    .line 119
    invoke-virtual {v2, v5}, Ljavax/swing/JLabel;->setHorizontalAlignment(I)V

    .line 120
    invoke-virtual {p0, v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 121
    invoke-virtual {v2}, Ljavax/swing/JLabel;->getMaximumSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 122
    .local v0, dimension:Ljava/awt/Dimension;
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getInsets()Ljava/awt/Insets;

    move-result-object v1

    .line 123
    .local v1, insets:Ljava/awt/Insets;
    iget v3, v0, Ljava/awt/Dimension;->width:I

    iget v4, v1, Ljava/awt/Insets;->left:I

    add-int/2addr v3, v4

    iget v4, v1, Ljava/awt/Insets;->right:I

    add-int/2addr v3, v4

    iget v4, v0, Ljava/awt/Dimension;->height:I

    iget v5, v1, Ljava/awt/Insets;->top:I

    add-int/2addr v4, v5

    iget v5, v1, Ljava/awt/Insets;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/awt/Dimension;->setSize(II)V

    .line 124
    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSize(Ljava/awt/Dimension;)V

    .line 125
    return-void
.end method

.method public static deconstitute([Lorg/htmlparser/parserapplications/filterbuilder/Filter;)Ljava/lang/String;
    .locals 3
    .parameter "filters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 320
    .local v1, ret:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 322
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getNodeFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    invoke-static {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->pickle(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->serialize([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static deserialize(Ljava/lang/String;)[B
    .locals 5
    .parameter "string"

    .prologue
    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v1, v2, [B

    .line 303
    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 304
    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 303
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 306
    :cond_0
    return-object v1
.end method

.method protected static getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    .locals 3
    .parameter "component"

    .prologue
    .line 392
    instance-of v2, p0, Ljava/awt/Container;

    if-eqz v2, :cond_1

    .line 394
    check-cast p0, Ljava/awt/Container;

    .end local p0
    invoke-virtual {p0}, Ljava/awt/Container;->getComponents()[Ljava/awt/Component;

    move-result-object v1

    .line 395
    .local v1, list:[Ljava/awt/Component;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 396
    aget-object v2, v1, v0

    instance-of v2, v2, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    if-eqz v2, :cond_0

    .line 397
    aget-object v2, v1, v0

    check-cast v2, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    .line 400
    :goto_1
    return-object v2

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0           #i:I
    .end local v1           #list:[Ljava/awt/Component;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static instantiate(Ljava/lang/String;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .locals 9
    .parameter "class_name"

    .prologue
    .line 64
    const/4 v5, 0x0

    .line 67
    .local v5, ret:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 68
    .local v2, cls:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-object v5, v0

    .line 69
    sget-object v6, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->mWrappers:Ljava/util/Hashtable;

    invoke-virtual {v5}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getNodeFilter()Lorg/htmlparser/NodeFilter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    .line 88
    .end local v2           #cls:Ljava/lang/Class;
    :goto_0
    return-object v5

    .line 71
    :catch_0
    move-exception v3

    .line 73
    .local v3, cnfe:Ljava/lang/ClassNotFoundException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "can\'t find class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v3           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 77
    .local v4, ie:Ljava/lang/InstantiationException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "can\'t instantiate class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v4           #ie:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v4

    .line 81
    .local v4, ie:Ljava/lang/IllegalAccessException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " has no public constructor"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v4           #ie:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 85
    .local v1, cce:Ljava/lang/ClassCastException;
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " is not a Filter"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static newline(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "out"

    .prologue
    .line 508
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 509
    return-void
.end method

.method public static pickle(Ljava/lang/Object;)[B
    .locals 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 235
    .local v1, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 237
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 239
    .local v2, ret:[B
    return-object v2
.end method

.method public static reconstitute(Ljava/lang/String;Lorg/htmlparser/Parser;)[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .locals 8
    .parameter "string"
    .parameter "context"

    .prologue
    .line 347
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 350
    .local v6, vector:Ljava/util/Vector;
    :cond_0
    :goto_0
    :try_start_0
    const-string v7, "["

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 352
    const/16 v7, 0x5d

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 353
    .local v3, index:I
    const/4 v7, -0x1

    if-eq v7, v3, :cond_1

    .line 355
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, code:Ljava/lang/String;
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 357
    invoke-static {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->deserialize(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->unpickle([B)Ljava/lang/Object;

    move-result-object v4

    .line 358
    .local v4, object:Ljava/lang/Object;
    instance-of v7, v4, Lorg/htmlparser/NodeFilter;

    if-eqz v7, :cond_1

    .line 360
    check-cast v4, Lorg/htmlparser/NodeFilter;

    .end local v4           #object:Ljava/lang/Object;
    invoke-static {v4, p1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->wrap(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v2

    .line 361
    .local v2, filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    if-eqz v2, :cond_0

    .line 362
    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    .end local v0           #code:Ljava/lang/String;
    .end local v2           #filter:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .end local v3           #index:I
    :catch_0
    move-exception v1

    .line 373
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    .line 377
    .local v5, ret:[Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 379
    return-object v5
.end method

.method public static serialize([B)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 279
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 281
    .local v1, ret:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 283
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, string:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 285
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 289
    .end local v2           #string:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static spaces(Ljava/lang/StringBuffer;I)V
    .locals 2
    .parameter "out"
    .parameter "count"

    .prologue
    .line 498
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 499
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 498
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_0
    return-void
.end method

.method public static unpickle([B)Ljava/lang/Object;
    .locals 3
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 260
    .local v0, bis:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 261
    .local v1, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 262
    .local v2, ret:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 264
    return-object v2
.end method

.method public static wrap(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    .locals 9
    .parameter "filter"
    .parameter "context"

    .prologue
    .line 417
    const/4 v5, 0x0

    .line 419
    .local v5, ret:Lorg/htmlparser/parserapplications/filterbuilder/Filter;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, class_name:Ljava/lang/String;
    sget-object v6, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->mWrappers:Ljava/util/Hashtable;

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #class_name:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 421
    .restart local v0       #class_name:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 425
    :try_start_0
    invoke-static {v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->instantiate(Ljava/lang/String;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v5

    .line 426
    invoke-virtual {v5, p0, p1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V

    .line 428
    invoke-virtual {v5}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getSubNodeFilters()[Lorg/htmlparser/NodeFilter;

    move-result-object v2

    .line 429
    .local v2, filters:[Lorg/htmlparser/NodeFilter;
    array-length v6, v2

    if-eqz v6, :cond_1

    .line 431
    invoke-static {v5}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getEnclosed(Ljava/awt/Component;)Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;

    move-result-object v4

    .line 432
    .local v4, list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    if-eqz v4, :cond_0

    .line 434
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/htmlparser/NodeFilter;

    invoke-virtual {v5, v6}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V

    .line 435
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_1

    .line 436
    aget-object v6, v2, v3

    invoke-static {v6, p1}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->wrap(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)Lorg/htmlparser/parserapplications/filterbuilder/Filter;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;->addFilter(Lorg/htmlparser/parserapplications/filterbuilder/Filter;)V

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 439
    .end local v3           #i:I
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "filter can\'t have subnodes without a SubFilterList on the wrapper"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v2           #filters:[Lorg/htmlparser/NodeFilter;
    .end local v4           #list:Lorg/htmlparser/parserapplications/filterbuilder/SubFilterList;
    :catch_0
    move-exception v1

    .line 444
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 450
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v5

    .line 448
    :cond_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " is not registered for wrapping."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getIcon()Ljavax/swing/Icon;
    .locals 6

    .prologue
    .line 183
    const/4 v1, 0x0

    .line 186
    .local v1, ret:Ljavax/swing/ImageIcon;
    :try_start_0
    new-instance v2, Ljavax/swing/ImageIcon;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getIconSpec()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ret:Ljavax/swing/ImageIcon;
    .local v2, ret:Ljavax/swing/ImageIcon;
    move-object v1, v2

    .line 193
    .end local v2           #ret:Ljavax/swing/ImageIcon;
    .restart local v1       #ret:Ljavax/swing/ImageIcon;
    :goto_0
    return-object v1

    .line 188
    :catch_0
    move-exception v0

    .line 190
    .local v0, npe:Ljava/lang/NullPointerException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "can\'t find icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getIconSpec()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract getIconSpec()Ljava/lang/String;
.end method

.method public abstract getNodeFilter()Lorg/htmlparser/NodeFilter;
.end method

.method public abstract getSubNodeFilters()[Lorg/htmlparser/NodeFilter;
.end method

.method public setExpanded(Z)V
    .locals 3
    .parameter "expanded"

    .prologue
    .line 485
    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getComponents()[Ljava/awt/Component;

    move-result-object v0

    .line 486
    .local v0, components:[Ljava/awt/Component;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 487
    aget-object v2, v0, v1

    instance-of v2, v2, Ljavax/swing/JLabel;

    if-nez v2, :cond_0

    .line 488
    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/awt/Component;->setVisible(Z)V

    .line 486
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 489
    :cond_1
    return-void
.end method

.method public abstract setNodeFilter(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/Parser;)V
.end method

.method public setSelected(Z)V
    .locals 7
    .parameter "selected"

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x1

    .line 460
    if-eqz p1, :cond_0

    .line 461
    new-instance v0, Ljavax/swing/border/CompoundBorder;

    new-instance v1, Ljavax/swing/border/EtchedBorder;

    invoke-direct {v1}, Ljavax/swing/border/EtchedBorder;-><init>()V

    new-instance v2, Ljavax/swing/border/CompoundBorder;

    new-instance v3, Ljavax/swing/border/LineBorder;

    sget-object v4, Ljava/awt/Color;->blue:Ljava/awt/Color;

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Ljavax/swing/border/LineBorder;-><init>(Ljava/awt/Color;I)V

    new-instance v4, Ljavax/swing/border/EmptyBorder;

    invoke-direct {v4, v6, v6, v6, v6}, Ljavax/swing/border/EmptyBorder;-><init>(IIII)V

    invoke-direct {v2, v3, v4}, Ljavax/swing/border/CompoundBorder;-><init>(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)V

    invoke-direct {v0, v1, v2}, Ljavax/swing/border/CompoundBorder;-><init>(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setBorder(Ljavax/swing/border/Border;)V

    .line 472
    :goto_0
    return-void

    .line 468
    :cond_0
    new-instance v0, Ljavax/swing/border/CompoundBorder;

    new-instance v1, Ljavax/swing/border/EtchedBorder;

    invoke-direct {v1}, Ljavax/swing/border/EtchedBorder;-><init>()V

    new-instance v2, Ljavax/swing/border/EmptyBorder;

    invoke-direct {v2, v3, v3, v3, v3}, Ljavax/swing/border/EmptyBorder;-><init>(IIII)V

    invoke-direct {v0, v1, v2}, Ljavax/swing/border/CompoundBorder;-><init>(Ljavax/swing/border/Border;Ljavax/swing/border/Border;)V

    invoke-virtual {p0, v0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->setBorder(Ljavax/swing/border/Border;)V

    goto :goto_0
.end method

.method public abstract setSubNodeFilters([Lorg/htmlparser/NodeFilter;)V
.end method

.method public abstract toJavaCode(Ljava/lang/StringBuffer;[I)Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/htmlparser/parserapplications/filterbuilder/Filter;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
