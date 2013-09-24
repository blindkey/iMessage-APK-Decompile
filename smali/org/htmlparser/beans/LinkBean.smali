.class public Lorg/htmlparser/beans/LinkBean;
.super Ljava/lang/Object;
.source "LinkBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PROP_LINKS_PROPERTY:Ljava/lang/String; = "links"

.field public static final PROP_URL_PROPERTY:Ljava/lang/String; = "URL"

.field static class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;


# instance fields
.field protected mLinks:[Ljava/net/URL;

.field protected mParser:Lorg/htmlparser/Parser;

.field protected mPropertySupport:Ljava/beans/PropertyChangeSupport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    .line 80
    new-instance v0, Lorg/htmlparser/Parser;

    invoke-direct {v0}, Lorg/htmlparser/Parser;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    .line 81
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 101
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 300
    array-length v3, p0

    if-gtz v3, :cond_1

    .line 301
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Usage: java -classpath htmlparser.jar org.htmlparser.beans.LinkBean <http://whatever_url>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void

    .line 305
    :cond_1
    new-instance v1, Lorg/htmlparser/beans/LinkBean;

    invoke-direct {v1}, Lorg/htmlparser/beans/LinkBean;-><init>()V

    .line 306
    .local v1, lb:Lorg/htmlparser/beans/LinkBean;
    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Lorg/htmlparser/beans/LinkBean;->setURL(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Lorg/htmlparser/beans/LinkBean;->getLinks()[Ljava/net/URL;

    move-result-object v2

    .line 308
    .local v2, urls:[Ljava/net/URL;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 309
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setLinks()V
    .locals 7

    .prologue
    .line 192
    invoke-virtual {p0}, Lorg/htmlparser/beans/LinkBean;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/beans/LinkBean;->extractLinks()[Ljava/net/URL;

    move-result-object v3

    .line 197
    .local v3, urls:[Ljava/net/URL;
    iget-object v4, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    invoke-virtual {p0, v4, v3}, Lorg/htmlparser/beans/LinkBean;->equivalent([Ljava/net/URL;[Ljava/net/URL;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    iget-object v1, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    .line 200
    .local v1, oldValue:[Ljava/net/URL;
    iput-object v3, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    .line 201
    iget-object v4, p0, Lorg/htmlparser/beans/LinkBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v5, "links"

    iget-object v6, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    invoke-virtual {v4, v5, v1, v6}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1           #oldValue:[Ljava/net/URL;
    .end local v3           #urls:[Ljava/net/URL;
    :cond_0
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, hpe:Lorg/htmlparser/util/ParserException;
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 166
    iget-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 167
    return-void
.end method

.method protected equivalent([Ljava/net/URL;[Ljava/net/URL;)Z
    .locals 4
    .parameter "array1"
    .parameter "array2"

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, ret:Z
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 142
    const/4 v1, 0x1

    .line 152
    :cond_0
    return v1

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 144
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    if-eqz v1, :cond_0

    .line 148
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    if-eq v2, v3, :cond_2

    .line 149
    const/4 v1, 0x0

    .line 147
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected extractLinks()[Ljava/net/URL;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v7, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v7}, Lorg/htmlparser/Parser;->reset()V

    .line 101
    new-instance v1, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v7, Lorg/htmlparser/beans/LinkBean;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    if-nez v7, :cond_0

    const-string v7, "org.htmlparser.tags.LinkTag"

    invoke-static {v7}, Lorg/htmlparser/beans/LinkBean;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/htmlparser/beans/LinkBean;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    :goto_0
    invoke-direct {v1, v7}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 104
    .local v1, filter:Lorg/htmlparser/NodeFilter;
    :try_start_0
    iget-object v7, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v7, v1}, Lorg/htmlparser/Parser;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;
    :try_end_0
    .catch Lorg/htmlparser/util/EncodingChangeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 111
    .local v4, list:Lorg/htmlparser/util/NodeList;
    :goto_1
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 112
    .local v6, vector:Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {v4}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 115
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v3

    check-cast v3, Lorg/htmlparser/tags/LinkTag;

    .line 116
    .local v3, link:Lorg/htmlparser/tags/LinkTag;
    new-instance v7, Ljava/net/URL;

    invoke-virtual {v3}, Lorg/htmlparser/tags/LinkTag;->getLink()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    .end local v3           #link:Lorg/htmlparser/tags/LinkTag;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 101
    .end local v1           #filter:Lorg/htmlparser/NodeFilter;
    .end local v2           #i:I
    .end local v4           #list:Lorg/htmlparser/util/NodeList;
    .end local v6           #vector:Ljava/util/Vector;
    :cond_0
    sget-object v7, Lorg/htmlparser/beans/LinkBean;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    goto :goto_0

    .line 106
    .restart local v1       #filter:Lorg/htmlparser/NodeFilter;
    :catch_0
    move-exception v0

    .line 108
    .local v0, ece:Lorg/htmlparser/util/EncodingChangeException;
    iget-object v7, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v7}, Lorg/htmlparser/Parser;->reset()V

    .line 109
    iget-object v7, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v7, v1}, Lorg/htmlparser/Parser;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v4

    .restart local v4       #list:Lorg/htmlparser/util/NodeList;
    goto :goto_1

    .line 123
    .end local v0           #ece:Lorg/htmlparser/util/EncodingChangeException;
    .restart local v2       #i:I
    .restart local v6       #vector:Ljava/util/Vector;
    :cond_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v5, v7, [Ljava/net/URL;

    .line 124
    .local v5, ret:[Ljava/net/URL;
    invoke-virtual {v6, v5}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 126
    return-object v5

    .line 118
    .end local v5           #ret:[Ljava/net/URL;
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLinks()[Ljava/net/URL;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 217
    iget-object v1, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    if-nez v1, :cond_0

    .line 220
    :try_start_0
    invoke-virtual {p0}, Lorg/htmlparser/beans/LinkBean;->extractLinks()[Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    .line 221
    iget-object v1, p0, Lorg/htmlparser/beans/LinkBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "links"

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    invoke-virtual {v1, v2, v3, v4}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    return-object v1

    .line 224
    :catch_0
    move-exception v0

    .line 226
    .local v0, hpe:Lorg/htmlparser/util/ParserException;
    iput-object v5, p0, Lorg/htmlparser/beans/LinkBean;->mLinks:[Ljava/net/URL;

    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0}, Lorg/htmlparser/Parser;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 176
    iget-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    invoke-virtual {v0, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 177
    return-void
.end method

.method public setConnection(Ljava/net/URLConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v0, p1}, Lorg/htmlparser/Parser;->setConnection(Ljava/net/URLConnection;)V

    .line 286
    invoke-direct {p0}, Lorg/htmlparser/beans/LinkBean;->setLinks()V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 250
    invoke-virtual {p0}, Lorg/htmlparser/beans/LinkBean;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, old:Ljava/lang/String;
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/htmlparser/beans/LinkBean;->mParser:Lorg/htmlparser/Parser;

    invoke-virtual {v1, p1}, Lorg/htmlparser/Parser;->setURL(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lorg/htmlparser/beans/LinkBean;->mPropertySupport:Ljava/beans/PropertyChangeSupport;

    const-string v2, "URL"

    invoke-virtual {p0}, Lorg/htmlparser/beans/LinkBean;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    invoke-direct {p0}, Lorg/htmlparser/beans/LinkBean;->setLinks()V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_2
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    goto :goto_0
.end method
