.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;
.super Ljava/lang/Object;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultNetwork"
.end annotation


# instance fields
.field private mActiveNetwork:I

.field private mCellularLinkProperties:Landroid/net/LinkProperties;

.field private mCellularRequest:Landroid/net/NetworkRequest;

.field private mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field private mWifiLinkProperties:Landroid/net/LinkProperties;

.field private mWifiRequest:Landroid/net/NetworkRequest;

.field private mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;Landroid/net/IConnectivityManager;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;)V
    .locals 7
    .param p2, "connSvc"    # Landroid/net/IConnectivityManager;
    .param p3, "h"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$CallbackHandler;

    .prologue
    .line 500
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 503
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    .line 504
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    .line 505
    invoke-interface {p2}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 506
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iput v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    .line 509
    :cond_0
    const/4 v4, 0x0

    invoke-interface {p2, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 510
    if-eqz v2, :cond_1

    .line 511
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_0
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 514
    :cond_1
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 515
    if-eqz v2, :cond_2

    .line 516
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    :goto_1
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 519
    :cond_2
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 520
    .local v0, "cellularCap":Landroid/net/NetworkCapabilities;
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 521
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 522
    new-instance v3, Landroid/net/NetworkCapabilities;

    invoke-direct {v3}, Landroid/net/NetworkCapabilities;-><init>()V

    .line 523
    .local v3, "wifiCap":Landroid/net/NetworkCapabilities;
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 524
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 525
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p2, v0, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    .line 527
    const-string v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "celullar request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, p3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    invoke-interface {p2, v3, v4, v5}, Landroid/net/IConnectivityManager;->listenForNetwork(Landroid/net/NetworkCapabilities;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/NetworkRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    .line 530
    const-string v4, "EntConnectivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v0    # "cellularCap":Landroid/net/NetworkCapabilities;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "wifiCap":Landroid/net/NetworkCapabilities;
    :goto_2
    return-void

    .line 511
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_3
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto/16 :goto_0

    .line 516
    :cond_4
    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 531
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error in ConnectivityService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->sloge(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$600(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleConnected(J)Z
    .locals 5
    .param p1, "transportType"    # J

    .prologue
    const/4 v0, 0x1

    .line 594
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network WiFi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 599
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 611
    :goto_0
    return v0

    .line 602
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isValidLink(Landroid/net/LinkProperties;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network Cellular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 607
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    goto :goto_0

    .line 611
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleDisconnected(J)Z
    .locals 5
    .param p1, "transportType"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 573
    const-wide/16 v2, 0x1

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network WiFi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 577
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 578
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 590
    :goto_0
    return v0

    .line 581
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-eq v1, v2, :cond_1

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default network Cellular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 585
    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    iput-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 586
    iput-object v4, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 590
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidLink(Landroid/net/LinkProperties;)Z
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 638
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->hasIPv6Address(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isMobileActive()Z
    .locals 2

    .prologue
    .line 633
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidRequest(I)Z
    .locals 1
    .param p1, "reqId"    # I

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v0, v0, Landroid/net/NetworkRequest;->requestId:I

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiActive()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 628
    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v2, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActiveNetworkChanged(ILandroid/net/LinkProperties;)V
    .locals 2
    .param p1, "activeNetwork"    # I
    .param p2, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 615
    iput p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveNetwork: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 617
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 618
    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiLinkProperties:Landroid/net/LinkProperties;

    .line 622
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveNetworkChanged: link properties set to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogv(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$700(Ljava/lang/String;)V

    .line 625
    :cond_1
    return-void

    .line 619
    :cond_2
    iget v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mActiveNetwork:I

    if-nez v0, :cond_0

    .line 620
    iput-object p2, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularLinkProperties:Landroid/net/LinkProperties;

    goto :goto_0
.end method

.method public onNetworkChanged(Landroid/os/Bundle;I)Z
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "notifyType"    # I

    .prologue
    const/4 v1, 0x0

    .line 541
    const-class v4, Landroid/net/NetworkRequest;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    .line 542
    .local v0, "req":Landroid/net/NetworkRequest;
    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 545
    :cond_1
    const-wide/16 v2, -0x1

    .line 546
    .local v2, "transportType":J
    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mCellularRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_4

    .line 547
    const-wide/16 v2, 0x0

    .line 551
    :cond_2
    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 567
    :cond_3
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleConnected(J)Z

    move-result v1

    goto :goto_0

    .line 548
    :cond_4
    iget v4, v0, Landroid/net/NetworkRequest;->requestId:I

    iget-object v5, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->mWifiRequest:Landroid/net/NetworkRequest;

    iget v5, v5, Landroid/net/NetworkRequest;->requestId:I

    if-ne v4, v5, :cond_2

    .line 549
    const-wide/16 v2, 0x1

    goto :goto_1

    .line 560
    :pswitch_2
    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->handleDisconnected(J)Z

    move-result v1

    goto :goto_0

    .line 562
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isWifiActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$DefaultNetwork;->isMobileActive()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch 0x80001
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
