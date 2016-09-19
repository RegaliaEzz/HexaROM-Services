.class Lcom/android/server/notification/NotificationManagerService$PickupPlayer;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickupPlayer"
.end annotation


# instance fields
.field private mMotionEnabled:Z

.field private mMotionRegistered:Z

.field private mPickUpMissedEventExist:Z

.field private mPickUpVibratePattern:[J

.field private mPickupListener:Lcom/samsung/android/motion/MRListener;

.field private mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4402
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4403
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    .line 4404
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 4405
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 4406
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickUpVibratePattern:[J

    .line 4408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 4409
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupListener:Lcom/samsung/android/motion/MRListener;

    return-void

    .line 4406
    nop

    :array_0
    .array-data 8
        0x0
        0x4b
        0x19
        0x4b
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "x1"    # Lcom/android/server/notification/NotificationManagerService$1;

    .prologue
    .line 4402
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .prologue
    .line 4402
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->unregister()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .prologue
    .line 4402
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->register()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    .prologue
    .line 4402
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickUpVibratePattern:[J

    return-object v0
.end method

.method private register()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 4452
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 4453
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 4455
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4456
    .local v0, "N":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 4457
    .local v1, "currentUser":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 4458
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 4459
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    const-string v4, "com.android.server.telecom"

    iget-object v6, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    if-eq v4, v7, :cond_2

    :cond_0
    const-string v4, "com.android.mms"

    iget-object v6, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v6, 0x7b

    if-eq v4, v6, :cond_2

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    const/16 v6, 0x4bc

    if-eq v4, v6, :cond_2

    :cond_1
    const-string v4, "com.notidemo"

    iget-object v6, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4464
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->missedCount:I

    if-lez v4, :cond_5

    .line 4465
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 4466
    const-string v4, "NotificationService"

    const-string v6, "Pickup - Found Missed Event"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4467
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    .line 4473
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4475
    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickUpMissedEventExist:Z

    if-eqz v4, :cond_4

    .line 4476
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v4, :cond_4

    .line 4477
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupListener:Lcom/samsung/android/motion/MRListener;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/motion/MotionRecognitionManager;->registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 4479
    iput-boolean v7, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 4480
    const-string v4, "NotificationService"

    const-string v5, "Pickup - registerListener"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4483
    :cond_4
    return-void

    .line 4457
    .restart local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 4473
    .end local v0    # "N":I
    .end local v1    # "currentUser":I
    .end local v2    # "i":I
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private unregister()V
    .locals 2

    .prologue
    .line 4486
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_0

    .line 4487
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 4488
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupListener:Lcom/samsung/android/motion/MRListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager;->unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 4489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    .line 4490
    const-string v0, "NotificationService"

    const-string v1, "Pickup - unregisterListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    :cond_0
    return-void
.end method


# virtual methods
.method public setPickupMotionEnabled(Z)V
    .locals 3
    .param p1, "enableMotion"    # Z

    .prologue
    .line 4434
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPickupMotionEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    if-eqz p1, :cond_1

    .line 4437
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 4438
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 4440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    .line 4449
    :cond_0
    :goto_0
    return-void

    .line 4443
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionRegistered:Z

    if-eqz v0, :cond_2

    .line 4444
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->unregister()V

    .line 4446
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickupManager:Lcom/samsung/android/motion/MotionRecognitionManager;

    .line 4447
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mMotionEnabled:Z

    goto :goto_0
.end method
