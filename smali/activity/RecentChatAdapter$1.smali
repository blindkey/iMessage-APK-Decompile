.class Lactivity/RecentChatAdapter$1;
.super Ljava/lang/Object;
.source "RecentChatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/RecentChatAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/RecentChatAdapter;

.field private final synthetic val$entity:Lactivity/RecentChatEntity;


# direct methods
.method constructor <init>(Lactivity/RecentChatAdapter;Lactivity/RecentChatEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/RecentChatAdapter$1;->this$0:Lactivity/RecentChatAdapter;

    iput-object p2, p0, Lactivity/RecentChatAdapter$1;->val$entity:Lactivity/RecentChatEntity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 161
    iget-object v2, p0, Lactivity/RecentChatAdapter$1;->this$0:Lactivity/RecentChatAdapter;

    #getter for: Lactivity/RecentChatAdapter;->application:Lactivity/MyApplication;
    invoke-static {v2}, Lactivity/RecentChatAdapter;->access$0(Lactivity/RecentChatAdapter;)Lactivity/MyApplication;

    move-result-object v2

    iget-object v3, p0, Lactivity/RecentChatAdapter$1;->val$entity:Lactivity/RecentChatEntity;

    invoke-virtual {v3}, Lactivity/RecentChatEntity;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lactivity/MyApplication;->delRecentNum(I)V

    .line 163
    new-instance v1, Lcom/common/User;

    invoke-direct {v1}, Lcom/common/User;-><init>()V

    .line 164
    .local v1, u:Lcom/common/User;
    iget-object v2, p0, Lactivity/RecentChatAdapter$1;->val$entity:Lactivity/RecentChatEntity;

    invoke-virtual {v2}, Lactivity/RecentChatEntity;->getAppleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/common/User;->setAppleId(Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Lactivity/RecentChatAdapter$1;->val$entity:Lactivity/RecentChatEntity;

    invoke-virtual {v2}, Lactivity/RecentChatEntity;->getImg()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/common/User;->setImg(I)V

    .line 166
    iget-object v2, p0, Lactivity/RecentChatAdapter$1;->val$entity:Lactivity/RecentChatEntity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lactivity/RecentChatEntity;->setCount(I)V

    .line 168
    iget-object v2, p0, Lactivity/RecentChatAdapter$1;->this$0:Lactivity/RecentChatAdapter;

    #getter for: Lactivity/RecentChatAdapter;->util:Lcom/setting/SharePreferenceUtil;
    invoke-static {v2}, Lactivity/RecentChatAdapter;->access$1(Lactivity/RecentChatAdapter;)Lcom/setting/SharePreferenceUtil;

    move-result-object v2

    iget-object v3, p0, Lactivity/RecentChatAdapter$1;->val$entity:Lactivity/RecentChatEntity;

    invoke-virtual {v3}, Lactivity/RecentChatEntity;->getAppleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/setting/SharePreferenceUtil;->setChatUser(Ljava/lang/String;)V

    .line 170
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lactivity/RecentChatAdapter$1;->this$0:Lactivity/RecentChatAdapter;

    #getter for: Lactivity/RecentChatAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lactivity/RecentChatAdapter;->access$2(Lactivity/RecentChatAdapter;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lactivity/ChatActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 172
    const-string v2, "user"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lactivity/RecentChatAdapter$1;->this$0:Lactivity/RecentChatAdapter;

    #getter for: Lactivity/RecentChatAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lactivity/RecentChatAdapter;->access$2(Lactivity/RecentChatAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 178
    return-void
.end method
