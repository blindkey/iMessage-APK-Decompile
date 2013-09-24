.class public Lorg/htmlparser/filters/CssSelectorNodeFilter;
.super Ljava/lang/Object;
.source "CssSelectorNodeFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/htmlparser/filters/CssSelectorNodeFilter$1;,
        Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;,
        Lorg/htmlparser/filters/CssSelectorNodeFilter$YesFilter;,
        Lorg/htmlparser/filters/CssSelectorNodeFilter$AdjacentFilter;,
        Lorg/htmlparser/filters/CssSelectorNodeFilter$HasAncestorFilter;
    }
.end annotation


# static fields
.field private static final COMBINATOR:I = 0x5

.field private static final COMMA:I = 0x7

.field private static final COMMENT:I = 0x1

.field private static final DELIM:I = 0x6

.field private static final NAME:I = 0x4

.field private static final QUOTEDSTRING:I = 0x2

.field private static final RELATION:I = 0x3

.field private static tokens:Ljava/util/regex/Pattern;


# instance fields
.field private m:Ljava/util/regex/Matcher;

.field private therule:Lorg/htmlparser/NodeFilter;

.field private token:Ljava/lang/String;

.field private tokentype:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-string v0, "(/\\*.*?\\*/) | (   \".*?[^\"]\" | \'.*?[^\']\' | \"\" | \'\' ) | ( [\\~\\*\\$\\^]? = ) | ( [a-zA-Z_\\*](?:[a-zA-Z0-9_-]|\\\\.)* ) | \\s*( [+>~\\s] )\\s* | ( [\\.\\[\\]\\#\\:)(] ) | ( [\\,] ) | ( . )"

    const/16 v1, 0x26

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokens:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "selector"

    .prologue
    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->m:Ljava/util/regex/Matcher;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    .line 111
    iput-object v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    .line 119
    sget-object v0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokens:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->m:Ljava/util/regex/Matcher;

    .line 120
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parse()Lorg/htmlparser/NodeFilter;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->therule:Lorg/htmlparser/NodeFilter;

    .line 122
    :cond_0
    return-void
.end method

.method private nextToken()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->m:Ljava/util/regex/Matcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->m:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->m:Ljava/util/regex/Matcher;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 139
    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->m:Ljava/util/regex/Matcher;

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 141
    iput v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    .line 142
    iget-object v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->m:Ljava/util/regex/Matcher;

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    .line 143
    const/4 v1, 0x1

    .line 147
    .end local v0           #i:I
    :goto_1
    return v1

    .line 138
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0           #i:I
    :cond_1
    iput v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    .line 146
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    goto :goto_1
.end method

.method private parse()Lorg/htmlparser/NodeFilter;
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 157
    .local v0, ret:Lorg/htmlparser/NodeFilter;
    :cond_0
    iget v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    packed-switch v2, :pswitch_data_0

    .line 187
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 189
    return-object v0

    .line 162
    :pswitch_1
    if-nez v0, :cond_1

    .line 163
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parseSimple()Lorg/htmlparser/NodeFilter;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    new-instance v1, Lorg/htmlparser/filters/AndFilter;

    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parseSimple()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .end local v0           #ret:Lorg/htmlparser/NodeFilter;
    .local v1, ret:Lorg/htmlparser/NodeFilter;
    move-object v0, v1

    .line 166
    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v0       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_0

    .line 168
    :pswitch_2
    iget-object v2, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 177
    new-instance v1, Lorg/htmlparser/filters/CssSelectorNodeFilter$HasAncestorFilter;

    invoke-direct {v1, v0}, Lorg/htmlparser/filters/CssSelectorNodeFilter$HasAncestorFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .end local v0           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    move-object v0, v1

    .line 179
    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v0       #ret:Lorg/htmlparser/NodeFilter;
    :goto_1
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    goto :goto_0

    .line 171
    :sswitch_0
    new-instance v1, Lorg/htmlparser/filters/CssSelectorNodeFilter$AdjacentFilter;

    invoke-direct {v1, v0}, Lorg/htmlparser/filters/CssSelectorNodeFilter$AdjacentFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .end local v0           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    move-object v0, v1

    .line 172
    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v0       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_1

    .line 174
    :sswitch_1
    new-instance v1, Lorg/htmlparser/filters/HasParentFilter;

    invoke-direct {v1, v0}, Lorg/htmlparser/filters/HasParentFilter;-><init>(Lorg/htmlparser/NodeFilter;)V

    .end local v0           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    move-object v0, v1

    .line 175
    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v0       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_1

    .line 182
    :pswitch_3
    new-instance v1, Lorg/htmlparser/filters/OrFilter;

    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parse()Lorg/htmlparser/NodeFilter;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/htmlparser/filters/OrFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .line 183
    .end local v0           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    move-object v0, v1

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v0       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 168
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private parseAttributeExp()Lorg/htmlparser/NodeFilter;
    .locals 8

    .prologue
    const/4 v6, 0x4

    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, ret:Lorg/htmlparser/NodeFilter;
    iget v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    if-ne v4, v6, :cond_0

    .line 271
    iget-object v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    .line 272
    .local v0, attrib:Ljava/lang/String;
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    .line 273
    const-string v4, "]"

    iget-object v5, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    new-instance v2, Lorg/htmlparser/filters/HasAttributeFilter;

    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    invoke-static {v0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;)V

    .line 292
    .end local v0           #attrib:Ljava/lang/String;
    .restart local v2       #ret:Lorg/htmlparser/NodeFilter;
    :cond_0
    :goto_0
    if-nez v2, :cond_5

    .line 293
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Syntax error at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    .restart local v0       #attrib:Ljava/lang/String;
    :cond_1
    iget v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 277
    const/4 v3, 0x0

    .local v3, val:Ljava/lang/String;
    iget-object v1, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    .line 278
    .local v1, rel:Ljava/lang/String;
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    .line 279
    iget v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 280
    iget-object v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    :cond_2
    :goto_1
    const-string v4, "~="

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 284
    new-instance v2, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;

    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    invoke-static {v0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\\b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "([^a-zA-Z0-9])"

    const-string v7, "\\\\$1"

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\\b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lorg/htmlparser/filters/CssSelectorNodeFilter$AttribMatchFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_0

    .line 281
    :cond_3
    iget v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    if-ne v4, v6, :cond_2

    .line 282
    iget-object v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-static {v4}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 288
    :cond_4
    const-string v4, "="

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 289
    new-instance v2, Lorg/htmlparser/filters/HasAttributeFilter;

    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    invoke-direct {v2, v0, v3}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2       #ret:Lorg/htmlparser/NodeFilter;
    goto/16 :goto_0

    .line 295
    .end local v0           #attrib:Ljava/lang/String;
    .end local v1           #rel:Ljava/lang/String;
    .end local v3           #val:Ljava/lang/String;
    :cond_5
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    .line 296
    return-object v2
.end method

.method private parsePseudoClass()Lorg/htmlparser/NodeFilter;
    .locals 2

    .prologue
    .line 263
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pseudoclasses not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseSimple()Lorg/htmlparser/NodeFilter;
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, done:Z
    const/4 v1, 0x0

    .line 197
    .local v1, ret:Lorg/htmlparser/NodeFilter;
    iget-object v3, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 200
    :cond_0
    iget v3, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    packed-switch v3, :pswitch_data_0

    .line 254
    :pswitch_0
    const/4 v0, 0x1

    .line 257
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 258
    :cond_1
    return-object v1

    .line 203
    :pswitch_1
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    goto :goto_0

    .line 206
    :pswitch_2
    const-string v3, "*"

    iget-object v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 207
    new-instance v1, Lorg/htmlparser/filters/CssSelectorNodeFilter$YesFilter;

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/htmlparser/filters/CssSelectorNodeFilter$YesFilter;-><init>(Lorg/htmlparser/filters/CssSelectorNodeFilter$1;)V

    .line 212
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    :goto_1
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    goto :goto_0

    .line 208
    :cond_2
    if-nez v1, :cond_3

    .line 209
    new-instance v1, Lorg/htmlparser/filters/TagNameFilter;

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    iget-object v3, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-static {v3}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_1

    .line 211
    :cond_3
    new-instance v2, Lorg/htmlparser/filters/AndFilter;

    new-instance v3, Lorg/htmlparser/filters/TagNameFilter;

    iget-object v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-static {v4}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/htmlparser/filters/TagNameFilter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1, v3}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .local v2, ret:Lorg/htmlparser/NodeFilter;
    move-object v1, v2

    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_1

    .line 215
    :pswitch_3
    iget-object v3, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 251
    :goto_2
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    goto :goto_0

    .line 218
    :sswitch_0
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    .line 219
    iget v3, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    if-eq v3, v6, :cond_4

    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Syntax error at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 221
    :cond_4
    if-nez v1, :cond_5

    .line 222
    new-instance v1, Lorg/htmlparser/filters/HasAttributeFilter;

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    const-string v3, "class"

    iget-object v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-static {v4}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_2

    .line 224
    :cond_5
    new-instance v2, Lorg/htmlparser/filters/AndFilter;

    new-instance v3, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v4, "class"

    iget-object v5, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-static {v5}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v2       #ret:Lorg/htmlparser/NodeFilter;
    move-object v1, v2

    .line 226
    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_2

    .line 228
    :sswitch_1
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    .line 229
    iget v3, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->tokentype:I

    if-eq v3, v6, :cond_6

    .line 230
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Syntax error at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 231
    :cond_6
    if-nez v1, :cond_7

    .line 232
    new-instance v1, Lorg/htmlparser/filters/HasAttributeFilter;

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    const-string v3, "id"

    iget-object v4, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-static {v4}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto :goto_2

    .line 234
    :cond_7
    new-instance v2, Lorg/htmlparser/filters/AndFilter;

    new-instance v3, Lorg/htmlparser/filters/HasAttributeFilter;

    const-string v4, "id"

    iget-object v5, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->token:Ljava/lang/String;

    invoke-static {v5}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/htmlparser/filters/HasAttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v1, v3}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v2       #ret:Lorg/htmlparser/NodeFilter;
    move-object v1, v2

    .line 235
    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto/16 :goto_2

    .line 237
    :sswitch_2
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    .line 238
    if-nez v1, :cond_8

    .line 239
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parsePseudoClass()Lorg/htmlparser/NodeFilter;

    move-result-object v1

    goto/16 :goto_2

    .line 241
    :cond_8
    new-instance v2, Lorg/htmlparser/filters/AndFilter;

    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parsePseudoClass()Lorg/htmlparser/NodeFilter;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v2       #ret:Lorg/htmlparser/NodeFilter;
    move-object v1, v2

    .line 242
    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto/16 :goto_2

    .line 244
    :sswitch_3
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->nextToken()Z

    .line 245
    if-nez v1, :cond_9

    .line 246
    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parseAttributeExp()Lorg/htmlparser/NodeFilter;

    move-result-object v1

    goto/16 :goto_2

    .line 248
    :cond_9
    new-instance v2, Lorg/htmlparser/filters/AndFilter;

    invoke-direct {p0}, Lorg/htmlparser/filters/CssSelectorNodeFilter;->parseAttributeExp()Lorg/htmlparser/NodeFilter;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/htmlparser/filters/AndFilter;-><init>(Lorg/htmlparser/NodeFilter;Lorg/htmlparser/NodeFilter;)V

    .end local v1           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v2       #ret:Lorg/htmlparser/NodeFilter;
    move-object v1, v2

    .end local v2           #ret:Lorg/htmlparser/NodeFilter;
    .restart local v1       #ret:Lorg/htmlparser/NodeFilter;
    goto/16 :goto_2

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x2e -> :sswitch_0
        0x3a -> :sswitch_2
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "escaped"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 307
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 308
    .local v1, result:Ljava/lang/StringBuffer;
    const-string v2, "\\\\(?:([a-fA-F0-9]{2,6})|(.))"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 310
    .local v0, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 313
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 1
    .parameter "node"

    .prologue
    .line 132
    iget-object v0, p0, Lorg/htmlparser/filters/CssSelectorNodeFilter;->therule:Lorg/htmlparser/NodeFilter;

    invoke-interface {v0, p1}, Lorg/htmlparser/NodeFilter;->accept(Lorg/htmlparser/Node;)Z

    move-result v0

    return v0
.end method
