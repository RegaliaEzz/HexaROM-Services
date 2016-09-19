.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 443
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v3, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 445
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v3, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    .line 446
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    .line 447
    const-string v2, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 448
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep LEFT, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep LEFT, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 454
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 455
    const-string v2, "PalmMotion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 456
    .local v1, "display":Ljava/lang/String;
    const-string v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 457
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v5, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto :goto_0

    .line 458
    :cond_3
    const-string v2, "SUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto :goto_0

    .line 463
    .end local v1    # "display":Ljava/lang/String;
    :cond_4
    const-string v2, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 464
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 465
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep RIGHT, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 468
    :cond_5
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep RIGHT, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 470
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v7, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 471
    const-string v2, "PalmMotion"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 472
    .restart local v1    # "display":Ljava/lang/String;
    const-string v2, "MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 473
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v5, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto/16 :goto_0

    .line 474
    :cond_7
    const-string v2, "SUB"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v6, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto/16 :goto_0

    .line 479
    .end local v1    # "display":Ljava/lang/String;
    :cond_8
    const-string v2, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 480
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "SWEEP DOWN"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 482
    :cond_9
    const-string v2, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 484
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep FULL SCREEN, but keyguard on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 487
    :cond_a
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_b

    const-string v2, "SamsungWindowManager"

    const-string v3, "Sweep FULL SCREEN, so takeScreenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_b
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v5, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 490
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iput v7, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    goto/16 :goto_0
.end method
