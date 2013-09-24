.class public Lorg/htmlparser/tags/ImageTag;
.super Lorg/htmlparser/nodes/TagNode;
.source "ImageTag.java"


# static fields
.field private static final mIds:[Ljava/lang/String;


# instance fields
.field protected imageURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "IMG"

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/tags/ImageTag;->mIds:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/htmlparser/nodes/TagNode;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/tags/ImageTag;->imageURL:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public extractImageLocn()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 98
    const-string v5, ""

    .line 99
    .local v5, ret:Ljava/lang/String;
    const/4 v7, 0x0

    .line 100
    .local v7, state:I
    invoke-virtual {p0}, Lorg/htmlparser/tags/ImageTag;->getAttributesEx()Ljava/util/Vector;

    move-result-object v1

    .line 101
    .local v1, attributes:Ljava/util/Vector;
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v6

    .line 102
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_7

    if-ge v7, v11, :cond_7

    .line 104
    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/Attribute;

    .line 105
    .local v0, attribute:Lorg/htmlparser/Attribute;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, string:Ljava/lang/String;
    invoke-virtual {v0}, Lorg/htmlparser/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, data:Ljava/lang/String;
    packed-switch v7, :pswitch_data_0

    .line 174
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "we\'re not supposed to in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 110
    :pswitch_0
    if-eqz v8, :cond_0

    .line 112
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, name:Ljava/lang/String;
    const-string v9, "SRC"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 115
    const/4 v7, 0x1

    .line 116
    if-eqz v2, :cond_0

    .line 118
    const-string v9, ""

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 119
    const/4 v7, 0x2

    .line 102
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 122
    .restart local v4       #name:Ljava/lang/String;
    :cond_1
    move-object v5, v2

    .line 123
    move v3, v6

    .line 125
    goto :goto_1

    .line 128
    :cond_2
    const-string v9, "SRC"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 131
    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 133
    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v10, v9, :cond_3

    .line 134
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 136
    :cond_3
    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v10, v9, :cond_4

    .line 137
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 138
    :cond_4
    move-object v5, v8

    .line 139
    const/4 v7, 0x0

    .line 142
    goto :goto_1

    .line 146
    .end local v4           #name:Ljava/lang/String;
    :pswitch_1
    if-eqz v8, :cond_0

    .line 148
    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 150
    const/4 v7, 0x2

    .line 151
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v10, v9, :cond_5

    .line 153
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    const/4 v7, 0x0

    .line 155
    goto :goto_1

    .line 156
    :cond_5
    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 159
    const/4 v7, 0x0

    .line 160
    goto :goto_1

    .line 165
    :pswitch_2
    if-eqz v8, :cond_0

    .line 167
    if-nez v2, :cond_6

    .line 168
    move-object v5, v8

    .line 169
    :cond_6
    const/4 v7, 0x0

    .line 171
    goto :goto_1

    .line 177
    .end local v0           #attribute:Lorg/htmlparser/Attribute;
    .end local v2           #data:Ljava/lang/String;
    .end local v8           #string:Ljava/lang/String;
    :cond_7
    const/16 v9, 0xa

    invoke-static {v5, v9}, Lorg/htmlparser/util/ParserUtils;->removeChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 178
    const/16 v9, 0xd

    invoke-static {v5, v9}, Lorg/htmlparser/util/ParserUtils;->removeChars(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v5

    .line 180
    return-object v5

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lorg/htmlparser/tags/ImageTag;->mIds:[Ljava/lang/String;

    return-object v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lorg/htmlparser/tags/ImageTag;->imageURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lorg/htmlparser/tags/ImageTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lorg/htmlparser/tags/ImageTag;->getPage()Lorg/htmlparser/lexer/Page;

    move-result-object v0

    invoke-virtual {p0}, Lorg/htmlparser/tags/ImageTag;->extractImageLocn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/htmlparser/lexer/Page;->getAbsoluteURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/tags/ImageTag;->imageURL:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/tags/ImageTag;->imageURL:Ljava/lang/String;

    return-object v0
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 202
    iput-object p1, p0, Lorg/htmlparser/tags/ImageTag;->imageURL:Ljava/lang/String;

    .line 203
    const-string v0, "SRC"

    iget-object v1, p0, Lorg/htmlparser/tags/ImageTag;->imageURL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/tags/ImageTag;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method
