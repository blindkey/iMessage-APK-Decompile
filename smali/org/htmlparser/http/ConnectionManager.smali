.class public Lorg/htmlparser/http/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field private static final BASE64_CHAR_TABLE:[C

.field private static final FOUR_OH_FOUR:[Ljava/lang/String;

.field protected static mDefaultRequestProperties:Ljava/util/Hashtable;

.field protected static mFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field protected mCookieJar:Ljava/util/Hashtable;

.field protected mMonitor:Lorg/htmlparser/http/ConnectionMonitor;

.field protected mPassword:Ljava/lang/String;

.field protected mProxyHost:Ljava/lang/String;

.field protected mProxyPassword:Ljava/lang/String;

.field protected mProxyPort:I

.field protected mProxyUser:Ljava/lang/String;

.field protected mRedirectionProcessingEnabled:Z

.field protected mRequestProperties:Ljava/util/Hashtable;

.field protected mUser:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/htmlparser/http/ConnectionManager;->mDefaultRequestProperties:Ljava/util/Hashtable;

    .line 60
    sget-object v0, Lorg/htmlparser/http/ConnectionManager;->mDefaultRequestProperties:Ljava/util/Hashtable;

    const-string v1, "User-Agent"

    const-string v2, "HTMLParser/1.6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lorg/htmlparser/http/ConnectionManager;->mDefaultRequestProperties:Ljava/util/Hashtable;

    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "The web site you seek cannot be located, but countless more exist"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "You step in the stream, but the water has moved on. This page is not here."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Yesterday the page existed. Today it does not. The internet is like that."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "That page was so big. It might have been very useful. But now it is gone."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Three things are certain: death, taxes and broken links. Guess which has occured."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Chaos reigns within. Reflect, repent and enter the correct URL. Order shall return."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Stay the patient course. Of little worth is your ire. The page is not found."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "A non-existant URL reduces your expensive computer to a simple stone."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Many people have visited that page. Today, you are not one of the lucky ones."

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Cutting the wind with a knife. Bookmarking a URL. Both are ephemeral."

    aput-object v2, v0, v1

    sput-object v0, Lorg/htmlparser/http/ConnectionManager;->FOUR_OH_FOUR:[Ljava/lang/String;

    .line 94
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/htmlparser/http/ConnectionManager;->BASE64_CHAR_TABLE:[C

    .line 152
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd-MMM-yy kk:mm:ss z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/htmlparser/http/ConnectionManager;->mFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 160
    invoke-static {}, Lorg/htmlparser/http/ConnectionManager;->getDefaultRequestProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/htmlparser/http/ConnectionManager;-><init>(Ljava/util/Hashtable;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 2
    .parameter "properties"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mRequestProperties:Ljava/util/Hashtable;

    .line 170
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyHost:Ljava/lang/String;

    .line 171
    iput v1, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyPort:I

    .line 172
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyUser:Ljava/lang/String;

    .line 173
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyPassword:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mUser:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mPassword:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    .line 177
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mMonitor:Lorg/htmlparser/http/ConnectionMonitor;

    .line 178
    iput-boolean v1, p0, Lorg/htmlparser/http/ConnectionManager;->mRedirectionProcessingEnabled:Z

    .line 179
    return-void
.end method

.method public static final encode([B)Ljava/lang/String;
    .locals 18
    .parameter "array"

    .prologue
    .line 736
    if-eqz p0, :cond_6

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 738
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v16, v0

    add-int/lit8 v9, v16, -0x1

    .line 739
    .local v9, last:I
    div-int/lit8 v16, v9, 0x3

    add-int/lit8 v16, v16, 0x1

    shl-int/lit8 v2, v16, 0x2

    .line 740
    .local v2, count:I
    add-int/lit8 v16, v2, -0x1

    div-int/lit8 v15, v16, 0x4c

    .line 741
    .local v15, separators:I
    add-int v11, v2, v15

    .line 742
    .local v11, length:I
    new-array v3, v11, [C

    .line 743
    .local v3, encoded:[C
    const/4 v6, 0x0

    .line 744
    .local v6, index:I
    const/4 v15, 0x0

    .line 745
    const/4 v5, 0x0

    .local v5, i:I
    move v7, v6

    .end local v6           #index:I
    .local v7, index:I
    :goto_0
    if-gt v5, v9, :cond_5

    .line 747
    sub-int v10, v9, v5

    .line 748
    .local v10, left:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v10, v0, :cond_1

    const/4 v4, 0x2

    .line 751
    .local v4, end:I
    :goto_1
    const/4 v1, 0x0

    .line 752
    .local v1, block:I
    const/16 v13, 0x10

    .line 753
    .local v13, r:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    if-gt v8, v4, :cond_2

    .line 755
    add-int v16, v5, v8

    aget-byte v12, p0, v16

    .line 756
    .local v12, n:I
    if-gez v12, :cond_0

    add-int/lit16 v12, v12, 0x100

    .end local v12           #n:I
    :cond_0
    shl-int v16, v12, v13

    add-int v1, v1, v16

    .line 757
    add-int/lit8 v13, v13, -0x8

    .line 753
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v1           #block:I
    .end local v4           #end:I
    .end local v8           #j:I
    .end local v13           #r:I
    :cond_1
    move v4, v10

    .line 748
    goto :goto_1

    .line 761
    .restart local v1       #block:I
    .restart local v4       #end:I
    .restart local v8       #j:I
    .restart local v13       #r:I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    sget-object v16, Lorg/htmlparser/http/ConnectionManager;->BASE64_CHAR_TABLE:[C

    ushr-int/lit8 v17, v1, 0x12

    and-int/lit8 v17, v17, 0x3f

    aget-char v16, v16, v17

    aput-char v16, v3, v7

    .line 762
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    sget-object v16, Lorg/htmlparser/http/ConnectionManager;->BASE64_CHAR_TABLE:[C

    ushr-int/lit8 v17, v1, 0xc

    and-int/lit8 v17, v17, 0x3f

    aget-char v16, v16, v17

    aput-char v16, v3, v6

    .line 763
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    if-lez v10, :cond_3

    sget-object v16, Lorg/htmlparser/http/ConnectionManager;->BASE64_CHAR_TABLE:[C

    ushr-int/lit8 v17, v1, 0x6

    and-int/lit8 v17, v17, 0x3f

    aget-char v16, v16, v17

    :goto_3
    aput-char v16, v3, v7

    .line 766
    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v10, v0, :cond_4

    sget-object v16, Lorg/htmlparser/http/ConnectionManager;->BASE64_CHAR_TABLE:[C

    and-int/lit8 v17, v1, 0x3f

    aget-char v16, v16, v17

    :goto_4
    aput-char v16, v3, v6

    .line 770
    sub-int v16, v7, v15

    rem-int/lit8 v16, v16, 0x4c

    if-nez v16, :cond_7

    if-ge v7, v11, :cond_7

    .line 772
    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    const/16 v16, 0xa

    aput-char v16, v3, v7

    .line 773
    add-int/lit8 v15, v15, 0x1

    .line 745
    :goto_5
    add-int/lit8 v5, v5, 0x3

    move v7, v6

    .end local v6           #index:I
    .restart local v7       #index:I
    goto :goto_0

    .line 763
    .end local v7           #index:I
    .restart local v6       #index:I
    :cond_3
    const/16 v16, 0x3d

    goto :goto_3

    .line 766
    .end local v6           #index:I
    .restart local v7       #index:I
    :cond_4
    const/16 v16, 0x3d

    goto :goto_4

    .line 776
    .end local v1           #block:I
    .end local v4           #end:I
    .end local v8           #j:I
    .end local v10           #left:I
    .end local v13           #r:I
    :cond_5
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v3}, Ljava/lang/String;-><init>([C)V

    .line 781
    .end local v2           #count:I
    .end local v3           #encoded:[C
    .end local v5           #i:I
    .end local v7           #index:I
    .end local v9           #last:I
    .end local v11           #length:I
    .end local v15           #separators:I
    .local v14, ret:Ljava/lang/String;
    :goto_6
    return-object v14

    .line 779
    .end local v14           #ret:Ljava/lang/String;
    :cond_6
    const-string v14, ""

    .restart local v14       #ret:Ljava/lang/String;
    goto :goto_6

    .end local v14           #ret:Ljava/lang/String;
    .restart local v1       #block:I
    .restart local v2       #count:I
    .restart local v3       #encoded:[C
    .restart local v4       #end:I
    .restart local v5       #i:I
    .restart local v7       #index:I
    .restart local v8       #j:I
    .restart local v9       #last:I
    .restart local v10       #left:I
    .restart local v11       #length:I
    .restart local v13       #r:I
    .restart local v15       #separators:I
    :cond_7
    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto :goto_5
.end method

.method public static getDefaultRequestProperties()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lorg/htmlparser/http/ConnectionManager;->mDefaultRequestProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public static setDefaultRequestProperties(Ljava/util/Hashtable;)V
    .locals 0
    .parameter "properties"

    .prologue
    .line 256
    sput-object p0, Lorg/htmlparser/http/ConnectionManager;->mDefaultRequestProperties:Ljava/util/Hashtable;

    .line 257
    return-void
.end method


# virtual methods
.method protected addCookies(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 5
    .parameter "cookies"
    .parameter "path"
    .parameter "list"

    .prologue
    .line 942
    if-eqz p1, :cond_3

    .line 944
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 945
    .local v3, now:Ljava/util/Date;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 947
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/http/Cookie;

    .line 948
    .local v0, cookie:Lorg/htmlparser/http/Cookie;
    invoke-virtual {v0}, Lorg/htmlparser/http/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    .line 949
    .local v1, expires:Ljava/util/Date;
    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 951
    invoke-virtual {p1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 952
    add-int/lit8 v2, v2, -0x1

    .line 945
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    :cond_1
    invoke-virtual {v0}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 957
    if-nez p3, :cond_2

    .line 958
    new-instance p3, Ljava/util/Vector;

    .end local p3
    invoke-direct {p3}, Ljava/util/Vector;-><init>()V

    .line 959
    .restart local p3
    :cond_2
    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 964
    .end local v0           #cookie:Lorg/htmlparser/http/Cookie;
    .end local v1           #expires:Ljava/util/Date;
    .end local v2           #i:I
    .end local v3           #now:Ljava/util/Date;
    :cond_3
    return-object p3
.end method

.method public addCookies(Ljava/net/URLConnection;)V
    .locals 8
    .parameter "connection"

    .prologue
    .line 902
    iget-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    if-eqz v5, :cond_2

    .line 904
    const/4 v2, 0x0

    .line 906
    .local v2, list:Ljava/util/Vector;
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 907
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, host:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, path:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 910
    const-string v3, "/"

    .line 911
    :cond_0
    if-eqz v1, :cond_1

    .line 913
    iget-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    invoke-virtual {p0, v5, v3, v2}, Lorg/htmlparser/http/ConnectionManager;->addCookies(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    .line 914
    invoke-virtual {p0, v1}, Lorg/htmlparser/http/ConnectionManager;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, domain:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 916
    iget-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    invoke-virtual {p0, v5, v3, v2}, Lorg/htmlparser/http/ConnectionManager;->addCookies(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    .line 923
    .end local v0           #domain:Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 924
    const-string v5, "Cookie"

    invoke-virtual {p0, v2}, Lorg/htmlparser/http/ConnectionManager;->generateCookieProperty(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #list:Ljava/util/Vector;
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :cond_2
    return-void

    .line 920
    .restart local v0       #domain:Ljava/lang/String;
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #list:Ljava/util/Vector;
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #url:Ljava/net/URL;
    :cond_3
    iget-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    invoke-virtual {p0, v5, v3, v2}, Lorg/htmlparser/http/ConnectionManager;->addCookies(Ljava/util/Vector;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    goto :goto_0
.end method

.method public fixSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "url"

    .prologue
    const/16 v6, 0x20

    .line 798
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 799
    .local v3, index:I
    const/4 v5, -0x1

    if-eq v5, v3, :cond_2

    .line 801
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 802
    .local v4, length:I
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v5, v4, 0x3

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 803
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    move v2, v3

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 806
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 807
    .local v1, ch:C
    if-ne v1, v6, :cond_0

    .line 808
    const-string v5, "%20"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 804
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 810
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 812
    .end local v1           #ch:C
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 815
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #i:I
    .end local v4           #length:I
    :cond_2
    return-object p1
.end method

.method protected generateCookieProperty(Ljava/util/Vector;)Ljava/lang/String;
    .locals 7
    .parameter "cookies"

    .prologue
    .line 1025
    const/4 v3, 0x0

    .line 1027
    .local v3, ret:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1028
    .local v0, buffer:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 1029
    .local v4, version:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 1030
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/htmlparser/http/Cookie;

    invoke-virtual {v5}, Lorg/htmlparser/http/Cookie;->getVersion()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1029
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1032
    :cond_0
    if-eqz v4, :cond_1

    .line 1034
    const-string v5, "$Version=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1035
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1036
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 1040
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/htmlparser/http/Cookie;

    .line 1041
    .local v1, cookie:Lorg/htmlparser/http/Cookie;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1042
    const-string v5, "; "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1043
    :cond_2
    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1044
    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, ""

    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1045
    if-eqz v4, :cond_3

    .line 1046
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1047
    :cond_3
    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1048
    if-eqz v4, :cond_4

    .line 1049
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1050
    :cond_4
    if-eqz v4, :cond_6

    .line 1052
    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 1055
    const-string v5, "; $Path=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1057
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1059
    :cond_5
    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1062
    const-string v5, "; $Domain=\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1063
    invoke-virtual {v1}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1038
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1044
    :cond_7
    const-string v5, "="

    goto :goto_2

    .line 1068
    .end local v1           #cookie:Lorg/htmlparser/http/Cookie;
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_9

    .line 1069
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1071
    :cond_9
    return-object v3
.end method

.method public getCookieProcessingEnabled()Z
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "host"

    .prologue
    .line 983
    const/4 v5, 0x0

    .line 985
    .local v5, ret:Ljava/lang/String;
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "."

    invoke-direct {v7, p1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .local v7, tokenizer:Ljava/util/StringTokenizer;
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    .line 987
    .local v1, count:I
    const/4 v8, 0x3

    if-gt v8, v1, :cond_2

    .line 991
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 992
    .local v3, length:I
    const/4 v4, 0x0

    .line 993
    .local v4, ok:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    if-nez v4, :cond_1

    .line 995
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 996
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x2e

    if-eq v0, v8, :cond_0

    .line 997
    const/4 v4, 0x1

    .line 993
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    .end local v0           #c:C
    :cond_1
    if-eqz v4, :cond_2

    .line 1002
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1003
    .local v6, server:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 1004
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 1008
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #ok:Z
    .end local v6           #server:Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method protected getLocation(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5
    .parameter "http"

    .prologue
    .line 530
    const/4 v2, 0x0

    .line 532
    .local v2, ret:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 533
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    move-object v2, v3

    .line 532
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 536
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getMonitor()Lorg/htmlparser/http/ConnectionMonitor;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mMonitor:Lorg/htmlparser/http/ConnectionMonitor;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyPort:I

    return v0
.end method

.method public getProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyUser:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectionProcessingEnabled()Z
    .locals 1

    .prologue
    .line 502
    iget-boolean v0, p0, Lorg/htmlparser/http/ConnectionManager;->mRedirectionProcessingEnabled:Z

    return v0
.end method

.method public getRequestProperties()Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mRequestProperties:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mUser:Ljava/lang/String;

    return-object v0
.end method

.method public openConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 13
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 832
    const-string v7, "file://localhost"

    .line 840
    .local v7, prefix:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-virtual {p0, p1}, Lorg/htmlparser/http/ConnectionManager;->fixSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 841
    .local v10, url:Ljava/net/URL;
    invoke-virtual {p0, v10}, Lorg/htmlparser/http/ConnectionManager;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 872
    .local v9, ret:Ljava/net/URLConnection;
    :goto_0
    return-object v9

    .line 843
    .end local v9           #ret:Ljava/net/URLConnection;
    .end local v10           #url:Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 847
    .local v5, murle:Ljava/net/MalformedURLException;
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v8

    .line 849
    .local v8, resource:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v11, "file://localhost"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 851
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v11, "file://localhost"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 853
    const-string v11, "/"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    :cond_0
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 855
    new-instance v10, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lorg/htmlparser/http/ConnectionManager;->fixSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 856
    .restart local v10       #url:Ljava/net/URL;
    invoke-virtual {p0, v10}, Lorg/htmlparser/http/ConnectionManager;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .restart local v9       #ret:Ljava/net/URLConnection;
    goto :goto_0

    .line 858
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #file:Ljava/io/File;
    .end local v8           #resource:Ljava/lang/String;
    .end local v9           #ret:Ljava/net/URLConnection;
    .end local v10           #url:Ljava/net/URL;
    :catch_1
    move-exception v6

    .line 860
    .local v6, murle2:Ljava/net/MalformedURLException;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Error in opening a connection to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 861
    .local v4, msg:Ljava/lang/String;
    new-instance v1, Lorg/htmlparser/util/ParserException;

    invoke-direct {v1, v4, v6}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 862
    .local v1, ex:Lorg/htmlparser/util/ParserException;
    throw v1

    .line 864
    .end local v1           #ex:Lorg/htmlparser/util/ParserException;
    .end local v4           #msg:Ljava/lang/String;
    .end local v6           #murle2:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v3

    .line 866
    .local v3, ioe:Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Error in opening a connection to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 867
    .restart local v4       #msg:Ljava/lang/String;
    new-instance v1, Lorg/htmlparser/util/ParserException;

    invoke-direct {v1, v4, v3}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 868
    .restart local v1       #ex:Lorg/htmlparser/util/ParserException;
    throw v1
.end method

.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 31
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/htmlparser/util/ParserException;
        }
    .end annotation

    .prologue
    .line 556
    const/16 v21, 0x0

    .line 557
    .local v21, set:Ljava/lang/String;
    const/4 v8, 0x0

    .line 558
    .local v8, host:Ljava/lang/String;
    const/4 v15, 0x0

    .line 559
    .local v15, port:Ljava/lang/String;
    const/4 v9, 0x0

    .line 560
    .local v9, host2:Ljava/lang/String;
    const/16 v16, 0x0

    .line 568
    .local v16, port2:Ljava/lang/String;
    const/16 v19, 0x0

    .line 571
    .local v19, repeated:I
    :cond_0
    const/16 v18, 0x0

    .line 577
    .local v18, repeat:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyHost()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyPort()I

    move-result v27

    if-eqz v27, :cond_1

    .line 579
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v22

    .line 580
    .local v22, sysprops:Ljava/util/Properties;
    const-string v27, "proxySet"

    const-string v28, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    .line 581
    const-string v27, "proxyHost"

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyHost()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    .line 582
    const-string v27, "proxyPort"

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyPort()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 585
    const-string v27, "http.proxyHost"

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyHost()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 587
    const-string v27, "http.proxyPort"

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyPort()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    check-cast v0, Ljava/lang/String;

    move-object/from16 v16, v0

    .line 589
    invoke-static/range {v22 .. v22}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    .line 594
    .end local v22           #sysprops:Ljava/util/Properties;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    .line 595
    .local v20, ret:Ljava/net/URLConnection;
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 597
    move-object/from16 v0, v20

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 599
    .local v10, http:Ljava/net/HttpURLConnection;
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getRedirectionProcessingEnabled()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 600
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 603
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getRequestProperties()Ljava/util/Hashtable;

    move-result-object v17

    .line 604
    .local v17, properties:Ljava/util/Hashtable;
    if-eqz v17, :cond_4

    .line 605
    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 606
    .local v6, enumeration:Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v27

    if-eqz v27, :cond_4

    .line 608
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 609
    .local v12, key:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 610
    .local v26, value:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 675
    .end local v6           #enumeration:Ljava/util/Enumeration;
    .end local v10           #http:Ljava/net/HttpURLConnection;
    .end local v12           #key:Ljava/lang/String;
    .end local v17           #properties:Ljava/util/Hashtable;
    .end local v20           #ret:Ljava/net/URLConnection;
    .end local v26           #value:Ljava/lang/String;
    :catchall_0
    move-exception v27

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyHost()Ljava/lang/String;

    move-result-object v28

    if-eqz v28, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyPort()I

    move-result v28

    if-eqz v28, :cond_3

    .line 677
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v22

    .line 678
    .restart local v22       #sysprops:Ljava/util/Properties;
    if-eqz v21, :cond_e

    .line 679
    const-string v28, "proxySet"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :goto_1
    if-eqz v8, :cond_f

    .line 683
    const-string v28, "proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :goto_2
    if-eqz v15, :cond_10

    .line 687
    const-string v28, "proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :goto_3
    if-eqz v9, :cond_11

    .line 691
    const-string v28, "http.proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :goto_4
    if-eqz v16, :cond_12

    .line 695
    const-string v28, "http.proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :goto_5
    invoke-static/range {v22 .. v22}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V

    .line 675
    .end local v22           #sysprops:Ljava/util/Properties;
    :cond_3
    throw v27
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 702
    :catch_0
    move-exception v11

    .line 704
    .local v11, ioe:Ljava/io/IOException;
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    const-string v28, "Error in opening a connection to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    .line 706
    .local v14, msg:Ljava/lang/String;
    new-instance v7, Lorg/htmlparser/util/ParserException;

    invoke-direct {v7, v14, v11}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 707
    .local v7, ex:Lorg/htmlparser/util/ParserException;
    throw v7

    .line 614
    .end local v7           #ex:Lorg/htmlparser/util/ParserException;
    .end local v11           #ioe:Ljava/io/IOException;
    .end local v14           #msg:Ljava/lang/String;
    .restart local v10       #http:Ljava/net/HttpURLConnection;
    .restart local v17       #properties:Ljava/util/Hashtable;
    .restart local v20       #ret:Ljava/net/URLConnection;
    :cond_4
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyUser()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyPassword()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_5

    .line 617
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyUser()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyPassword()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, auth:Ljava/lang/String;
    const-string v27, "ISO-8859-1"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/htmlparser/http/ConnectionManager;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 619
    .local v5, encoded:Ljava/lang/String;
    const-string v27, "Proxy-Authorization"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .end local v3           #auth:Ljava/lang/String;
    .end local v5           #encoded:Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getUser()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_6

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getPassword()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_6

    .line 625
    new-instance v27, Ljava/lang/StringBuffer;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getUser()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    const-string v28, ":"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getPassword()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 626
    .restart local v3       #auth:Ljava/lang/String;
    const-string v27, "ISO-8859-1"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lorg/htmlparser/http/ConnectionManager;->encode([B)Ljava/lang/String;

    move-result-object v5

    .line 627
    .restart local v5       #encoded:Ljava/lang/String;
    const-string v27, "Authorization"

    new-instance v28, Ljava/lang/StringBuffer;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    const-string v29, "Basic "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v3           #auth:Ljava/lang/String;
    .end local v5           #encoded:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getCookieProcessingEnabled()Z

    move-result v27

    if-eqz v27, :cond_7

    .line 633
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/htmlparser/http/ConnectionManager;->addCookies(Ljava/net/URLConnection;)V

    .line 635
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getMonitor()Lorg/htmlparser/http/ConnectionMonitor;

    move-result-object v27

    if-eqz v27, :cond_8

    .line 636
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getMonitor()Lorg/htmlparser/http/ConnectionMonitor;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Lorg/htmlparser/http/ConnectionMonitor;->preConnect(Ljava/net/HttpURLConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    .end local v17           #properties:Ljava/util/Hashtable;
    :cond_8
    :goto_6
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/net/URLConnection;->connect()V

    .line 645
    if-eqz v10, :cond_b

    .line 647
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getMonitor()Lorg/htmlparser/http/ConnectionMonitor;

    move-result-object v27

    if-eqz v27, :cond_9

    .line 648
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getMonitor()Lorg/htmlparser/http/ConnectionMonitor;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Lorg/htmlparser/http/ConnectionMonitor;->postConnect(Ljava/net/HttpURLConnection;)V

    .line 650
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getCookieProcessingEnabled()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 651
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/htmlparser/http/ConnectionManager;->parseCookies(Ljava/net/URLConnection;)V

    .line 653
    :cond_a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 654
    .local v4, code:I
    const/16 v27, 0x3

    div-int/lit8 v28, v4, 0x64

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_b

    const/16 v27, 0x14

    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 655
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/htmlparser/http/ConnectionManager;->getLocation(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v24

    .local v24, uri:Ljava/lang/String;
    if-eqz v24, :cond_b

    .line 657
    new-instance v25, Ljava/net/URL;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 658
    .end local p1
    .local v25, url:Ljava/net/URL;
    const/16 v18, 0x1

    .line 659
    add-int/lit8 v19, v19, 0x1

    move-object/from16 p1, v25

    .line 675
    .end local v4           #code:I
    .end local v24           #uri:Ljava/lang/String;
    .end local v25           #url:Ljava/net/URL;
    .restart local p1
    :cond_b
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyHost()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/htmlparser/http/ConnectionManager;->getProxyPort()I

    move-result v27

    if-eqz v27, :cond_c

    .line 677
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v22

    .line 678
    .restart local v22       #sysprops:Ljava/util/Properties;
    if-eqz v21, :cond_13

    .line 679
    const-string v27, "proxySet"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    :goto_7
    if-eqz v8, :cond_14

    .line 683
    const-string v27, "proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    :goto_8
    if-eqz v15, :cond_15

    .line 687
    const-string v27, "proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :goto_9
    if-eqz v9, :cond_16

    .line 691
    const-string v27, "http.proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    :goto_a
    if-eqz v16, :cond_17

    .line 695
    const-string v27, "http.proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    :goto_b
    invoke-static/range {v22 .. v22}, Ljava/lang/System;->setProperties(Ljava/util/Properties;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 710
    .end local v22           #sysprops:Ljava/util/Properties;
    :cond_c
    if-nez v18, :cond_0

    .line 712
    return-object v20

    .line 639
    .end local v10           #http:Ljava/net/HttpURLConnection;
    :cond_d
    const/4 v10, 0x0

    .restart local v10       #http:Ljava/net/HttpURLConnection;
    goto/16 :goto_6

    .line 663
    :catch_1
    move-exception v23

    .line 665
    .local v23, uhe:Ljava/net/UnknownHostException;
    :try_start_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v27

    sget-object v29, Lorg/htmlparser/http/ConnectionManager;->FOUR_OH_FOUR:[Ljava/lang/String;

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v13, v0

    .line 666
    .local v13, message:I
    new-instance v27, Lorg/htmlparser/util/ParserException;

    sget-object v28, Lorg/htmlparser/http/ConnectionManager;->FOUR_OH_FOUR:[Ljava/lang/String;

    aget-object v28, v28, v13

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27

    .line 668
    .end local v13           #message:I
    .end local v23           #uhe:Ljava/net/UnknownHostException;
    :catch_2
    move-exception v11

    .line 670
    .restart local v11       #ioe:Ljava/io/IOException;
    new-instance v27, Lorg/htmlparser/util/ParserException;

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v11}, Lorg/htmlparser/util/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 681
    .end local v10           #http:Ljava/net/HttpURLConnection;
    .end local v11           #ioe:Ljava/io/IOException;
    .end local v20           #ret:Ljava/net/URLConnection;
    .restart local v22       #sysprops:Ljava/util/Properties;
    :cond_e
    :try_start_6
    const-string v28, "proxySet"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 685
    :cond_f
    const-string v28, "proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 689
    :cond_10
    const-string v28, "proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 693
    :cond_11
    const-string v28, "http.proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 697
    :cond_12
    const-string v28, "http.proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 681
    .restart local v10       #http:Ljava/net/HttpURLConnection;
    .restart local v20       #ret:Ljava/net/URLConnection;
    :cond_13
    const-string v27, "proxySet"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 685
    :cond_14
    const-string v27, "proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 689
    :cond_15
    const-string v27, "proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 693
    :cond_16
    const-string v27, "http.proxyHost"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 697
    :cond_17
    const-string v27, "http.proxyPort"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_b
.end method

.method public parseCookies(Ljava/net/URLConnection;)V
    .locals 24
    .parameter "connection"

    .prologue
    .line 1090
    const-string v20, "Set-Cookie"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1091
    .local v14, string:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 1104
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 1105
    .local v6, cookies:Ljava/util/Vector;
    new-instance v18, Ljava/util/StringTokenizer;

    const-string v20, ";,"

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v14, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1106
    .local v18, tokenizer:Ljava/util/StringTokenizer;
    const/4 v4, 0x0

    .line 1107
    .local v4, cookie:Lorg/htmlparser/http/Cookie;
    :cond_0
    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1109
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 1110
    .local v17, token:Ljava/lang/String;
    const-string v20, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 1112
    const-string v20, ","

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1114
    const/4 v4, 0x0

    .line 1115
    goto :goto_0

    .line 1118
    :cond_1
    const/16 v20, 0x3d

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 1119
    .local v9, index:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v0, v9, :cond_3

    .line 1121
    if-nez v4, :cond_2

    .line 1123
    const-string v11, ""

    .line 1124
    .local v11, name:Ljava/lang/String;
    move-object/from16 v19, v17

    .line 1125
    .local v19, value:Ljava/lang/String;
    move-object v10, v11

    .line 1141
    .local v10, key:Ljava/lang/String;
    :goto_1
    if-nez v4, :cond_6

    .line 1145
    :try_start_0
    new-instance v5, Lorg/htmlparser/http/Cookie;

    move-object/from16 v0, v19

    invoke-direct {v5, v11, v0}, Lorg/htmlparser/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v4           #cookie:Lorg/htmlparser/http/Cookie;
    .local v5, cookie:Lorg/htmlparser/http/Cookie;
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    .line 1153
    .end local v5           #cookie:Lorg/htmlparser/http/Cookie;
    .restart local v4       #cookie:Lorg/htmlparser/http/Cookie;
    goto :goto_0

    .line 1129
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_2
    move-object/from16 v11, v17

    .line 1130
    .restart local v11       #name:Ljava/lang/String;
    const/16 v19, 0x0

    .line 1131
    .restart local v19       #value:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 1133
    .restart local v10       #key:Ljava/lang/String;
    goto :goto_1

    .line 1136
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1137
    .restart local v11       #name:Ljava/lang/String;
    add-int/lit8 v20, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 1138
    .restart local v19       #value:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #key:Ljava/lang/String;
    goto :goto_1

    .line 1148
    :catch_0
    move-exception v8

    .line 1216
    .end local v9           #index:I
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v17           #token:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_4
    :goto_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v20

    if-eqz v20, :cond_5

    .line 1217
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Lorg/htmlparser/http/ConnectionManager;->saveCookies(Ljava/util/Vector;Ljava/net/URLConnection;)V

    .line 1219
    .end local v4           #cookie:Lorg/htmlparser/http/Cookie;
    .end local v6           #cookies:Ljava/util/Vector;
    .end local v18           #tokenizer:Ljava/util/StringTokenizer;
    :cond_5
    return-void

    .line 1157
    .restart local v4       #cookie:Lorg/htmlparser/http/Cookie;
    .restart local v6       #cookies:Ljava/util/Vector;
    .restart local v9       #index:I
    .restart local v10       #key:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v17       #token:Ljava/lang/String;
    .restart local v18       #tokenizer:Ljava/util/StringTokenizer;
    .restart local v19       #value:Ljava/lang/String;
    :cond_6
    const-string v20, "expires"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1159
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, comma:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 1163
    .local v13, rest:Ljava/lang/String;
    :try_start_2
    sget-object v20, Lorg/htmlparser/http/ConnectionManager;->mFormat:Ljava/text/SimpleDateFormat;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 1164
    .local v7, date:Ljava/util/Date;
    invoke-virtual {v4, v7}, Lorg/htmlparser/http/Cookie;->setExpiryDate(Ljava/util/Date;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1166
    .end local v7           #date:Ljava/util/Date;
    :catch_1
    move-exception v12

    .line 1169
    .local v12, pe:Ljava/text/ParseException;
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/htmlparser/http/Cookie;->setExpiryDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1173
    .end local v3           #comma:Ljava/lang/String;
    .end local v12           #pe:Ljava/text/ParseException;
    .end local v13           #rest:Ljava/lang/String;
    :cond_7
    const-string v20, "domain"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1174
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/htmlparser/http/Cookie;->setDomain(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1176
    :cond_8
    const-string v20, "path"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1177
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/htmlparser/http/Cookie;->setPath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1179
    :cond_9
    const-string v20, "secure"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1180
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/htmlparser/http/Cookie;->setSecure(Z)V

    goto/16 :goto_0

    .line 1182
    :cond_a
    const-string v20, "comment"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1183
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/htmlparser/http/Cookie;->setComment(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1185
    :cond_b
    const-string v20, "version"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1186
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/htmlparser/http/Cookie;->setVersion(I)V

    goto/16 :goto_0

    .line 1189
    :cond_c
    const-string v20, "max-age"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1191
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 1192
    .restart local v7       #date:Ljava/util/Date;
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v15, v20, v22

    .line 1195
    .local v15, then:J
    move-wide v0, v15

    invoke-virtual {v7, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1196
    invoke-virtual {v4, v7}, Lorg/htmlparser/http/Cookie;->setExpiryDate(Ljava/util/Date;)V

    goto/16 :goto_0

    .line 1204
    .end local v7           #date:Ljava/util/Date;
    .end local v15           #then:J
    :cond_d
    :try_start_3
    new-instance v5, Lorg/htmlparser/http/Cookie;

    move-object/from16 v0, v19

    invoke-direct {v5, v11, v0}, Lorg/htmlparser/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1206
    .end local v4           #cookie:Lorg/htmlparser/http/Cookie;
    .restart local v5       #cookie:Lorg/htmlparser/http/Cookie;
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v4, v5

    .line 1213
    .end local v5           #cookie:Lorg/htmlparser/http/Cookie;
    .restart local v4       #cookie:Lorg/htmlparser/http/Cookie;
    goto/16 :goto_0

    .line 1208
    :catch_2
    move-exception v8

    .line 1212
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    :goto_3
    goto/16 :goto_2

    .line 1208
    .end local v4           #cookie:Lorg/htmlparser/http/Cookie;
    .end local v8           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v5       #cookie:Lorg/htmlparser/http/Cookie;
    :catch_3
    move-exception v8

    move-object v4, v5

    .end local v5           #cookie:Lorg/htmlparser/http/Cookie;
    .restart local v4       #cookie:Lorg/htmlparser/http/Cookie;
    goto :goto_3

    .line 1148
    .end local v4           #cookie:Lorg/htmlparser/http/Cookie;
    .restart local v5       #cookie:Lorg/htmlparser/http/Cookie;
    :catch_4
    move-exception v8

    move-object v4, v5

    .end local v5           #cookie:Lorg/htmlparser/http/Cookie;
    .restart local v4       #cookie:Lorg/htmlparser/http/Cookie;
    goto/16 :goto_2
.end method

.method protected saveCookies(Ljava/util/Vector;Ljava/net/URLConnection;)V
    .locals 4
    .parameter "list"
    .parameter "connection"

    .prologue
    .line 1231
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1233
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/htmlparser/http/Cookie;

    .line 1234
    .local v0, cookie:Lorg/htmlparser/http/Cookie;
    invoke-virtual {v0}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, domain:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1236
    invoke-virtual {p2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 1237
    :cond_0
    invoke-virtual {p0, v0, v1}, Lorg/htmlparser/http/ConnectionManager;->setCookie(Lorg/htmlparser/http/Cookie;Ljava/lang/String;)V

    .line 1231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1239
    .end local v0           #cookie:Lorg/htmlparser/http/Cookie;
    .end local v1           #domain:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setCookie(Lorg/htmlparser/http/Cookie;Ljava/lang/String;)V
    .locals 7
    .parameter "cookie"
    .parameter "domain"

    .prologue
    .line 435
    invoke-virtual {p1}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 436
    invoke-virtual {p1}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object p2

    .line 437
    :cond_0
    invoke-virtual {p1}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 438
    .local v3, path:Ljava/lang/String;
    iget-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    if-nez v5, :cond_1

    .line 439
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    .line 440
    :cond_1
    iget-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    invoke-virtual {v5, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 441
    .local v0, cookies:Ljava/util/Vector;
    if-eqz v0, :cond_6

    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 446
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/htmlparser/http/Cookie;

    .line 447
    .local v4, probe:Lorg/htmlparser/http/Cookie;
    invoke-virtual {v4}, Lorg/htmlparser/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/htmlparser/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 450
    invoke-virtual {v4}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 452
    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 453
    const/4 v1, 0x1

    .line 464
    .end local v4           #probe:Lorg/htmlparser/http/Cookie;
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 467
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 475
    .end local v1           #found:Z
    .end local v2           #j:I
    :cond_3
    :goto_2
    return-void

    .line 456
    .restart local v1       #found:Z
    .restart local v2       #j:I
    .restart local v4       #probe:Lorg/htmlparser/http/Cookie;
    :cond_4
    invoke-virtual {v4}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 458
    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 459
    const/4 v1, 0x1

    .line 460
    goto :goto_1

    .line 444
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v1           #found:Z
    .end local v2           #j:I
    .end local v4           #probe:Lorg/htmlparser/http/Cookie;
    :cond_6
    new-instance v0, Ljava/util/Vector;

    .end local v0           #cookies:Ljava/util/Vector;
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 472
    .restart local v0       #cookies:Ljava/util/Vector;
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 473
    iget-object v5, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    invoke-virtual {v5, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method public setCookieProcessingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 417
    if-eqz p1, :cond_1

    .line 418
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    .line 421
    :goto_1
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    goto :goto_0

    .line 420
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/htmlparser/http/ConnectionManager;->mCookieJar:Ljava/util/Hashtable;

    goto :goto_1
.end method

.method public setMonitor(Lorg/htmlparser/http/ConnectionMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 492
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mMonitor:Lorg/htmlparser/http/ConnectionMonitor;

    .line 493
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 398
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mPassword:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 302
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyHost:Ljava/lang/String;

    .line 303
    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 360
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyPassword:Ljava/lang/String;

    .line 361
    return-void
.end method

.method public setProxyPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    .line 321
    iput p1, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyPort:I

    .line 322
    return-void
.end method

.method public setProxyUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 341
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mProxyUser:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setRedirectionProcessingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 517
    iput-boolean p1, p0, Lorg/htmlparser/http/ConnectionManager;->mRedirectionProcessingEnabled:Z

    .line 518
    return-void
.end method

.method public setRequestProperties(Ljava/util/Hashtable;)V
    .locals 0
    .parameter "properties"

    .prologue
    .line 283
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mRequestProperties:Ljava/util/Hashtable;

    .line 284
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 380
    iput-object p1, p0, Lorg/htmlparser/http/ConnectionManager;->mUser:Ljava/lang/String;

    .line 381
    return-void
.end method
