.class public abstract Lorg/htmlparser/visitors/NodeVisitor;
.super Ljava/lang/Object;
.source "NodeVisitor.java"


# instance fields
.field private mRecurseChildren:Z

.field private mRecurseSelf:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>(Z)V

    .line 118
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "recurseChildren"

    .prologue
    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/htmlparser/visitors/NodeVisitor;-><init>(ZZ)V

    .line 129
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .parameter "recurseChildren"
    .parameter "recurseSelf"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-boolean p1, p0, Lorg/htmlparser/visitors/NodeVisitor;->mRecurseChildren:Z

    .line 143
    iput-boolean p2, p0, Lorg/htmlparser/visitors/NodeVisitor;->mRecurseSelf:Z

    .line 144
    return-void
.end method


# virtual methods
.method public beginParsing()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public finishedParsing()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public shouldRecurseChildren()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lorg/htmlparser/visitors/NodeVisitor;->mRecurseChildren:Z

    return v0
.end method

.method public shouldRecurseSelf()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lorg/htmlparser/visitors/NodeVisitor;->mRecurseSelf:Z

    return v0
.end method

.method public visitEndTag(Lorg/htmlparser/Tag;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 168
    return-void
.end method

.method public visitRemarkNode(Lorg/htmlparser/Remark;)V
    .locals 0
    .parameter "remark"

    .prologue
    .line 184
    return-void
.end method

.method public visitStringNode(Lorg/htmlparser/Text;)V
    .locals 0
    .parameter "string"

    .prologue
    .line 176
    return-void
.end method

.method public visitTag(Lorg/htmlparser/Tag;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 160
    return-void
.end method
