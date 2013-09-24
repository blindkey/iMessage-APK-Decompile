.class Lactivity/SettingAdapter$1;
.super Ljava/lang/Object;
.source "SettingAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lactivity/SettingAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lactivity/SettingAdapter;

.field private final synthetic val$pos:I


# direct methods
.method constructor <init>(Lactivity/SettingAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    iput p2, p0, Lactivity/SettingAdapter$1;->val$pos:I

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    .line 102
    .local v5, vid:I
    const-string v6, "SettingPage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lactivity/SettingAdapter$1;->val$pos:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " down"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v6, p0, Lactivity/SettingAdapter$1;->val$pos:I

    packed-switch v6, :pswitch_data_0

    .line 147
    :goto_0
    :pswitch_0
    return-void

    .line 107
    :pswitch_1
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 108
    .local v3, message4:Landroid/os/Message;
    const/16 v6, 0x8

    iput v6, v3, Landroid/os/Message;->what:I

    .line 109
    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 110
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 113
    .end local v3           #message4:Landroid/os/Message;
    :pswitch_2
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 114
    .local v2, message3:Landroid/os/Message;
    const/4 v6, 0x5

    iput v6, v2, Landroid/os/Message;->what:I

    .line 115
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 116
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 125
    .end local v2           #message3:Landroid/os/Message;
    :pswitch_3
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 126
    .local v4, messaget:Landroid/os/Message;
    const/4 v6, 0x7

    iput v6, v4, Landroid/os/Message;->what:I

    .line 127
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 128
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 131
    .end local v4           #messaget:Landroid/os/Message;
    :pswitch_4
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, message:Landroid/os/Message;
    const/4 v6, 0x4

    iput v6, v0, Landroid/os/Message;->what:I

    .line 133
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 134
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 139
    .end local v0           #message:Landroid/os/Message;
    :pswitch_5
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 140
    .local v1, message2:Landroid/os/Message;
    const/4 v6, 0x2

    iput v6, v1, Landroid/os/Message;->what:I

    .line 141
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 142
    iget-object v6, p0, Lactivity/SettingAdapter$1;->this$0:Lactivity/SettingAdapter;

    #getter for: Lactivity/SettingAdapter;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lactivity/SettingAdapter;->access$0(Lactivity/SettingAdapter;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
