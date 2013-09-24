.class public Lorg/htmlparser/filters/NodeClassFilter;
.super Ljava/lang/Object;
.source "NodeClassFilter.java"

# interfaces
.implements Lorg/htmlparser/NodeFilter;


# static fields
.field static class$org$htmlparser$tags$Html:Ljava/lang/Class;


# instance fields
.field protected mClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/htmlparser/filters/NodeClassFilter;->class$org$htmlparser$tags$Html:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.htmlparser.tags.Html"

    invoke-static {v0}, Lorg/htmlparser/filters/NodeClassFilter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/htmlparser/filters/NodeClassFilter;->class$org$htmlparser$tags$Html:Ljava/lang/Class;

    :goto_0
    invoke-direct {p0, v0}, Lorg/htmlparser/filters/NodeClassFilter;-><init>(Ljava/lang/Class;)V

    .line 48
    return-void

    .line 47
    :cond_0
    sget-object v0, Lorg/htmlparser/filters/NodeClassFilter;->class$org$htmlparser$tags$Html:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter "cls"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/htmlparser/filters/NodeClassFilter;->mClass:Ljava/lang/Class;

    .line 57
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .parameter "x0"

    .prologue
    .line 47
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


# virtual methods
.method public accept(Lorg/htmlparser/Node;)Z
    .locals 2
    .parameter "node"

    .prologue
    .line 86
    iget-object v0, p0, Lorg/htmlparser/filters/NodeClassFilter;->mClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/htmlparser/filters/NodeClassFilter;->mClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMatchClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/htmlparser/filters/NodeClassFilter;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public setMatchClass(Ljava/lang/Class;)V
    .locals 0
    .parameter "cls"

    .prologue
    .line 74
    iput-object p1, p0, Lorg/htmlparser/filters/NodeClassFilter;->mClass:Ljava/lang/Class;

    .line 75
    return-void
.end method
