.class Lcom/android/server/BatteryService$17;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1704
    const-wide/16 v0, 0x0

    .line 1705
    .local v0, "maxTemp":J
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1706
    :try_start_0
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3800(Lcom/android/server/BatteryService;)J

    move-result-wide v0

    .line 1707
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1708
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLockBatteryInfoBackUp:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$2500(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1709
    :try_start_1
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_0

    .line 1710
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    iget-object v4, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->readBatteryMaxTempFromEfsLocked()J
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v4, v5}, Lcom/android/server/BatteryService;->access$3402(Lcom/android/server/BatteryService;J)J

    .line 1712
    :cond_0
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    .line 1713
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$3402(Lcom/android/server/BatteryService;J)J

    .line 1714
    iget-object v2, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    const-string v4, "/efs/FactoryApp/max_temp"

    iget-object v5, p0, Lcom/android/server/BatteryService$17;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSavedBatteryMaxTemp:J
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    # invokes: Lcom/android/server/BatteryService;->saveBatteryInfo(Ljava/lang/String;J)I
    invoke-static {v2, v4, v6, v7}, Lcom/android/server/BatteryService;->access$3100(Lcom/android/server/BatteryService;Ljava/lang/String;J)I

    .line 1716
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1717
    return-void

    .line 1707
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1716
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
