.class public Lcom/android/server/policy/sec/CombinationKeyManager;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field private static final QUICKSHOT_CHORD_DEBOUNDCE_DELAY_MLLIS:J = 0x15eL

.field private static final QUICKSHOT_CHORD_KEY_INTERVEAL_TIME_MILLIS:J = 0x96L

.field private static final SAFETYASSURANCE_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0xfaL

.field private static final SAFE_DEBUG:Z

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final SYSDUMP_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field private static final TAG:Ljava/lang/String; = "CombinationKeyManager"


# instance fields
.field private final mAccessControlChordLongPress:Ljava/lang/Runnable;

.field private mBackKeyConsumed:Z

.field private mBackKeyTime:J

.field private mBackKeyTriggered:Z

.field private mCameraKeyConsumed:Z

.field private mCameraKeyTime:J

.field private mCameraKeyTriggered:Z

.field private mCameraRecordKeyConsumed:Z

.field private mCameraRecordKeyTime:J

.field private mCameraRecordKeyTriggered:Z

.field mContext:Landroid/content/Context;

.field private mEnterKeyConsumed:Z

.field private mEnterKeyTime:J

.field private mEnterKeyTriggered:Z

.field private final mFactoryTestChordLongPress:Ljava/lang/Runnable;

.field private mFlashKeyConsumed:Z

.field private mFlashKeyTime:J

.field private mFlashKeyTriggered:Z

.field mHandler:Landroid/os/Handler;

.field private mHasPermanentMenuKey:Z

.field private mHomeKeyConsumed:Z

.field private mHomeKeyTime:J

.field private mHomeKeyTriggered:Z

.field private mIsSupportManualScreenPinning:Z

.field private mMenuConsumed:Z

.field private mMenuTime:J

.field private mMenuTriggered:Z

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mPowerKeyConsumed:Z

.field private mPowerKeyTime:J

.field private mPowerKeyTriggered:Z

.field mPowerManager:Landroid/os/PowerManager;

.field private final mQuickShotChordLongPress:Ljava/lang/Runnable;

.field private mRecentKeyConsumed:Z

.field private mRecentKeyTime:J

.field private mRecentKeyTriggered:Z

.field mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

.field private final mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

.field mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

.field mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenshotChordLongPress:Ljava/lang/Runnable;

.field private final mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

.field private final mSysDumpLongPress:Ljava/lang/Runnable;

.field private mVolumeDownKeyConsumed:Z

.field private mVolumeDownKeyTime:J

.field private mVolumeDownKeyTriggered:Z

.field private mVolumeUpKeyConsumed:Z

.field private mVolumeUpKeyTime:J

.field private mVolumeUpKeyTriggered:Z

.field private mWiFiProtectedSetupKeyConsumed:Z

.field private mWiFiProtectedSetupKeyTime:J

.field private mWiFiProtectedSetupKeyTriggered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "samsungPhoneWindowManager"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    const/4 v2, 0x1

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    .line 622
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$1;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    .line 698
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$2;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    .line 730
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$3;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    .line 758
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$4;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    .line 811
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$5;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    .line 850
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$6;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    .line 897
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/CombinationKeyManager$7;-><init>(Lcom/android/server/policy/sec/CombinationKeyManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    .line 146
    iput-object p1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    .line 147
    iput-object p2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 148
    iput-object p3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .line 149
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    .line 151
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 153
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mSafetyAssuranceTimeoutWakeLock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceTimeoutWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    return v0
.end method

.method private cancelPendingChordAction()V
    .locals 2

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 586
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 587
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 589
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 590
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 592
    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 597
    :cond_1
    return-void
.end method

.method private getChordLongPressDelay()J
    .locals 2

    .prologue
    .line 600
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private interceptAccessControlChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 707
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-nez v2, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_2

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 710
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 712
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 713
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 714
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 715
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 717
    .end local v0    # "now":J
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 718
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 719
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 721
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 722
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    .line 723
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 724
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 725
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mAccessControlChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptFactoryTestChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 797
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 798
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 800
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 802
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    .line 803
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 804
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 805
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 806
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFactoryTestChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptQuickShotChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x15e

    const/4 v6, 0x1

    .line 831
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportCameraQuickShot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_0

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 835
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 844
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptQuickShotChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 835
    :cond_3
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 838
    sget-boolean v2, Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptQuickShotChord - success and waiting long press : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mVolumeUpKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mCameraKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_4
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    .line 840
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 841
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mQuickShotChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private interceptSafetyAssuranceChord()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 743
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isSupportPowerTriplePress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 745
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v0, :cond_0

    .line 746
    iget-wide v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 747
    const-string v0, "CombinationKeyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interceptSafetyAssuranceChord - success and waiting long press : mVolumeDownKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mVolumeUpKeyTime["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 749
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 750
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 751
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 752
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 753
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSafetyAssuranceChordLongPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private interceptScreenshotChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    .line 642
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 645
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_2

    .line 646
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 647
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 649
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 650
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 651
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 652
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 653
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 656
    .end local v0    # "now":J
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 658
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 660
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    .line 661
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 662
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 663
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 664
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 668
    .end local v0    # "now":J
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_4

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 670
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 672
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 673
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 674
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 675
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 676
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 680
    .end local v0    # "now":J
    :cond_4
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 681
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-nez v2, :cond_0

    .line 682
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 683
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 685
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 686
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 687
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 688
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 689
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method private interceptStopLockTaskModeChord()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/4 v6, 0x1

    .line 862
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_0

    .line 863
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 864
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_3

    .line 865
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_3

    .line 866
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 867
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 869
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuConsumed:Z

    .line 870
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 871
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 872
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 876
    :cond_2
    sget-boolean v2, Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mMenuKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    .end local v0    # "now":J
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v2, :cond_0

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 882
    .restart local v0    # "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTime:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    .line 884
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 885
    iput-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 886
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 887
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mStopLockTaskModeChordLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 891
    :cond_4
    sget-boolean v2, Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CombinationKeyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptStopLockTaskModeChord - fail : now["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mHomeKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mBackKeyTime["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private interceptSysDumpChord()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    const/4 v4, 0x1

    .line 605
    const-string v2, ""

    const-string v3, "RestrictedInput"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v2, :cond_0

    .line 607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 608
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTime:J

    add-long/2addr v2, v6

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 611
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuConsumed:Z

    .line 612
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 613
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    .line 614
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 615
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    .line 616
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSysDumpLongPress:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->getChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 620
    .end local v0    # "now":J
    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 912
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPowerKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 913
    const-string v0, " mHomeKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 914
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVolumeDownKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 915
    const-string v0, " mVolumeUpKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 916
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 917
    const-string v0, " mCameraRecordKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 918
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFlashKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 919
    const-string v0, " mWiFiProtectedSetupKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 920
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBackKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 921
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRecentKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 922
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMenuKeyTriggered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 923
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasPermanentMenuKey="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 924
    return-void
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 6
    .param p1, "flags"    # I

    .prologue
    const-wide/16 v0, 0x0

    const-wide/16 v4, 0x96

    .line 429
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-wide v0

    .line 430
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_2

    .line 432
    iget-wide v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 433
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_3

    .line 434
    iget-wide v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 437
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 439
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v2, :cond_5

    .line 440
    iget-wide v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 443
    :cond_5
    iget-object v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUseAccessControl()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 444
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v2, :cond_6

    .line 445
    iget-wide v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 446
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_7

    .line 447
    iget-wide v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0

    .line 450
    :cond_7
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 451
    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v2, :cond_0

    .line 452
    iget-wide v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    add-long/2addr v0, v4

    goto :goto_0
.end method

.method public interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    const/high16 v6, 0x20000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_1

    move v2, v4

    .line 166
    .local v2, "interactive":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    move v1, v4

    .line 167
    .local v1, "down":Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .line 168
    .local v0, "canceled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 170
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_3

    .line 426
    :cond_0
    :goto_2
    return-void

    .end local v0    # "canceled":Z
    .end local v1    # "down":Z
    .end local v2    # "interactive":Z
    .end local v3    # "keyCode":I
    :cond_1
    move v2, v5

    .line 165
    goto :goto_0

    .restart local v2    # "interactive":Z
    :cond_2
    move v1, v5

    .line 166
    goto :goto_1

    .line 171
    .restart local v0    # "canceled":Z
    .restart local v1    # "down":Z
    .restart local v3    # "keyCode":I
    :cond_3
    sparse-switch v3, :sswitch_data_0

    goto :goto_2

    .line 240
    :sswitch_0
    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v6

    if-nez v6, :cond_0

    .line 241
    if-eqz v1, :cond_9

    .line 242
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v6, :cond_0

    .line 243
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    .line 244
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTime:J

    .line 245
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    .line 246
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 247
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptScreenshotChord()V

    .line 248
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto :goto_2

    .line 174
    :sswitch_1
    if-eqz v1, :cond_5

    .line 175
    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v6, :cond_0

    .line 176
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    .line 177
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTime:J

    .line 178
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    .line 179
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 180
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    .line 181
    if-eqz v2, :cond_4

    .line 182
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptScreenshotChord()V

    .line 183
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto :goto_2

    .line 185
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    .line 189
    :cond_5
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    .line 190
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    .line 196
    :sswitch_2
    if-eqz v1, :cond_6

    .line 197
    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v6, :cond_0

    .line 198
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    .line 199
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTime:J

    .line 200
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    .line 201
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 202
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptSafetyAssuranceChord()V

    .line 203
    if-nez v2, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto :goto_2

    .line 208
    :cond_6
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    .line 209
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto :goto_2

    .line 215
    :sswitch_3
    if-eqz v1, :cond_8

    .line 216
    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    if-nez v6, :cond_0

    .line 217
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    .line 218
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTime:J

    .line 219
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    .line 220
    if-eqz v2, :cond_7

    .line 221
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptScreenshotChord()V

    .line 222
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptAccessControlChord()V

    .line 223
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptFactoryTestChord()V

    .line 225
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    .line 230
    :cond_7
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    .line 234
    :cond_8
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyTriggered:Z

    .line 235
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 251
    :cond_9
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    .line 252
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 258
    :sswitch_4
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 260
    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 261
    sget-boolean v4, Lcom/android/server/policy/sec/CombinationKeyManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CombinationKeyManager"

    const-string v5, "Camera key is blocked by policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 264
    :cond_a
    if-eqz v1, :cond_b

    .line 265
    if-nez v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    if-nez v6, :cond_0

    .line 266
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    .line 267
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTime:J

    .line 268
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    .line 269
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 270
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptQuickShotChord()V

    goto/16 :goto_2

    .line 273
    :cond_b
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyTriggered:Z

    .line 274
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 280
    :sswitch_5
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 281
    if-eqz v1, :cond_c

    .line 282
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v6, :cond_0

    .line 283
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    .line 284
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTime:J

    .line 285
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    .line 286
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 287
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptScreenshotChord()V

    goto/16 :goto_2

    .line 290
    :cond_c
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    .line 291
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 297
    :sswitch_6
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 298
    if-eqz v1, :cond_d

    .line 299
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v6, :cond_0

    .line 300
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    .line 301
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTime:J

    .line 302
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    .line 303
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 304
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptAccessControlChord()V

    goto/16 :goto_2

    .line 307
    :cond_d
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    .line 308
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 314
    :sswitch_7
    if-eqz v1, :cond_e

    .line 315
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v6, :cond_0

    .line 316
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 317
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTime:J

    .line 318
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    .line 319
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptFactoryTestChord()V

    goto/16 :goto_2

    .line 322
    :cond_e
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    .line 323
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 328
    :sswitch_8
    if-eqz v1, :cond_f

    .line 329
    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 330
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-nez v6, :cond_0

    .line 331
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    .line 332
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTime:J

    .line 333
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    .line 335
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v4, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 341
    :cond_f
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    if-eqz v4, :cond_0

    .line 342
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyTriggered:Z

    .line 343
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 349
    :sswitch_9
    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_0

    .line 350
    if-eqz v1, :cond_10

    .line 351
    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 352
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-nez v6, :cond_0

    .line 353
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    .line 354
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTime:J

    .line 355
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    .line 356
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 359
    :cond_10
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    if-eqz v4, :cond_0

    .line 360
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyTriggered:Z

    .line 361
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 369
    :sswitch_a
    const-string v6, ""

    const-string v7, "RestrictedInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 370
    if-eqz v1, :cond_11

    .line 371
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v6, :cond_0

    .line 372
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    .line 373
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTime:J

    .line 374
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuConsumed:Z

    .line 375
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 376
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptScreenshotChord()V

    .line 377
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    .line 380
    :cond_11
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    .line 381
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 386
    :cond_12
    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    if-eqz v6, :cond_0

    .line 387
    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    if-eqz v6, :cond_0

    .line 388
    if-eqz v1, :cond_13

    .line 389
    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 390
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v6, :cond_0

    .line 391
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    .line 392
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTime:J

    .line 393
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuConsumed:Z

    .line 394
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptStopLockTaskModeChord()V

    goto/16 :goto_2

    .line 397
    :cond_13
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-eqz v4, :cond_0

    .line 398
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    .line 399
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 408
    :sswitch_b
    const-string v6, ""

    const-string v7, "RestrictedInput"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    if-eqz v1, :cond_14

    .line 410
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-nez v6, :cond_0

    .line 411
    iput-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    .line 412
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTime:J

    .line 413
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    .line 414
    iget-object v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKey()V

    .line 415
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptSysDumpChord()V

    goto/16 :goto_2

    .line 418
    :cond_14
    iput-boolean v5, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    .line 419
    invoke-direct {p0}, Lcom/android/server/policy/sec/CombinationKeyManager;->cancelPendingChordAction()V

    goto/16 :goto_2

    .line 171
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_8
        0x6 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1a -> :sswitch_3
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xbb -> :sswitch_9
        0x3fe -> :sswitch_6
        0x404 -> :sswitch_5
        0x412 -> :sswitch_7
    .end sparse-switch
.end method

.method public isCombinationKeyTriggered()Z
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->hasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyTriggered:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyTriggered:Z

    if-nez v0, :cond_1

    const-string v0, ""

    const-string v1, "RestrictedInput"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuTriggered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyTriggered:Z

    if-eqz v0, :cond_2

    .line 578
    :cond_1
    const/4 v0, 0x1

    .line 580
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConsumedKeyCombination(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 459
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 460
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 462
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    move v2, v3

    .line 568
    :cond_0
    :goto_1
    return v2

    .end local v0    # "down":Z
    :cond_1
    move v0, v3

    .line 460
    goto :goto_0

    .line 463
    .restart local v0    # "down":Z
    :cond_2
    sparse-switch v1, :sswitch_data_0

    :cond_3
    move v2, v3

    .line 568
    goto :goto_1

    .line 466
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 467
    if-nez v0, :cond_0

    .line 468
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeDownKeyConsumed:Z

    goto :goto_1

    .line 475
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 476
    if-nez v0, :cond_0

    .line 477
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mVolumeUpKeyConsumed:Z

    goto :goto_1

    .line 484
    :sswitch_2
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 485
    if-nez v0, :cond_0

    .line 486
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mPowerKeyConsumed:Z

    goto :goto_1

    .line 492
    :sswitch_3
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 493
    if-nez v0, :cond_0

    .line 494
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHomeKeyConsumed:Z

    goto :goto_1

    .line 500
    :sswitch_4
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 501
    if-nez v0, :cond_0

    .line 502
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraKeyConsumed:Z

    goto :goto_1

    .line 508
    :sswitch_5
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 509
    if-nez v0, :cond_0

    .line 510
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mFlashKeyConsumed:Z

    goto :goto_1

    .line 516
    :sswitch_6
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 517
    if-nez v0, :cond_0

    .line 518
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mCameraRecordKeyConsumed:Z

    goto :goto_1

    .line 524
    :sswitch_7
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 525
    if-nez v0, :cond_0

    .line 526
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mWiFiProtectedSetupKeyConsumed:Z

    goto :goto_1

    .line 532
    :sswitch_8
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 533
    if-nez v0, :cond_0

    .line 534
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mBackKeyConsumed:Z

    goto :goto_1

    .line 540
    :sswitch_9
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 541
    if-nez v0, :cond_0

    .line 542
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mRecentKeyConsumed:Z

    goto :goto_1

    .line 548
    :sswitch_a
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuConsumed:Z

    if-eqz v4, :cond_3

    .line 549
    if-nez v0, :cond_0

    .line 550
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mMenuConsumed:Z

    goto :goto_1

    .line 557
    :sswitch_b
    const-string v4, ""

    const-string v5, "RestrictedInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 558
    iget-boolean v4, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    if-eqz v4, :cond_3

    .line 559
    if-nez v0, :cond_0

    .line 560
    iput-boolean v3, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mEnterKeyConsumed:Z

    goto :goto_1

    .line 463
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_8
        0x6 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x1b -> :sswitch_4
        0x42 -> :sswitch_b
        0x52 -> :sswitch_a
        0xa8 -> :sswitch_1
        0xa9 -> :sswitch_0
        0xbb -> :sswitch_9
        0x3fe -> :sswitch_6
        0x404 -> :sswitch_5
        0x412 -> :sswitch_7
    .end sparse-switch
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mHasPermanentMenuKey:Z

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/CombinationKeyManager;->mIsSupportManualScreenPinning:Z

    .line 162
    return-void
.end method
