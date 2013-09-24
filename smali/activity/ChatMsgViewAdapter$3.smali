.class Lactivity/ChatMsgViewAdapter$3;
.super Ljava/lang/Object;
.source "ChatMsgViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/ChatMsgViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/ChatMsgViewAdapter;

.field private final synthetic val$entity:Lactivity/ChatMsgEntity;


# direct methods
.method constructor <init>(Lactivity/ChatMsgViewAdapter;Lactivity/ChatMsgEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/ChatMsgViewAdapter$3;->this$0:Lactivity/ChatMsgViewAdapter;

    iput-object p2, p0, Lactivity/ChatMsgViewAdapter$3;->val$entity:Lactivity/ChatMsgEntity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, -0x1

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    .line 176
    .local v4, vid:I
    iget-object v5, p0, Lactivity/ChatMsgViewAdapter$3;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v5}, Lactivity/ChatMsgEntity;->getType()I

    move-result v3

    .line 177
    .local v3, type:I
    if-eqz v3, :cond_0

    .line 178
    const/16 v5, 0xa

    if-eq v3, v5, :cond_0

    .line 179
    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    .line 180
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 182
    :cond_0
    const-string v5, "Touch msg"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lactivity/ChatMsgViewAdapter$3;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v7}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v5, p0, Lactivity/ChatMsgViewAdapter$3;->val$entity:Lactivity/ChatMsgEntity;

    invoke-virtual {v5}, Lactivity/ChatMsgEntity;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, msg:Ljava/lang/String;
    const-string v5, "STARTFILE:"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 185
    .local v2, st:I
    const-string v5, ":ENDFILE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 186
    .local v0, ed:I
    if-eq v2, v8, :cond_1

    if-eq v0, v8, :cond_1

    .line 187
    iget-object v5, p0, Lactivity/ChatMsgViewAdapter$3;->this$0:Lactivity/ChatMsgViewAdapter;

    add-int/lit8 v6, v2, 0xa

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lactivity/ChatMsgViewAdapter;->openFiles(Ljava/lang/String;)V

    .line 190
    .end local v0           #ed:I
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #st:I
    :cond_1
    return-void
.end method
