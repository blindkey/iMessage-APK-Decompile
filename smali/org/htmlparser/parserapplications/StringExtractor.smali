.class public Lorg/htmlparser/parserapplications/StringExtractor;
.super Ljava/lang/Object;
.source "StringExtractor.java"


# instance fields
.field private resource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "resource"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/htmlparser/parserapplications/StringExtractor;->resource:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, links:Z
    const/4 v4, 0x0

    .line 82
    .local v4, url:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    .line 83
    aget-object v5, p0, v1

    const-string v6, "-links"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    const/4 v2, 0x1

    .line 82
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    aget-object v4, p0, v1

    goto :goto_1

    .line 87
    :cond_1
    if-eqz v4, :cond_2

    .line 89
    new-instance v3, Lorg/htmlparser/parserapplications/StringExtractor;

    invoke-direct {v3, v4}, Lorg/htmlparser/parserapplications/StringExtractor;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, se:Lorg/htmlparser/parserapplications/StringExtractor;
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Lorg/htmlparser/parserapplications/StringExtractor;->extractStrings(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/htmlparser/util/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v3           #se:Lorg/htmlparser/parserapplications/StringExtractor;
    :goto_2
    return-void

    .line 94
    .restart local v3       #se:Lorg/htmlparser/parserapplications/StringExtractor;
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Lorg/htmlparser/util/ParserException;
    invoke-virtual {v0}, Lorg/htmlparser/util/ParserException;->printStackTrace()V

    goto :goto_2

    .line 100
    .end local v0           #e:Lorg/htmlparser/util/ParserException;
    .end local v3           #se:Lorg/htmlparser/parserapplications/StringExtractor;
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Usage: java -classpath htmlparser.jar org.htmlparser.parserapplications.StringExtractor [-links] url"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public extractStrings(Z)Ljava/lang/String;
    .locals 2
    .parameter "links"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lorg/htmlparser/beans/StringBean;

    invoke-direct {v0}, Lorg/htmlparser/beans/StringBean;-><init>()V

    .line 64
    .local v0, sb:Lorg/htmlparser/beans/StringBean;
    invoke-virtual {v0, p1}, Lorg/htmlparser/beans/StringBean;->setLinks(Z)V

    .line 65
    iget-object v1, p0, Lorg/htmlparser/parserapplications/StringExtractor;->resource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/htmlparser/beans/StringBean;->setURL(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Lorg/htmlparser/beans/StringBean;->getStrings()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
