.class public Lorg/htmlparser/beans/HTMLTextBean;
.super Ljavax/swing/JTextArea;
.source "HTMLTextBean.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/beans/PropertyChangeListener;


# instance fields
.field protected mBean:Lorg/htmlparser/beans/StringBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljavax/swing/JTextArea;-><init>()V

    .line 61
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/htmlparser/beans/StringBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 62
    return-void
.end method


# virtual methods
.method public addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 89
    invoke-super {p0, p1}, Ljavax/swing/JTextArea;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 90
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 91
    return-void
.end method

.method public getBean()Lorg/htmlparser/beans/StringBean;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/htmlparser/beans/HTMLTextBean;->mBean:Lorg/htmlparser/beans/StringBean;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lorg/htmlparser/beans/StringBean;

    invoke-direct {v0}, Lorg/htmlparser/beans/StringBean;-><init>()V

    iput-object v0, p0, Lorg/htmlparser/beans/HTMLTextBean;->mBean:Lorg/htmlparser/beans/StringBean;

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/beans/HTMLTextBean;->mBean:Lorg/htmlparser/beans/StringBean;

    return-object v0
.end method

.method public getCollapse()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getCollapse()Z

    move-result v0

    return v0
.end method

.method public getConnection()Ljava/net/URLConnection;
    .locals 1

    .prologue
    .line 227
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getConnection()Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public getLinks()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getLinks()Z

    move-result v0

    return v0
.end method

.method public getMinimumSize()Ljava/awt/Dimension;
    .locals 5

    .prologue
    .line 74
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getFont()Ljava/awt/Font;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/htmlparser/beans/HTMLTextBean;->getFontMetrics(Ljava/awt/Font;)Ljava/awt/FontMetrics;

    move-result-object v1

    .line 75
    .local v1, met:Ljava/awt/FontMetrics;
    const-string v3, "Hello World"

    invoke-virtual {v1, v3}, Ljava/awt/FontMetrics;->stringWidth(Ljava/lang/String;)I

    move-result v2

    .line 76
    .local v2, width:I
    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getLeading()I

    move-result v3

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v1}, Ljava/awt/FontMetrics;->getDescent()I

    move-result v4

    add-int v0, v3, v4

    .line 78
    .local v0, height:I
    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v3
.end method

.method public getReplaceNonBreakingSpaces()Z
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getReplaceNonBreakingSpaces()Z

    move-result v0

    return v0
.end method

.method public getStrings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getStrings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public propertyChange(Ljava/beans/PropertyChangeEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/beans/PropertyChangeEvent;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "strings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getStrings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/htmlparser/beans/HTMLTextBean;->setText(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/htmlparser/beans/HTMLTextBean;->setCaretPosition(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 101
    invoke-super {p0, p1}, Ljavax/swing/JTextArea;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 102
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 103
    return-void
.end method

.method public setCollapse(Z)V
    .locals 1
    .parameter "collapse"

    .prologue
    .line 218
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->setCollapse(Z)V

    .line 219
    return-void
.end method

.method public setConnection(Ljava/net/URLConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 236
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->setConnection(Ljava/net/URLConnection;)V

    .line 237
    return-void
.end method

.method public setLinks(Z)V
    .locals 1
    .parameter "links"

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->setLinks(Z)V

    .line 150
    return-void
.end method

.method public setReplaceNonBreakingSpaces(Z)V
    .locals 1
    .parameter "replace"

    .prologue
    .line 191
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->setReplaceNonBreakingSpaces(Z)V

    .line 192
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/htmlparser/beans/HTMLTextBean;->getBean()Lorg/htmlparser/beans/StringBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->setURL(Ljava/lang/String;)V

    .line 170
    return-void
.end method
