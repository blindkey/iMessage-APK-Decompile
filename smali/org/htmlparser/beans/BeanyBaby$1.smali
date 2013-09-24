.class Lorg/htmlparser/beans/BeanyBaby$1;
.super Ljava/awt/event/WindowAdapter;
.source "BeanyBaby.java"


# instance fields
.field private final this$0:Lorg/htmlparser/beans/BeanyBaby;


# direct methods
.method constructor <init>(Lorg/htmlparser/beans/BeanyBaby;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lorg/htmlparser/beans/BeanyBaby$1;->this$0:Lorg/htmlparser/beans/BeanyBaby;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .parameter "evt"

    .prologue
    .line 353
    iget-object v0, p0, Lorg/htmlparser/beans/BeanyBaby$1;->this$0:Lorg/htmlparser/beans/BeanyBaby;

    invoke-static {v0, p1}, Lorg/htmlparser/beans/BeanyBaby;->access$000(Lorg/htmlparser/beans/BeanyBaby;Ljava/awt/event/WindowEvent;)V

    .line 354
    return-void
.end method
