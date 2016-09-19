.class Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverTurnPlayer"
.end annotation


# instance fields
.field private mIsRegister:Z

.field private mMotionListener:Lcom/samsung/android/motion/MRListener;

.field private mMotionOn:Z

.field private mOverTurnOn:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 1

    .prologue
    .line 4509
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4510
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->registerObs()V

    .line 4511
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->update()V

    .line 4513
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$1;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    .line 4535
    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;

    .prologue
    .line 4503
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->update()V

    return-void
.end method

.method private registerObs()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4562
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4563
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$2;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$2;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4569
    const-string/jumbo v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$3;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer$3;-><init>(Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4575
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4578
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4579
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mMotionOn:Z

    .line 4580
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mMotionOn:Z

    if-eqz v1, :cond_0

    .line 4581
    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mOverTurnOn:Z

    .line 4584
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 4579
    goto :goto_0

    :cond_2
    move v2, v3

    .line 4581
    goto :goto_1
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .prologue
    .line 4538
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mMotionOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mOverTurnOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegister()Z
    .locals 1

    .prologue
    .line 4542
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mIsRegister:Z

    return v0
.end method

.method public register()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4546
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 4548
    .local v0, "mrm":Lcom/samsung/android/motion/MotionRecognitionManager;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 4549
    iput-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mIsRegister:Z

    .line 4550
    const-string v1, "NotificationService"

    const-string v2, "Reg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 4554
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 4556
    .local v0, "mrm":Lcom/samsung/android/motion/MotionRecognitionManager;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mMotionListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 4557
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$OverTurnPlayer;->mIsRegister:Z

    .line 4558
    const-string v1, "NotificationService"

    const-string v2, "UnReg. OverTurn"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    return-void
.end method
