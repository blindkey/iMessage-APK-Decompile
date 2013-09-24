.class Lorg/htmlparser/util/NodeList$1;
.super Ljava/lang/Object;
.source "NodeList.java"

# interfaces
.implements Lorg/htmlparser/util/SimpleNodeIterator;


# instance fields
.field count:I

.field private final this$0:Lorg/htmlparser/util/NodeList;


# direct methods
.method constructor <init>(Lorg/htmlparser/util/NodeList;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/htmlparser/util/NodeList$1;->this$0:Lorg/htmlparser/util/NodeList;

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lorg/htmlparser/util/NodeList$1;->count:I

    return-void
.end method


# virtual methods
.method public hasMoreNodes()Z
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lorg/htmlparser/util/NodeList$1;->count:I

    iget-object v1, p0, Lorg/htmlparser/util/NodeList$1;->this$0:Lorg/htmlparser/util/NodeList;

    invoke-static {v1}, Lorg/htmlparser/util/NodeList;->access$000(Lorg/htmlparser/util/NodeList;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextNode()Lorg/htmlparser/Node;
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lorg/htmlparser/util/NodeList$1;->this$0:Lorg/htmlparser/util/NodeList;

    monitor-enter v1

    .line 129
    :try_start_0
    iget v0, p0, Lorg/htmlparser/util/NodeList$1;->count:I

    iget-object v2, p0, Lorg/htmlparser/util/NodeList$1;->this$0:Lorg/htmlparser/util/NodeList;

    invoke-static {v2}, Lorg/htmlparser/util/NodeList;->access$000(Lorg/htmlparser/util/NodeList;)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    iget-object v0, p0, Lorg/htmlparser/util/NodeList$1;->this$0:Lorg/htmlparser/util/NodeList;

    invoke-static {v0}, Lorg/htmlparser/util/NodeList;->access$100(Lorg/htmlparser/util/NodeList;)[Lorg/htmlparser/Node;

    move-result-object v0

    iget v2, p0, Lorg/htmlparser/util/NodeList$1;->count:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/htmlparser/util/NodeList$1;->count:I

    aget-object v0, v0, v2

    monitor-exit v1

    return-object v0

    .line 133
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Vector Enumeration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
