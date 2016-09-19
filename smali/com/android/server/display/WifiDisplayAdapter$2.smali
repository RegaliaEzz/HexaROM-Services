.class Lcom/android/server/display/WifiDisplayAdapter$2;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Lcom/android/server/display/IpRemoteDisplayController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .locals 0

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayConnected(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "surface"    # Landroid/view/Surface;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "flags"    # I

    .prologue
    const/4 v7, 0x2

    .line 1485
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onDisplayConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string/jumbo v0, "wlan.wfd.status"

    const-string v1, "connected"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 1489
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2300(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/PersistentDataStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/PersistentDataStore;->applyWifiDisplayAlias(Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    move-result-object p1

    .line 1490
    if-eqz p2, :cond_2

    .line 1491
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->addDisplayDeviceLocked(Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$2700(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;Landroid/view/Surface;III)V

    .line 1493
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    .line 1499
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    .line 1501
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x2

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1505
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x6

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2902(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1506
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2102(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1508
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1509
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1511
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/WifiDisplayController;->syncRemoteDisplayStatus(IZ)V

    .line 1512
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1513
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStartFloatingIconBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$3000(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1516
    :cond_1
    monitor-exit v6

    .line 1517
    return-void

    .line 1495
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->rememberedDisplayLocked(Landroid/hardware/display/WifiDisplay;)V
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2800(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)V

    .line 1496
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/display/WifiDisplay;->setEmptySurface(Z)V

    goto :goto_0

    .line 1516
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayConnecting(Landroid/hardware/display/WifiDisplay;I)V
    .locals 12
    .param p1, "display"    # Landroid/hardware/display/WifiDisplay;
    .param p2, "connectingMode"    # I

    .prologue
    const/4 v2, 0x1

    .line 1459
    const-string v0, "WifiDisplayAdapter"

    const-string v1, "IpRemoteDisplayListener onDisplayConnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v8

    monitor-enter v8

    .line 1463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1467
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2102(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1468
    iget-object v9, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v0, 0x1

    new-array v10, v0, [Landroid/hardware/display/WifiDisplay;

    const/4 v11, 0x0

    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v5}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v7}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/display/WifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V

    aput-object v0, v10, v11

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v9, v10}, Lcom/android/server/display/WifiDisplayAdapter;->access$2202(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1471
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connecting state = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->access$702(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1474
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1475
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1478
    :cond_1
    monitor-exit v8

    .line 1479
    return-void

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayConnectionFailed()V
    .locals 3

    .prologue
    .line 1443
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onDisplayConnectionFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1446
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1448
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1450
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$2102(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1451
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1453
    :cond_1
    monitor-exit v1

    .line 1454
    return-void

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDisplayDisconnected()V
    .locals 4

    .prologue
    .line 1522
    const-string v1, "WifiDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpRemoteDisplayListener onDisplayDisconnected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const-string/jumbo v1, "wlan.wfd.status"

    const-string/jumbo v2, "disconnected"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v2

    monitor-enter v2

    .line 1527
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->removeDisplayDeviceLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3300(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1528
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->turnOffPeriodicWifiScan(Z)V

    .line 1530
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1532
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    .line 1533
    .local v0, "prevConnectedState":I
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1534
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x7

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mScreenSharingStatus:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2902(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1535
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mAvailableDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2402(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1536
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    sget-object v3, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplays:[Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2202(Lcom/android/server/display/WifiDisplayAdapter;[Landroid/hardware/display/WifiDisplay;)[Landroid/hardware/display/WifiDisplay;

    .line 1537
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$2102(Lcom/android/server/display/WifiDisplayAdapter;Landroid/hardware/display/WifiDisplay;)Landroid/hardware/display/WifiDisplay;

    .line 1539
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    .line 1540
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleUpdateNotificationLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1200(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1541
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDLNADevice:Landroid/hardware/display/DLNADevice;
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1600(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/DLNADevice;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1542
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleDLNADisconnectReqBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1400(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1543
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStopFloatingIconBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3400(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1546
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v3, -0x1

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v1, v3}, Lcom/android/server/display/WifiDisplayAdapter;->access$702(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1547
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1550
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1551
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->requestDisableWiFiP2P()V
    invoke-static {v1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3500(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1553
    .end local v0    # "prevConnectedState":I
    :cond_3
    monitor-exit v2

    .line 1554
    return-void

    .line 1553
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDisplayDisconnecting()V
    .locals 4

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1559
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplay:Landroid/hardware/display/WifiDisplay;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$2100(Lcom/android/server/display/WifiDisplayAdapter;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1562
    :cond_0
    const-string v0, "WifiDisplayAdapter"

    const-string v2, "IpRemoteDisplayListener onDisplayDisconnecting"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    const/4 v2, 0x3

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mActiveDisplayState:I
    invoke-static {v0, v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1566
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mDisplayController:Lcom/android/server/display/WifiDisplayController;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$000(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mConnectState:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayAdapter;->access$700(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/WifiDisplayController;->syncRemoteDisplayStatus(IZ)V

    .line 1568
    :cond_1
    monitor-exit v1

    .line 1569
    return-void

    .line 1568
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFeatureStateChanged(I)V
    .locals 2
    .param p1, "featureState"    # I

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 1433
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # getter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1800(Lcom/android/server/display/WifiDisplayAdapter;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mFeatureState:I
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$1802(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1435
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # invokes: Lcom/android/server/display/WifiDisplayAdapter;->scheduleStatusChangedBroadcastLocked()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->access$1900(Lcom/android/server/display/WifiDisplayAdapter;)V

    .line 1437
    :cond_0
    monitor-exit v1

    .line 1438
    return-void

    .line 1437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onQosLevelChanged(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 1574
    const-string v0, "WifiDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpRemoteDisplayListener onQosLevelChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$2;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    # setter for: Lcom/android/server/display/WifiDisplayAdapter;->mQoSLevel:I
    invoke-static {v0, p1}, Lcom/android/server/display/WifiDisplayAdapter;->access$3602(Lcom/android/server/display/WifiDisplayAdapter;I)I

    .line 1577
    return-void
.end method
