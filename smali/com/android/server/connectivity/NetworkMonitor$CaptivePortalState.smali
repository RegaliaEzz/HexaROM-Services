.class Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalState"
.end annotation


# static fields
.field private static final ACTION_LAUNCH_CAPTIVE_PORTAL_APP:Ljava/lang/String; = "android.net.netmon.launchCaptivePortalApp"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 14

    .prologue
    const v13, 0x8200a

    const v9, 0x82002

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 899
    invoke-static {}, Landroid/net/wifi/WifiManager;->suppressBrowserOnCaptivePortal()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 900
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v6, "Suppress Browser When Verizon Setup WiFi running"

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1006
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v6, "CaptivePortalState - enter"

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 906
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    invoke-virtual {v6, v9, v11, v12, v7}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 910
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 912
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    if-nez v5, :cond_4

    .line 913
    const-string v5, "NetworkMonitor"

    const-string/jumbo v6, "mTelephonyManager is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_2
    :goto_1
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v11, :cond_6

    .line 926
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enter CaptivePortalState. netId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCaptivePortalRegistered="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 927
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v7, v7, Landroid/net/Network;->netId:I

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v8

    invoke-virtual {v6, v9, v11, v7, v8}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 933
    const-string v5, "NetworkMonitor"

    const-string/jumbo v6, "set WiFi ACTION_LAUNCH_CAPTIVE_PORTAL_APP BroadcastReceiver"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 936
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v5, v12}, Lcom/android/server/connectivity/NetworkMonitor;->access$5002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 938
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 944
    :goto_2
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 945
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    .local v4, "pendingIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 949
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v12, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v13, v11, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 951
    .local v3, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 954
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v5, v5, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v5, :cond_3

    const-string v5, "FINISH"

    const-string/jumbo v6, "persist.sys.setupwizard"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 956
    :cond_3
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v6, "Launch captive portal login activity immediately."

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 958
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 961
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.captiveportallogin"

    const-string v7, "com.android.captiveportallogin.CaptivePortalLoginActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 963
    const-string v5, "android.net.extra.NETWORK"

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 964
    const-string v5, "android.net.extra.CAPTIVE_PORTAL"

    new-instance v6, Landroid/net/CaptivePortal;

    new-instance v7, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;

    invoke-direct {v7, p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;)V

    invoke-direct {v6, v7}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 976
    const/high16 v5, 0x10c00000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 979
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 985
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_3
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalRegistered:Z
    invoke-static {v5, v11}, Lcom/android/server/connectivity/NetworkMonitor;->access$2302(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto/16 :goto_0

    .line 915
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "pendingIntent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mPhoneListener:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5500(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    move-result-object v5

    if-nez v5, :cond_2

    .line 916
    new-instance v2, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {v2, v5}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    .line 917
    .local v2, "mPhoneListener":Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 918
    const-string v5, "NetworkMonitor"

    const-string v6, "Add listener."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 939
    .end local v2    # "mPhoneListener":Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorPhoneStateListner;
    :catch_0
    move-exception v0

    .line 940
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NetworkMonitor"

    const-string v6, "RemoteException - registerProcessObserver"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 982
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "message":Landroid/os/Message;
    .restart local v4    # "pendingIntent":Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v6, "Captive portal is detected but it\'s auto connect."

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 991
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "pendingIntent":Landroid/content/Intent;
    :cond_6
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v5

    if-nez v5, :cond_7

    .line 993
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v6, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v8, "android.net.netmon.launchCaptivePortalApp"

    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    invoke-virtual {v9}, Ljava/util/Random;->nextInt()I

    move-result v9

    const v10, 0x8200b

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v5, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$1302(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 998
    :cond_7
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v6, v6, Landroid/net/Network;->netId:I

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    invoke-static {v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v5, v13, v11, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1001
    .restart local v3    # "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1003
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v6, 0x8200c

    const-wide/32 v8, 0x927c0

    invoke-virtual {v5, v6, v12, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    goto/16 :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x8200c

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5800(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 1055
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x82010

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5900(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 1057
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1061
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1067
    :cond_0
    :goto_0
    return-void

    .line 1062
    :catch_0
    move-exception v0

    .line 1063
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkMonitor"

    const-string v2, "RemoteException - unregisterProcessObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v8, 0x82010

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1010
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1011
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 1049
    :goto_0
    return v2

    .line 1013
    :pswitch_0
    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 1016
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5000(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1017
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "Captive portal login activity already created once."

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1022
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "Captive portal - Smart detection is not available for now."

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_1
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentUid:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4800(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    .line 1028
    .local v0, "txBytes":J
    const-string v3, "NetworkMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "txBytes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrentTxByteUid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$4900(Lcom/android/server/connectivity/NetworkMonitor;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCaptivePortalTxCheckSec:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5300(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    const/16 v4, 0x258

    if-ge v3, v4, :cond_3

    .line 1032
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # operator++ for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5308(Lcom/android/server/connectivity/NetworkMonitor;)I

    .line 1033
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4900(Lcom/android/server/connectivity/NetworkMonitor;)J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 1034
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "TxBytes increased: start Activity"

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1035
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->startLoginActivity(Landroid/net/Network;)V
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/Network;)V

    goto/16 :goto_0

    .line 1037
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v8, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    goto/16 :goto_0

    .line 1040
    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v4, "Stop checking captive portal Tx by Timer"

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 1041
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v3, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$5700(Lcom/android/server/connectivity/NetworkMonitor;I)V

    goto/16 :goto_0

    .end local v0    # "txBytes":J
    :cond_4
    move v2, v3

    .line 1049
    goto/16 :goto_0

    .line 1011
    :pswitch_data_0
    .packed-switch 0x82010
        :pswitch_0
    .end packed-switch
.end method
