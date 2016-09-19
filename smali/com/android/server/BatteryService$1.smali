.class Lcom/android/server/BatteryService$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryService.java"


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
    .line 340
    iput-object p1, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 343
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 345
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/BatteryService$1$1;

    invoke-direct {v6, p0}, Lcom/android/server/BatteryService$1$1;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 355
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/BatteryService$1$2;

    invoke-direct {v6, p0}, Lcom/android/server/BatteryService$1$2;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 364
    :cond_2
    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 365
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/BatteryService$1$3;

    invoke-direct {v6, p0}, Lcom/android/server/BatteryService$1$3;-><init>(Lcom/android/server/BatteryService$1;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 384
    :cond_3
    const-string v5, "com.android.systemui.power.action.POWER_SHARING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 385
    const-string/jumbo v5, "power_sharing_enable"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 386
    .local v3, "powerSharingEnable":Z
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/BatteryService$1$4;

    invoke-direct {v6, p0, v3}, Lcom/android/server/BatteryService$1$4;-><init>(Lcom/android/server/BatteryService$1;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 400
    .end local v3    # "powerSharingEnable":Z
    :cond_4
    const-string v5, "com.samsung.systemui.power.action.WIRELESS_POWER_SHARING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 401
    const-string/jumbo v5, "power_sharing_enable"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 402
    .local v4, "wirelessPowerSharingEnable":Z
    const-string/jumbo v5, "power_share_level"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/server/BatteryService;->mWirelessPowerSharing_UserLevel:I
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$802(I)I

    .line 404
    # getter for: Lcom/android/server/BatteryService;->mWirelessPowerSharing_UserLevel:I
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLastBatteryLevel:I
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$900(Lcom/android/server/BatteryService;)I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 405
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/BatteryService$1$5;

    invoke-direct {v6, p0, v4}, Lcom/android/server/BatteryService$1$5;-><init>(Lcom/android/server/BatteryService$1;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 417
    :cond_5
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Current batteryLevel is lower than requested user level !!!"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    .end local v4    # "wirelessPowerSharingEnable":Z
    :cond_6
    const-string v5, "android.intent.action.REQUEST_OTG_CHARGE_BLOCK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 425
    const-string v5, "OTG_CHARGE_BLOCK"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 426
    .local v1, "otgEnable":Z
    const/4 v2, 0x0

    .line 429
    .local v2, "otgSendPermission":Z
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android"

    const-string v7, "com.sec.android.easyMover"

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_7

    .line 430
    const/4 v2, 0x1

    .line 431
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SMART_SWITCH signature is matched"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_7
    if-eqz v2, :cond_8

    .line 435
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/BatteryService$1$6;

    invoke-direct {v6, p0, v1}, Lcom/android/server/BatteryService$1$6;-><init>(Lcom/android/server/BatteryService$1;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 448
    :cond_8
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$700()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OTG block is denied!!!"

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 454
    .end local v1    # "otgEnable":Z
    .end local v2    # "otgSendPermission":Z
    :cond_9
    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 455
    iget-object v5, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mHandlerForBatteryInfoBackUp:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/BatteryService$1;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mSaveBatteryUsageRunnable:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/server/BatteryService;->access$1200(Lcom/android/server/BatteryService;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
