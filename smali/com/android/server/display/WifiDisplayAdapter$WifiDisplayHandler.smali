.class final Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;
.super Landroid/os/Handler;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDisplayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1664
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    .line 1665
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1666
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1670
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1698
    :goto_0
    return-void

    .line 1672
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendStatusChangeBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3700(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_0

    .line 1678
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleUpdateNotification()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3800(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_0

    .line 1683
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendStartFABBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3900(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_0

    .line 1688
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendStopFABBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$4000(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_0

    .line 1693
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayHandler;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->handleSendDLNADisconnectReqBroadcast()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$4100(Lcom/android/server/display/WifiDisplayAdapter;)V

    goto :goto_0

    .line 1670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
