.class final Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoCallBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 775
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 779
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    .local v1, "configNetworkTypeCapability":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v7, "VZW-"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->isATT()Z
    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$300(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.PRECISE_CALL_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 782
    const-string/jumbo v7, "ringing_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 783
    .local v5, "ringingCallState":I
    const-string/jumbo v7, "foreground_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 784
    .local v2, "foregroundCallState":I
    const-string v7, "background_state"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 785
    .local v0, "backgroundCallState":I
    const-string/jumbo v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 786
    .local v6, "telephonyManager":Landroid/telephony/TelephonyManager;
    const-string/jumbo v7, "video"

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v4

    .line 787
    .local v4, "hasVideoCall":Z
    const-string v7, "activevideo"

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v3

    .line 789
    .local v3, "hasActiveVideoCall":Z
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoCallBroadcastReceiver - ringingCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", foregroundCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", backgroundCallState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hasVideoCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", hasActiveVideoCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v7

    if-eq v7, v4, :cond_2

    .line 793
    if-eqz v3, :cond_3

    .line 794
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$402(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 796
    const-string v7, "NetworkPolicy"

    const-string v8, "Video call start."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 798
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 799
    monitor-exit v8

    .line 815
    .end local v0    # "backgroundCallState":I
    .end local v2    # "foregroundCallState":I
    .end local v3    # "hasActiveVideoCall":Z
    .end local v4    # "hasVideoCall":Z
    .end local v5    # "ringingCallState":I
    .end local v6    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    return-void

    .line 799
    .restart local v0    # "backgroundCallState":I
    .restart local v2    # "foregroundCallState":I
    .restart local v3    # "hasActiveVideoCall":Z
    .restart local v4    # "hasVideoCall":Z
    .restart local v5    # "ringingCallState":I
    .restart local v6    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 800
    :cond_3
    if-nez v4, :cond_2

    .line 801
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mIsVideoCall:Z
    invoke-static {v7, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$402(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 802
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallLimitAlreadySent:Z
    invoke-static {v7, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$502(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 803
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # setter for: Lcom/android/server/net/NetworkPolicyManagerService;->mVideoCallWarningAlreadySent:Z
    invoke-static {v7, v10}, Lcom/android/server/net/NetworkPolicyManagerService;->access$602(Lcom/android/server/net/NetworkPolicyManagerService;Z)Z

    .line 805
    const-string v7, "NetworkPolicy"

    const-string v8, "Video call end."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v8, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v8

    .line 807
    :try_start_1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 808
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesLocked()V

    .line 809
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 810
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$VideoCallBroadcastReceiver;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v7}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyLocked()V

    .line 811
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v7
.end method
