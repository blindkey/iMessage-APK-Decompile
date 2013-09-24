.class public Lorg/htmlparser/beans/FilterBean;
.super Ljava/lang/Object;
.source "FilterBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PROP_CONNECTION_PROPERTY:Ljava/lang/String; = "connection"

.field public static final PROP_NODES_PROPERTY:Ljava/lang/String; = "nodes"

.field public static final PROP_TEXT_PROPERTY:Ljava/lang/String; = "text"

.field public static final PROP_URL_PROPERTY:Ljava/lang/String; = "URL"


# instance fields
.field protected mFilters:[Lorg/htmlparser/NodeFilter;

.field protected mNodes:Lorg/htmlparser/util/NodeList;

.field protected mParser:Lorg/htmlparser/Parser;

.field protected mPropertySupport:Ljava/beans/PropertyChangeSupport;

.field protected mRecursive:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    .line 108
    new-instance v0, Lorg/htmlparser/Parser;

    invoke-direct {v0}, Lorg/htmlparser/Parser;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    .line 109
    iput-object v1, p0, Lorg/htmlparser/beans/FilterBean;->mFilters:[Lorg/htmlparser/NodeFilter;

    .line 110
    iput-object v1, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/htmlparser/beans/FilterBean;->mRecursive:Z

    .line 112
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 445
    array-length v1, p0

    if-gtz v1, :cond_0

    .line 446
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Usage: java -classpath htmlparser.jar org.htmlparser.beans.FilterBean <http://whatever_url> [node name]"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void

    .line 449
    :cond_0
    new-instance v0, Lorg/htmlparser/beans/FilterBean;

    invoke-direct {v0}, Lorg/htmlparser/beans/FilterBean;-><init>()V

    .line 450
    .local v0, fb:Lorg/htmlparser/beans/FilterBean;
    array-length v1, p0

    if-ge v3, v1, :cond_1

    .line 451
    new-array v1, v3, [Lorg/htmlparser/NodeFilter;

    new-instance v2, Lorg/htmlparser/filters/TagNameFilter;

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/htmlparser/beans/FilterBean;->setFilters([Lorg/htmlparser/NodeFilter;)V

    .line 452
    :cond_1
    aget-object v1, p0, v4

    invoke-virtual {v0, v1}, Lorg/htmlparser/beans/FilterBean;->setURL(Ljava/lang/String;)V

    .line 454
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/htmlparser/beans/FilterBean;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 221
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 222
    return-void
.end method

.method protected applyFilters()Lorg/htmlparser/util/NodeList;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/htmlparser/Parser;->parse(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 169
    .local v2, ret:Lorg/htmlparser/util/NodeList;
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getFilters()[Lorg/htmlparser/NodeFilter;

    move-result-object v0

    .line 170
    .local v0, filters:[Lorg/htmlparser/NodeFilter;
    if-eqz v0, :cond_0

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 172
    aget-object v3, v0, v1

    iget-boolean v4, p0, Lorg/htmlparser/beans/FilterBean;->mRecursive:Z

    invoke-virtual {v2, v3, v4}, Lorg/htmlparser/util/NodeList;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;Z)Lorg/htmlparser/util/NodeList;

    move-result-object v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1           #i:I
    :cond_0
    return-object v2
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilters()[Lorg/htmlparser/NodeFilter;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mFilters:[Lorg/htmlparser/NodeFilter;

    return-object v0
.end method

.method public getNodes()Lorg/htmlparser/util/NodeList;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->setNodes()V

    .line 248
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    return-object v0
.end method

.method public getParser()Lorg/htmlparser/Parser;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lorg/htmlparser/beans/FilterBean;->mRecursive:Z

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 403
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getNodes()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    .line 404
    .local v1, list:Lorg/htmlparser/util/NodeList;
    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    new-instance v3, Lorg/htmlparser/beans/StringBean;

    invoke-direct {v3}, Lorg/htmlparser/beans/StringBean;-><init>()V

    .line 407
    .local v3, sb:Lorg/htmlparser/beans/StringBean;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 408
    invoke-virtual {v1, v0}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/htmlparser/Node;->accept(Lorg/htmlparser/visitors/NodeVisitor;)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {v3}, Lorg/htmlparser/beans/StringBean;->getStrings()Ljava/lang/String;

    move-result-object v2

    .line 414
    .end local v0           #i:I
    .end local v3           #sb:Lorg/htmlparser/beans/StringBean;
    .local v2, ret:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 412
    .end local v2           #ret:Ljava/lang/String;
    :cond_1
    const-string v2, ""

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->getURL()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 231
    iget-object v0, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 232
    return-void
.end method

.method public setConnection(Ljava/net/URLConnection;)V
    .locals 6
    .parameter "connection"

    .prologue
    .line 317
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 319
    .local v0, conn:Ljava/net/URLConnection;
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 324
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    if-nez v3, :cond_3

    .line 325
    new-instance v3, Lorg/htmlparser/Parser;

    invoke-direct {v3, p1}, Lorg/htmlparser/Parser;-><init>(Ljava/net/URLConnection;)V

    iput-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    .line 328
    :goto_0
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "URL"

    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 330
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "connection"

    iget-object v5, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v5}, Lorg/htmlparser/Parser;->getConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->setNodes()V

    .line 339
    :cond_2
    :goto_1
    return-void

    .line 327
    :cond_3
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v3, p1}, Lorg/htmlparser/Parser;->setConnection(Ljava/net/URLConnection;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    .line 336
    .local v1, pe:Lorg/htmlparser/util/ParserException;
    new-instance v3, Lorg/htmlparser/util/NodeList;

    invoke-direct {v3}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/FilterBean;->updateNodes(Lorg/htmlparser/util/NodeList;)V

    goto :goto_1
.end method

.method public setFilters([Lorg/htmlparser/NodeFilter;)V
    .locals 1
    .parameter "filters"

    .prologue
    .line 358
    iput-object p1, p0, Lorg/htmlparser/beans/FilterBean;->mFilters:[Lorg/htmlparser/NodeFilter;

    .line 359
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getParser()Lorg/htmlparser/Parser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getParser()Lorg/htmlparser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->reset()V

    .line 362
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->setNodes()V

    .line 364
    :cond_0
    return-void
.end method

.method protected setNodes()V
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getURL()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->applyFilters()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    .line 189
    .local v1, list:Lorg/htmlparser/util/NodeList;
    invoke-virtual {p0, v1}, Lorg/htmlparser/beans/FilterBean;->updateNodes(Lorg/htmlparser/util/NodeList;)V
    :try_end_0
    .catch Lorg/htmlparser/util/EncodingChangeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    .end local v1           #list:Lorg/htmlparser/util/NodeList;
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 195
    .local v0, ece:Lorg/htmlparser/util/EncodingChangeException;
    :try_start_1
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v3}, Lorg/htmlparser/Parser;->reset()V

    .line 196
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->applyFilters()Lorg/htmlparser/util/NodeList;

    move-result-object v1

    .line 197
    .restart local v1       #list:Lorg/htmlparser/util/NodeList;
    invoke-virtual {p0, v1}, Lorg/htmlparser/beans/FilterBean;->updateNodes(Lorg/htmlparser/util/NodeList;)V
    :try_end_1
    .catch Lorg/htmlparser/util/ParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 199
    .end local v1           #list:Lorg/htmlparser/util/NodeList;
    :catch_1
    move-exception v2

    .line 201
    .local v2, pe:Lorg/htmlparser/util/ParserException;
    new-instance v3, Lorg/htmlparser/util/NodeList;

    invoke-direct {v3}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/FilterBean;->updateNodes(Lorg/htmlparser/util/NodeList;)V

    goto :goto_0

    .line 204
    .end local v0           #ece:Lorg/htmlparser/util/EncodingChangeException;
    .end local v2           #pe:Lorg/htmlparser/util/ParserException;
    :catch_2
    move-exception v2

    .line 206
    .restart local v2       #pe:Lorg/htmlparser/util/ParserException;
    new-instance v3, Lorg/htmlparser/util/NodeList;

    invoke-direct {v3}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/FilterBean;->updateNodes(Lorg/htmlparser/util/NodeList;)V

    goto :goto_0
.end method

.method public setParser(Lorg/htmlparser/Parser;)V
    .locals 1
    .parameter "parser"

    .prologue
    .line 383
    iput-object p1, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    .line 384
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getFilters()[Lorg/htmlparser/NodeFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->setNodes()V

    .line 386
    :cond_0
    return-void
.end method

.method public setRecursive(Z)V
    .locals 0
    .parameter "recursive"

    .prologue
    .line 435
    iput-boolean p1, p0, Lorg/htmlparser/beans/FilterBean;->mRecursive:Z

    .line 436
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    .line 272
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, old:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 274
    .local v0, conn:Ljava/net/URLConnection;
    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 279
    :cond_1
    :try_start_0
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    if-nez v3, :cond_3

    .line 280
    new-instance v3, Lorg/htmlparser/Parser;

    invoke-direct {v3, p1}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    .line 283
    :goto_0
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "URL"

    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "connection"

    iget-object v5, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v5}, Lorg/htmlparser/Parser;->getConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->setNodes()V

    .line 294
    :cond_2
    :goto_1
    return-void

    .line 282
    :cond_3
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v3, p1}, Lorg/htmlparser/Parser;->setURL(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v2

    .line 291
    .local v2, pe:Lorg/htmlparser/util/ParserException;
    new-instance v3, Lorg/htmlparser/util/NodeList;

    invoke-direct {v3}, Lorg/htmlparser/util/NodeList;-><init>()V

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/FilterBean;->updateNodes(Lorg/htmlparser/util/NodeList;)V

    goto :goto_1
.end method

.method protected updateNodes(Lorg/htmlparser/util/NodeList;)V
    .locals 5
    .parameter "nodes"

    .prologue
    .line 128
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 130
    :cond_0
    iget-object v2, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    .line 131
    .local v2, oldValue:Lorg/htmlparser/util/NodeList;
    if-eqz v2, :cond_4

    .line 132
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getText()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, oldText:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_1

    .line 136
    const-string v1, ""

    .line 137
    :cond_1
    iput-object p1, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    .line 138
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mNodes:Lorg/htmlparser/util/NodeList;

    if-eqz v3, :cond_5

    .line 139
    invoke-virtual {p0}, Lorg/htmlparser/beans/FilterBean;->getText()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, newText:Ljava/lang/String;
    :goto_1
    if-nez v0, :cond_2

    .line 143
    const-string v0, ""

    .line 144
    :cond_2
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "nodes"

    invoke-virtual {v3, v4, v2, p1}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 147
    iget-object v3, p0, Lorg/htmlparser/beans/FilterBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v4, "text"

    invoke-virtual {v3, v4, v1, v0}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    .end local v0           #newText:Ljava/lang/String;
    .end local v1           #oldText:Ljava/lang/String;
    .end local v2           #oldValue:Lorg/htmlparser/util/NodeList;
    :cond_3
    return-void

    .line 134
    .restart local v2       #oldValue:Lorg/htmlparser/util/NodeList;
    :cond_4
    const-string v1, ""

    .restart local v1       #oldText:Ljava/lang/String;
    goto :goto_0

    .line 141
    :cond_5
    const-string v0, ""

    .restart local v0       #newText:Ljava/lang/String;
    goto :goto_1
.end method
