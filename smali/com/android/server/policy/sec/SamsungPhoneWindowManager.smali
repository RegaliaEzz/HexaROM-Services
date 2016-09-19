.class public Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenShotForEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_WAKEUP:Ljava/lang/String; = "Device_wakeup"

.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final DEBUG:Z = false

.field public static final EOH_STOP_BY_SCREEN_OFF:I = 0x0

.field public static final EXTRA_VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "HomeKey Click"

.field public static final EXTRA_VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "RecentKey Click"

.field private static final FINGERPRINT_KEY_IGNORE_DURATION:I = 0x3e8

.field private static final MENU_LONG_POLICY_LAUNCH_SFINDER:Ljava/lang/String; = "SFINDER"

.field static final QUICKACCESS_BLACKUI_COMPONENT:Ljava/lang/String; = "com.sec.android.app.GlanceView"

.field static final QUICKACCESS_BLACKUI_LAUNCH_ACTION:Ljava/lang/String; = "com.android.settings.LaunchGlanceView"

.field static final QUICKACCESS_BLACKUI_RECEIVER:Ljava/lang/String; = "com.sec.android.app.GlanceView.GlanceReceiver"

.field static final SAFE_DEBUG:Z

.field static final SAMSUNGPAY_LAUNCH_ACTION:Ljava/lang/String; = "com.samsung.android.spay.quickpay"

.field static final SCREENCAPTURE_BOTH:I = 0x3

.field static final SCREENCAPTURE_KEY:I = 0x1

.field static final SCREENCAPTURE_MAIN:I = 0x1

.field static final SCREENCAPTURE_ORIGINAL:I = 0x1

.field static final SCREENCAPTURE_PALM:I = 0x2

.field static final SCREENCAPTURE_SUB:I = 0x2

.field static final SCREENCAPTURE_SWEEP_LEFT:I = 0x2

.field static final SCREENCAPTURE_SWEEP_RIGHT:I = 0x3

.field public static final START_AOD_BOOT:I = 0x1

.field public static final START_AOD_SCREEN_OFF:I = 0x3

.field public static final START_AOD_SCREEN_ON:I = 0x2

.field static final TAG:Ljava/lang/String; = "SamsungWindowManager"

.field public static final TORCH_FILE:Ljava/lang/String; = "/sys/class/camera/flash/rear_flash"

.field public static final VOICE_CALL_HOMEKEY_ANSWER:Ljava/lang/String; = "VCHA"

.field public static final VOICE_CALL_HOMEKEY_CLICK:Ljava/lang/String; = "VCHK"

.field public static final VOICE_CALL_POWERKEY_ENDCALL:Ljava/lang/String; = "VCPE"

.field public static final VOICE_CALL_POWERKEY_SIELNCE:Ljava/lang/String; = "VCPS"

.field public static final VOICE_CALL_RECENTKEY_CLICK:Ljava/lang/String; = "VCRK"

.field public static final VOICE_CALL_VOLUMEKEY_SILENCE:Ljava/lang/String; = "VCVS"

.field static final localLOGV:Z

.field private static mCameraId:Ljava/lang/String;

.field private static mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private static mCpuBooster:Landroid/os/DVFSHelper;

.field private static mCurrentUser:I

.field static mFocusedWindowPkgName:Ljava/lang/String;

.field private static mIsTablet:Z


# instance fields
.field private final EnableLinuxCOMMONAPI4:Ljava/lang/String;

.field final MAX_SCREENSHOT_CONNECTION:I

.field final QUICKACCESS_CAMERA:I

.field final QUICKACCESS_CHANGE_AOD_MODE:I

.field final QUICKACCESS_SAMSUNGPAY:I

.field final QUICKACCESS_STATUS:I

.field final QUICKACCESS_SUBSCREEN_WAKEUP:I

.field private final UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

.field private final UVS_ORIENTATION_REQUEST:Ljava/lang/String;

.field WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

.field private bIsTorchOn:Z

.field mAlwaysComponet:Landroid/content/ComponentName;

.field mAlwaysIntent:Landroid/content/Intent;

.field public mAodStartState:I

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManager:Landroid/media/AudioManager;

.field mAvailableDoublTapOnHomeCommand:Z

.field mAvailableVoiceCommand:Z

.field private mBackKeyConsumed:Z

.field mBlackMemoIntent:Landroid/content/Intent;

.field mBlockKeyForDrivingMode:Z

.field private mBlockedHwKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field mBootCompleted:Z

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mCapturedDisplay:I

.field mCapturedOrigin:I

.field private final mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

.field mClearCoverComponent:Landroid/content/ComponentName;

.field mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

.field mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

.field mContext:Landroid/content/Context;

.field private mContextLoggingThread:Ljava/lang/Thread;

.field private mCoreNumLockHelper:Landroid/os/DVFSHelper;

.field mCoverNoteEnabled:Z

.field final mDcmAppPkg:Ljava/lang/String;

.field mDoubleTapHomeUser:I

.field mDoubleTapOnHomeBehavior:I

.field mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mFingerPrintIntent:Landroid/content/Intent;

.field mFingerPrintPending:Z

.field private final mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

.field mFlashAnnotateComponent:Landroid/content/ComponentName;

.field mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

.field mFlipFolderOpenedIntent:Landroid/content/Intent;

.field private mFolderCloseSound:Ljava/lang/String;

.field private mFolderOpenSound:Ljava/lang/String;

.field private mFolderSoundEnable:Z

.field mHandler:Landroid/os/Handler;

.field mHasDaynotePackage:Z

.field private mHasFakeMenuKeyBack:Z

.field private mHasFakeMenuKeyRecent:Z

.field mHasFlashAnnotateComponent:Z

.field private mHasPermanentMenuKey:Z

.field mIsCheckDrivingMode:Z

.field mIsDockHomeEnabled:Z

.field mIsEasyModeEnabled:Z

.field mIsEnabledAccessControl:Z

.field mIsKidsModeEnabled:Z

.field private final mIsLiveDemo:Z

.field private mIsRingingOrOffhook:Z

.field mIsSafetyAssuranceEnabled:Z

.field private mIsSupportManualScreenPinning:Z

.field mIsUseAccessControl:Z

.field private mIsWakeupPrevention:Z

.field private mKeyEventInjectionThread:Ljava/lang/Thread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

.field final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLowPowerMode:Z

.field private mMenuConsumed:Z

.field private mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

.field mNetworkSelectionLongPress:Z

.field mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

.field mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field mPenInsertedIntent:Landroid/content/Intent;

.field mPenInsertedIntentUserSwitch:Landroid/content/Intent;

.field mPenNotifyVibrationChecked:Z

.field mPenState:I

.field mPerformEditAfterScreenCapture:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPowerDoubleBehavior:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

.field private mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

.field private mProKioskReEnableVolumeUpKey:Z

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRecentConsumed:Z

.field private final mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

.field mRingtone:Landroid/media/Ringtone;

.field private mRotationBooster:Landroid/os/DVFSHelper;

.field private final mRotationForQuickAccess:Ljava/lang/Runnable;

.field private mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

.field final mScreenshotLock:Ljava/lang/Object;

.field private mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

.field final mServiceAquireLock:Ljava/lang/Object;

.field mServiceConnectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;",
            ">;"
        }
    .end annotation
.end field

.field mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

.field mSideSyncSourcePresentationActived:Z

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSweepDirection:I

.field mSweepReceiver:Landroid/content/BroadcastReceiver;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field mTorchlightEnabled:Z

.field mTorchlightOn:Z

.field mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTripleTapOnHomeBehavior:I

.field private final mTurnOffTorchlight:Ljava/lang/Runnable;

.field private mUserKeyConsumed:Z

.field mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private mUvsOrientation:I

.field mUvsReceiver:Landroid/content/BroadcastReceiver;

.field mVibrator:Landroid/os/Vibrator;

.field mVoiceCommandIntent:Landroid/content/Intent;

.field mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mVolumeUpLongPress:Ljava/lang/Runnable;

.field private mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

.field private mWakeupPreventionPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 210
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    .line 314
    sput-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    .line 316
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v2, "phone"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    .line 369
    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFocusedWindowPkgName:Ljava/lang/String;

    .line 432
    sput-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 2479
    sput v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    .line 2989
    sput-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 2991
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 238
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    .line 251
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleted:Z

    .line 252
    iput v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 255
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 256
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    .line 257
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    .line 258
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 262
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 266
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 274
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepDirection:I

    .line 280
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedDisplay:I

    .line 285
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCapturedOrigin:I

    .line 287
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 288
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 296
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 297
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 301
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 305
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 309
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 321
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 322
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    .line 326
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 330
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    .line 334
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    .line 338
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    .line 343
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 344
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 348
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 353
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    .line 357
    iput v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 358
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableLinuxCommonApi4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    .line 359
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_REQUEST:Ljava/lang/String;

    .line 360
    const-string v0, "LGT"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->UVS_ORIENTATION_PROVIDER:Ljava/lang/String;

    .line 378
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    .line 386
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    .line 387
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    .line 388
    const-string v0, "UNKNOWN"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    .line 393
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    .line 394
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    .line 396
    iput v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_STATUS:I

    .line 397
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_CAMERA:I

    .line 398
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_SAMSUNGPAY:I

    .line 400
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_SUBSCREEN_WAKEUP:I

    .line 403
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->QUICKACCESS_CHANGE_AOD_MODE:I

    .line 425
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    .line 426
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    .line 429
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    .line 434
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    .line 439
    const-string v0, "com.nttdocomo.android.mascot"

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDcmAppPkg:Ljava/lang/String;

    .line 441
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    .line 496
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$2;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 512
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$3;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    .line 2173
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    .line 2213
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2274
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    .line 2285
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    .line 2295
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2313
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 2314
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    .line 2315
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->MAX_SCREENSHOT_CONNECTION:I

    .line 2474
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2477
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 2483
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 2484
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 2485
    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    .line 2965
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    .line 2990
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3120
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$11;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    .line 3151
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$12;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    .line 3159
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$13;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    .line 3166
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$14;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    .line 3647
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$16;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    .line 3720
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .line 4086
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableLiveDemo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    .line 4133
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$17;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    .line 4161
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$18;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    .line 4310
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 4347
    iput-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    .line 4411
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$21;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    .line 4485
    iput v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    .line 4527
    return-void
.end method

.method private TorchModeFlashSet(I)V
    .locals 8
    .param p1, "torchTime"    # I

    .prologue
    const/4 v7, 0x0

    .line 3173
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Torch Time Out ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3174
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 3175
    .local v1, "input":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3177
    .local v2, "out":Ljava/io/FileWriter;
    if-lez p1, :cond_3

    .line 3178
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 3179
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3180
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    int-to-long v6, p1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3181
    const-string v1, "1"

    .line 3191
    :goto_0
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/class/camera/flash/rear_flash"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3192
    .end local v2    # "out":Ljava/io/FileWriter;
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v1, v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3197
    if-eqz v3, :cond_1

    .line 3199
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_1
    move-object v2, v3

    .line 3204
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :cond_2
    :goto_2
    return-void

    .line 3183
    :cond_3
    iput-boolean v7, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    .line 3184
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTurnOffTorchlight:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3185
    const-string v1, "0"

    goto :goto_0

    .line 3193
    :catch_0
    move-exception v0

    .line 3194
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    const-string v4, "SamsungWindowManager"

    const-string/jumbo v5, "exception occurred. /sys/class/camera/flash/rear_flash"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3197
    if-eqz v2, :cond_2

    .line 3199
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 3200
    :catch_1
    move-exception v4

    goto :goto_2

    .line 3197
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v2, :cond_4

    .line 3199
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3201
    :cond_4
    :goto_5
    throw v4

    .line 3200
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    goto :goto_1

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    :catch_3
    move-exception v5

    goto :goto_5

    .line 3197
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_4

    .line 3193
    .end local v2    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "out":Ljava/io/FileWriter;
    goto :goto_3
.end method

.method static synthetic access$002(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    .prologue
    .line 207
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setUvsOrieatation(I)V

    return-void
.end method

.method private checkLaunchSetting()I
    .locals 4

    .prologue
    .line 4332
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "active_key_on_lockscreen"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4333
    .local v0, "state":I
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLaunchSetting state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4334
    return v0
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .prologue
    .line 4297
    sget-object v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    .line 4298
    .local v5, "ids":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    .line 4299
    .local v4, "id":Ljava/lang/String;
    sget-object v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 4300
    .local v1, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 4301
    .local v2, "flashAvailable":Ljava/lang/Boolean;
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 4302
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 4307
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :goto_1
    return-object v4

    .line 4298
    .restart local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v2    # "flashAvailable":Ljava/lang/Boolean;
    .restart local v4    # "id":Ljava/lang/String;
    .restart local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4307
    .end local v1    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v2    # "flashAvailable":Ljava/lang/Boolean;
    .end local v4    # "id":Ljava/lang/String;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 3278
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 3279
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3282
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getVoIPInterfaceService()Landroid/os/IVoIPInterface;
    .locals 3

    .prologue
    .line 3864
    const-string/jumbo v1, "voip"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v0

    .line 3866
    .local v0, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-nez v0, :cond_0

    .line 3867
    const-string v1, "SamsungWindowManager"

    const-string v2, "Unable to find IVoIPInterface interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    :cond_0
    return-object v0
.end method

.method private handleTorchKey()V
    .locals 4

    .prologue
    .line 4260
    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_0

    .line 4261
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initCameraManager()V

    .line 4265
    :cond_0
    :try_start_0
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Torch light bIsTorchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    sget-object v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4267
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    sget-object v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4273
    :cond_1
    :goto_1
    return-void

    .line 4267
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 4269
    :catch_0
    move-exception v0

    .line 4270
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t initialize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleUserKey(Z)Z
    .locals 13
    .param p1, "longPress"    # Z

    .prologue
    .line 4189
    const/4 v9, 0x0

    .line 4190
    .local v9, "ret":Z
    const/4 v7, 0x0

    .line 4191
    .local v7, "package_index":I
    const/4 v6, 0x0

    .line 4192
    .local v6, "launch_app":Ljava/lang/String;
    const/4 v8, 0x0

    .line 4193
    .local v8, "package_name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4195
    .local v1, "activity_name":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 4196
    .local v3, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-static {}, Lcom/sec/android/emergencymode/EmergencyManager;->supportBatteryConversingMode()Z

    move-result v5

    .line 4198
    .local v5, "isSupportBCM":Z
    if-eqz p1, :cond_7

    .line 4199
    if-eqz v5, :cond_3

    .line 4200
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v4

    .line 4201
    .local v4, "emMode":I
    sget-boolean v10, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "SamsungWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "now mode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v10, "android.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4204
    .local v0, "BCM_intent":Landroid/content/Intent;
    const-string/jumbo v10, "flag"

    const/16 v11, 0x800

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4205
    const/high16 v10, 0x10000000

    invoke-virtual {v0, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4207
    const/4 v10, -0x1

    if-ne v4, v10, :cond_2

    .line 4208
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4212
    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4213
    const/4 v10, 0x1

    .line 4255
    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v4    # "emMode":I
    :goto_1
    return v10

    .line 4209
    .restart local v0    # "BCM_intent":Landroid/content/Intent;
    .restart local v4    # "emMode":I
    :cond_2
    const/4 v10, 0x2

    if-ne v4, v10, :cond_1

    .line 4210
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 4215
    .end local v0    # "BCM_intent":Landroid/content/Intent;
    .end local v4    # "emMode":I
    :cond_3
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "long_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4226
    :goto_2
    if-eqz v6, :cond_4

    .line 4227
    const/16 v10, 0x2f

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 4228
    const/4 v10, 0x0

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 4229
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4237
    :cond_4
    :goto_3
    sget-boolean v10, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v10, :cond_5

    const-string v10, "SamsungWindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found pkg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", cls="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " longPress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4239
    :cond_5
    const-string/jumbo v10, "torch"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string/jumbo v10, "torch"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4240
    const-string/jumbo v10, "service.camera.running"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4241
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 4242
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->checkLaunchSetting()I

    move-result v10

    if-eqz v10, :cond_6

    .line 4243
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    .line 4244
    const/4 v9, 0x1

    :cond_6
    :goto_4
    move v10, v9

    .line 4255
    goto/16 :goto_1

    .line 4218
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getModeType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_8

    .line 4219
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app_battery_conserve"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 4221
    :cond_8
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "short_press_app"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 4231
    :catch_0
    move-exception v2

    .line 4232
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "SamsungWindowManager"

    const-string v11, "Invalid user key app defined"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    const/4 v8, 0x0

    .line 4234
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 4247
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleTorchKey()V

    .line 4248
    const/4 v9, 0x1

    goto :goto_4

    .line 4251
    :cond_a
    if-nez v5, :cond_6

    .line 4252
    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw()V

    goto :goto_4
.end method

.method private initCameraManager()V
    .locals 5

    .prologue
    .line 4277
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    sput-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 4278
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v2, :cond_1

    .line 4279
    const/4 v0, 0x0

    .line 4281
    .local v0, "cameraId":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getCameraId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 4285
    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    .line 4288
    :goto_0
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4289
    sget-object v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 4294
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 4282
    .restart local v0    # "cameraId":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 4283
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "SamsungWindowManager"

    const-string v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4285
    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;

    throw v2

    .line 4292
    .end local v0    # "cameraId":Ljava/lang/String;
    :cond_1
    const-string v2, "SamsungWindowManager"

    const-string v3, "camera service is not availabled"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2300
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$10;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    .line 2309
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyEventInjectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2310
    return-void
.end method

.method private isBackKeyConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2276
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    if-eqz v1, :cond_0

    .line 2277
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    .line 2278
    const/4 v0, 0x1

    .line 2280
    :cond_0
    return v0
.end method

.method private isDefaultLauncher(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3408
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3409
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 3411
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3412
    .local v1, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3414
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3415
    .local v3, "preferredActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3416
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v3, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 3418
    const-string v7, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDefaultLauncher :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_1
    return v5

    :cond_0
    move v4, v6

    .line 3418
    goto :goto_0

    :cond_1
    move v5, v6

    .line 3419
    goto :goto_1
.end method

.method public static isEncryptionMode()Z
    .locals 3

    .prologue
    .line 4053
    const/4 v0, 0x0

    .line 4054
    .local v0, "ret":Z
    const-string/jumbo v1, "trigger_restart_min_framework"

    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "encrypted"

    const-string/jumbo v2, "ro.crypto.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4056
    const/4 v0, 0x1

    .line 4058
    :cond_0
    return v0
.end method

.method private isHardwareKeyAllowed(IZ)Z
    .locals 5
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 3258
    const/4 v0, 0x1

    .line 3261
    .local v0, "allowed":Z
    :try_start_0
    const-string/jumbo v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .line 3263
    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_0

    .line 3264
    const/4 v3, 0x0

    invoke-interface {v2, v3, p1, p2}, Landroid/app/enterprise/kioskmode/IKioskMode;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3270
    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    return v0

    .line 3266
    :catch_0
    move-exception v1

    .line 3267
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKioskLocked()Z
    .locals 8

    .prologue
    .line 4063
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 4064
    .local v3, "mPm":Landroid/os/PersonaManager;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 4065
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v5

    .line 4066
    .local v5, "personaids":[I
    if-eqz v5, :cond_2

    .line 4067
    move-object v0, v5

    .local v0, "arr$":[I
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    .line 4068
    .local v4, "personaid":I
    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->isKioskModeEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->LICENSE_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ADMIN_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4072
    :cond_0
    const-string v6, "SamsungWindowManager"

    const-string v7, "Kiosk exists and it is locked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4073
    const/4 v6, 0x1

    .line 4078
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :goto_1
    return v6

    .line 4067
    .restart local v0    # "arr$":[I
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "personaid":I
    .restart local v5    # "personaids":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4078
    .end local v0    # "arr$":[I
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "personaid":I
    .end local v5    # "personaids":[I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private isKnoxCreatingOnTop()Z
    .locals 7

    .prologue
    .line 3315
    const/4 v2, 0x0

    .line 3316
    .local v2, "isKnoxCreatingOnTop":Z
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaManager;

    .line 3317
    .local v3, "mPm":Landroid/os/PersonaManager;
    invoke-virtual {v3}, Landroid/os/PersonaManager;->getPersonaIds()[I

    move-result-object v1

    .line 3319
    .local v1, "ids":[I
    if-eqz v1, :cond_1

    array-length v4, v1

    if-lez v4, :cond_1

    .line 3320
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 3321
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    .line 3322
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v0

    invoke-virtual {v3, v6}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PersonaManager$StateManager;->getState()Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_0
    aget v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v4

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxSetupWizardTopActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3325
    const/4 v2, 0x1

    .line 3331
    .end local v0    # "i":I
    :cond_1
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_2

    .line 3332
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isKnoxCreatingOnTop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    :cond_2
    return v2

    .line 3320
    .restart local v0    # "i":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isKnoxKeyguardShowing()Z
    .locals 3

    .prologue
    .line 3305
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 3306
    .local v0, "mPm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PersonaManager;->getKeyguardShowState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3307
    const-string v1, "SamsungWindowManager"

    const-string v2, "KnoxKeyguard is showing"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    const/4 v1, 0x1

    .line 3310
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKnoxSetupWizardTopActivity()Z
    .locals 5

    .prologue
    .line 3338
    const/4 v1, 0x0

    .line 3339
    .local v1, "isKnoxSetupWizardTopActivity":Z
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.knox.knoxsetupwizardclient"

    const-string v3, "com.sec.knox.knoxsetupwizardclient.SetupWizardKnoxNameSettingActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3342
    .local v0, "KnoxSetupWizard":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3343
    const/4 v1, 0x1

    .line 3346
    :cond_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 3347
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCurrentTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKnoxSetupWizardTopActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_1
    return v1
.end method

.method private isScreenCaptureEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2489
    const/4 v0, 0x1

    .line 2490
    .local v0, "isScreenCaptureEnabled":Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->IsStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2491
    const-string v3, "SamsungWindowManager"

    const-string v4, "ShutdownThread is started."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :goto_0
    return v2

    .line 2495
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2496
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "mEDM.getRestrictionPolicy().isScreenCaptureEnabled() return false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    const/4 v0, 0x0

    .line 2498
    goto :goto_0

    .line 2502
    :cond_1
    const-string/jumbo v3, "persona"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    .line 2503
    .local v1, "pService":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/pm/PersonaManagerService;->isKnoxMultiWindowExist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2504
    const-string v3, "SamsungWindowManager"

    const-string v4, "KnoxMultiwindowExists. isScreenCaptureEnabled() returns false"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v5, 0x1040b82

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    move v2, v0

    .line 2509
    goto :goto_0
.end method

.method private isUserKeyConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2287
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    if-eqz v1, :cond_0

    .line 2288
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    .line 2289
    const/4 v0, 0x1

    .line 2291
    :cond_0
    return v0
.end method

.method private isWatchRunning()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4147
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4148
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4149
    .local v1, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    .line 4150
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4151
    .local v2, "taskName":Ljava/lang/String;
    const-string v5, "SamsungWindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isWatchRunning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4152
    const-string v5, "com.sec.android.app.premiumwatch"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4157
    .end local v2    # "taskName":Ljava/lang/String;
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private playSound(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 2879
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2880
    .local v3, "soundUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2882
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2884
    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->stop()V

    .line 2885
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2891
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    .line 2892
    if-eqz v0, :cond_2

    .line 2893
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 2895
    .local v2, "masterStreamVolume":I
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    if-eqz v4, :cond_1

    .line 2896
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4, v7}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 2897
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v4}, Landroid/media/Ringtone;->play()V

    .line 2906
    .end local v2    # "masterStreamVolume":I
    :goto_1
    return-void

    .line 2886
    :catch_0
    move-exception v1

    .line 2887
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to stop Ringtone - already done : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2900
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "masterStreamVolume":I
    :cond_1
    const-string v4, "SamsungWindowManager"

    const-string v5, "There are no ringtones"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2904
    .end local v2    # "masterStreamVolume":I
    :cond_2
    const-string v4, "SamsungWindowManager"

    const-string v5, "AudioManager loading fail"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private playSoundEffect()V
    .locals 3

    .prologue
    .line 2563
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 2564
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 2565
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2566
    const/16 v1, 0x66

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V

    .line 2574
    :goto_0
    return-void

    .line 2569
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "keyguard - disable key sound"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2572
    :cond_1
    const-string v1, "SamsungWindowManager"

    const-string v2, "Couldn\'t get audio manager"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setUvsOrieatation(I)V
    .locals 1
    .param p1, "request"    # I

    .prologue
    .line 3635
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    if-eq v0, p1, :cond_1

    .line 3636
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 3640
    :cond_0
    iput p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    .line 3645
    :cond_1
    :goto_0
    return-void

    .line 3642
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    goto :goto_0
.end method

.method private startCustomApp()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3367
    :try_start_0
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-nez v9, :cond_1

    .line 3368
    const-string v8, "SamsungWindowManager"

    const-string/jumbo v9, "mKnoxCustomSystemManager null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3404
    :cond_0
    :goto_0
    return v7

    .line 3372
    :cond_1
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v3

    .line 3373
    .local v3, "mode":I
    if-eqz v3, :cond_0

    .line 3378
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3379
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3380
    .local v5, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3382
    .local v6, "taskName":Ljava/lang/String;
    if-ne v3, v8, :cond_2

    invoke-direct {p0, v6}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDefaultLauncher(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 3384
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Foreground taskName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3400
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "mode":I
    .end local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "taskName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3401
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startCustomApp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3387
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v3    # "mode":I
    .restart local v5    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v6    # "taskName":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v9}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v1

    .line 3389
    .local v1, "appToStart":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3390
    :cond_3
    const-string v8, "SamsungWindowManager"

    const-string v9, "appToStart null"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3393
    :cond_4
    const-string v9, "SamsungWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "starting custom app : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 3396
    .local v4, "regularIntent":Landroid/content/Intent;
    if-eqz v4, :cond_5

    .line 3397
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    move v7, v8

    .line 3404
    goto/16 :goto_0
.end method

.method private startSGA(Ljava/lang/String;)V
    .locals 5
    .param p1, "gamePkg"    # Ljava/lang/String;

    .prologue
    .line 3960
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3961
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 3962
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3964
    if-eqz v1, :cond_1

    .line 3966
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3973
    :cond_0
    :goto_0
    return-void

    .line 3967
    :catch_0
    move-exception v0

    .line 3968
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "SGA is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3971
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "no Launch intent of SGA"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopScreenManager()Z
    .locals 7

    .prologue
    .line 4397
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4398
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 4399
    .local v4, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    const-string v5, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4400
    new-instance v1, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.dualscreencontrolpanel"

    const-string v6, "com.samsung.android.dualscreencontrolpanel.DualScreenControlPanelService"

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    .local v1, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4403
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4404
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 4405
    const/4 v5, 0x1

    .line 4408
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private toggleScreenManager()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4385
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 4394
    :cond_0
    :goto_0
    return-void

    .line 4388
    :cond_1
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v1

    .line 4389
    .local v1, "taskInfoMain":Lcom/samsung/android/dualscreen/TaskInfo;
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v2}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v0

    .line 4390
    .local v0, "TaskInfoSub":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskType()I

    move-result v2

    if-nez v2, :cond_0

    .line 4391
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v4, v4}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 4392
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentKeyLongPressForScreenManager:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateWacomOffset(I)V
    .locals 5
    .param p1, "rotation"    # I

    .prologue
    .line 2945
    const/4 v1, 0x0

    .line 2947
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/epen_rotation"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2948
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    add-int/lit8 v3, p1, 0x30

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2955
    if-eqz v2, :cond_0

    .line 2956
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 2962
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    :cond_1
    :goto_0
    return-void

    .line 2958
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2959
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 2961
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 2949
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2955
    :goto_1
    if-eqz v1, :cond_1

    .line 2956
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2958
    :catch_2
    move-exception v0

    .line 2959
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2951
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 2952
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2955
    if-eqz v1, :cond_1

    .line 2956
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 2958
    :catch_4
    move-exception v0

    .line 2959
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2954
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 2955
    :goto_3
    if-eqz v1, :cond_2

    .line 2956
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 2960
    :cond_2
    :goto_4
    throw v3

    .line 2958
    :catch_5
    move-exception v0

    .line 2959
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 2954
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 2951
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 2949
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method private updateWakeupPreventionPackages(Ljava/lang/String;)V
    .locals 6
    .param p1, "wakeupPreventionPackages"    # Ljava/lang/String;

    .prologue
    .line 4561
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 4562
    if-eqz p1, :cond_0

    .line 4563
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWakeupPreventionPackages = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    const-string/jumbo v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 4566
    .local v2, "wakeupPreventionPackagesList":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 4567
    array-length v0, v2

    .line 4568
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4569
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4573
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "wakeupPreventionPackagesList":[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastHardKeyIntent(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3441
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getHardKeyIntentState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3443
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x1

    .line 3444
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3445
    .local v2, "keyCode":I
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 3447
    sparse-switch v2, :sswitch_data_0

    .line 3466
    .end local v0    # "down":Z
    .end local v2    # "keyCode":I
    :cond_0
    :goto_1
    return-void

    .line 3443
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3456
    .restart local v0    # "down":Z
    .restart local v2    # "keyCode":I
    :sswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.sec.action.HARD_KEY_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3457
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.intent.extra.KEY_CODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3458
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 3447
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x52 -> :sswitch_0
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public callAccessibilityScreenCurtain()V
    .locals 4

    .prologue
    .line 2068
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2069
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityScreenCurtain() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2072
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setScreenCurtain()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2079
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :goto_0
    return-void

    .line 2073
    .restart local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .line 2074
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2077
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :cond_0
    const-string v2, "SamsungWindowManager"

    const-string/jumbo v3, "sendBroadcastForAccessibility() is not called, because it is not provisioned"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public callAccessibilityTalkbackMode()V
    .locals 4

    .prologue
    .line 2058
    const-string v2, "SamsungWindowManager"

    const-string v3, "callAccessibilityTalkbackMode() is called"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    const-string v2, "accessibility"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 2061
    .local v1, "iAccessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->setTalkbackMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :goto_0
    return-void

    .line 2062
    :catch_0
    move-exception v0

    .line 2063
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public changeAppOpsMode(IILjava/lang/String;)I
    .locals 7
    .param p1, "outAppOp"    # I
    .param p2, "callingUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4586
    const/4 v1, 0x3

    .line 4588
    .local v1, "ret":I
    const-string v4, "com.nttdocomo.android.mascot"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4590
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4591
    .local v2, "identity":J
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 4592
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mode change : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4593
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4594
    const/4 v1, 0x0

    .line 4599
    .end local v2    # "identity":J
    :cond_0
    :goto_0
    return v1

    .line 4595
    :catch_0
    move-exception v0

    .line 4596
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception occured for AppOpsManager "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public downloadForSGA(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgUri"    # Ljava/lang/String;

    .prologue
    .line 3992
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string/jumbo v3, "try download SGA"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3995
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3996
    const v2, 0x30000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3998
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4004
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3999
    :catch_0
    move-exception v0

    .line 4001
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungWindowManager"

    const-string v3, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto :goto_0
.end method

.method public downloadForSamsungApps()V
    .locals 5

    .prologue
    .line 3976
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "try download SamsungApps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    :cond_0
    const-string/jumbo v2, "http://apps.samsung.com/mw/apk_en.as"

    .line 3979
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3981
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3982
    const v3, 0x30000020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3984
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3989
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3985
    :catch_0
    move-exception v0

    .line 3987
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "There is not browsable apps for samsungapps download"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3214
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPenState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3215
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPerformEditAfterScreenCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3216
    const-string v0, " mHasFlashAnnotateComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3217
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsSafetyAssuranceEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3218
    const-string v0, " mIsUseAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3219
    const-string v0, " mIsEnabledAccessControl="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3220
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3221
    const-string v0, " mIsEasyModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3222
    const-string v0, " mIsDockHomeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3223
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3224
    const-string v0, " mAvailableDoublTapOnHomeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3225
    const-string/jumbo v0, "mDoubleTapHomeUser="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3226
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mComponentNameOfDoubleTapOnHomeCommandIntent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3227
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTripleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3228
    const-string v0, " mAvailableVoiceCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3229
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasFakeMenuKeyRecent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3230
    const-string v0, " mHasFakeMenuKeyBack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3232
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSideSyncSourcePresentationActived="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3235
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIsWakeupPrevention="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3236
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeupPreventionPackages="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3238
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/sec/CombinationKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3239
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V

    .line 3240
    return-void
.end method

.method public endCallByGamekey()Z
    .locals 6

    .prologue
    .line 3900
    const/4 v1, 0x0

    .line 3902
    .local v1, "hungUp":Z
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 3903
    .local v2, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3904
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v1

    .line 3908
    :cond_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v3

    .line 3910
    .local v3, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3911
    invoke-interface {v3}, Landroid/os/IVoIPInterface;->hangupVoIPCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    or-int/2addr v1, v4

    .line 3916
    :cond_1
    :goto_0
    return v1

    .line 3913
    :catch_0
    move-exception v0

    .line 3914
    .local v0, "ex":Landroid/os/RemoteException;
    sget-boolean v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "SamsungWindowManager"

    const-string v5, "ITelephony2 threw RemoteException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAodStartState()I
    .locals 1

    .prologue
    .line 4488
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    return v0
.end method

.method getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    .line 3049
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3050
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    .line 3054
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAudioManager:Landroid/media/AudioManager;

    monitor-exit v1

    return-object v0

    .line 3055
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getKnoxCustomManager()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;
    .locals 1

    .prologue
    .line 3427
    invoke-static {}, Landroid/app/enterprise/knoxcustom/KnoxCustomManager;->getInstance()Landroid/app/enterprise/knoxcustom/KnoxCustomManager;

    move-result-object v0

    return-object v0
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 3039
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3040
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 3041
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 3044
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 3045
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 3035
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTimeoutTimeOfKeyCombination(I)J
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/sec/CombinationKeyManager;->getTimeoutTimeOfKeyCombination(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUvsOrientation()I
    .locals 1

    .prologue
    .line 3631
    iget v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    return v0
.end method

.method public goingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->disable()V

    .line 758
    :cond_0
    return-void
.end method

.method public handleLongPressOnHome()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2110
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenOffOnLongPressHome()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2111
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in KNOX"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_0
    :goto_0
    return v2

    .line 2114
    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2115
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in ProKiosk Mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2122
    :cond_2
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2123
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block when Verizon Setup Wizard Running"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2130
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 2131
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2132
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in Ringing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2135
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2136
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in VoIPRinging"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2142
    :cond_5
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 2143
    .local v0, "em":Lcom/sec/android/emergencymode/EmergencyManager;
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2144
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in emergency & upsm mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2150
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKidsModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2151
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in kidsmode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2157
    :cond_7
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2158
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress blocked by Interaction control"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2163
    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2164
    const-string v3, "SamsungWindowManager"

    const-string v4, "Home longpress block in UserSetup not complete"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2168
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public handleLongPressOnMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2176
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_2

    .line 2177
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-eqz v2, :cond_2

    .line 2178
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2180
    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungWindowManager"

    const-string v3, "Menu longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2181
    :cond_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2182
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 2183
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2201
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 2184
    :catch_0
    move-exception v1

    .line 2185
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2194
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v2}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2199
    :cond_3
    iput-boolean v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    .line 2200
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_0
.end method

.method public handleLongPressOnRecent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2225
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isRecentAppStart()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2226
    iput-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2262
    :cond_0
    :goto_0
    return-void

    .line 2232
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    if-eqz v2, :cond_3

    .line 2233
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    if-nez v2, :cond_3

    .line 2234
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2236
    :try_start_0
    sget-boolean v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "SamsungWindowManager"

    const-string v3, "Recent longpress used in Lock task mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2238
    .local v0, "activityManager":Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2239
    .end local v0    # "activityManager":Landroid/app/IActivityManager;
    :catch_0
    move-exception v1

    .line 2240
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Unable to reach activity manager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2248
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2251
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2258
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    if-eqz v2, :cond_0

    .line 2260
    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto :goto_0
.end method

.method public handleLongPressOnStar()V
    .locals 5

    .prologue
    .line 4026
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "reason"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4028
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4029
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4030
    const-string v2, "com.sec.android.applicationshortcut"

    const-string v3, "com.sec.android.applicationshortcut.MainviewActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4031
    if-eqz v1, :cond_0

    .line 4032
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch applicationshortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4034
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4039
    :cond_0
    :goto_0
    return-void

    .line 4035
    :catch_0
    move-exception v0

    .line 4036
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch applicationshortcut."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public handleQuickAccess(IFF)V
    .locals 8
    .param p1, "info"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    .line 4094
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4095
    .local v0, "intent":Landroid/content/Intent;
    new-array v1, v7, [F

    const/4 v3, 0x0

    aput p2, v1, v3

    aput p3, v1, v5

    .line 4096
    .local v1, "location":[F
    const/4 v2, 0x0

    .line 4098
    .local v2, "premission":Ljava/lang/String;
    if-ne p1, v6, :cond_1

    .line 4099
    const-string v3, "com.samsung.android.spay.quickpay"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4100
    new-instance v2, Ljava/lang/String;

    .end local v2    # "premission":Ljava/lang/String;
    const-string v3, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4126
    .restart local v2    # "premission":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4128
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendbroadcast intent :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " premission="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4129
    :cond_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4130
    return-void

    .line 4102
    :cond_1
    const/4 v3, 0x7

    if-ne p1, v3, :cond_5

    .line 4103
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4104
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "main screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    .line 4110
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4111
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationForQuickAccess:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 4107
    :cond_3
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "sub screen wake up"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    :cond_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3, v7, v6}, Landroid/os/PowerManager;->setMultipleScreenStateOverride(II)V

    goto :goto_1

    .line 4114
    :cond_5
    const/16 v3, 0x8

    if-ne p1, v3, :cond_6

    .line 4115
    const-string v3, "com.samsung.android.app.aodservice.CHANGE_AOD_MODE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4116
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4117
    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_0

    .line 4121
    :cond_6
    const-string v3, "com.android.settings.LaunchGlanceView"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4123
    const-string/jumbo v3, "info"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4124
    const-string/jumbo v3, "location"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public handleWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 762
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;->enable()V

    .line 768
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_1

    .line 769
    invoke-virtual {p0, v1, v1, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    .line 772
    :cond_1
    return-void
.end method

.method public hasCustomDoubleTapHomeCommand()Z
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 3250
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3251
    const/4 v0, 0x1

    .line 3253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ignorePowerKeyInEncrypting()Z
    .locals 6

    .prologue
    .line 3686
    const-string/jumbo v3, "vold.encrypt_progress"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3687
    .local v2, "state":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3688
    const/4 v1, 0x0

    .line 3690
    .local v1, "progress":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3694
    :goto_0
    if-lez v1, :cond_0

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    .line 3695
    const-string v3, "SamsungWindowManager"

    const-string v4, "Ignore Power Off Key!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    const/4 v3, 0x1

    .line 3699
    .end local v1    # "progress":I
    :goto_1
    return v3

    .line 3691
    .restart local v1    # "progress":I
    :catch_0
    move-exception v0

    .line 3692
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3699
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "progress":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneWindowManager"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p3, "windowManager"    # Landroid/view/IWindowManager;
    .param p4, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 562
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    .line 563
    iput-object p2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    .line 564
    iput-object p3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 565
    iput-object p4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 566
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 567
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 568
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 569
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 571
    new-instance v0, Lcom/android/server/policy/sec/CombinationKeyManager;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/server/policy/sec/CombinationKeyManager;-><init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    .line 573
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "SamsungPhoneWindowManager.mBroadcastWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 575
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mTorchlightWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 579
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 580
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "com.samsung.android.motion.SWEEP_LEFT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 581
    const-string v0, "com.samsung.android.motion.SWEEP_RIGHT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    const-string v0, "com.samsung.android.motion.SWEEP_DOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    const-string v0, "com.samsung.android.motion.SWEEP_FULL_SCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSweepReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.samsung.permission.PALM_MOTION"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 587
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 588
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 593
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 594
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 598
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 599
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 603
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v0, "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 604
    .local v6, "kioskFilter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeysReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 608
    invoke-static {}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getInstance()Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    .line 609
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    .line 612
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    .line 613
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 615
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 616
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isQuickLaunchMode"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.action.SVOICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    .line 619
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    .line 623
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    .line 624
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.pen.INSERT.USER_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    .line 625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.always.action.LAUNCH_ALWAYS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAlwaysIntent:Landroid/content/Intent;

    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    .line 627
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.secretmode.action.REQ_SHOW_VISUAL_CUE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    .line 628
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.secretmode.service"

    const-string v4, "com.samsung.android.secretmode.service.SecretModeService"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlackMemoIntent:Landroid/content/Intent;

    .line 631
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlackMemoIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.snote"

    const-string v4, "com.samsung.android.snote.control.ui.quickmemo.service.InstantMemo_Service"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 633
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.always"

    const-string v2, "com.samsung.android.app.always.ui.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAlwaysComponet:Landroid/content/ComponentName;

    .line 635
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotate"

    const-string v2, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    .line 637
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    .line 640
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    .line 643
    const-string v0, "com.sec.android.daynote"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    .line 647
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "PhoneWindowManager.mVoiceWakeUpWakeLock"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 652
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mOrientationListenerForPenGesture:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$MyOrientationListenerForPenGesture;

    .line 659
    :cond_0
    const-string v0, "LGT"

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 661
    .local v7, "mUvsFilter":Landroid/content/IntentFilter;
    const-string v0, "com.lguplus.uvs.REQUEST_ORIENTATION"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "android.permission.SET_ORIENTATION"

    invoke-virtual {v0, v1, v7, v2, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 667
    .end local v7    # "mUvsFilter":Landroid/content/IntentFilter;
    :cond_1
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$6;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 675
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    .line 676
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 681
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 682
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "com.sec.android.intent.action.PAUSE_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 683
    const-string v0, "com.sec.android.intent.action.STOP_WATCH"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPremiumWatchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 687
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    invoke-direct {v0, p0, v5}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Lcom/android/server/policy/sec/SamsungPhoneWindowManager$1;)V

    move-object v5, v0

    :cond_3
    iput-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    .line 689
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 692
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    .line 693
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SettingsObserver;->observe()V

    .line 695
    new-instance v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    .line 696
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionObserver:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$WakeupPreventionObserver;->observe()V

    .line 699
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->initCameraManager()V

    .line 701
    return-void
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 4350
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4351
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 4354
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$20;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    .line 4379
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContextLoggingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4380
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/KeyEvent;)Z
    .locals 32
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v19

    .line 1135
    .local v19, "keyguardOn":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v18

    .line 1136
    .local v18, "keyCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v23

    .line 1137
    .local v23, "repeatCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v13

    .line 1138
    .local v13, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_2

    const/4 v10, 0x1

    .line 1139
    .local v10, "down":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 1143
    .local v6, "canceled":Z
    const/16 v28, 0x19

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_0

    const/16 v28, 0x18

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    :cond_0
    if-eqz v23, :cond_3

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v28

    if-eqz v28, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v28

    if-eqz v28, :cond_3

    .line 1149
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_1

    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "knox: volume key is blocked"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_1
    const/16 v28, 0x1

    .line 1702
    :goto_1
    return v28

    .line 1138
    .end local v6    # "canceled":Z
    .end local v10    # "down":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 1158
    .restart local v6    # "canceled":Z
    .restart local v10    # "down":Z
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v28

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v28, v0

    if-eqz v28, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Map;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_8

    .line 1160
    const/4 v15, 0x1

    .line 1161
    .local v15, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    if-nez v28, :cond_7

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v28

    if-eqz v28, :cond_6

    .line 1164
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    .line 1165
    const/16 v28, 0x18

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 1166
    const/4 v15, 0x1

    .line 1167
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    .line 1178
    :cond_4
    :goto_2
    if-nez v15, :cond_8

    .line 1179
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_5

    const-string v28, "SamsungWindowManager"

    const-string v29, "MDM: key is blocked"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_5
    const/16 v28, 0x1

    goto :goto_1

    .line 1170
    :cond_6
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_2

    .line 1176
    :cond_7
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v15

    goto :goto_2

    .line 1185
    .end local v15    # "isAllowed":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/CombinationKeyManager;->isConsumedKeyCombination(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 1186
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1190
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 1191
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_a

    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "interceptKeyTi : Key was blocked by sidesync."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_a
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1196
    :cond_b
    const/16 v28, 0x3

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_1e

    .line 1198
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    if-eqz v28, :cond_f

    .line 1199
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1200
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 1201
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v20

    .line 1202
    .local v20, "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v20, :cond_d

    .line 1203
    const/4 v15, 0x1

    .line 1204
    .restart local v15    # "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v28

    if-nez v28, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v28

    if-nez v28, :cond_c

    .line 1205
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    .line 1209
    :goto_3
    if-nez v15, :cond_d

    .line 1210
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "home key disabled by edm"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1207
    :cond_c
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/app/enterprise/RestrictionPolicy;->isHomeKeyEnabled(Z)Z

    move-result v15

    goto :goto_3

    .line 1214
    .end local v15    # "isAllowed":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v28

    if-gtz v28, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v28

    if-eqz v28, :cond_f

    .line 1216
    :cond_e
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "home key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1223
    .end local v20    # "lRestPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v28

    if-eqz v28, :cond_10

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v28

    if-eqz v28, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    if-nez v28, :cond_10

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    new-instance v29, Landroid/content/Intent;

    const-string v30, "com.samsung.knox.kss.KnoxKeyguardHomeButton"

    invoke-direct/range {v29 .. v30}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v30, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1227
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1234
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v28

    if-eqz v28, :cond_13

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "vrmode_developer_mode"

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    if-eqz v28, :cond_12

    const/16 v27, 0x1

    .line 1236
    .local v27, "vrDevelopMode":Z
    :goto_4
    if-nez v27, :cond_13

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v28

    if-nez v28, :cond_13

    .line 1237
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_11

    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by VR"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_11
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1235
    .end local v27    # "vrDevelopMode":Z
    :cond_12
    const/16 v27, 0x0

    goto :goto_4

    .line 1243
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_15

    .line 1244
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 1245
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_14

    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is send to SideSync"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_14
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1252
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v28

    if-eqz v28, :cond_16

    .line 1253
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "isMirrorLinkEnabled() true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1258
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    .line 1259
    const-string v28, "SamsungWindowManager"

    const-string v29, "carmode true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1265
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_18

    .line 1266
    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by policy"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1270
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKioskLocked()Z

    move-result v28

    if-eqz v28, :cond_1a

    .line 1271
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_19

    const-string v28, "SamsungWindowManager"

    const-string v29, "Home key is blocked by Kiosk"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_19
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1275
    :cond_1a
    if-nez v10, :cond_1c

    .line 1277
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isVoIPRinging()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 1278
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isAnyKeyMode()Z

    move-result v28

    if-eqz v28, :cond_1c

    .line 1280
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v26

    .line 1281
    .local v26, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v26, :cond_1b

    .line 1282
    invoke-interface/range {v26 .. v26}, Landroid/os/IVoIPInterface;->answerVoIPCall()Z

    .line 1283
    const-string v28, "SamsungWindowManager"

    const-string v29, "HOME; while ringing: Answer the VoIPcall!"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1286
    :cond_1b
    const-string v28, "SamsungWindowManager"

    const-string v29, "Unable to find IVoIPInterface interface"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1297
    .end local v26    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_1c
    :goto_5
    if-nez v10, :cond_1d

    .line 1702
    :cond_1d
    :goto_6
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1288
    :catch_0
    move-exception v12

    .line 1289
    .local v12, "ex":Landroid/os/RemoteException;
    const-string v28, "SamsungWindowManager"

    const-string v29, "RemoteException from getVoIPInterfaceService()"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1306
    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_1e
    const/16 v28, 0x52

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_21

    .line 1308
    if-eqz v10, :cond_1d

    .line 1310
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isLockTaskModeEnabled()Z

    move-result v28

    if-eqz v28, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isAccessiblityEnabled()Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 1311
    const/16 v28, 0x0

    goto/16 :goto_1

    .line 1313
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSFinderLaunchable()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1314
    const/16 v28, 0x1

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    if-nez v6, :cond_1d

    .line 1317
    const/16 v22, 0x0

    .line 1319
    .local v22, "multiWindowDisabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v28

    if-eqz v28, :cond_20

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v21

    .line 1322
    .local v21, "lpApp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v21, :cond_20

    .line 1323
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    move/from16 v28, v0

    and-int/lit8 v28, v28, 0x2

    if-eqz v28, :cond_20

    .line 1324
    const/16 v22, 0x1

    .line 1329
    .end local v21    # "lpApp":Landroid/view/WindowManager$LayoutParams;
    :cond_20
    if-nez v22, :cond_1d

    .line 1331
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1332
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1333
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1343
    .end local v22    # "multiWindowDisabled":Z
    :cond_21
    const/16 v28, 0xbb

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_22

    const/16 v28, 0x3e9

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_2f

    .line 1345
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v28

    if-eqz v28, :cond_24

    .line 1346
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_23

    const-string v28, "SamsungWindowManager"

    const-string v29, "Recent key is blocked in ProKiosk mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_23
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1351
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    if-eqz v28, :cond_26

    .line 1352
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 1353
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    .line 1354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v28

    if-gtz v28, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSecPolicy:Landroid/app/enterprise/SecurityPolicy;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z

    move-result v28

    if-eqz v28, :cond_26

    .line 1356
    :cond_25
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "recent apps key disabled by either pwd policy OR DoD Banner"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1362
    :cond_26
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxKeyguardShowing()Z

    move-result v28

    if-nez v28, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKnoxCreatingOnTop()Z

    move-result v28

    if-eqz v28, :cond_28

    .line 1363
    :cond_27
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1368
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v28

    if-eqz v28, :cond_29

    .line 1369
    const-string v28, "SamsungWindowManager"

    const-string/jumbo v29, "isMirrorLinkEnabled() true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1374
    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2a

    .line 1375
    const-string v28, "SamsungWindowManager"

    const-string v29, "carmode true"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1381
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_2c

    .line 1382
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_2b

    const-string v28, "SamsungWindowManager"

    const-string v29, "Recent key is blocked by policy"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_2b
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1386
    :cond_2c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isKioskLocked()Z

    move-result v28

    if-eqz v28, :cond_2e

    .line 1387
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_2d

    const-string v28, "SamsungWindowManager"

    const-string v29, "Recent key is blocked by Kiosk"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :cond_2d
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1392
    :cond_2e
    if-eqz v10, :cond_1d

    if-nez v23, :cond_1d

    goto/16 :goto_6

    .line 1400
    :cond_2f
    const/16 v28, 0x4

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_30

    const/16 v28, 0x6f

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_33

    .line 1410
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->getTopFullscreenOpaqueWindowState()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v29

    move-object/from16 v0, v28

    move/from16 v1, v23

    move-object/from16 v2, v29

    invoke-virtual {v0, v10, v1, v6, v2}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->interceptKeyBeforeDispatching(ZIZLandroid/view/WindowManagerPolicy$WindowState;)I

    move-result v28

    if-gez v28, :cond_31

    .line 1412
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1417
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1d

    .line 1418
    if-nez v10, :cond_32

    .line 1419
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBackKeyConsumed()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1420
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1422
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    move/from16 v28, v0

    if-nez v28, :cond_1d

    const/16 v28, 0xa

    move/from16 v0, v23

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 1423
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBackKeyConsumed:Z

    .line 1425
    const/16 v28, 0x52

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->injectionKeyEvent(I)V

    goto/16 :goto_6

    .line 1430
    :cond_33
    const/16 v28, 0x415

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    .line 1431
    if-eqz v10, :cond_34

    .line 1432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1433
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x3e8

    invoke-virtual/range {v28 .. v31}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1436
    :cond_34
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1437
    :cond_35
    const/16 v28, 0x416

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_37

    .line 1438
    if-nez v10, :cond_36

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    move/from16 v28, v0

    if-eqz v28, :cond_36

    .line 1439
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintTimeoutRunnable:Ljava/lang/Runnable;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1441
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchFingerPrint()V

    .line 1443
    :cond_36
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1447
    :cond_37
    const/16 v28, 0x3f9

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_42

    .line 1448
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_40

    .line 1449
    const-string/jumbo v28, "service.media.dmb"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1450
    .local v7, "dmb_running":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "dmb_antenna_auto_start"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_3d

    const/16 v16, 0x1

    .line 1452
    .local v16, "isDmbAutoStarton":Z
    :goto_7
    const/4 v5, 0x0

    .line 1453
    .local v5, "b_dmb_running":Z
    const/16 v17, 0x0

    .line 1454
    .local v17, "isSecureKeyguard":Z
    if-eqz v7, :cond_38

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_38

    .line 1455
    const-string v28, "1"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3e

    .line 1456
    const/4 v5, 0x1

    .line 1462
    :cond_38
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    .line 1464
    :cond_39
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "KEYCODE_DMB_ANT_OPEN dmb_running="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isSecureKeyguard="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", isDmbAutoStarton="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    if-nez v10, :cond_3b

    if-nez v23, :cond_3b

    .line 1470
    :try_start_1
    const-string v4, "/efs/FactoryApp/tdmb_det_count"

    .line 1471
    .local v4, "TDMB_DET_PATH":Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-static/range {v28 .. v30}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1472
    .local v25, "strDMBCount":Ljava/lang/String;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "TDMB_DET_COUNT : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    if-eqz v25, :cond_3f

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_3f

    .line 1475
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    const-wide/16 v30, 0x1

    add-long v8, v28, v30

    .line 1476
    .local v8, "dmb_det_count":J
    const-wide/32 v28, 0xf423f

    cmp-long v28, v8, v28

    if-lez v28, :cond_3a

    .line 1477
    const-wide/16 v8, 0x1

    .line 1479
    :cond_3a
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1490
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v8    # "dmb_det_count":J
    .end local v25    # "strDMBCount":Ljava/lang/String;
    :cond_3b
    :goto_9
    if-nez v10, :cond_1d

    if-nez v23, :cond_1d

    if-nez v5, :cond_1d

    if-nez v17, :cond_1d

    if-eqz v16, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v28

    if-nez v28, :cond_1d

    .line 1493
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DMB_ANT_OPEN"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    new-instance v28, Landroid/content/ComponentName;

    const-string v29, "com.sec.android.app.dmb"

    const-string v30, "com.sec.android.app.dmb.activity.DMBFullScreenView"

    invoke-direct/range {v28 .. v30}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 1497
    .local v14, "intent":Landroid/content/Intent;
    const-string v28, "com.sec.android.action.DMB_ANT_OPEN"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1498
    const/high16 v28, 0x10000000

    move/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1500
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1505
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    if-eqz v28, :cond_3c

    .line 1506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$8;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1512
    :cond_3c
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1450
    .end local v5    # "b_dmb_running":Z
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_3d
    const/16 v16, 0x0

    goto/16 :goto_7

    .line 1457
    .restart local v5    # "b_dmb_running":Z
    .restart local v16    # "isDmbAutoStarton":Z
    .restart local v17    # "isSecureKeyguard":Z
    :cond_3e
    const-string v28, "0"

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_38

    .line 1458
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 1481
    .restart local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .restart local v25    # "strDMBCount":Ljava/lang/String;
    :cond_3f
    :try_start_3
    const-string v28, "0"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_9

    .line 1483
    .end local v4    # "TDMB_DET_PATH":Ljava/lang/String;
    .end local v25    # "strDMBCount":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 1484
    .local v11, "e":Ljava/io/IOException;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "IOException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1485
    .end local v11    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v11

    .line 1486
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v28, "SamsungWindowManager"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "NumberFormatException : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1501
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v11

    .line 1502
    .local v11, "e":Landroid/content/ActivityNotFoundException;
    const-string v28, "SamsungWindowManager"

    const-string v29, "No activity to launch DMB."

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 1516
    .end local v5    # "b_dmb_running":Z
    .end local v7    # "dmb_running":Ljava/lang/String;
    .end local v11    # "e":Landroid/content/ActivityNotFoundException;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v16    # "isDmbAutoStarton":Z
    .end local v17    # "isSecureKeyguard":Z
    :cond_40
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1518
    const/16 v17, 0x0

    .line 1519
    .restart local v17    # "isSecureKeyguard":Z
    const-string v28, "SamsungWindowManager"

    const-string v29, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_41

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v17

    .line 1523
    :cond_41
    if-nez v10, :cond_1d

    if-nez v23, :cond_1d

    if-nez v17, :cond_1d

    .line 1524
    const-string v28, "SamsungWindowManager"

    const-string v29, "SISO DTV  APPLICATION KEYCODE_DTV_ANTENNA_OPEN TO SEND BROADCAST"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1526
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "com.samsung.sec.mtv.DTV_ANTENNA_OPEN"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1528
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1531
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v17    # "isSecureKeyguard":Z
    :cond_42
    const/16 v28, 0x3fa

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_44

    .line 1532
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_43

    .line 1533
    if-nez v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v29, v0

    invoke-static/range {v28 .. v29}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v28

    if-nez v28, :cond_1d

    .line 1534
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DMB_ANT_CLOSE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1536
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "com.sec.android.action.DMB_ANT_CLOSE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1539
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1543
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_43
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1544
    if-nez v10, :cond_1d

    .line 1545
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_DTV_ANT_CLOSE"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1547
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1549
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1557
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_44
    const/16 v28, 0x3eb

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_46

    .line 1558
    if-eqz v10, :cond_1d

    if-nez v19, :cond_1d

    if-nez v23, :cond_1d

    .line 1560
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v24

    .line 1561
    .local v24, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v24, :cond_45

    .line 1562
    invoke-interface/range {v24 .. v24}, Lcom/android/internal/statusbar/IStatusBarService;->toggleNotificationPanel()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1568
    .end local v24    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_45
    :goto_b
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1564
    :catch_4
    move-exception v12

    .line 1566
    .restart local v12    # "ex":Landroid/os/RemoteException;
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_b

    .line 1571
    .end local v12    # "ex":Landroid/os/RemoteException;
    :cond_46
    const/16 v28, 0x428

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_48

    .line 1572
    if-nez v10, :cond_47

    .line 1573
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchSFinderIfPossible()Z

    .line 1575
    :cond_47
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1577
    :cond_48
    const/16 v28, 0x3ec

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_49

    .line 1578
    if-nez v10, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v28

    if-eqz v28, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn(I)Z

    move-result v28

    if-eqz v28, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    new-instance v29, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$9;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 1588
    :cond_49
    const/16 v28, 0x425

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_4c

    .line 1589
    if-nez v10, :cond_4a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v28

    if-eqz v28, :cond_4a

    if-nez v19, :cond_4a

    .line 1590
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_MULTI_WINDOW key input"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4b

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;->handleLongPressOnRecent()Z

    move-result v28

    if-nez v28, :cond_4a

    .line 1593
    const-string v28, "SamsungWindowManager"

    const-string v29, "KEYCODE_MULTI_WINDOW key is blocked"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_4a
    :goto_c
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1595
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lcom/android/server/policy/PhoneWindowManager;->closeMultiWindowTrayBar(Z)Z

    move-result v28

    if-nez v28, :cond_4a

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/policy/PhoneWindowManager;->toggleMultiWindowTray()Z

    goto :goto_c

    .line 1603
    :cond_4c
    const/16 v28, 0x41a

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_1d

    .line 1621
    const/16 v28, 0x1a

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_4d

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1623
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1624
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1630
    :cond_4d
    const/16 v28, 0x3f7

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_52

    .line 1631
    if-eqz v10, :cond_4f

    .line 1632
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1633
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_4e

    const-string v28, "SamsungWindowManager"

    const-string v29, "User key longpress - Do longpress"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_4e
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUserKeyConsumed:Z

    .line 1636
    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1637
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1641
    :cond_4f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isUserKeyConsumed()Z

    move-result v28

    if-eqz v28, :cond_51

    .line 1642
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_50

    const-string v28, "SamsungWindowManager"

    const-string v29, "User key up after long press - ignore up key"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_50
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1645
    :cond_51
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->handleUserKey(Z)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1646
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1652
    :cond_52
    const/16 v28, 0x417

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_58

    .line 1653
    const-string v28, "SamsungWindowManager"

    const-string v29, "KeyEvent.KEYCODE_NETWORK_SEL"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v28

    if-nez v28, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_54

    .line 1655
    :cond_53
    const-string v28, "SamsungWindowManager"

    const-string v29, "Network selection key - no action in factory mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1657
    :cond_54
    if-nez v19, :cond_55

    .line 1658
    if-eqz v10, :cond_56

    and-int/lit16 v0, v13, 0x80

    move/from16 v28, v0

    if-eqz v28, :cond_56

    .line 1659
    const-string v28, "SamsungWindowManager"

    const-string v29, "Network selection long press action"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1661
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "ACTION_NETWORK_LONGPRESS_KEY"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1664
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    .line 1676
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_55
    :goto_d
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1665
    :cond_56
    if-nez v10, :cond_55

    if-nez v23, :cond_55

    .line 1666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    move/from16 v28, v0

    if-nez v28, :cond_57

    .line 1667
    const-string v28, "SamsungWindowManager"

    const-string v29, "Network selection short press action"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1669
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string v28, "ACTION_NETWORK_KEY"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_d

    .line 1672
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_57
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mNetworkSelectionLongPress:Z

    goto :goto_d

    .line 1678
    :cond_58
    const/16 v28, 0x40c

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_5b

    .line 1679
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v28

    if-nez v28, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_5a

    .line 1680
    :cond_59
    const-string v28, "SamsungWindowManager"

    const-string v29, "Data key - no action in factory mode"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1682
    :cond_5a
    if-nez v10, :cond_1d

    if-nez v23, :cond_1d

    .line 1683
    const-string v28, "SamsungWindowManager"

    const-string v29, "3G key action"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    new-instance v14, Landroid/content/Intent;

    const-string v28, "android.settings.DATA_NETWORK_KEY_PRESSED"

    move-object/from16 v0, v28

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1685
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_6

    .line 1690
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_5b
    const/16 v28, 0x1b

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_5e

    .line 1691
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSimLocked()Z

    move-result v28

    if-nez v28, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isCarrierLocked()Z

    move-result v28

    if-nez v28, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1692
    :cond_5c
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_5d

    const-string v28, "SamsungWindowManager"

    const-string v29, "Key was blocked by sim or carrier status"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_5d
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 1696
    :cond_5e
    const/16 v28, 0x431

    move/from16 v0, v18

    move/from16 v1, v28

    if-ne v0, v1, :cond_1d

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isBlockKey(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 1698
    sget-boolean v28, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v28, :cond_5f

    const-string v28, "SamsungWindowManager"

    const-string v29, "Key was blocked by carrier status"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    :cond_5f
    const/16 v28, 0x1

    goto/16 :goto_1
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .locals 28
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1715
    const/high16 v24, 0x20000000

    and-int v24, v24, p2

    if-eqz v24, :cond_1

    const/16 v18, 0x1

    .line 1716
    .local v18, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_2

    const/4 v11, 0x1

    .line 1717
    .local v11, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v20

    .line 1719
    .local v20, "keyCode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/PhoneWindowManager;->getLockTaskMode()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    const/16 v24, 0xbb

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 1721
    :cond_0
    const-string v24, "SamsungWindowManager"

    const-string v25, "Key was blocked by LOCK_TASK_MODE_LOCKED"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/16 v24, 0x1

    .line 1922
    :goto_2
    return v24

    .line 1715
    .end local v11    # "down":Z
    .end local v18    # "interactive":Z
    .end local v20    # "keyCode":I
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 1716
    .restart local v18    # "interactive":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1728
    .restart local v11    # "down":Z
    .restart local v20    # "keyCode":I
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->broadcastHardKeyIntent(Landroid/view/KeyEvent;)V

    .line 1734
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v24

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/Map;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_7

    .line 1736
    const/16 v19, 0x1

    .line 1737
    .local v19, "isAllowed":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    if-nez v24, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v24

    if-nez v24, :cond_6

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1740
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    .line 1741
    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 1742
    const/16 v19, 0x1

    .line 1753
    :cond_4
    :goto_3
    if-nez v19, :cond_7

    .line 1754
    const-string v24, "SamsungWindowManager"

    const-string v25, "MDM: key is blocked"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    const/16 v24, 0x1

    goto :goto_2

    .line 1745
    :cond_5
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_3

    .line 1751
    :cond_6
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHardwareKeyAllowed(IZ)Z

    move-result v19

    goto :goto_3

    .line 1761
    .end local v19    # "isAllowed":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/sec/CombinationKeyManager;->interceptKeyCombinationBeforeQueueing(Landroid/view/KeyEvent;I)V

    .line 1764
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->processTorchlight(IZZ)V

    .line 1767
    const/16 v24, 0x3

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isEnableAccessControl(I)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1768
    sget-boolean v24, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v24, :cond_8

    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "interceptKeyTq : Key was blocked by access control"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    :cond_8
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1773
    :cond_9
    const/16 v24, 0x1a

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isMirrorLinkEnabled()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1776
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "isMirrorLinkEnabled() true"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1781
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v24

    if-eqz v24, :cond_13

    .line 1782
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1787
    :cond_b
    const/16 v24, 0x427

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 1788
    if-nez v11, :cond_d

    .line 1789
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch voice LPSD"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1793
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceWakeUpWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v24, v0

    const-wide/16 v26, 0x1388

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1794
    const-string v5, "com.samsung.android.app.sounddetector.VOICE_WAKEUP"

    .line 1795
    .local v5, "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1798
    .end local v5    # "SOUND_DETECTOR_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_d
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1802
    :cond_e
    const/16 v24, 0x426

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 1803
    if-nez v11, :cond_10

    .line 1804
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryMode()Z

    move-result v24

    if-nez v24, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Landroid/os/FactoryTest;->isAutomaticTestMode(Landroid/content/Context;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 1805
    :cond_f
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1806
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.intent.action.VOICE_WAKEUP_KEY"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v26, "com.sec.android.permission.HANDLE_VOICE_WAKEUP_KEY"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1826
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_10
    :goto_4
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1810
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v24, v0

    if-eqz v24, :cond_12

    .line 1812
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch drivelink"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 1814
    .restart local v17    # "intent":Landroid/content/Intent;
    const-string v24, "com.sec.android.automotive.drivelink.ACTION_VOICE_WAKEUP"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    .line 1819
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_12
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "launch voice command"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    const-string v4, "com.samsung.alwaysmicon.alwaysmiconservice.ACTION_VOICE_WAKEUP"

    .line 1821
    .local v4, "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1822
    .restart local v17    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    sget-object v25, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_4

    .line 1831
    .end local v4    # "LAUNCH_SVOICE_WAKEUP":Ljava/lang/String;
    .end local v17    # "intent":Landroid/content/Intent;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSideSyncPresentationRunning()Z

    move-result v24

    if-eqz v24, :cond_14

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1832
    const-string v24, "SamsungWindowManager"

    const-string/jumbo v25, "interceptKeyTq : Key was blocked by sidesync."

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1838
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v24

    if-eqz v24, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v24

    if-eqz v24, :cond_24

    .line 1840
    if-eqz v11, :cond_24

    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-eq v0, v1, :cond_15

    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_24

    .line 1841
    :cond_15
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching starting"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppsList()Ljava/util/List;

    move-result-object v7

    .line 1843
    .local v7, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_16

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v24

    if-nez v24, :cond_18

    .line 1844
    :cond_16
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no apps in list"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_17
    :goto_5
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: Volume Key app switching done"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    const/16 v24, 0x1

    goto/16 :goto_2

    .line 1846
    :cond_18
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " apps in list"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "activity"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 1848
    .local v6, "activityManager":Landroid/app/ActivityManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 1851
    .local v22, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1852
    .local v10, "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1853
    .local v8, "appListItem":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1854
    .local v9, "appStartIntent":Landroid/content/Intent;
    if-eqz v9, :cond_19

    .line 1855
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1858
    :cond_19
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not available"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1861
    .end local v8    # "appListItem":Ljava/lang/String;
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    :cond_1a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_1b

    .line 1862
    const-string v24, "SamsungWindowManager"

    const-string v25, "Knox Custom: no available apps"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1866
    :cond_1b
    const v24, 0x7fffffff

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v23

    .line 1867
    .local v23, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1868
    .local v13, "foregroundApp":Ljava/lang/String;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1870
    const/4 v14, -0x1

    .line 1871
    .local v14, "foregroundAppIndex":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v15, v0, :cond_1d

    .line 1872
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1c

    .line 1873
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " found at index "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    move v14, v15

    .line 1871
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 1877
    :cond_1d
    const/16 v24, -0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_1e

    .line 1878
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " not found in list; use first"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_1e
    move-object/from16 v21, v13

    .line 1882
    .local v21, "newApp":Ljava/lang/String;
    const/16 v24, 0x19

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 1883
    if-lez v14, :cond_20

    .line 1884
    add-int/lit8 v24, v14, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .line 1897
    .restart local v21    # "newApp":Ljava/lang/String;
    :cond_1f
    :goto_8
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_23

    .line 1898
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " already in foreground"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1886
    :cond_20
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_8

    .line 1888
    :cond_21
    const/16 v24, 0x18

    move/from16 v0, v20

    move/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 1889
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    if-ge v14, v0, :cond_22

    .line 1890
    add-int/lit8 v24, v14, 0x1

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_8

    .line 1892
    :cond_22
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "newApp":Ljava/lang/String;
    check-cast v21, Ljava/lang/String;

    .restart local v21    # "newApp":Ljava/lang/String;
    goto :goto_8

    .line 1900
    :cond_23
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 1901
    .restart local v9    # "appStartIntent":Landroid/content/Intent;
    const-string v24, "SamsungWindowManager"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Knox Custom: switching to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    if-eqz v9, :cond_17

    .line 1903
    const/high16 v24, 0x10400000

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1906
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1907
    :catch_0
    move-exception v12

    .line 1908
    .local v12, "e":Landroid/content/ActivityNotFoundException;
    const-string v24, "SamsungWindowManager"

    const-string v25, "No activity to launch Knox Custom switching."

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 1922
    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "appStartIntent":Landroid/content/Intent;
    .end local v10    # "availableAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "e":Landroid/content/ActivityNotFoundException;
    .end local v13    # "foregroundApp":Ljava/lang/String;
    .end local v14    # "foregroundAppIndex":I
    .end local v15    # "i":I
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v21    # "newApp":Ljava/lang/String;
    .end local v22    # "pm":Landroid/content/pm/PackageManager;
    .end local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_24
    const/16 v24, 0x0

    goto/16 :goto_2
.end method

.method public isActivitiesAvailable(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3064
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3065
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 3066
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3068
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3069
    const/4 v2, 0x1

    .line 3072
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnyKeyMode()Z
    .locals 4

    .prologue
    .line 3888
    const/4 v0, 0x0

    .line 3889
    .local v0, "isAnyKeyMode":Z
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "anykey_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 3890
    const/4 v0, 0x0

    .line 3894
    :goto_0
    return v0

    .line 3892
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAppLockRunning()Z
    .locals 6

    .prologue
    .line 4465
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4466
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .line 4467
    .local v1, "isAppLockRunning":Z
    if-eqz v0, :cond_0

    .line 4468
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 4469
    .local v2, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 4470
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4471
    .local v3, "topPackageName":Ljava/lang/String;
    const-string v4, "com.samsung.android.applock"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4472
    const/4 v1, 0x1

    .line 4476
    .end local v2    # "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "topPackageName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public isBlockedKeyBySideSync(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3589
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 3590
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    .line 3591
    .local v1, "flags":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 3592
    .local v0, "down":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_1

    .line 3599
    :goto_1
    return v3

    .end local v0    # "down":Z
    :cond_0
    move v0, v4

    .line 3591
    goto :goto_0

    .restart local v0    # "down":Z
    :cond_1
    move v3, v4

    .line 3599
    goto :goto_1
.end method

.method public isBlockedPowerKeyByKeyTest(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 3704
    invoke-static {}, Landroid/os/FactoryTest;->needBlockingPowerKey()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.ui.UIHardKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.OneJigBinary.testitem.KeyTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.simplefunctiontest.KeypadTest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.factory.app.spcselftest.SpcSelfTestMain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.app.latin.tdfnotifier"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3711
    :cond_0
    sget-boolean v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SamsungWindowManager"

    const-string v1, "Skip power key behavior by FactoryTest application"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    :cond_1
    const/4 v0, 0x1

    .line 3714
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCarrierLocked()Z
    .locals 1

    .prologue
    .line 4047
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v0

    return v0
.end method

.method public isCombinationKeyTriggered()Z
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->isCombinationKeyTriggered()Z

    move-result v0

    return v0
.end method

.method public isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 3076
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3078
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3080
    const/4 v2, 0x1

    .line 3085
    :cond_0
    :goto_0
    return v2

    .line 3084
    :catch_0
    move-exception v0

    .line 3085
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isCurrentUserSetupComplete()Z
    .locals 1

    .prologue
    .line 1099
    sget v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3059
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDockHomeEnabled(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1111
    const/4 v0, 0x1

    .line 1112
    .local v0, "resDeskHomeEnabled":Z
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsTablet:Z

    if-nez v1, :cond_0

    .line 1114
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.intent.category.DESK_DOCK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1115
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 1119
    :cond_0
    return v0
.end method

.method public isDoubleTapOnHomeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1937
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1938
    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Double Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDoubleTapOnPowerEnabled()Z
    .locals 1

    .prologue
    .line 2054
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    return v0
.end method

.method public isEasyModeEnabled()Z
    .locals 1

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    return v0
.end method

.method public isEnableAccessControl(I)Z
    .locals 8
    .param p1, "event"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1073
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_power_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 1075
    .local v1, "mAccessPower":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_volume_button"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1077
    .local v2, "mAccessVolume":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "access_control_keyboard_block"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1080
    .local v0, "mAccessKeyboard":I
    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x7

    if-lt p1, v5, :cond_2

    const/16 v5, 0x12

    if-gt p1, v5, :cond_2

    .line 1082
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 1082
    goto :goto_0

    .line 1085
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1094
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    goto :goto_0

    .line 1087
    :sswitch_0
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    goto :goto_0

    .line 1089
    :sswitch_1
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_3

    if-nez v1, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 1092
    :sswitch_2
    iget-boolean v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    if-eqz v5, :cond_4

    if-nez v2, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    .line 1085
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
    .end sparse-switch
.end method

.method public isHMTSupportAndConnected()Z
    .locals 2

    .prologue
    .line 4083
    const-string/jumbo v0, "sys.hmt.connected"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isKidsModeEnabled()Z
    .locals 1

    .prologue
    .line 1103
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    return v0
.end method

.method public isLiveDemo()Z
    .locals 1

    .prologue
    .line 4088
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsLiveDemo:Z

    return v0
.end method

.method public isMenuConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2204
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    if-eqz v1, :cond_0

    .line 2205
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMenuConsumed:Z

    .line 2206
    const/4 v0, 0x1

    .line 2208
    :cond_0
    return v0
.end method

.method public isMirrorLinkEnabled()Z
    .locals 2

    .prologue
    .line 3209
    const-string v0, "1"

    const-string/jumbo v1, "net.mirrorlink.on"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOneTouchReportEnabled()Z
    .locals 17

    .prologue
    .line 2730
    const-string/jumbo v15, "go.police.report"

    .line 2731
    .local v15, "oneTouchReportPackageName":Ljava/lang/String;
    const-string v14, "com.android.vending"

    .line 2733
    .local v14, "oneTouchReportInstaller":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2734
    .local v13, "installerPackage":Ljava/lang/String;
    const/4 v12, 0x0

    .line 2736
    .local v12, "enabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2737
    const/4 v2, 0x0

    .line 2782
    :goto_0
    return v2

    .line 2741
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 2743
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v2, "go.police.report"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2745
    const-string v2, "com.android.vending"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 2747
    const/4 v2, 0x0

    goto :goto_0

    .line 2749
    :catch_0
    move-exception v11

    .line 2751
    .local v11, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0

    .line 2755
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v9, "content://go.police.provider.report"

    .line 2756
    .local v9, "customerAgreementPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2758
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_3

    .line 2759
    const-string v2, "content://go.police.provider.report"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2761
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2762
    const-string/jumbo v2, "customer_agreement"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2764
    .local v8, "customerAgreementColumn":I
    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    .line 2765
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .line 2766
    .local v10, "customerAgreementValue":I
    const/4 v2, 0x1

    if-ne v2, v10, :cond_4

    const/4 v12, 0x1

    .line 2776
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 2777
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v7    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    move v2, v12

    .line 2782
    goto :goto_0

    .line 2766
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "customerAgreementColumn":I
    .restart local v10    # "customerAgreementValue":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2773
    .end local v8    # "customerAgreementColumn":I
    .end local v10    # "customerAgreementValue":I
    :catch_1
    move-exception v11

    .line 2774
    .restart local v11    # "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2776
    if-eqz v7, :cond_3

    .line 2777
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 2776
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_5

    .line 2777
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3090
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3092
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3093
    const/4 v2, 0x1

    .line 3098
    :cond_0
    :goto_0
    return v2

    .line 3097
    :catch_0
    move-exception v0

    .line 3098
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public isRecentAppStart()Z
    .locals 1

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getRecentLongPressMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3358
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startCustomApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3359
    const/4 v0, 0x1

    .line 3362
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecentConsumed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2265
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    if-eqz v1, :cond_0

    .line 2266
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRecentConsumed:Z

    .line 2267
    const/4 v0, 0x1

    .line 2269
    :cond_0
    return v0
.end method

.method public isRingingOrOffhook()Z
    .locals 1

    .prologue
    .line 3849
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsRingingOrOffhook:Z

    return v0
.end method

.method public isSFinderLaunchable()Z
    .locals 1

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->isLaunchable()Z
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$900(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSafetyAssuranceEnabled()Z
    .locals 1

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    return v0
.end method

.method public isScreenOffOnLongPressHome()Z
    .locals 4

    .prologue
    .line 3431
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3432
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/SystemManager;->getScreenOffOnHomeLongPressState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3433
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 3434
    const/4 v0, 0x1

    .line 3437
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowOrHideRecentAppsAllowedByKNOX()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3287
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v3}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3301
    :cond_0
    :goto_0
    return v1

    .line 3292
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3293
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 3294
    .local v0, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_2

    .line 3295
    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .end local v0    # "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_2
    move v1, v2

    .line 3301
    goto :goto_0
.end method

.method public isSideSyncPresentationRunning()Z
    .locals 1

    .prologue
    .line 3618
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    return v0
.end method

.method public isSimLocked()Z
    .locals 1

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSimLocked()Z

    move-result v0

    return v0
.end method

.method public isTphoneRelaxMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3854
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSktTphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "skt_phone20_relax_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 3857
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTripleTapOnHomeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2028
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupWizardRunning(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2029
    const-string v1, "SamsungWindowManager"

    const-string v2, "Home Triple Tap block when Verizon Setup Wizard Running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_0
    :goto_0
    return v0

    .line 2034
    :cond_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    move v0, v1

    .line 2035
    goto :goto_0

    .line 2040
    :cond_2
    iget v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isUseAccessControl()Z
    .locals 1

    .prologue
    .line 1062
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    return v0
.end method

.method public isUvsOrientationRequested()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3624
    const-string v1, "LGT"

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->EnableLinuxCOMMONAPI4:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3627
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mUvsOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method isVoIPRinging()Z
    .locals 5

    .prologue
    .line 3873
    const/4 v1, 0x0

    .line 3875
    .local v1, "isVoIPRinging":Z
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->getVoIPInterfaceService()Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 3876
    .local v2, "voipInterfaceService":Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    .line 3877
    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRinging()Z

    move-result v1

    .line 3884
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .line 3879
    .restart local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :cond_0
    const-string v3, "SamsungWindowManager"

    const-string v4, "Unable to find IVoIPInterface interface"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3881
    .end local v2    # "voipInterfaceService":Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 3882
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "RemoteException from getVoIPInterfaceService()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVolumeKeyAppsEnabled()Z
    .locals 1

    .prologue
    .line 3469
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getProKioskState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskManager:Landroid/app/enterprise/knoxcustom/ProKioskManager;

    invoke-virtual {v0}, Landroid/app/enterprise/knoxcustom/ProKioskManager;->getVolumeKeyAppState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3471
    const/4 v0, 0x1

    .line 3473
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWakeupPreventionPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4576
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eqz v0, :cond_0

    .line 4577
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWakeupPreventionPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4578
    const/4 v0, 0x1

    .line 4582
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchDoubleTapOnHomeCommand()V
    .locals 6

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->hasCustomDoubleTapHomeCommand()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->launchVoiceCommand()V

    .line 2022
    :cond_0
    :goto_0
    return-void

    .line 1969
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1970
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1971
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch double tap command"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v2

    .line 1974
    .local v2, "isSecureLock":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const-string/jumbo v4, "isSecure"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1975
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1976
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1977
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1979
    :cond_2
    sget-boolean v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v3, :cond_3

    .line 1980
    const-string v3, "SamsungWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add cleartask flag by policy: isShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v5}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const v4, 0x24001000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1990
    :goto_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 1991
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawnTarget(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2004
    :cond_4
    :goto_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2009
    :goto_4
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 2011
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2012
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 2013
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    goto/16 :goto_0

    .line 1973
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "isSecureLock":Z
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1986
    .restart local v2    # "isSecureLock":Z
    :cond_6
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 2005
    :catch_0
    move-exception v0

    .line 2006
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch double tap command."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2016
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "isSecureLock":Z
    :cond_7
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not available double tap command or setting"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHome()V

    goto/16 :goto_0

    .line 2020
    :cond_8
    const-string v3, "SamsungWindowManager"

    const-string v4, "Device is not provisioned"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1993
    .restart local v2    # "isSecureLock":Z
    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public launchFingerPrint()V
    .locals 4

    .prologue
    .line 3104
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isSupportFingerPrint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3105
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3114
    :goto_0
    return-void

    .line 3108
    :catch_0
    move-exception v0

    .line 3109
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "SamsungWindowManager"

    const-string v2, "No activity to handle fingerprint."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3112
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    const-string v1, "SamsungWindowManager"

    const-string v2, "Device is not supported, not launch fingerprint"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchFixedTask()V
    .locals 5

    .prologue
    .line 4446
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "launch Fixed Task for DualScreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getFixedTaskId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4452
    :goto_0
    return-void

    .line 4449
    :catch_0
    move-exception v0

    .line 4450
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public launchHomeDuringVzwSetup()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2095
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2096
    const-string/jumbo v1, "persist.sys.enablehomekey"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2097
    .local v0, "isHomeKeyEnabled":Z
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard Running, launch home key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    .end local v0    # "isHomeKeyEnabled":Z
    :cond_0
    return v0
.end method

.method public launchPremiumWatch(Z)V
    .locals 6
    .param p1, "resetLaunchingFlag"    # Z

    .prologue
    .line 4170
    :try_start_0
    const-string v2, "SamsungWindowManager"

    const-string v3, "Premium watch on"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4172
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4173
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.intent.action.START_WATCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4174
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4175
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4180
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    if-eqz p1, :cond_0

    .line 4181
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4182
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCleanWatchLaunchingFlagRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4184
    :cond_0
    return-void

    .line 4176
    :catch_0
    move-exception v0

    .line 4177
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Fail to launch premium watch"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public launchSFinderIfPossible()Z
    .locals 1

    .prologue
    .line 3843
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSFinderLaunchPolicy:Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;

    # invokes: Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->launch()Z
    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;->access$1000(Lcom/android/server/policy/sec/SamsungPhoneWindowManager$SFinderLaunchPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchSReminder()V
    .locals 5

    .prologue
    .line 4009
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string v3, "assist"

    invoke-virtual {v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 4011
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.app.sreminder"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 4014
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 4015
    const-string v2, "FROM"

    const-string v3, "HOMEKEY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4016
    const-string v2, "SamsungWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchSReminder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4018
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4023
    :cond_0
    :goto_0
    return-void

    .line 4019
    :catch_0
    move-exception v0

    .line 4020
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch SReminder."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public launchSamsungHome()V
    .locals 6

    .prologue
    .line 4425
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch Samsung Home for DualScreen"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4427
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.dualscreen.intent.category.SAMSUNG_HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4428
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "left_home"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 4429
    .local v0, "defaultValue":I
    if-gez v0, :cond_1

    .line 4439
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4443
    :goto_1
    return-void

    .line 4431
    :cond_1
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 4432
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.dailydigest"

    const-string v5, "com.sec.android.app.dailydigest.activities.DailyDigestActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 4434
    :cond_2
    if-nez v0, :cond_0

    .line 4435
    const-string v3, "com.samsung.android.app.headlines"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 4440
    :catch_0
    move-exception v1

    .line 4441
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "No activity to launch Samsung Home."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public launchVoiceCommand()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableVoiceCommand:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDoubleTapOnHomeEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1946
    const-string v3, "SamsungWindowManager"

    const-string/jumbo v4, "launch voicecommand"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v4, "homekey"

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->closeSystemWindows(Ljava/lang/String;)V

    .line 1948
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    .line 1949
    .local v1, "isSecureLock":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string/jumbo v4, "isSecure"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1950
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const-string v4, "AUTO_LISTEN"

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1951
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1953
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVoiceCommandIntent:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    .end local v1    # "isSecureLock":Z
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 1948
    goto :goto_0

    .line 1954
    .restart local v1    # "isSecureLock":Z
    :catch_0
    move-exception v0

    .line 1955
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch voicecommand."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1958
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "isSecureLock":Z
    :cond_2
    const-string v2, "SamsungWindowManager"

    const-string v3, "Device is not provisioned or not available voice command."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchingGamekey(Z)Z
    .locals 9
    .param p1, "keyguardOn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 3920
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->endCallByGamekey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3921
    const/4 v5, 0x1

    .line 3956
    :cond_0
    :goto_0
    return v5

    .line 3922
    :cond_1
    if-nez p1, :cond_0

    .line 3927
    const-string v1, "com.sec.game.sga"

    .line 3928
    .local v1, "gamePkg":Ljava/lang/String;
    const-string v4, "com.sec.android.app.samsungapps"

    .line 3929
    .local v4, "samsungAppsPkg":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "samsungapps://ProductDetail/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3931
    .local v3, "pkgUri":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3934
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3939
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 3940
    invoke-direct {p0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->startSGA(Ljava/lang/String;)V

    goto :goto_0

    .line 3935
    :catch_0
    move-exception v0

    .line 3936
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3943
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 3948
    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 3949
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_5

    const-string v6, "SamsungWindowManager"

    const-string v7, "SGA is not installed. so you are moving to Samsung apps."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSGA(Ljava/lang/String;)V

    goto :goto_0

    .line 3944
    :catch_1
    move-exception v0

    .line 3945
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "SamsungWindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not exist. so try to download the SGA apps."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3952
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    sget-boolean v6, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v6, :cond_7

    const-string v6, "SamsungWindowManager"

    const-string v7, "Samsung apps is not installed. so you are moving to Samsung apps download page."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->downloadForSamsungApps()V

    goto/16 :goto_0
.end method

.method public notifyCoverSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "coverOpen"    # Z

    .prologue
    .line 2912
    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    if-nez v2, :cond_1

    .line 2925
    :cond_0
    :goto_0
    return-void

    .line 2915
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    if-nez p3, :cond_0

    iget-boolean v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2916
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2917
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.daynote"

    const-string v3, "com.sec.android.daynote.DayNoteActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2918
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2920
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2921
    :catch_0
    move-exception v0

    .line 2922
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "No activity to launch daynote activity."

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public notifyLidSwitchChangedForFolder(JZ)V
    .locals 4
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2787
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performCPUBoost()V

    .line 2789
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->changeLidState(Z)V

    .line 2790
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    .line 2791
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2792
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2793
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v3, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 2798
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    const-string/jumbo v2, "flipOpen"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2799
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_1

    .line 2800
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flip Folder open = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , broadcasted."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlipFolderOpenedIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2804
    iget-boolean v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    if-eqz v1, :cond_3

    .line 2805
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    .line 2806
    .local v0, "soundPath":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_2

    .line 2807
    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder open/close soundPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    :cond_2
    if-eqz v0, :cond_3

    .line 2809
    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V

    .line 2812
    .end local v0    # "soundPath":Ljava/lang/String;
    :cond_3
    return-void

    .line 2805
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    goto :goto_0
.end method

.method public notifyPenSwitchChanged(JZ)V
    .locals 15
    .param p1, "whenNanos"    # J
    .param p3, "penInsert"    # Z

    .prologue
    .line 2816
    if-eqz p3, :cond_2

    const/4 v3, 0x1

    .line 2817
    .local v3, "newPenState":I
    :goto_0
    const/4 v4, 0x1

    .line 2818
    .local v4, "playSound":Z
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v5

    .line 2819
    .local v5, "screenOn":Z
    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mPenState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_0
    iget v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    if-ne v3, v8, :cond_3

    .line 2876
    :cond_1
    :goto_1
    return-void

    .line 2816
    .end local v3    # "newPenState":I
    .end local v4    # "playSound":Z
    .end local v5    # "screenOn":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 2822
    .restart local v3    # "newPenState":I
    .restart local v4    # "playSound":Z
    .restart local v5    # "screenOn":Z
    :cond_3
    iget v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 2823
    const/4 v4, 0x0

    .line 2825
    :cond_4
    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "playSound : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", screenOn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    :cond_5
    iput v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenState:I

    .line 2829
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_detachment_notification"

    const/4 v10, -0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 2832
    .local v6, "sound":Ljava/lang/String;
    if-eqz v6, :cond_9

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2834
    .local v7, "soundPath":[Ljava/lang/String;
    :goto_2
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "action_memo_on_off_screen"

    const/4 v10, 0x0

    const/4 v11, -0x2

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_a

    const/4 v2, 0x1

    .line 2837
    .local v2, "enableBlackMemo":Z
    :goto_3
    if-eqz p3, :cond_b

    .line 2839
    if-eqz v4, :cond_6

    if-eqz v6, :cond_6

    :try_start_0
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_6

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2842
    :cond_6
    :goto_4
    iget-boolean v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v8, :cond_7

    .line 2843
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v9, 0xc36d

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2865
    :cond_7
    :goto_5
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v9, "penInsert"

    move/from16 v0, p3

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2866
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v9, "isScreenOn"

    invoke-virtual {v8, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2867
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v9, "isKeyguardLocked"

    iget-object v10, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2869
    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    const-string/jumbo v10, "isBoot"

    const-wide/16 v12, 0x0

    cmp-long v8, p1, v12

    if-nez v8, :cond_10

    const/4 v8, 0x1

    :goto_6
    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2870
    sget-boolean v8, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "SamsungWindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pen = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , broadcasted."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_8
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2873
    if-eqz v2, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-eqz v8, :cond_1

    if-nez p3, :cond_1

    .line 2874
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlackMemoIntent:Landroid/content/Intent;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 2832
    .end local v2    # "enableBlackMemo":Z
    .end local v7    # "soundPath":[Ljava/lang/String;
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 2834
    .restart local v7    # "soundPath":[Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 2845
    .restart local v2    # "enableBlackMemo":Z
    :cond_b
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 2846
    if-nez v2, :cond_c

    .line 2847
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 2858
    :cond_c
    :goto_7
    if-eqz v4, :cond_d

    if-eqz v6, :cond_d

    :try_start_1
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_d

    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-direct {p0, v8}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSound(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2861
    :cond_d
    :goto_8
    iget-boolean v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    if-eqz v8, :cond_7

    .line 2862
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v9, 0xc369

    const/4 v10, -0x1

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Vibrator$MagnitudeTypes;->MaxMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    goto/16 :goto_5

    .line 2850
    :cond_e
    if-eqz v5, :cond_f

    .line 2851
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_7

    .line 2852
    :cond_f
    if-nez v2, :cond_c

    .line 2853
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v9, 0x4

    invoke-virtual {v8, v10, v11, v9}, Landroid/os/PowerManager;->wakeUp(JI)V

    goto :goto_7

    .line 2869
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 2859
    :catch_0
    move-exception v8

    goto :goto_8

    .line 2840
    :catch_1
    move-exception v8

    goto/16 :goto_4
.end method

.method public performCPUBoost()V
    .locals 9

    .prologue
    .line 2995
    iget-object v8, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2996
    :try_start_0
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 2997
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    .line 2998
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 2999
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    const-string v1, "Device_wakeup"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 3002
    :cond_0
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3004
    :try_start_1
    sget-object v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCpuBooster:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3011
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 3012
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "WAKEUP_CORE_BOOSTER"

    const/16 v3, 0xe

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    .line 3014
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2

    .line 3015
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v6

    .line 3016
    .local v6, "coreNumTable":[I
    if-eqz v6, :cond_2

    array-length v0, v6

    if-lez v0, :cond_2

    .line 3017
    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 3018
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 3022
    .end local v6    # "coreNumTable":[I
    :cond_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3023
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 3025
    :try_start_3
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCoreNumLockHelper.acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoreNumLockHelper:Landroid/os/DVFSHelper;

    sget v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->BOOSTING_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 3032
    :cond_3
    :goto_1
    return-void

    .line 3005
    :catch_0
    move-exception v7

    .line 3006
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCpuBooster.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3022
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3027
    :catch_1
    move-exception v7

    .line 3028
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v0, "SamsungWindowManager"

    const-string/jumbo v1, "mCoreNumLockHelper.acquire is failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 16
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    .line 2579
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2580
    const/4 v11, 0x0

    .line 2724
    :goto_0
    return v11

    .line 2583
    :cond_0
    const/4 v5, 0x0

    .line 2585
    .local v5, "hapticsDisabledByPowerSavingMode":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "haptic_feedback_enabled"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-nez v11, :cond_7

    const/4 v4, 0x1

    .line 2589
    .local v4, "hapticsDisabled":Z
    :goto_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isPowerSavingMode()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2590
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "powersaving_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v9, 0x1

    .line 2599
    .local v9, "powerSavingModeEnabled":Z
    :goto_2
    if-eqz v9, :cond_2

    .line 2600
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_haptic_feedback"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    const/4 v10, 0x1

    .line 2603
    .local v10, "turnOffHapticFeedbackEnabled":Z
    :goto_3
    if-eqz v10, :cond_2

    .line 2604
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_auto_turn_on"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    const/4 v8, 0x1

    .line 2607
    .local v8, "powerSavingAutoModeEnabled":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "isLowLevel"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_d

    const/4 v6, 0x1

    .line 2609
    .local v6, "isLowLevelBattery":Z
    :goto_5
    sget-boolean v11, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v11, :cond_1

    .line 2610
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Check haptic disabled policy : powerSavingAutoModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " isLowLevelBattery = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    :cond_1
    if-eqz v8, :cond_e

    .line 2615
    if-eqz v6, :cond_2

    .line 2616
    const/4 v5, 0x1

    .line 2626
    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_2
    :goto_6
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_ULTRA_POWER_SAVING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v11

    const-string v12, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_BATTERY_CONVERSING"

    invoke-virtual {v11, v12}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 2628
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "emergency_mode"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f

    const/4 v3, 0x1

    .line 2636
    .local v3, "emergencyModeEnabled":Z
    :goto_7
    if-nez p3, :cond_11

    if-eqz v9, :cond_4

    if-nez v5, :cond_5

    :cond_4
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    if-nez v11, :cond_5

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v11}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 2640
    :cond_5
    sget-boolean v11, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v11, :cond_6

    .line 2641
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "haptic disabled by policy : hapticsDisabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mLowPowerMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLowPowerMode:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " EmergencyModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " PowerSavingModeEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " TurnOffHapticFeedbackEnabled = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2585
    .end local v3    # "emergencyModeEnabled":Z
    .end local v4    # "hapticsDisabled":Z
    .end local v9    # "powerSavingModeEnabled":Z
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2590
    .restart local v4    # "hapticsDisabled":Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2595
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "psm_switch"

    const/4 v13, 0x0

    const/4 v14, -0x2

    invoke-static {v11, v12, v13, v14}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    const/4 v9, 0x1

    .restart local v9    # "powerSavingModeEnabled":Z
    :goto_8
    goto/16 :goto_2

    .end local v9    # "powerSavingModeEnabled":Z
    :cond_a
    const/4 v9, 0x0

    goto :goto_8

    .line 2600
    .restart local v9    # "powerSavingModeEnabled":Z
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 2604
    .restart local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_c
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 2607
    .restart local v8    # "powerSavingAutoModeEnabled":Z
    :cond_d
    const/4 v6, 0x0

    goto/16 :goto_5

    .line 2619
    .restart local v6    # "isLowLevelBattery":Z
    :cond_e
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 2628
    .end local v6    # "isLowLevelBattery":Z
    .end local v8    # "powerSavingAutoModeEnabled":Z
    .end local v10    # "turnOffHapticFeedbackEnabled":Z
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 2632
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "emergencyModeEnabled":Z
    goto/16 :goto_7

    .line 2650
    :cond_11
    sget-boolean v11, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v11, :cond_12

    .line 2651
    if-eqz p1, :cond_12

    .line 2652
    const-string v11, "SamsungWindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "haptic feedback for : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    :cond_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v11}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 2657
    sparse-switch p2, :sswitch_data_0

    .line 2676
    invoke-static/range {p2 .. p2}, Landroid/view/HapticFeedbackConstants;->isValidatedVibeIndex(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 2677
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    const/4 v13, 0x0

    sget-object v14, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    move/from16 v0, p2

    invoke-virtual {v11, v0, v12, v13, v14}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2679
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2659
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc369

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2661
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2667
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36a

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2669
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2671
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const v12, 0xc36b

    const/4 v13, -0x1

    const/4 v14, 0x0

    sget-object v15, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 2673
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2682
    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2684
    :cond_14
    const/4 v2, 0x0

    .line 2685
    .local v2, "duration":I
    sparse-switch p2, :sswitch_data_1

    .line 2720
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 2689
    :sswitch_3
    const/16 v2, 0x32

    .line 2722
    :goto_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    int-to-long v12, v2

    invoke-virtual {v11, v12, v13}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2724
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2694
    :sswitch_4
    const/16 v2, 0x32

    .line 2695
    goto :goto_9

    .line 2698
    :sswitch_5
    const/16 v2, 0x64

    .line 2699
    goto :goto_9

    .line 2702
    :sswitch_6
    const/16 v2, 0x1f4

    .line 2703
    goto :goto_9

    .line 2706
    :sswitch_7
    const/16 v2, 0x5dc

    .line 2707
    goto :goto_9

    .line 2709
    :sswitch_8
    const/16 v2, 0xfa

    .line 2710
    goto :goto_9

    .line 2712
    :sswitch_9
    const/4 v11, 0x4

    new-array v7, v11, [J

    fill-array-data v7, :array_0

    .line 2713
    .local v7, "pattern":[J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const/4 v12, -0x1

    invoke-virtual {v11, v7, v12}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 2714
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 2717
    .end local v7    # "pattern":[J
    :sswitch_a
    const/16 v2, 0x32

    .line 2718
    goto :goto_9

    .line 2657
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x2710 -> :sswitch_1
        0x2711 -> :sswitch_1
        0xc35a -> :sswitch_2
        0xc35e -> :sswitch_1
    .end sparse-switch

    .line 2685
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x3 -> :sswitch_3
        0xc359 -> :sswitch_4
        0xc35a -> :sswitch_5
        0xc35c -> :sswitch_6
        0xc35d -> :sswitch_7
        0xc35e -> :sswitch_a
        0xc360 -> :sswitch_8
        0xc361 -> :sswitch_9
        0xc362 -> :sswitch_7
    .end sparse-switch

    .line 2712
    :array_0
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public performSystemKeyFeedback(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const v3, 0xc35e

    const/4 v2, 0x0

    .line 2516
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "SPC_Remote_Controller"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2560
    :cond_0
    :goto_0
    return-void

    .line 2522
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2545
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2548
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2550
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2527
    :sswitch_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isHMTSupportAndConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mMobileKeyboardEnabled:Z

    if-nez v0, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2531
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2533
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2537
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2538
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2539
    invoke-virtual {p0, v4, v3, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 2541
    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2557
    :sswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->playSoundEffect()V

    goto :goto_0

    .line 2522
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x1b -> :sswitch_3
        0x52 -> :sswitch_1
        0x54 -> :sswitch_2
        0xbb -> :sswitch_1
        0xcf -> :sswitch_3
        0x3e9 -> :sswitch_1
        0x430 -> :sswitch_3
        0x431 -> :sswitch_3
    .end sparse-switch
.end method

.method public processTorchlight(IZZ)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "interactive"    # Z

    .prologue
    .line 3133
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 3134
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 3135
    if-eqz p2, :cond_1

    .line 3136
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3137
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3149
    :cond_0
    :goto_0
    return-void

    .line 3139
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3142
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3143
    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightOn:Z

    if-eqz v0, :cond_0

    .line 3144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->TorchModeFlashSet(I)V

    .line 3145
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public sendBroadcastForAccessibility()V
    .locals 4

    .prologue
    .line 2044
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "sendBroadcastForAccessibility() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.HOME_TRIPLE_CLICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2047
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "com.samsung.permission.HOME_TRIPLE_CLICK"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2049
    return-void
.end method

.method public sendBroadcastForSafetyAssurance()V
    .locals 3

    .prologue
    .line 2083
    const-string v1, "SamsungWindowManager"

    const-string/jumbo v2, "sendBroadcastForSafetyAssurance() is called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isSafetyAssuranceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2086
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SAFETY_MESSAGE_TRIGGER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2087
    .local v0, "safetyMessage":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2088
    const-string v1, "SamsungWindowManager"

    const-string v2, "Safety mesage broadcasted"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    .end local v0    # "safetyMessage":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public sendSystemKeyToSideSync(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 3603
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    if-nez v1, :cond_1

    .line 3605
    sget-boolean v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System key send to sidesync.source keycode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3607
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.sidesync.source"

    const-string v2, "com.sec.android.sidesync.source.WimpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3608
    const-string v1, "com.sec.android.intent.action.SYSTEM_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3609
    const-string v1, "KEYCODE"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3610
    const-string v1, "ACTION"

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3611
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3612
    const/4 v1, 0x1

    .line 3614
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAppLockedStatus()V
    .locals 3

    .prologue
    .line 4457
    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4459
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 4460
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearAppLockedUnLockedApp()V

    .line 4462
    :cond_0
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 3274
    sput p1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCurrentUser:I

    .line 3275
    return-void
.end method

.method public setFingerPrintPending()V
    .locals 1

    .prologue
    .line 3117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFingerPrintPending:Z

    .line 3118
    return-void
.end method

.method public setMultiPhoneWindowManager(Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mMultiPhoneWindowManager:Lcom/android/server/policy/multiwindow/MultiPhoneWindowManager;

    .line 706
    return-void
.end method

.method public setProKioskReEnableVolumeUpKey(Z)V
    .locals 0
    .param p1, "proKioskReEnableVolumeUpKey"    # Z

    .prologue
    .line 3423
    iput-boolean p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mProKioskReEnableVolumeUpKey:Z

    .line 3424
    return-void
.end method

.method public setRotationLw(I)V
    .locals 7
    .param p1, "rotation"    # I

    .prologue
    .line 2968
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRotationLw() : rotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2970
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->WACOM_POLICY_FOLLOW_APPLICATION_ROTATION:Z

    if-nez v0, :cond_0

    .line 2972
    invoke-direct {p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWacomOffset(I)V

    .line 2977
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2978
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 2979
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    const/16 v3, 0xc

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    .line 2981
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    const-string v1, "PhoneWindowManager_rotation"

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2983
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2984
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    sget v1, Landroid/os/DVFSHelper;->PWM_ROTATION_BOOST_TIMEOUT:I

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2985
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mRotationBooster:Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "ROTATION_BOOSTER"

    invoke-virtual {v0, v1, v2}, Landroid/os/DVFSHelper;->onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2987
    return-void

    .line 2983
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public showBottomKeyPanel(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 3573
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3575
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3576
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v3, "Show"

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3578
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3583
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3576
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "Hide"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3579
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3580
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception showBottomKeyPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public showRecentApps(Z)Z
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 3243
    invoke-virtual {p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isShowOrHideRecentAppsAllowedByKNOX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3244
    const/4 v0, 0x1

    .line 3246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAodService(I)V
    .locals 4
    .param p1, "aodStartState"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 4492
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_mode"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "aod_night_mode"

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    .line 4494
    :cond_0
    iput p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAodStartState:I

    .line 4495
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$22;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4524
    :cond_1
    return-void
.end method

.method public stopEasyOneHandervice(I)V
    .locals 2
    .param p1, "stopReason"    # I

    .prologue
    .line 3511
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 3512
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$15;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3526
    :cond_0
    return-void
.end method

.method public systemBooted()V
    .locals 4

    .prologue
    .line 732
    iget-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 734
    :try_start_0
    const-string/jumbo v2, "kioskmode"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v1

    .line 736
    .local v1, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v1, :cond_0

    .line 737
    invoke-interface {v1}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;

    .line 738
    const-string v2, "SamsungWindowManager"

    const-string v3, "Blocked hw keys cache is being refreshed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    .end local v1    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_0
    :goto_0
    return-void

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SamsungWindowManager"

    const-string v3, "Exception while getting kiosk mode service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 2
    .param p1, "keyguardDelegate"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 711
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyRecent:Z

    .line 712
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewConfiguration;->hasFakeMenuKey(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFakeMenuKeyBack:Z

    .line 715
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasPermanentMenuKey:Z

    .line 716
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSupportManualScreenPinning:Z

    .line 717
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCombinationKeyManager:Lcom/android/server/policy/sec/CombinationKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/sec/CombinationKeyManager;->onSystemReady()V

    .line 719
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 720
    iget-object v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$7;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 728
    return-void
.end method

.method public takeScreenshot(I)V
    .locals 18
    .param p1, "event"    # I

    .prologue
    .line 2343
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isScreenCaptureEnabled()Z

    move-result v13

    if-nez v13, :cond_1

    .line 2344
    sget-boolean v13, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "SamsungWindowManager"

    const-string v14, "can not takescreenshot"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :cond_0
    :goto_0
    return-void

    .line 2348
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2349
    :try_start_0
    sget-boolean v13, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v13, :cond_2

    .line 2350
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "takeScreenshot : event = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mPerformEditAfterScreenCapture = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mServiceConnectionMap.size() = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2357
    .local v4, "curr":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v12

    .line 2358
    .local v12, "versionInfo":Landroid/os/Bundle;
    const-string v13, "2.0"

    const-string/jumbo v15, "version"

    invoke-virtual {v12, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2359
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "persona"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PersonaManager;

    .line 2360
    .local v9, "pm":Landroid/os/PersonaManager;
    invoke-virtual {v9}, Landroid/os/PersonaManager;->getForegroundUser()I

    move-result v6

    .line 2362
    .local v6, "currUser":I
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "screenshot: current active user is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "user"

    invoke-virtual {v13, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/UserManager;

    .line 2365
    .local v11, "um":Landroid/os/UserManager;
    invoke-virtual {v11, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 2366
    .local v5, "currInfo":Landroid/content/pm/UserInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2367
    new-instance v4, Landroid/os/UserHandle;

    .end local v4    # "curr":Landroid/os/UserHandle;
    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2370
    .restart local v4    # "curr":Landroid/os/UserHandle;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    .line 2371
    .local v8, "isKioskContainer":Z
    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    .line 2372
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v16, 0x1040b3b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 2373
    monitor-exit v14

    goto/16 :goto_0

    .line 2401
    .end local v4    # "curr":Landroid/os/UserHandle;
    .end local v5    # "currInfo":Landroid/content/pm/UserInfo;
    .end local v6    # "currUser":I
    .end local v8    # "isKioskContainer":Z
    .end local v9    # "pm":Landroid/os/PersonaManager;
    .end local v11    # "um":Landroid/os/UserManager;
    .end local v12    # "versionInfo":Landroid/os/Bundle;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 2377
    .restart local v4    # "curr":Landroid/os/UserHandle;
    .restart local v12    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasFlashAnnotateComponent:Z

    if-eqz v13, :cond_6

    .line 2378
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2379
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2380
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFlashAnnotateServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2381
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v7, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2401
    :cond_5
    :goto_1
    monitor-exit v14

    goto/16 :goto_0

    .line 2383
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v13

    const/4 v15, 0x3

    if-lt v13, v15, :cond_7

    .line 2384
    monitor-exit v14

    goto/16 :goto_0

    .line 2386
    :cond_7
    new-instance v2, Landroid/content/ComponentName;

    const-string v13, "com.android.systemui"

    const-string v15, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v2, v13, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    .local v2, "cn":Landroid/content/ComponentName;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2389
    .restart local v7    # "intent":Landroid/content/Intent;
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2390
    new-instance v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ServiceConnectionForCaptureEffect;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;I)V

    .line 2392
    .local v3, "conn":Landroid/content/ServiceConnection;
    const-string v13, "SamsungWindowManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " screenshot is taken for user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    invoke-virtual {v13, v7, v3, v15, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2396
    new-instance v10, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v3}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Landroid/content/ServiceConnection;)V

    .line 2397
    .local v10, "runnable":Lcom/android/server/policy/sec/SamsungPhoneWindowManager$ScreenshotRunnable;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mServiceConnectionMap:Ljava/util/Map;

    invoke-interface {v13, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2398
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v13, v10, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateBottomKeyPanelState(ZZ)V
    .locals 5
    .param p1, "init"    # Z
    .param p2, "maximize"    # Z

    .prologue
    .line 3550
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easybottompanel"

    const-string v4, "com.sec.android.easybottompanel.EasyBottomPanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3552
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYBOTTOMPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3554
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 3555
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3563
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3568
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3557
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p2, :cond_1

    .line 3558
    const-string v3, "Maximize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3564
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3565
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasyBottomPanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3560
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v3, "Minimize"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateEasyOneHandState(ZZZ)V
    .locals 7
    .param p1, "isLeftHand"    # Z
    .param p2, "isShow"    # Z
    .param p3, "isHomeKey"    # Z

    .prologue
    .line 3481
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->getCoverStateSwitch()Z

    move-result v3

    .line 3482
    .local v3, "isCoverOpen":Z
    const-string v4, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEasyOneHandState() isLeftHand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isShow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isCoverOpen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isHomeKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    if-nez v3, :cond_0

    .line 3505
    :goto_0
    return-void

    .line 3489
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.easyonehand"

    const-string v5, "com.sec.android.easyonehand.EasyOneHandService"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3491
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.action.EASYONEHAND_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3493
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_1

    .line 3494
    const-string v4, "StartByHomeKey"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3495
    const-string v4, "LeftHandMode"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3500
    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3501
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3502
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "SamsungWindowManager"

    const-string v5, "Exception updateEasyOneHandService: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3497
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_1
    const-string v4, "ForceHide"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateSettings()V
    .locals 30

    .prologue
    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 887
    .local v22, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 889
    :try_start_0
    const-string/jumbo v25, "double_tab_launch_component"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 890
    .local v5, "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 891
    const-string v25, "/"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 892
    .local v23, "titles":[Ljava/lang/String;
    if-eqz v23, :cond_0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    const/16 v27, 0x2

    move/from16 v0, v25

    move/from16 v1, v27

    if-lt v0, v1, :cond_0

    .line 893
    new-instance v20, Landroid/content/ComponentName;

    const/16 v25, 0x0

    aget-object v25, v23, v25

    const/16 v27, 0x1

    aget-object v27, v23, v27

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .local v20, "newComponentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 896
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mComponentNameOfDoubleTapOnHomeCommandIntent:Landroid/content/ComponentName;

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeCommandIntent:Landroid/content/Intent;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->isActivitiesAvailable(Landroid/content/Intent;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mAvailableDoublTapOnHomeCommand:Z

    .line 903
    .end local v20    # "newComponentName":Landroid/content/ComponentName;
    .end local v23    # "titles":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    .line 904
    const-string/jumbo v25, "double_tab_launch"

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 905
    .local v6, "doubleTapOnHomeBehavior":I
    const-string v25, "SamsungWindowManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "updateSettings(). settings changed. doubleTapOnHomeBehavior : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". mDoubleTapOnHomeBehavior : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". mDoubleTapHomeUser "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapHomeUser:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v6, :cond_1

    .line 909
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 914
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v27, "direct_access"

    const/16 v28, 0x0

    const/16 v29, -0x2

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v24

    .line 916
    .local v24, "tripleTapOnHomeBehavior":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 917
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTripleTapOnHomeBehavior:I

    .line 922
    :cond_2
    const-string/jumbo v25, "lcd_curtain"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    const-string v25, "accessibility_enabled"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_12

    const/16 v25, 0x1

    :goto_0
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPowerDoubleBehavior:Z

    .line 927
    const-string/jumbo v25, "edit_after_screen_capture"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_13

    const/16 v21, 0x1

    .line 929
    .local v21, "performEditAfterScreenCapture":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 930
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPerformEditAfterScreenCapture:Z

    .line 935
    :cond_3
    const-string/jumbo v25, "send_emergency_message"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_14

    const/4 v14, 0x1

    .line 937
    .local v14, "isSafetyAssuranceEnabled":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v14, :cond_4

    .line 938
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsSafetyAssuranceEnabled:Z

    .line 943
    :cond_4
    const-string v25, "access_control_use"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_15

    const/16 v17, 0x1

    .line 945
    .local v17, "isUseAccessControl":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 946
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsUseAccessControl:Z

    .line 948
    :cond_5
    const-string v25, "access_control_enabled"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_16

    const/4 v11, 0x1

    .line 950
    .local v11, "isEnabledAccessControl":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v11, :cond_6

    .line 951
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEnabledAccessControl:Z

    .line 956
    :cond_6
    const-string/jumbo v25, "kids_home_mode"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_17

    const/4 v12, 0x1

    .line 958
    .local v12, "isKidsMode":Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v12, :cond_7

    .line 959
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsKidsModeEnabled:Z

    .line 964
    :cond_7
    const-string/jumbo v25, "easy_mode_switch"

    const/16 v27, 0x1

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-nez v25, :cond_18

    const/4 v10, 0x1

    .line 966
    .local v10, "isEasyMode":Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v10, :cond_8

    .line 967
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsEasyModeEnabled:Z

    .line 969
    const-string/jumbo v25, "mobile_keyboard"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_19

    const/16 v19, 0x1

    .line 970
    .local v19, "mobileKeyboardEnabled":Z
    :goto_7
    if-eqz v19, :cond_8

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    if-nez v19, :cond_1a

    const/16 v25, 0x1

    :goto_8
    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V

    .line 978
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_8
    const-string/jumbo v25, "desk_home_screen_display"

    const/16 v27, 0x1

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_1b

    const/4 v9, 0x1

    .line 980
    .local v9, "isDockHomeEnabled":Z
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v9, :cond_9

    .line 981
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsDockHomeEnabled:Z

    .line 986
    :cond_9
    const-string/jumbo v25, "torchlight_enable"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_1c

    const/16 v16, 0x1

    .line 988
    .local v16, "isTorchlightEnabled":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_a

    .line 989
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mTorchlightEnabled:Z

    .line 994
    :cond_a
    const-string v25, "car_mode_on"

    const/16 v27, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    if-eqz v25, :cond_1d

    const/4 v7, 0x1

    .line 996
    .local v7, "isCheckDrivingMode":Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v7, :cond_b

    .line 997
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsCheckDrivingMode:Z

    .line 1000
    :cond_b
    const-string v25, "car_mode_blocking_system_key"

    const/16 v27, 0x0

    const/16 v28, -0x3

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_1e

    const/4 v4, 0x1

    .line 1002
    .local v4, "blockKeyForDrivingMode":Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v4, :cond_c

    .line 1003
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockKeyForDrivingMode:Z

    .line 1008
    :cond_c
    const-string/jumbo v25, "sidesync_source_presentation"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_1f

    const/4 v15, 0x1

    .line 1010
    .local v15, "isSideSyncSourcePresentationActived":Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v15, :cond_d

    .line 1011
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mSideSyncSourcePresentationActived:Z

    .line 1013
    const-string/jumbo v25, "mobile_keyboard"

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_20

    const/16 v19, 0x1

    .line 1014
    .restart local v19    # "mobileKeyboardEnabled":Z
    :goto_e
    if-eqz v19, :cond_d

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    move-object/from16 v27, v0

    const-wide/16 v28, 0x0

    if-nez v19, :cond_21

    const/16 v25, 0x1

    :goto_f
    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V

    .line 1022
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_d
    const-string/jumbo v25, "pen_attach_detach_vibration"

    const/16 v27, 0x1

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_22

    const/4 v13, 0x1

    .line 1024
    .local v13, "isPenNotifyVibrationChecked":Z
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v13, :cond_e

    .line 1025
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenNotifyVibrationChecked:Z

    .line 1030
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mHasDaynotePackage:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 1031
    const-string v25, "cover_note"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_23

    const/4 v8, 0x1

    .line 1034
    .local v8, "isCoverNote":Z
    :goto_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v8, :cond_f

    .line 1035
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCoverNoteEnabled:Z

    .line 1041
    .end local v8    # "isCoverNote":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->FolderTypeFeature(Landroid/content/Context;)I

    move-result v25

    if-eqz v25, :cond_11

    .line 1042
    const-string/jumbo v25, "folder_sounds_enabled"

    const/16 v27, 0x0

    const/16 v28, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v25

    if-eqz v25, :cond_24

    const/16 v18, 0x1

    .line 1044
    .local v18, "mFolderSound":Z
    :goto_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v18

    if-eq v0, v1, :cond_10

    .line 1045
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderSoundEnable:Z

    .line 1047
    :cond_10
    const-string/jumbo v25, "folder_open_sound"

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderOpenSound:Ljava/lang/String;

    .line 1049
    const-string/jumbo v25, "folder_close_sound"

    const/16 v27, -0x2

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mFolderCloseSound:Ljava/lang/String;

    .line 1053
    .end local v18    # "mFolderSound":Z
    :cond_11
    monitor-exit v26

    .line 1054
    return-void

    .line 922
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v21    # "performEditAfterScreenCapture":Z
    :cond_12
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 927
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 935
    .restart local v21    # "performEditAfterScreenCapture":Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 943
    .restart local v14    # "isSafetyAssuranceEnabled":Z
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 948
    .restart local v17    # "isUseAccessControl":Z
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 956
    .restart local v11    # "isEnabledAccessControl":Z
    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 964
    .restart local v12    # "isKidsMode":Z
    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_6

    .line 969
    .restart local v10    # "isEasyMode":Z
    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 971
    .restart local v19    # "mobileKeyboardEnabled":Z
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 978
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 986
    .restart local v9    # "isDockHomeEnabled":Z
    :cond_1c
    const/16 v16, 0x0

    goto/16 :goto_a

    .line 994
    .restart local v16    # "isTorchlightEnabled":Z
    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_b

    .line 1000
    .restart local v7    # "isCheckDrivingMode":Z
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 1008
    .restart local v4    # "blockKeyForDrivingMode":Z
    :cond_1f
    const/4 v15, 0x0

    goto/16 :goto_d

    .line 1013
    .restart local v15    # "isSideSyncSourcePresentationActived":Z
    :cond_20
    const/16 v19, 0x0

    goto/16 :goto_e

    .line 1015
    .restart local v19    # "mobileKeyboardEnabled":Z
    :cond_21
    const/16 v25, 0x0

    goto/16 :goto_f

    .line 1022
    .end local v19    # "mobileKeyboardEnabled":Z
    :cond_22
    const/4 v13, 0x0

    goto/16 :goto_10

    .line 1031
    .restart local v13    # "isPenNotifyVibrationChecked":Z
    :cond_23
    const/4 v8, 0x0

    goto/16 :goto_11

    .line 1042
    :cond_24
    const/16 v18, 0x0

    goto :goto_12

    .line 1053
    .end local v4    # "blockKeyForDrivingMode":Z
    .end local v5    # "componentNameOfDoubleTapOnHomeCommandIntent":Ljava/lang/String;
    .end local v6    # "doubleTapOnHomeBehavior":I
    .end local v7    # "isCheckDrivingMode":Z
    .end local v9    # "isDockHomeEnabled":Z
    .end local v10    # "isEasyMode":Z
    .end local v11    # "isEnabledAccessControl":Z
    .end local v12    # "isKidsMode":Z
    .end local v13    # "isPenNotifyVibrationChecked":Z
    .end local v14    # "isSafetyAssuranceEnabled":Z
    .end local v15    # "isSideSyncSourcePresentationActived":Z
    .end local v16    # "isTorchlightEnabled":Z
    .end local v17    # "isUseAccessControl":Z
    .end local v21    # "performEditAfterScreenCapture":Z
    .end local v24    # "tripleTapOnHomeBehavior":I
    :catchall_0
    move-exception v25

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25
.end method

.method public updateSideKeyPanelState(Z)V
    .locals 5
    .param p1, "isShow"    # Z

    .prologue
    .line 3531
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easysidepanel"

    const-string v4, "com.sec.android.easysidepanel.EasySidePanelService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3533
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.action.EASYSIDEPANEL_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 3535
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 3536
    const-string v3, "Softkey"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3540
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3545
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 3538
    .restart local v0    # "cn":Landroid/content/ComponentName;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v3, "ForceHide"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3541
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 3542
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception updateEasySidePanelState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateWakeupPrevention()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 4548
    iget-object v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4549
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4550
    :try_start_0
    const-string/jumbo v3, "wakeup_prevention"

    const/4 v5, 0x0

    const/4 v6, -0x2

    invoke-static {v1, v3, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4551
    .local v0, "isWakeupPrevention":Z
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    if-eq v3, v0, :cond_1

    .line 4552
    iput-boolean v0, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    .line 4553
    const-string v3, "SamsungWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateWakeupPrevention = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mIsWakeupPrevention:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    :cond_1
    const-string/jumbo v3, "wakeup_prevention_packages"

    const/4 v5, -0x2

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 4556
    .local v2, "wakeupPreventionPackages":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateWakeupPreventionPackages(Ljava/lang/String;)V

    .line 4557
    monitor-exit v4

    .line 4558
    return-void

    .line 4557
    .end local v0    # "isWakeupPrevention":Z
    .end local v2    # "wakeupPreventionPackages":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
