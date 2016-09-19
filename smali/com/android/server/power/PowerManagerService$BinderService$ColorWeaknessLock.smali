.class Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$BinderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorWeaknessLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$BinderService;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 6422
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    .line 6423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6424
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->binder:Landroid/os/IBinder;

    .line 6426
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6430
    :goto_0
    return-void

    .line 6427
    :catch_0
    move-exception v0

    .line 6428
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 6432
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 6433
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "ColorWeaknessLock : binderDied"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6434
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeCount:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$11602(Lcom/android/server/power/PowerManagerService;I)I

    .line 6435
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mColorWeaknessModeEnabled:Z
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$11502(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 6436
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService$BinderService;->mColorWeaknessLock:Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->access$11702(Lcom/android/server/power/PowerManagerService$BinderService;Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;)Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;

    .line 6437
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/16 v2, 0x20

    # |= operator for: Lcom/android/server/power/PowerManagerService;->mDirty:I
    invoke-static {v0, v2}, Lcom/android/server/power/PowerManagerService;->access$2576(Lcom/android/server/power/PowerManagerService;I)I

    .line 6438
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService$ColorWeaknessLock;->this$1:Lcom/android/server/power/PowerManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2600(Lcom/android/server/power/PowerManagerService;)V

    .line 6439
    monitor-exit v1

    .line 6440
    return-void

    .line 6439
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
