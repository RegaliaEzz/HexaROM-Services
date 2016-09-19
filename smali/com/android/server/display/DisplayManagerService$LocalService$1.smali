.class Lcom/android/server/display/DisplayManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Lcom/android/server/display/DisplayBlanker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayManagerService$LocalService;->initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

.field private final mRequestDisplayStateRunnable:Ljava/lang/Runnable;

.field final synthetic this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

.field final synthetic val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V
    .locals 1

    .prologue
    .line 2717
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2746
    new-instance v0, Lcom/android/server/display/DisplayManagerService$LocalService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayManagerService$LocalService$1$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->mRequestDisplayStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/display/DisplayManagerService$LocalService$1;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayManagerService$LocalService$1;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 2717
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->requestDesiredDisplayState(III)V

    return-void
.end method

.method private requestDesiredDisplayState(III)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "brightness"    # I

    .prologue
    const/4 v1, 0x1

    .line 2762
    if-ne p2, v1, :cond_0

    .line 2763
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(II)V

    .line 2767
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V
    invoke-static {v0, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;II)V

    .line 2769
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(II)V

    .line 2770
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2774
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onDisplayStateChange(II)V

    .line 2776
    if-eq p2, v1, :cond_1

    .line 2780
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->requestGlobalDisplayStateInternal(II)V
    invoke-static {v0, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$5100(Lcom/android/server/display/DisplayManagerService;II)V

    .line 2782
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$5200(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->setActualDisplayState(II)V

    .line 2783
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2784
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->val$callbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onSetInteractiveNeeded(II)V

    .line 2786
    :cond_1
    return-void
.end method


# virtual methods
.method public registerRequestDisplayStateDoneListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 2793
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4200(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2794
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    .line 2795
    monitor-exit v1

    .line 2796
    return-void

    .line 2795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestDisplayState(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .prologue
    .line 2720
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/display/DisplayManagerService$LocalService$1;->requestDisplayState(III)V

    .line 2721
    return-void
.end method

.method public requestDisplayState(III)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "state"    # I
    .param p3, "brightness"    # I

    .prologue
    .line 2725
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mLockPMS:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$4200(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I
    invoke-static {v1, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4302(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    .line 2727
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingState:I
    invoke-static {v1, p2}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4402(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    .line 2728
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingID:I
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4300(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result v3

    # invokes: Lcom/android/server/display/DisplayManagerService$LocalService;->getDisplayBitById(I)I
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4500(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    move-result v0

    .line 2729
    .local v0, "displayBit":I
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .end local p3    # "brightness":I
    :goto_0
    # setter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingBrightness:I
    invoke-static {v1, p3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4602(Lcom/android/server/display/DisplayManagerService$LocalService;I)I

    .line 2738
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mPendingrequestDisplayState:Z
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$4700(Lcom/android/server/display/DisplayManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2739
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/display/DisplayManagerService;->mPendingrequestDisplayState:Z
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayManagerService;->access$4702(Lcom/android/server/display/DisplayManagerService;Z)Z

    .line 2740
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4800(Lcom/android/server/display/DisplayManagerService$LocalService;)Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 2741
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mHandlerPmsDisplay:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$4900(Lcom/android/server/display/DisplayManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->mRequestDisplayStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2743
    :cond_0
    monitor-exit v2

    .line 2744
    return-void

    .line 2729
    .restart local p3    # "brightness":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService$1;->this$1:Lcom/android/server/display/DisplayManagerService$LocalService;

    # getter for: Lcom/android/server/display/DisplayManagerService$LocalService;->mRequestingBrightness:I
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService$LocalService;->access$4600(Lcom/android/server/display/DisplayManagerService$LocalService;)I

    move-result p3

    goto :goto_0

    .line 2743
    .end local v0    # "displayBit":I
    .end local p3    # "brightness":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
