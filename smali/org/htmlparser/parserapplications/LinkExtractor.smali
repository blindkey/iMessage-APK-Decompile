.class public Lorg/htmlparser/parserapplications/LinkExtractor;
.super Ljava/lang/Object;
.source "LinkExtractor.java"


# static fields
.field static class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
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
    .locals 14
    .parameter "args"

    .prologue
    .line 57
    array-length v0, p0

    if-gtz v0, :cond_2

    .line 59
    const/4 v0, 0x0

    const-string v1, "Enter the URL to extract links from:"

    const-string v2, "Web Site"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "http://htmlparser.sourceforge.net/wiki/"

    invoke-static/range {v0 .. v6}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;ILjavax/swing/Icon;[Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 67
    .local v13, url:Ljava/lang/String;
    if-nez v13, :cond_0

    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 72
    :cond_0
    :goto_0
    new-instance v8, Lorg/htmlparser/filters/NodeClassFilter;

    sget-object v0, Lorg/htmlparser/parserapplications/LinkExtractor;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "org.htmlparser.tags.LinkTag"

    invoke-static {v0}, Lorg/htmlparser/parserapplications/LinkExtractor;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/parserapplications/LinkExtractor;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    :goto_1
    invoke-direct {v8, v0}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 73
    .local v8, filter:Lorg/htmlparser/NodeFilter;
    const/4 v0, 0x1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    aget-object v0, p0, v0

    const-string v1, "-maillinks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v9, Lorg/htmlparser/filters/AndFilter;

    new-instance v0, Lorg/htmlparser/parserapplications/LinkExtractor$1;

    invoke-direct {v0}, Lorg/htmlparser/parserapplications/LinkExtractor$1;-><init>()V

    invoke-direct {v9, v8, v0}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .end local v8           #filter:Lorg/htmlparser/NodeFilter;
    .local v9, filter:Lorg/htmlparser/NodeFilter;
    move-object v8, v9

    .line 86
    .end local v9           #filter:Lorg/htmlparser/NodeFilter;
    .restart local v8       #filter:Lorg/htmlparser/NodeFilter;
    :cond_1
    :try_start_0
    new-instance v12, Lorg/htmlparser/Parser;

    invoke-direct {v12, v13}, Lorg/htmlparser/Parser;-><init>(Ljava/lang/String;)V

    .line 87
    .local v12, parser:Lorg/htmlparser/Parser;
    invoke-virtual {v12, v8}, Lorg/htmlparser/Parser;->extractAllNodesThatMatch(Lorg/htmlparser/NodeFilter;)Lorg/htmlparser/util/NodeList;

    move-result-object v11

    .line 88
    .local v11, list:Lorg/htmlparser/util/NodeList;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    invoke-virtual {v11}, Lorg/htmlparser/util/NodeList;->size()I

    move-result v0

    if-ge v10, v0, :cond_4

    .line 89
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v10}, Lorg/htmlparser/util/NodeList;->elementAt(I)Lorg/htmlparser/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/htmlparser/Node;->toHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 71
    .end local v8           #filter:Lorg/htmlparser/NodeFilter;
    .end local v10           #i:I
    .end local v11           #list:Lorg/htmlparser/util/NodeList;
    .end local v12           #parser:Lorg/htmlparser/Parser;
    .end local v13           #url:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    aget-object v13, p0, v0

    .restart local v13       #url:Ljava/lang/String;
    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Lorg/htmlparser/parserapplications/LinkExtractor;->class$org$htmlparser$tags$LinkTag:Ljava/lang/Class;

    goto :goto_1

    .line 91
    .restart local v8       #filter:Lorg/htmlparser/NodeFilter;
    :catch_0
    move-exception v7

    .line 93
    .local v7, e:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v7}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    .line 95
    .end local v7           #e:Lorg/htmlparser/util/ParserException;
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 96
    return-void
.end method
