.class Lcom/android/server/connectivity/NetworkMonitor$3;
.super Landroid/app/IProcessObserver$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const v9, 0x82010

    const/4 v8, 0x0

    .line 831
    if-eqz p3, :cond_0

    .line 832
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v4, v9}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 834
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentUid:I
    invoke-static {v4, p2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4802(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 835
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {p2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J
    invoke-static {v4, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$4902(Lcom/android/server/connectivity/NetworkMonitor;J)J

    .line 836
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 837
    .local v3, "pkgs":[Ljava/lang/String;
    aget-object v2, v3, v8

    .line 839
    .local v2, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 840
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 841
    .local v1, "mobileInfo":Landroid/net/NetworkInfo;
    const-string v4, "NetworkMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onForegroundActivitiesChanged: pid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", packageName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsCaptivePortalLoginActivityCreated:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$5000(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 846
    const-string v4, "NetworkMonitor"

    const-string/jumbo v5, "onForegroundActivitiesChanged: calling state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "mobileInfo":Landroid/net/NetworkInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "pkgs":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 847
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v1    # "mobileInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v3    # "pkgs":[Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-nez v4, :cond_2

    .line 848
    const-string v4, "NetworkMonitor"

    const-string/jumbo v5, "onForegroundActivitiesChanged: mobile data not connected"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 850
    :cond_2
    const/16 v4, 0x3e8

    if-ne v4, p2, :cond_3

    .line 851
    const-string v4, "NetworkMonitor"

    const-string/jumbo v5, "onForegroundActivitiesChanged: skip system uid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_3
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 854
    const-string v4, "NetworkMonitor"

    const-string/jumbo v5, "onForegroundActivitiesChanged: DO NOT check after captiveportallogin"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z
    invoke-static {v4, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$5102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_0

    .line 857
    :cond_4
    const-string v4, "com.android.captiveportallogin"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 858
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z
    invoke-static {v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 861
    :cond_5
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5000(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isSmartCPDetectException(Ljava/lang/String;)Z
    invoke-static {v4, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$5200(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 871
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v4, v8}, Lcom/android/server/connectivity/NetworkMonitor;->access$5302(Lcom/android/server/connectivity/NetworkMonitor;I)I

    .line 872
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v9, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 887
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 882
    return-void
.end method
