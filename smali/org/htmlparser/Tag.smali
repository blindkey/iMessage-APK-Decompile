.class public interface abstract Lorg/htmlparser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Lorg/htmlparser/Node;


# virtual methods
.method public abstract breaksFlow()Z
.end method

.method public abstract getAttribute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getAttributeEx(Ljava/lang/String;)Lorg/htmlparser/Attribute;
.end method

.method public abstract getAttributesEx()Ljava/util/Vector;
.end method

.method public abstract getEndTag()Lorg/htmlparser/Tag;
.end method

.method public abstract getEndTagEnders()[Ljava/lang/String;
.end method

.method public abstract getEnders()[Ljava/lang/String;
.end method

.method public abstract getEndingLineNumber()I
.end method

.method public abstract getIds()[Ljava/lang/String;
.end method

.method public abstract getRawTagName()Ljava/lang/String;
.end method

.method public abstract getStartingLineNumber()I
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public abstract getThisScanner()Lorg/htmlparser/scanners/Scanner;
.end method

.method public abstract isEmptyXmlTag()Z
.end method

.method public abstract isEndTag()Z
.end method

.method public abstract removeAttribute(Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;C)V
.end method

.method public abstract setAttributeEx(Lorg/htmlparser/Attribute;)V
.end method

.method public abstract setAttributesEx(Ljava/util/Vector;)V
.end method

.method public abstract setEmptyXmlTag(Z)V
.end method

.method public abstract setEndTag(Lorg/htmlparser/Tag;)V
.end method

.method public abstract setTagName(Ljava/lang/String;)V
.end method

.method public abstract setThisScanner(Lorg/htmlparser/scanners/Scanner;)V
.end method
