.class public Lorg/htmlparser/beans/HTMLLinkBean;
.super Ljavax/swing/JList;
.source "HTMLLinkBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/beans/PropertyChangeListener;


# instance fields
.field protected mBean:Lorg/htmlparser/beans/LinkBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljavax/swing/JList;-><init>()V

    .line 62
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/htmlparser/beans/LinkBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 103
    invoke-super {p0, p1}, Ljavax/swing/JList;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 104
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/LinkBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 105
    return-void
.end method

.method protected getBean()Lorg/htmlparser/beans/LinkBean;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/htmlparser/beans/HTMLLinkBean;->mBean:Lorg/htmlparser/beans/LinkBean;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lorg/htmlparser/beans/LinkBean;

    invoke-direct {v0}, Lorg/htmlparser/beans/LinkBean;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/beans/HTMLLinkBean;->mBean:Lorg/htmlparser/beans/LinkBean;

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/beans/HTMLLinkBean;->mBean:Lorg/htmlparser/beans/LinkBean;

    return-object v0
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/LinkBean;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLinks()[Ljava/net/URL;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/LinkBean;->getLinks()[Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumSize()Ljava/awt/Dimension;
    .locals 5

    .prologue
    .line 88
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/HTMLLinkBean;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v1

    .line 89
    .local v1, met:Ljava/awt/FontMetrics;
    const-string v3, "http://localhost"

    invoke-virtual {v1, v3}, Ljava/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, width:I
    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getLeading()I

    move-result v3

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getDescent()I

    move-result v4

    add-int v0, v3, v4

    .line 92
    .local v0, height:I
    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v3
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/LinkBean;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 181
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "links"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/LinkBean;->getLinks()[Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/beans/HTMLLinkBean;->setListData([Ljava/lang/Object;)V

    .line 185
    :cond_0
    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 115
    invoke-super {p0, p1}, Ljavax/swing/JList;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 116
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/LinkBean;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 117
    return-void
.end method

.method public setConnection(Ljava/net/URLConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 168
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/LinkBean;->setConnection(Ljava/net/URLConnection;)V

    .line 169
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLLinkBean;->getBean()Lorg/htmlparser/beans/LinkBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/LinkBean;->setURL(Ljava/lang/String;)V

    .line 151
    return-void
.end method
