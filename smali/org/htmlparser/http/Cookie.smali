.class public Lorg/htmlparser/http/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final SPECIALS:Ljava/lang/String; = "()<>@,;:\\\"/[]?={} \t"


# instance fields
.field protected mComment:Ljava/lang/String;

.field protected mDomain:Ljava/lang/String;

.field protected mExpiry:Ljava/util/Date;

.field protected mName:Ljava/lang/String;

.field protected mPath:Ljava/lang/String;

.field protected mSecure:Z

.field protected mValue:Ljava/lang/String;

.field protected mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-direct {p0, p1}, Lorg/htmlparser/http/Cookie;->isToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Comment"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Discard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Domain"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expires"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Max-Age"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Path"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Secure"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "invalid cookie name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    iput-object p1, p0, Lorg/htmlparser/http/Cookie;->mName:Ljava/lang/String;

    .line 140
    iput-object p2, p0, Lorg/htmlparser/http/Cookie;->mValue:Ljava/lang/String;

    .line 141
    iput-object v1, p0, Lorg/htmlparser/http/Cookie;->mComment:Ljava/lang/String;

    .line 142
    iput-object v1, p0, Lorg/htmlparser/http/Cookie;->mDomain:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lorg/htmlparser/http/Cookie;->mExpiry:Ljava/util/Date;

    .line 144
    const-string v0, "/"

    iput-object v0, p0, Lorg/htmlparser/http/Cookie;->mPath:Ljava/lang/String;

    .line 145
    iput-boolean v2, p0, Lorg/htmlparser/http/Cookie;->mSecure:Z

    .line 146
    iput v2, p0, Lorg/htmlparser/http/Cookie;->mVersion:I

    .line 147
    return-void
.end method

.method private isToken(Ljava/lang/String;)Z
    .locals 6
    .parameter "value"

    .prologue
    .line 347
    const/4 v3, 0x1

    .line 349
    .local v3, ret:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 350
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    if-eqz v3, :cond_2

    .line 352
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 353
    .local v0, c:C
    const/16 v4, 0x20

    if-lt v0, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v0, v4, :cond_0

    const-string v4, "()<>@,;:\\\"/[]?={} \t"

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 354
    :cond_0
    const/4 v3, 0x0

    .line 350
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v0           #c:C
    :cond_2
    return v3
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 368
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 370
    :catch_0
    move-exception v0

    .line 372
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/htmlparser/http/Cookie;->mComment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/htmlparser/http/Cookie;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiryDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/htmlparser/http/Cookie;->mExpiry:Ljava/util/Date;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lorg/htmlparser/http/Cookie;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/htmlparser/http/Cookie;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lorg/htmlparser/http/Cookie;->mSecure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/htmlparser/http/Cookie;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lorg/htmlparser/http/Cookie;->mVersion:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "purpose"

    .prologue
    .line 158
    iput-object p1, p0, Lorg/htmlparser/http/Cookie;->mComment:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .parameter "pattern"

    .prologue
    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/htmlparser/http/Cookie;->mDomain:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setExpiryDate(Ljava/util/Date;)V
    .locals 0
    .parameter "expiry"

    .prologue
    .line 209
    iput-object p1, p0, Lorg/htmlparser/http/Cookie;->mExpiry:Ljava/util/Date;

    .line 210
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 235
    iput-object p1, p0, Lorg/htmlparser/http/Cookie;->mPath:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 258
    iput-boolean p1, p0, Lorg/htmlparser/http/Cookie;->mSecure:Z

    .line 259
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "newValue"

    .prologue
    .line 295
    iput-object p1, p0, Lorg/htmlparser/http/Cookie;->mValue:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 331
    iput p1, p0, Lorg/htmlparser/http/Cookie;->mVersion:I

    .line 332
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x28

    .line 384
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 385
    .local v0, ret:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "secure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    :cond_0
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getVersion()I

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    const-string v1, "version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 390
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 391
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    :cond_1
    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 396
    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    :cond_2
    :goto_0
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_6

    .line 416
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 421
    :goto_2
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 423
    const-string v1, " // "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 424
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 404
    :cond_4
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 406
    const-string v1, " (path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 413
    :cond_5
    const-string v1, "="

    goto :goto_1

    .line 420
    :cond_6
    invoke-virtual {p0}, Lorg/htmlparser/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
