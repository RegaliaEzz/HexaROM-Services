.class Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->onMotionListener(Lcom/samsung/android/motion/MREvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;)V
    .locals 0

    .prologue
    .line 4417
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 4419
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # getter for: Lcom/android/server/notification/NotificationManagerService;->mInCall:Z
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4420
    const-string v0, "NotificationService"

    const-string v1, "Pickup - mInCall is true, vibration will be returned"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    :goto_0
    return-void

    .line 4422
    :cond_0
    const-string v0, "NotificationService"

    const-string v1, "Pickup - mVibrator.vibrate()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4423
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1$1;->this$2:Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$PickupPlayer$1;->this$1:Lcom/android/server/notification/NotificationManagerService$PickupPlayer;

    # getter for: Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->mPickUpVibratePattern:[J
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService$PickupPlayer;->access$8000(Lcom/android/server/notification/NotificationManagerService$PickupPlayer;)[J

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto :goto_0
.end method
