.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;,
        Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0x7d0

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x1f4

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0xc8

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xa0

.field private static DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field public static final DISPLAY_MAIN:I = 0x0

.field public static final DISPLAY_SUB:I = 0x1

.field private static final DUAL_SCREEN_COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static EDGE_COLLAPSE_EFFECT_ENABLED:Z = false

.field private static final EDGE_COLLAPSE_LCD_OFF_DURATION_MILLIS:I = 0x190

.field private static EDGE_UNITE_EFFECT_ENABLED:Z = false

.field private static final EDGE_UNITE_LCD_OFF_DURATION_MILLIS:I = 0x118

.field public static final HBM_LUX:F = 40000.0f

.field private static final LUX_FOR_DYNAMIC_ANTI_GLARE:F = 2.0f

.field private static final MARKER_TRACKING_RATE_FAST:I = 0x1f4

.field private static final MARKER_TRACKING_RATE_SLOW:I = 0x1f4

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field static final POWERSAVEMODE_BRIGHTNESS_OFFSET:I = 0x14

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x32

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY_FOR_COVER:I = 0xc8

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private final AVAILABLE_COLOR_WEAKNESS_MODE:Z

.field private final BRIGHTNESS_MODE_CLEAR_VIEW:I

.field private final BRIGHTNESS_MODE_COLOR_WEAKNESS:I

.field private final BRIGHTNESS_MODE_NONE:I

.field private final CLEAR_VIEW_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

.field private final CLEAR_VIEW_BRIGHTNESS_MODE_RATIO:F

.field private final COLOR_WEAKNESS_MODE_PATH:Ljava/lang/String;

.field private final COLOR_WEAKNESS_MODE_RATIO:F

.field private Manual_ADJ_Table:[I

.field private Manual_Adding_Brightness:[I

.field private Manual_Step:[I

.field private final PATH_DEVICE_BRIGHTNESS_STEP:Ljava/lang/String;

.field private final TAG_DAB:Ljava/lang/String;

.field private final TAG_SENSOR:Ljava/lang/String;

.field private final USE_DYNAMIC_ANTI_GLARE:Z

.field private USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

.field private mActualDisplayState:I

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mClearViewColorWeaknessEnabledMode:I

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFadeOnAnimator:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

.field private final mContext:Landroid/content/Context;

.field private mDisplayReadyLocked:Z

.field private final mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

.field private mDynamicAutoBrightnessEnabled:Z

.field private mFinalTemporaryScreenBrightness:I

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mIsCheckDynamicAntiGlareDone:Z

.field private mIsScreenOnWithoutBrightnessAnimation:Z

.field private mIsSupportedSensorhubAutoBrightness:Z

.field private mLastMultiScreenState:I

.field private mLastUpdateCoverStateTime:J

.field private mLatestAnimationTarget:I

.field private final mLock:Ljava/lang/Object;

.field public mManualAutoBrightnessAdjustment:F

.field private mOldDisplayPolicy:I

.field private mOldLowPowerMode:Z

.field private mOldUseTemporaryScreenBrightnessSettingOverride:Z

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPassRampAnimation:Z

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenAutoBrightness:Z

.field private mPendingScreenOff:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingScreenOnEvenThoughProximityPositiveLocked:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevOutdoorMode:Z

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateToPolicy:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScreenBrightnessBeforeFinal:I

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/display/RampAnimator",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnEvenThoughProximityPositive:Z

.field private mScreenOnOffAlreadyDone:Z

.field private mSection_Brightness:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mStrAutoBrightnessTablePacket:Ljava/lang/String;

.field private mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private mUnfinishedBusiness:Z

.field private mUseABCForDynamicAntiGlare:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mUsingVariableMaxManualBrightness:Z

.field private mWaitProximityToggled:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    const-class v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    .line 121
    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    .line 166
    sput-boolean v2, Lcom/android/server/display/DisplayPowerController;->EDGE_COLLAPSE_EFFECT_ENABLED:Z

    .line 171
    sput-boolean v1, Lcom/android/server/display/DisplayPowerController;->EDGE_UNITE_EFFECT_ENABLED:Z

    return-void

    :cond_0
    move v0, v2

    .line 117
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 446
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    .line 135
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseABCForDynamicAntiGlare:Z

    .line 136
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 142
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    .line 146
    const-string v2, "[DAB] "

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->TAG_DAB:Ljava/lang/String;

    .line 147
    const-string v2, "[sensor] "

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->TAG_SENSOR:Ljava/lang/String;

    .line 151
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLatestAnimationTarget:I

    .line 152
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenAutoBrightness:Z

    .line 209
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mOldUseTemporaryScreenBrightnessSettingOverride:Z

    .line 210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mOldLowPowerMode:Z

    .line 211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 213
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mFinalTemporaryScreenBrightness:I

    .line 216
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 302
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    .line 319
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 322
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 323
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 338
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    .line 350
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    .line 372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitProximityToggled:Z

    .line 373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 375
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastMultiScreenState:I

    .line 384
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    .line 385
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    .line 386
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    .line 390
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessBeforeFinal:I

    .line 394
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastUpdateCoverStateTime:J

    .line 404
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mStrAutoBrightnessTablePacket:Ljava/lang/String;

    .line 408
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUsingVariableMaxManualBrightness:Z

    .line 412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mSection_Brightness:I

    .line 413
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    .line 415
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    .line 420
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPrevOutdoorMode:Z

    .line 425
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_MODE_NONE:I

    .line 426
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_MODE_COLOR_WEAKNESS:I

    .line 427
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->BRIGHTNESS_MODE_CLEAR_VIEW:I

    .line 428
    const-string v2, "/sys/class/backlight/panel/weakness_hbm_comp"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->CLEAR_VIEW_BRIGHTNESS_MODE_PATH:Ljava/lang/String;

    .line 429
    const-string v2, "/sys/class/backlight/panel/weakness_hbm_comp"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->COLOR_WEAKNESS_MODE_PATH:Ljava/lang/String;

    .line 431
    const v2, 0x3f553f7d    # 0.833f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->CLEAR_VIEW_BRIGHTNESS_MODE_RATIO:F

    .line 432
    const/high16 v2, 0x3f200000    # 0.625f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->COLOR_WEAKNESS_MODE_RATIO:F

    .line 433
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    .line 439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsScreenOnWithoutBrightnessAnimation:Z

    .line 949
    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 969
    new-instance v2, Lcom/android/server/display/DisplayPowerController$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2335
    new-instance v2, Lcom/android/server/display/DisplayPowerController$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2449
    new-instance v2, Lcom/android/server/display/DisplayPowerController$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 2467
    new-instance v2, Lcom/android/server/display/DisplayPowerController$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 2485
    new-instance v2, Lcom/android/server/display/DisplayPowerController$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 2784
    new-instance v2, Lcom/android/server/display/DisplayPowerController$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 2824
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    .line 2825
    const-string v2, "/sys/class/backlight/panel/brightness_step"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->PATH_DEVICE_BRIGHTNESS_STEP:Ljava/lang/String;

    .line 447
    new-instance v2, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 448
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 450
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 451
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 452
    const-class v2, Landroid/view/WindowManagerPolicy;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    .line 453
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 454
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 457
    .local v23, "resources":Landroid/content/res/Resources;
    const v2, 0x10e005b

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v26

    .line 460
    .local v26, "screenBrightnessSettingMinimum":I
    const v2, 0x10e005e

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 463
    const v2, 0x10e0062

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 466
    const v2, 0x10e0063

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 468
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v2, v3, :cond_0

    .line 469
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected config_screenBrightnessDark ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to be less than or equal to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_screenBrightnessDim ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v2, v3, :cond_1

    .line 474
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected config_screenBrightnessDark ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to be less than or equal to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_screenBrightnessSettingMinimum ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    move/from16 v0, v26

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 485
    .local v8, "screenBrightnessRangeMinimum":I
    new-instance v2, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    .line 488
    const/16 v2, 0xff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 490
    const v2, 0x1120029

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 493
    const v2, 0x112004d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 496
    const v2, 0x10e0061

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 498
    .local v11, "lightSensorRate":I
    const v2, 0x10e005f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v12, v2

    .line 500
    .local v12, "brighteningLightDebounce":J
    const v2, 0x10e0060

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v14, v2

    .line 502
    .local v14, "darkeningLightDebounce":J
    const v2, 0x112004e

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 506
    .local v16, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    new-instance v2, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 508
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v2, :cond_2

    .line 510
    const v2, 0x11200c9

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    .line 512
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    if-eqz v2, :cond_4

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isSensorhubAutoBrightnessAvailable()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->initializeProperties()V

    .line 517
    const v2, 0x10e0064

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 519
    .local v7, "lightSensorWarmUpTimeConfig":I
    const v2, 0x1130001

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    .line 522
    .local v10, "dozeScaleFactor":F
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v20}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZLandroid/hardware/scontext/SContextManager;ZLcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 580
    .end local v7    # "lightSensorWarmUpTimeConfig":I
    .end local v10    # "dozeScaleFactor":F
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 587
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 599
    :cond_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/backlight/panel/weakness_hbm_comp"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 600
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_COLOR_WEAKNESS_MODE:Z

    .line 608
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->USE_DYNAMIC_ANTI_GLARE:Z

    .line 612
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/backlight/panel/brightness_step"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 613
    const-string v2, "/sys/class/backlight/panel/brightness_step"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 614
    .local v24, "sStep":Ljava/lang/String;
    if-eqz v24, :cond_b

    .line 615
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 616
    .local v27, "step":I
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@step : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", S -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v2, 0xff

    move/from16 v0, v27

    if-le v0, v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    .line 627
    .end local v24    # "sStep":Ljava/lang/String;
    .end local v27    # "step":I
    :goto_4
    new-instance v2, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    .line 629
    return-void

    .line 534
    :cond_4
    const v2, 0x1070025

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v22

    .line 536
    .local v22, "lux":[I
    const v2, 0x1070026

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v25

    .line 538
    .local v25, "screenBrightness":[I
    const v2, 0x10e0064

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 540
    .restart local v7    # "lightSensorWarmUpTimeConfig":I
    const v2, 0x1130001

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v10

    .line 544
    .restart local v10    # "dozeScaleFactor":F
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v6

    .line 545
    .local v6, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v6, :cond_5

    .line 546
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "must be monotic and have exactly one more entry than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessLevels (size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "which must be strictly increasing.  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Auto-brightness will be disabled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto/16 :goto_0

    .line 554
    :cond_5
    const/4 v2, 0x0

    aget v2, v25, v2

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v21

    .line 555
    .local v21, "bottom":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move/from16 v0, v21

    if-le v2, v0, :cond_6

    .line 556
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config_screenBrightnessDark ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") should be less than or equal to the first value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "config_autoBrightnessLcdBacklightValues ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_6
    move/from16 v0, v21

    if-ge v0, v8, :cond_7

    .line 562
    move/from16 v8, v21

    .line 564
    :cond_7
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v3, p0

    move-object/from16 v5, p4

    invoke-direct/range {v2 .. v20}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZLandroid/hardware/scontext/SContextManager;ZLcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    goto/16 :goto_0

    .line 602
    .end local v6    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v7    # "lightSensorWarmUpTimeConfig":I
    .end local v10    # "dozeScaleFactor":F
    .end local v21    # "bottom":I
    .end local v22    # "lux":[I
    .end local v25    # "screenBrightness":[I
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_COLOR_WEAKNESS_MODE:Z

    goto/16 :goto_1

    .line 608
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 617
    .restart local v24    # "sStep":Ljava/lang/String;
    .restart local v27    # "step":I
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 619
    .end local v27    # "step":I
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    goto/16 :goto_4

    .line 622
    .end local v24    # "sStep":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/scontext/SContextManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/DisplayPowerController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mStrAutoBrightnessTablePacket:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method private animateScreenBrightness(II)V
    .locals 4
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    const/4 v2, 0x0

    .line 1922
    const-string v1, "DisplayPowerController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animating brightness: target="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", rate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " (PSM:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", AB limit:("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ~ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ") MB Limit:("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ~ "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenAutoBrightness:Z

    if-eqz v0, :cond_1

    const-string v0, ", PendingAutoBrightness"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUsingVariableMaxManualBrightness:Z

    if-eqz v0, :cond_2

    const-string v0, ", mUsingVariableMaxManualBrightness"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_3

    .end local p2    # "rate":I
    :goto_2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1946
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1951
    :cond_0
    :goto_3
    return-void

    .line 1922
    .restart local p2    # "rate":I
    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move p2, v2

    .line 1937
    goto :goto_2

    .line 1947
    .end local p2    # "rate":I
    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method private animateScreenStateChange(IIZ)V
    .locals 10
    .param p1, "displayId"    # I
    .param p2, "target"    # I
    .param p3, "performScreenOffTransition"    # Z

    .prologue
    const/4 v9, 0x4

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2133
    if-eqz p1, :cond_1

    .line 2332
    :cond_0
    :goto_0
    return-void

    .line 2137
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    if-nez v2, :cond_0

    .line 2144
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2149
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animateScreenStateChange["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "]: target="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eq p2, v6, :cond_2

    .line 2155
    invoke-direct {p0, p1, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2156
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2159
    :cond_2
    if-ne p2, v4, :cond_b

    .line 2163
    invoke-direct {p0, p1, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2164
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animateScreenStateChange["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: return as screen on blocked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2168
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->USE_DYNAMIC_ANTI_GLARE:Z

    if-eqz v2, :cond_a

    .line 2174
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    cmpl-float v2, v2, v8

    if-nez v2, :cond_4

    .line 2175
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2222
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->USE_DYNAMIC_ANTI_GLARE:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    if-nez v2, :cond_0

    .line 2224
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    goto/16 :goto_0

    .line 2176
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v2, v7, v3}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2181
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->USE_DYNAMIC_ANTI_GLARE:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    if-nez v2, :cond_5

    .line 2182
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    if-ne v2, v4, :cond_0

    .line 2187
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v2

    if-eqz v2, :cond_7

    move v1, v6

    .line 2192
    .local v1, "slowDynamicAntiGlare":Z
    :goto_3
    if-eqz v1, :cond_8

    .line 2194
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2195
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x320

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2196
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2206
    :goto_4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->reset()V

    .line 2211
    .end local v1    # "slowDynamicAntiGlare":Z
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_1

    :cond_6
    move v3, v5

    .line 2176
    goto :goto_2

    :cond_7
    move v1, v5

    .line 2187
    goto :goto_3

    .line 2200
    .restart local v1    # "slowDynamicAntiGlare":Z
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 2201
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xa0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2202
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v3, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4

    .line 2213
    .end local v1    # "slowDynamicAntiGlare":Z
    :cond_9
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_1

    .line 2217
    :cond_a
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2218
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_1

    .line 2227
    :cond_b
    const/4 v2, 0x3

    if-ne p2, v2, :cond_d

    .line 2232
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 2238
    :cond_c
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2243
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2244
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_0

    .line 2245
    :cond_d
    if-ne p2, v9, :cond_10

    .line 2249
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 2256
    :cond_e
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-eq v2, v9, :cond_f

    .line 2257
    const/4 v2, 0x3

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2260
    invoke-direct {p0, p1, v9}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2264
    :cond_f
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2265
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_0

    .line 2268
    :cond_10
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2270
    const/4 v0, 0x2

    .line 2271
    .local v0, "colorFadeMode":I
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v2, :cond_14

    .line 2273
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->EDGE_UNITE_EFFECT_ENABLED:Z

    if-eqz v2, :cond_12

    .line 2274
    const/4 v0, 0x4

    .line 2287
    :goto_5
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isAlpmMode:Z

    if-eqz v2, :cond_15

    .line 2288
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_11

    .line 2289
    const-string v2, "DisplayPowerController"

    const-string v3, "!@ALPM : ColorFade exit"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 2292
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2293
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2295
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string v3, "ALPM : ColorFade exit"

    const-wide/16 v8, 0xa

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 2298
    :cond_11
    invoke-direct {p0, p1, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2299
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2326
    :goto_6
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->USE_DYNAMIC_ANTI_GLARE:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    if-eqz v2, :cond_0

    .line 2328
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    goto/16 :goto_0

    .line 2276
    :cond_12
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->EDGE_COLLAPSE_EFFECT_ENABLED:Z

    if-eqz v2, :cond_13

    .line 2277
    const/4 v0, 0x3

    goto :goto_5

    .line 2280
    :cond_13
    const/4 v0, 0x2

    goto :goto_5

    .line 2283
    :cond_14
    const/4 v0, 0x1

    goto :goto_5

    .line 2302
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    .line 2305
    invoke-direct {p0, p1, v6}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 2306
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 2309
    :cond_16
    if-eqz p3, :cond_17

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2311
    :cond_17
    if-eqz p3, :cond_18

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-eq v2, v6, :cond_18

    .line 2315
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_6

    .line 2320
    :cond_18
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->end()V

    goto :goto_6

    .line 2194
    :array_0
    .array-data 4
        0x3e23d70a    # 0.16f
        0x3f800000    # 1.0f
    .end array-data

    .line 2200
    :array_1
    .array-data 4
        0x3e851eb8    # 0.26f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private blockScreenOn()V
    .locals 4

    .prologue
    .line 1706
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 1707
    const-wide/32 v0, 0x20000

    const-string v2, "Screen on blocked"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 1708
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 1710
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 2755
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1916
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 2431
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2432
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2433
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 2435
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 13
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/high16 v12, 0x3fa00000    # 1.25f

    .line 2727
    :try_start_0
    array-length v2, p1

    .line 2728
    .local v2, "n":I
    new-array v5, v2, [F

    .line 2729
    .local v5, "x":[F
    new-array v6, v2, [F

    .line 2730
    .local v6, "y":[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, p1, v8

    invoke-static {v8}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v8

    aput v8, v6, v7

    .line 2731
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2732
    add-int/lit8 v7, v1, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    aput v7, v5, v1

    .line 2733
    aget v7, p1, v1

    invoke-static {v7}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v7

    aput v7, v6, v1

    .line 2731
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2736
    :cond_0
    invoke-static {v5, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v3

    .line 2737
    .local v3, "spline":Landroid/util/Spline;
    sget-boolean v7, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v7, :cond_1

    .line 2738
    const-string v7, "DisplayPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auto-brightness spline: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "v":F
    :goto_1
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    aget v7, p0, v7

    int-to-float v7, v7

    mul-float/2addr v7, v12

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    .line 2740
    const-string v7, "DisplayPowerController"

    const-string v8, "  %7.1f: %7.1f"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2739
    mul-float/2addr v4, v12

    goto :goto_1

    .line 2744
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "v":F
    .end local v5    # "x":[F
    .end local v6    # "y":[F
    :catch_0
    move-exception v0

    .line 2745
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v7, "DisplayPowerController"

    const-string v8, "Could not create auto-brightness spline."

    invoke-static {v7, v8, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2746
    const/4 v3, 0x0

    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    return-object v3
.end method

.method private debounceProximitySensor()V
    .locals 8

    .prologue
    .line 2411
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 2414
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2415
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 2417
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2418
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2419
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 2428
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 2423
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2424
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 2425
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v4, 0x0

    .line 2646
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2647
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsSupportedSensorhubAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsSupportedSensorhubAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStrAutoBrightnessTablePacket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mStrAutoBrightnessTablePacket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff.get(DISPLAY_MAIN)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff.get(DISPLAY_SUB)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2672
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2675
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.get(DISPLAY_MAIN).isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.get(DISPLAY_MAIN).isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2684
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2685
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 2688
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    .line 2689
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 2693
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2694
    const-string v0, "SEC concepts:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2695
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDynamicAutoBrightnessConfig:Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;

    # invokes: Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->dumpAutoBrightnessTables(Ljava/io/PrintWriter;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->access$400(Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;Ljava/io/PrintWriter;)V

    .line 2697
    return-void
.end method

.method private getClearViewBrightnessRatio(F)F
    .locals 6
    .param p1, "lux"    # F

    .prologue
    const/high16 v5, 0x42c80000    # 100.0f

    .line 2521
    const v0, 0x3f553f7d    # 0.833f

    .line 2522
    .local v0, "ratio":F
    cmpl-float v2, p1, v5

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 2523
    :cond_0
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorWeakness] getClearViewBrightnessRatio : lux is over 100. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 2527
    .end local v0    # "ratio":F
    .local v1, "ratio":F
    :goto_0
    return v1

    .line 2526
    .end local v1    # "ratio":F
    .restart local v0    # "ratio":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3fcccccd    # 1.6f

    const/high16 v4, 0x42ca0000    # 101.0f

    sub-float/2addr v4, p1

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Landroid/util/FloatMath;->pow(FF)F

    move-result v3

    div-float v0, v2, v3

    move v1, v0

    .line 2527
    .end local v0    # "ratio":F
    .restart local v1    # "ratio":F
    goto :goto_0
.end method

.method private getColumnOrder(I)I
    .locals 6
    .param p1, "manual_brightness"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 737
    if-ltz p1, :cond_0

    const/16 v5, 0xff

    if-le p1, v5, :cond_2

    .line 738
    :cond_0
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getColumnOrder: out of scope manual_brightness = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 759
    :cond_1
    :goto_0
    return v0

    .line 742
    :cond_2
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    aget v5, v5, v0

    if-le p1, v5, :cond_1

    .line 744
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    aget v0, v0, v1

    if-gt p1, v0, :cond_3

    move v0, v1

    .line 745
    goto :goto_0

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    aget v0, v0, v2

    if-gt p1, v0, :cond_4

    move v0, v2

    .line 747
    goto :goto_0

    .line 748
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    aget v0, v0, v3

    if-gt p1, v0, :cond_5

    move v0, v3

    .line 749
    goto :goto_0

    .line 750
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    if-gt p1, v0, :cond_6

    .line 751
    const/4 v0, 0x4

    goto :goto_0

    .line 752
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    if-gt p1, v0, :cond_7

    .line 753
    const/4 v0, 0x5

    goto :goto_0

    .line 754
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x6

    aget v0, v0, v1

    if-gt p1, v0, :cond_8

    .line 755
    const/4 v0, 0x6

    goto :goto_0

    .line 758
    :cond_8
    const-string v0, "DisplayPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getColumnOrder: has an error!!!  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 759
    goto :goto_0
.end method

.method private getFinalBrightness(I)I
    .locals 6
    .param p1, "origTarget"    # I

    .prologue
    const/4 v5, 0x0

    .line 2533
    move v0, p1

    .line 2536
    .local v0, "modiTarget":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isHbmEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2538
    add-int/lit8 v1, v0, -0x14

    .line 2539
    .local v1, "powerSaveModeBrightness":I
    if-lez v0, :cond_0

    .line 2540
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2541
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : [lowPowerMode]  modiTarget  -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    .end local v1    # "powerSaveModeBrightness":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    sub-int v3, v0, p1

    iput v3, v2, Lcom/android/server/display/DisplayPowerState;->mFinalBrightnessDiff:I

    .line 2551
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v2, :cond_2

    .line 2552
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-ltz v2, :cond_1

    .line 2553
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-le v0, v2, :cond_1

    .line 2554
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 2555
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : [autoBrightnessUpperLimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modiTarget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ltz v2, :cond_2

    .line 2559
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ge v0, v2, :cond_2

    .line 2560
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 2561
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : [autoBrightnessLowerLimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modiTarget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    if-ge v0, v2, :cond_3

    .line 2569
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    .line 2570
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : [mPowerRequest.minBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modiTarget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2572
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    if-le v0, v2, :cond_4

    .line 2573
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    .line 2574
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : [mPowerRequest.maxBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " modiTarget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2579
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-eqz v2, :cond_5

    .line 2580
    const-string v2, "DisplayPowerController"

    const-string/jumbo v3, "forceLcdBacklightOff!"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    const/4 v0, 0x0

    .line 2586
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 2588
    const/16 v0, 0xff

    .line 2589
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setOutdoorMode(Z)V

    .line 2594
    :cond_6
    :goto_0
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : Summary is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    return v0

    .line 2590
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPrevOutdoorMode:Z

    if-eqz v2, :cond_6

    .line 2591
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2, v5}, Lcom/android/server/display/AutomaticBrightnessController;->setOutdoorMode(Z)V

    goto :goto_0
.end method

.method private getManualADJInfo(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aget v0, v0, p1

    .line 725
    :goto_0
    return v0

    .line 724
    :cond_0
    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "getManualADJInfo error"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getManualAddingBrightnessInfo(I)I
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    aget v0, v0, p1

    .line 733
    :goto_0
    return v0

    .line 732
    :cond_0
    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "getManualAddingBrightnessInfo error"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 7
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v2, 0x1

    .line 2374
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 2375
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 2408
    :cond_0
    :goto_0
    return-void

    .line 2378
    :cond_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 2385
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2386
    if-eqz p3, :cond_4

    .line 2387
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2390
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUpdateCoverStateTime:J

    sub-long v0, p1, v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 2391
    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] handleProximitySensorEvent : Use extended debounce delay for cover"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    add-long v0, p1, v4

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2406
    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    goto :goto_0

    .line 2396
    :cond_3
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1

    .line 2400
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2401
    const-wide/16 v0, 0x32

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_1
.end method

.method private initManualAutobrightnessTable()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 633
    const-string v0, "DisplayPowerController"

    const-string v1, "!@initManualAutobrightnessTable"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    .line 635
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    .line 636
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    .line 638
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_1:Z

    if-eqz v0, :cond_0

    .line 639
    const-string v0, "DisplayPowerController"

    const-string v1, "!@Use SEC_MANUALTABLE_1 AutoBrightnessTable (Zero2 , noble)"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v3, v0, v3

    .line 641
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, -0x3

    aput v1, v0, v4

    .line 642
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, -0x2

    aput v1, v0, v5

    .line 643
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, -0x1

    aput v1, v0, v6

    .line 644
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v3, v0, v7

    .line 645
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 646
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, 0x6

    aput v5, v0, v1

    .line 648
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    aput v3, v0, v3

    .line 649
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x5c

    aput v1, v0, v4

    .line 650
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x68

    aput v1, v0, v5

    .line 651
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x6d

    aput v1, v0, v6

    .line 652
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x77

    aput v1, v0, v7

    .line 653
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/4 v1, 0x5

    const/16 v2, 0x7d

    aput v2, v0, v1

    .line 654
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/4 v1, 0x6

    const/16 v2, 0x83

    aput v2, v0, v1

    .line 656
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x62

    aput v1, v0, v3

    .line 657
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x78

    aput v1, v0, v4

    .line 658
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x94

    aput v1, v0, v5

    .line 659
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0xb6

    aput v1, v0, v6

    .line 660
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0xd1

    aput v1, v0, v7

    .line 661
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x5

    const/16 v2, 0xe9

    aput v2, v0, v1

    .line 662
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x6

    const/16 v2, 0xff

    aput v2, v0, v1

    .line 718
    :goto_0
    return-void

    .line 665
    :cond_0
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_MANUALTABLE_2:Z

    if-eqz v0, :cond_1

    .line 666
    const-string v0, "DisplayPowerController"

    const-string v1, "!@Use SEC_MANUALTABLE_2 AutoBrightnessTable (Hero)"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v3, v0, v3

    .line 668
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v3, v0, v4

    .line 669
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, -0x2

    aput v1, v0, v5

    .line 670
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, -0x1

    aput v1, v0, v6

    .line 671
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v3, v0, v7

    .line 672
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, 0x5

    aput v4, v0, v1

    .line 673
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, 0x6

    aput v5, v0, v1

    .line 675
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    aput v3, v0, v3

    .line 676
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    aput v3, v0, v4

    .line 677
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x63

    aput v1, v0, v5

    .line 678
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x64

    aput v1, v0, v6

    .line 679
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x65

    aput v1, v0, v7

    .line 680
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/4 v1, 0x5

    const/16 v2, 0x66

    aput v2, v0, v1

    .line 681
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/4 v1, 0x6

    const/16 v2, 0x67

    aput v2, v0, v1

    .line 683
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x7f

    aput v1, v0, v3

    .line 684
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x7f

    aput v1, v0, v4

    .line 685
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x9c

    aput v1, v0, v5

    .line 686
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0xb6

    aput v1, v0, v6

    .line 687
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0xd1

    aput v1, v0, v7

    .line 688
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x5

    const/16 v2, 0xe9

    aput v2, v0, v1

    .line 689
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x6

    const/16 v2, 0xff

    aput v2, v0, v1

    goto :goto_0

    .line 693
    :cond_1
    const-string v0, "DisplayPowerController"

    const-string v1, "!@Use Default Manual AutoBrightnessTable"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v3, v0, v3

    .line 695
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, -0x2

    aput v1, v0, v4

    .line 696
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, -0x1

    aput v1, v0, v5

    .line 697
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v3, v0, v6

    .line 698
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    aput v4, v0, v7

    .line 699
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 700
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_ADJ_Table:[I

    const/4 v1, 0x6

    aput v6, v0, v1

    .line 702
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    aput v3, v0, v3

    .line 703
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x5c

    aput v1, v0, v4

    .line 704
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x69

    aput v1, v0, v5

    .line 705
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x6f

    aput v1, v0, v6

    .line 706
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/16 v1, 0x7e

    aput v1, v0, v7

    .line 707
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/4 v1, 0x5

    const/16 v2, 0x86

    aput v2, v0, v1

    .line 708
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Adding_Brightness:[I

    const/4 v1, 0x6

    const/16 v2, 0x8f

    aput v2, v0, v1

    .line 710
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x61

    aput v1, v0, v3

    .line 711
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x85

    aput v1, v0, v4

    .line 712
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0x96

    aput v1, v0, v5

    .line 713
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0xaa

    aput v1, v0, v6

    .line 714
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/16 v1, 0xc1

    aput v1, v0, v7

    .line 715
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x5

    const/16 v2, 0xe6

    aput v2, v0, v1

    .line 716
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->Manual_Step:[I

    const/4 v1, 0x6

    const/16 v2, 0xff

    aput v2, v0, v1

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 884
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    new-instance v5, Lcom/android/server/display/ColorFade;

    invoke-direct {v5, v7}, Lcom/android/server/display/ColorFade;-><init>(I)V

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/android/server/display/DisplayPowerState;-><init>(ILcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;Landroid/content/Context;)V

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 891
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 892
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 894
    .local v0, "displayId":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 896
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xa0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 897
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 899
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 903
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->EDGE_UNITE_EFFECT_ENABLED:Z

    if-eqz v2, :cond_0

    .line 904
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x118

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 916
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 918
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/display/RampAnimator;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 920
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/RampAnimator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v2, v3}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 922
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerState;->setColorFadeStateRunnable(Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;)V

    .line 891
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 906
    :cond_0
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->EDGE_COLLAPSE_EFFECT_ENABLED:Z

    if-eqz v2, :cond_1

    .line 907
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 912
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    .line 934
    .end local v0    # "displayId":I
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 935
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 947
    :goto_2
    return-void

    .line 938
    :catch_0
    move-exception v2

    goto :goto_2

    .line 894
    nop

    :array_0
    .array-data 4
        0x3e851eb8    # 0.26f
        0x3f800000    # 1.0f
    .end array-data

    .line 899
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isSensorhubAutoBrightnessAvailable()Z
    .locals 4

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "isAvailable":Z
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 775
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 777
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_0

    .line 779
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    .line 782
    :cond_0
    return v0
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 2751
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 2700
    packed-switch p0, :pswitch_data_0

    .line 2708
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2702
    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    .line 2704
    :pswitch_1
    const-string v0, "Negative"

    goto :goto_0

    .line 2706
    :pswitch_2
    const-string v0, "Positive"

    goto :goto_0

    .line 2700
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 2827
    const-string v2, ""

    .line 2828
    .local v2, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2830
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2831
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    if-eqz v1, :cond_0

    .line 2832
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2833
    if-eqz v2, :cond_0

    .line 2834
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 2840
    :cond_0
    if-eqz v1, :cond_4

    .line 2842
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 2849
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 2852
    .end local v2    # "ret":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 2843
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 2845
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0

    .line 2837
    :catch_1
    move-exception v3

    .line 2840
    :goto_2
    if-eqz v0, :cond_1

    .line 2842
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2843
    :catch_2
    move-exception v3

    goto :goto_0

    .line 2840
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v0, :cond_2

    .line 2842
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2845
    :cond_2
    :goto_4
    throw v3

    .line 2852
    :cond_3
    const-string v2, ""

    goto :goto_1

    .line 2843
    :catch_3
    move-exception v4

    goto :goto_4

    .line 2840
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 2837
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :cond_4
    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 2713
    packed-switch p0, :pswitch_data_0

    .line 2721
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2715
    :pswitch_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    goto :goto_0

    .line 2717
    :pswitch_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    goto :goto_0

    .line 2719
    :pswitch_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    goto :goto_0

    .line 2713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2481
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2483
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 2458
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2463
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 2465
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2446
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2447
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 848
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 849
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 850
    monitor-exit v1

    .line 851
    return-void

    .line 850
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 854
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 855
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 856
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 857
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 858
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 860
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    .prologue
    .line 2438
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2439
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2441
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2442
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 2343
    if-eqz p1, :cond_1

    .line 2344
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 2347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2348
    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::registerListener"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 2352
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2355
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v1, "setProximitySensorEnabled::registerListener"

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 2371
    :cond_0
    :goto_0
    return-void

    .line 2359
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 2362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2363
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2364
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2365
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2366
    const-string v0, "DisplayPowerController"

    const-string v1, "[sensor] setProximitySensorEnabled::unregisterListener"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2368
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenOnAndElectronBeamExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1868
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastMultiScreenState:I

    packed-switch v0, :pswitch_data_0

    .line 1893
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 1894
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1896
    const-string v0, "DisplayPowerController"

    const-string v1, "!@setScreenOnAndElectronBeamExit[MAIN] : ElectronBeam exit"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1900
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerState;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 1901
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1871
    :pswitch_0
    const-string v0, "DisplayPowerController"

    const-string v1, "!@setScreenOnAndElectronBeamExit cancel : DUAL_SCREEN_ALL_OFF"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1868
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setScreenState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1768
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    move-result v0

    return v0
.end method

.method private setScreenState(II)Z
    .locals 9
    .param p1, "displayId"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1773
    if-eqz p1, :cond_0

    .line 1848
    :goto_0
    return v5

    .line 1776
    :cond_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, p2, :cond_4

    .line 1777
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-eq v4, v5, :cond_5

    move v3, v5

    .line 1778
    .local v3, "wasOn":Z
    :goto_1
    if-nez v3, :cond_1

    if-ne p2, v7, :cond_1

    .line 1779
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mIsScreenOnWithoutBrightnessAnimation:Z

    .line 1781
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4, p2}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 1785
    new-instance v2, Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    invoke-direct {v2}, Lcom/android/server/power/PowerManagerUtil$TraceDumper;-><init>()V

    .line 1786
    .local v2, "mTraceDumper":Lcom/android/server/power/PowerManagerUtil$TraceDumper;
    const/16 v4, 0x7d0

    invoke-virtual {v2, v4}, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->dumpTraceWithDelay(I)V

    .line 1789
    if-nez p1, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4, p2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    :cond_2
    :goto_2
    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->clear()V

    .line 1803
    if-ne p2, v5, :cond_6

    move v1, v5

    .line 1804
    .local v1, "isOff":Z
    :goto_3
    const/4 v4, 0x3

    if-eq p2, v4, :cond_3

    const/4 v4, 0x4

    if-ne p2, v4, :cond_7

    :cond_3
    move v0, v5

    .line 1805
    .local v0, "isDoze":Z
    :goto_4
    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v4, :cond_8

    .line 1807
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1808
    const-string v4, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[M OS] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " REPORTED_TO_POLICY_SCREEN_* -> REPORTED_TO_POLICY_SCREEN_OFF."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/RampAnimator;

    invoke-virtual {v4}, Lcom/android/server/display/RampAnimator;->reset()V

    .line 1812
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1819
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, p1}, Landroid/view/WindowManagerPolicy;->screenTurnedOff(I)V

    .line 1820
    const-string v4, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mWindowManagerPolicy.screenTurnedOff("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    .end local v0    # "isDoze":Z
    .end local v1    # "isOff":Z
    .end local v2    # "mTraceDumper":Lcom/android/server/power/PowerManagerUtil$TraceDumper;
    .end local v3    # "wasOn":Z
    :cond_4
    :goto_5
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v4, :cond_b

    move v4, v5

    :goto_6
    move v5, v4

    goto/16 :goto_0

    :cond_5
    move v3, v6

    .line 1777
    goto/16 :goto_1

    .restart local v2    # "mTraceDumper":Lcom/android/server/power/PowerManagerUtil$TraceDumper;
    .restart local v3    # "wasOn":Z
    :cond_6
    move v1, v6

    .line 1803
    goto/16 :goto_3

    .restart local v1    # "isOff":Z
    :cond_7
    move v0, v6

    .line 1804
    goto :goto_4

    .line 1823
    .restart local v0    # "isDoze":Z
    :cond_8
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_4

    .line 1827
    :cond_9
    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    .line 1828
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1829
    const-string v4, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[M OS] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " REPORTED_TO_POLICY_SCREEN_OFF -> REPORTED_TO_POLICY_SCREEN_TURNING_ON."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v4

    const/4 v7, 0x0

    cmpl-float v4, v4, v7

    if-nez v4, :cond_a

    .line 1831
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    .line 1841
    :goto_7
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v4, v7, p1}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;I)V

    .line 1842
    const-string v4, "DisplayPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mWindowManagerPolicy.screenTurningOn(mPendingScreenOnUnblocker, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1833
    :cond_a
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    goto :goto_7

    .end local v0    # "isDoze":Z
    .end local v1    # "isOff":Z
    .end local v2    # "mTraceDumper":Lcom/android/server/power/PowerManagerUtil$TraceDumper;
    .end local v3    # "wasOn":Z
    :cond_b
    move v4, v6

    .line 1848
    goto/16 :goto_6

    .line 1790
    .restart local v2    # "mTraceDumper":Lcom/android/server/power/PowerManagerUtil$TraceDumper;
    .restart local v3    # "wasOn":Z
    :catch_0
    move-exception v4

    goto/16 :goto_2
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    .line 1715
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v2, :cond_0

    .line 1716
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 1717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 1718
    .local v0, "delay":J
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    const-wide/32 v2, 0x20000

    const-string v4, "Screen on blocked"

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1721
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updateColorWeaknessMode(ZZ)V
    .locals 4
    .param p1, "useClearView"    # Z
    .param p2, "useColorWeakness"    # Z

    .prologue
    .line 2495
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->AVAILABLE_COLOR_WEAKNESS_MODE:Z

    if-nez v1, :cond_1

    .line 2517
    :cond_0
    :goto_0
    return-void

    .line 2498
    :cond_1
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 2502
    :cond_2
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    .line 2505
    .local v0, "oldClearViewColorWeaknessEnabledMode":I
    if-eqz p2, :cond_3

    .line 2506
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    .line 2513
    :goto_1
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    if-eq v0, v1, :cond_0

    .line 2514
    const-string v1, "/sys/class/backlight/panel/weakness_hbm_comp"

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 2515
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ColorWeakness] mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2507
    :cond_3
    if-eqz p1, :cond_4

    .line 2508
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    goto :goto_1

    .line 2510
    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    goto :goto_1
.end method

.method private updatePowerState()V
    .locals 37

    .prologue
    .line 979
    const/16 v23, 0x0

    .line 980
    .local v23, "mustInitialize":Z
    const/4 v13, 0x0

    .line 982
    .local v13, "autoBrightnessAdjustmentChanged":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 983
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v2, :cond_1

    .line 985
    monitor-exit v3

    .line 1698
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v2, :cond_4

    .line 989
    new-instance v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v2, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 990
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 991
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 993
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 994
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastMultiScreenState:I

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-wide v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastUpdateCoverStateTime:J

    .line 1004
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1005
    const/16 v23, 0x1

    .line 1031
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    if-nez v2, :cond_6

    const/16 v24, 0x1

    .line 1032
    .local v24, "mustNotify":Z
    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    if-eqz v23, :cond_3

    .line 1036
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 1040
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->updateColorWeaknessMode(ZZ)V

    .line 1073
    new-instance v34, Landroid/util/SparseArray;

    invoke-direct/range {v34 .. v34}, Landroid/util/SparseArray;-><init>()V

    .line 1074
    .local v34, "state":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    const/16 v16, -0x1

    .line 1075
    .local v16, "brightness":I
    new-instance v27, Landroid/util/SparseArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseArray;-><init>()V

    .line 1076
    .local v27, "performScreenOffTransition":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    .line 1077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 1080
    .local v18, "displayId":I
    if-nez v18, :cond_7

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v32, v0

    .line 1086
    .local v32, "requestedPolicy":I
    :goto_4
    packed-switch v32, :pswitch_data_0

    .line 1101
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1104
    :goto_5
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->$assertionsDisabled:Z

    if-nez v2, :cond_9

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1006
    .end local v16    # "brightness":I
    .end local v18    # "displayId":I
    .end local v21    # "i":I
    .end local v24    # "mustNotify":Z
    .end local v27    # "performScreenOffTransition":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .end local v32    # "requestedPolicy":I
    .end local v34    # "state":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v2, :cond_2

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5

    const/4 v13, 0x1

    .line 1010
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPrevOutdoorMode:Z

    .line 1012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2, v4}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1013
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v2, v4

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1014
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1016
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    or-int/2addr v2, v4

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1017
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 1019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastMultiScreenState:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mLastMultiScreenState:I

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-wide v4, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastUpdateCoverStateTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/display/DisplayPowerController;->mLastUpdateCoverStateTime:J

    .line 1027
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1028
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto/16 :goto_1

    .line 1032
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1007
    :cond_5
    const/4 v13, 0x0

    goto :goto_6

    .line 1031
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 1083
    .restart local v16    # "brightness":I
    .restart local v18    # "displayId":I
    .restart local v21    # "i":I
    .restart local v24    # "mustNotify":Z
    .restart local v27    # "performScreenOffTransition":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    .restart local v34    # "state":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policySub:I

    move/from16 v32, v0

    .restart local v32    # "requestedPolicy":I
    goto/16 :goto_4

    .line 1088
    :pswitch_0
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1089
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 1092
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v2, :cond_8

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 1095
    :cond_8
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_5

    .line 1076
    :cond_9
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 1111
    .end local v18    # "displayId":I
    .end local v32    # "requestedPolicy":I
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    cmpl-float v2, v3, v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    if-ne v3, v2, :cond_10

    .line 1114
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1115
    const-string v3, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlobalScreenStateHint : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->setGlobalScreenStateHint(I)V

    .line 1165
    :goto_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_1a

    .line 1169
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v28, v0

    .line 1170
    .local v28, "proximity":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-eqz v2, :cond_c

    .line 1171
    const/16 v28, 0x1

    .line 1174
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitProximityToggled:Z

    if-nez v2, :cond_d

    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v2, :cond_d

    .line 1175
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitProximityToggled:Z

    .line 1177
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitProximityToggled:Z

    if-eqz v2, :cond_e

    if-nez v28, :cond_e

    .line 1178
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1179
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitProximityToggled:Z

    .line 1182
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v2, :cond_16

    .line 1184
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v2, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 1188
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1189
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->setGlobalScreenStateHint(I)V

    .line 1190
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 1191
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 1192
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1277
    .end local v28    # "proximity":I
    :cond_f
    :goto_8
    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v21

    if-ge v0, v2, :cond_1b

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v18

    .line 1279
    .restart local v18    # "displayId":I
    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIZ)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1281
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Dual Screen Compatible] state["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_9

    .line 1119
    .end local v18    # "displayId":I
    :cond_10
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_11

    .line 1120
    const-string v3, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GlobalScreenStateHint : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " because"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state.get(DISPLAY_MAIN) ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " state.get(DISPLAY_SUB) ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mPowerState.get(DISPLAY_MAIN).getColorFadeLevel() ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mPowerState.get(DISPLAY_SUB).getColorFadeLevel()="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mPowerState.get(DISPLAY_MAIN).getScreenState() ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " mPowerState.get(DISPLAY_SUB).getScreenState() ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_11
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->setGlobalScreenStateHint(I)V

    goto/16 :goto_7

    .line 1196
    .restart local v28    # "proximity":I
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1198
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_15

    .line 1199
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    if-nez v2, :cond_13

    .line 1201
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1202
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerState;->setGlobalScreenStateHint(I)V

    .line 1203
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 1204
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(II)Z

    .line 1205
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 1206
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1207
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    goto/16 :goto_8

    .line 1209
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v2, :cond_f

    .line 1210
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1211
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 1212
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1213
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v2, :cond_14

    .line 1214
    const-string v2, "DisplayPowerController"

    const-string v3, "[sensor] proximity : mScreenOnEvenThoughProximityPositive is true"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_8

    .line 1219
    :cond_15
    if-nez v28, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v2, :cond_f

    .line 1220
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1221
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 1222
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1223
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_8

    .line 1230
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v2, :cond_19

    .line 1232
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1233
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_17

    .line 1234
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1236
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 1237
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1238
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 1239
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_8

    .line 1240
    :cond_17
    const/4 v2, 0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_f

    .line 1241
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1242
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v2, :cond_18

    .line 1243
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1244
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 1245
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1246
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 1248
    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_8

    .line 1253
    :cond_19
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1254
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1256
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v2, :cond_f

    .line 1257
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1258
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->setScreenOnAndElectronBeamExit()V

    .line 1259
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOnOffAlreadyDone:Z

    .line 1260
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto/16 :goto_8

    .line 1265
    .end local v28    # "proximity":I
    :cond_1a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_8

    .line 1292
    :cond_1b
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 1293
    const/16 v16, 0x0

    .line 1300
    :cond_1c
    const/16 v35, 0x0

    .line 1316
    .local v35, "useManualAutoBrightness":Z
    const/16 v36, 0x0

    .line 1317
    .local v36, "useVariableMaxManualBrightness":Z
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_MAXMANUAL_HBM:Z

    if-eqz v2, :cond_1e

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    if-nez v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1326
    const/16 v36, 0x1

    .line 1329
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUsingVariableMaxManualBrightness:Z

    move/from16 v0, v36

    if-eq v2, v0, :cond_1e

    .line 1330
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUsingVariableMaxManualBrightness:Z

    .line 1331
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePowerState : mUsingVariableMaxManualBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/DisplayPowerController;->mUsingVariableMaxManualBrightness:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseABCForDynamicAntiGlare:Z

    .line 1338
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->USE_DYNAMIC_ANTI_GLARE:Z

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isLidClosed:Z

    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v2, :cond_1f

    .line 1342
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseABCForDynamicAntiGlare:Z

    .line 1347
    :cond_1f
    const/4 v14, 0x0

    .line 1348
    .local v14, "autoBrightnessEnabled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_24

    .line 1349
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v2, :cond_3b

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_20

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3b

    :cond_20
    const/4 v15, 0x1

    .line 1351
    .local v15, "autoBrightnessEnabledInDoze":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v2, :cond_3c

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21

    if-eqz v15, :cond_3c

    :cond_21
    if-gez v16, :cond_3c

    const/4 v14, 0x1

    .line 1354
    :goto_b
    if-eqz v13, :cond_3d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    if-eqz v2, :cond_3d

    const/4 v6, 0x1

    .line 1358
    .local v6, "userInitiatedChange":Z
    :goto_c
    if-nez v35, :cond_22

    if-nez v36, :cond_22

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUseABCForDynamicAntiGlare:Z

    if-eqz v2, :cond_3e

    :cond_22
    const/16 v25, 0x1

    .line 1361
    .local v25, "needAutomaticBrightnessController":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v14, :cond_23

    if-eqz v25, :cond_3f

    :cond_23
    const/4 v3, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_40

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mManualAutoBrightnessAdjustment:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/display/DisplayPowerController;->mUsingVariableMaxManualBrightness:Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->temporaryScreenBrightnessSettingOverride:I

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZFZZZZFZZI)V

    .line 1385
    .end local v6    # "userInitiatedChange":Z
    .end local v15    # "autoBrightnessEnabledInDoze":Z
    .end local v25    # "needAutomaticBrightnessController":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v2, :cond_25

    if-eqz v16, :cond_25

    .line 1387
    const/16 v16, 0xff

    .line 1391
    :cond_25
    const/16 v33, 0x0

    .line 1393
    .local v33, "slowChange":Z
    const/16 v22, 0x0

    .line 1395
    .local v22, "isDarkening":Z
    if-gez v16, :cond_44

    .line 1396
    if-eqz v14, :cond_26

    .line 1397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v16

    .line 1400
    :cond_26
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenAutoBrightness:Z

    .line 1401
    if-ltz v16, :cond_43

    .line 1402
    if-eqz v14, :cond_41

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1404
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v16

    .line 1405
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v2, :cond_27

    if-nez v13, :cond_27

    .line 1406
    const/16 v33, 0x1

    .line 1408
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mLatestAnimationTarget:I

    move/from16 v0, v16

    if-lt v2, v0, :cond_27

    .line 1409
    const/16 v22, 0x1

    .line 1413
    :cond_27
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1433
    :goto_10
    if-gez v16, :cond_29

    .line 1434
    if-eqz v35, :cond_29

    .line 1435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isManualAutoBrightnessValid()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1436
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mSection_Brightness:I

    if-gez v2, :cond_45

    .line 1437
    const-string v2, "DisplayPowerController"

    const-string v3, "[UseManualAutoBrightness] mSection_Brightness < 0"

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_28
    :goto_11
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->ZERO_PROJECT:Z

    if-eqz v2, :cond_29

    .line 1452
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mSection_Brightness:I

    if-ltz v2, :cond_29

    .line 1454
    move/from16 v26, v16

    .line 1456
    .local v26, "oldBrightness":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_47

    .line 1457
    const/high16 v29, 0x3f200000    # 0.625f

    .line 1464
    .local v29, "ratio":F
    :goto_12
    move/from16 v0, v16

    int-to-float v2, v0

    mul-float v2, v2, v29

    float-to-int v0, v2

    move/from16 v16, v0

    .line 1465
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ColorWeakness] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ratio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    .end local v26    # "oldBrightness":I
    .end local v29    # "ratio":F
    :cond_29
    if-gez v16, :cond_2b

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2a

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2b

    .line 1477
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    move/from16 v16, v0

    .line 1484
    :cond_2b
    if-gez v16, :cond_2c

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v16

    .line 1491
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceDimBrightness:Z

    if-eqz v2, :cond_30

    .line 1492
    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v0, v16

    if-le v0, v2, :cond_2e

    .line 1493
    add-int/lit8 v2, v16, -0xa

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1496
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v2, :cond_2f

    .line 1497
    const/16 v33, 0x0

    .line 1499
    :cond_2f
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 1519
    :cond_30
    if-eqz v14, :cond_31

    .line 1520
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenAutoBrightness:Z

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUsingVariableMaxManualBrightness:Z

    if-nez v2, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1526
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessBeforeFinal:I

    .line 1533
    :cond_31
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mLatestAnimationTarget:I

    move/from16 v0, v16

    if-eq v2, v0, :cond_32

    .line 1534
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mLatestAnimationTarget:I

    .line 1537
    :cond_32
    move/from16 v17, v16

    .line 1538
    .local v17, "brightnessBeforeFinal":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->getFinalBrightness(I)I

    move-result v16

    .line 1543
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/display/DisplayPowerState;->mUseMarkTracker:Z

    .line 1544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 1549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_34

    .line 1550
    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_33

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4e

    .line 1593
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    if-nez v2, :cond_4d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsScreenOnWithoutBrightnessAnimation:Z

    if-nez v2, :cond_4d

    .line 1595
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    if-eqz v2, :cond_4b

    .line 1596
    if-eqz v33, :cond_4a

    if-eqz v22, :cond_49

    const/16 v2, 0x1f4

    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1618
    :cond_34
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/display/DisplayPowerController;->mOldDisplayPolicy:I

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mOldLowPowerMode:Z

    .line 1626
    const/16 v31, 0x1

    .line 1633
    .local v31, "readySub":Z
    move/from16 v20, v31

    .line 1639
    .local v20, "finishedSub":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_4f

    if-eqz v31, :cond_4f

    const/16 v30, 0x1

    .line 1645
    .local v30, "ready":Z
    :goto_15
    if-eqz v30, :cond_50

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_50

    if-eqz v20, :cond_50

    const/16 v19, 0x1

    .line 1650
    .local v19, "finished":Z
    :goto_16
    if-eqz v30, :cond_35

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_35

    .line 1651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    .line 1652
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:Landroid/util/SparseArray;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1653
    const-string v2, "DisplayPowerController"

    const-string v3, "[M OS] 0 Notify policy about screen turned on."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-string v2, "DisplayPowerController"

    const-string v3, "[M OS] 0 REPORTED_TO_POLICY_SCREEN_TURNING_ON -> REPORTED_TO_POLICY_SCREEN_ON."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    .line 1667
    :cond_35
    if-nez v19, :cond_37

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v2, :cond_37

    .line 1668
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_36

    .line 1669
    const-string v2, "DisplayPowerController"

    const-string v3, "Unfinished business..."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1672
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1676
    :cond_37
    if-eqz v30, :cond_39

    if-eqz v24, :cond_39

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1679
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v2, :cond_38

    .line 1680
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1682
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_38

    .line 1683
    const-string v2, "DisplayPowerController"

    const-string v4, "Display ready!"

    invoke-static {v2, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :cond_38
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1687
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 1691
    :cond_39
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v2, :cond_0

    .line 1692
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v2, :cond_3a

    .line 1693
    const-string v2, "DisplayPowerController"

    const-string v3, "Finished business..."

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v2}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto/16 :goto_0

    .line 1349
    .end local v17    # "brightnessBeforeFinal":I
    .end local v19    # "finished":Z
    .end local v20    # "finishedSub":I
    .end local v22    # "isDarkening":Z
    .end local v30    # "ready":Z
    .end local v31    # "readySub":Z
    .end local v33    # "slowChange":Z
    :cond_3b
    const/4 v15, 0x0

    goto/16 :goto_a

    .line 1351
    .restart local v15    # "autoBrightnessEnabledInDoze":Z
    :cond_3c
    const/4 v14, 0x0

    goto/16 :goto_b

    .line 1354
    :cond_3d
    const/4 v6, 0x0

    goto/16 :goto_c

    .line 1358
    .restart local v6    # "userInitiatedChange":Z
    :cond_3e
    const/16 v25, 0x0

    goto/16 :goto_d

    .line 1361
    .restart local v25    # "needAutomaticBrightnessController":Z
    :cond_3f
    const/4 v3, 0x0

    goto/16 :goto_e

    :cond_40
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 1416
    .end local v6    # "userInitiatedChange":Z
    .end local v15    # "autoBrightnessEnabledInDoze":Z
    .end local v25    # "needAutomaticBrightnessController":Z
    .restart local v22    # "isDarkening":Z
    .restart local v33    # "slowChange":Z
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mLatestAnimationTarget:I

    move/from16 v16, v0

    .line 1419
    :goto_17
    const/16 v33, 0x0

    .line 1420
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1421
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenAutoBrightness:Z

    goto/16 :goto_10

    .line 1416
    :cond_42
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v16, v0

    goto :goto_17

    .line 1425
    :cond_43
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_10

    .line 1428
    :cond_44
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_10

    .line 1439
    :cond_45
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mSection_Brightness:I

    if-nez v2, :cond_46

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v16, v0

    goto/16 :goto_11

    .line 1442
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v16

    .line 1443
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mSection_Brightness:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/display/DisplayPowerController;->getManualAddingBrightnessInfo(I)I

    move-result v2

    add-int v16, v16, v2

    .line 1444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_28

    .line 1447
    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UseManualAutoBrightness] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1458
    .restart local v26    # "oldBrightness":I
    :cond_47
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/display/DisplayPowerController;->mClearViewColorWeaknessEnabledMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_48

    .line 1459
    const v29, 0x3f553f7d    # 0.833f

    .restart local v29    # "ratio":F
    goto/16 :goto_12

    .line 1461
    .end local v29    # "ratio":F
    :cond_48
    const v29, 0x3f553f7d    # 0.833f

    .restart local v29    # "ratio":F
    goto/16 :goto_12

    .line 1596
    .end local v26    # "oldBrightness":I
    .end local v29    # "ratio":F
    .restart local v17    # "brightnessBeforeFinal":I
    :cond_49
    const/16 v2, 0x1f4

    goto/16 :goto_13

    :cond_4a
    const/16 v2, 0x7d0

    goto/16 :goto_13

    .line 1601
    :cond_4b
    if-eqz v33, :cond_4c

    const/16 v2, 0x1f4

    :goto_18
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_14

    :cond_4c
    const/16 v2, 0x7d0

    goto :goto_18

    .line 1607
    :cond_4d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 1608
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsScreenOnWithoutBrightnessAnimation:Z

    if-eqz v2, :cond_34

    if-lez v16, :cond_34

    .line 1609
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/display/DisplayPowerController;->mIsScreenOnWithoutBrightnessAnimation:Z

    goto/16 :goto_14

    .line 1614
    :cond_4e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_14

    .line 1639
    .restart local v20    # "finishedSub":I
    .restart local v31    # "readySub":Z
    :cond_4f
    const/16 v30, 0x0

    goto/16 :goto_15

    .line 1645
    .restart local v30    # "ready":Z
    :cond_50
    const/16 v19, 0x0

    goto/16 :goto_16

    .line 1686
    .restart local v19    # "finished":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 1086
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2600
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2601
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2602
    const-string v0, "Display Power Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2611
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2612
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDarkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessBeforeFinal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessBeforeFinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2629
    const-string v0, "  MANUAL_AUTOBRIGHTNESS_FEATURE=false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  useManualAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isManualAutoBrightnessValid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_DYNAMIC_ANTI_GLARE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->USE_DYNAMIC_ANTI_GLARE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsCheckDynamicAntiGlareDone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsCheckDynamicAntiGlareDone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_SLOW_AUTO_BRIGHTNESS_CHANGE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->USE_SLOW_AUTO_BRIGHTNESS_CHANGE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 2643
    return-void

    .line 2609
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentScreenBrightnessBeforeFinal()I
    .locals 1

    .prologue
    .line 2860
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessBeforeFinal:I

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 802
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 803
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestPowerState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", waitForNegativeProximity="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 808
    const/4 v0, 0x0

    .line 810
    .local v0, "changed":Z
    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v1, :cond_1

    .line 812
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 813
    const/4 v0, 0x1

    .line 817
    :cond_1
    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    if-nez v1, :cond_2

    .line 819
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 820
    const/4 v0, 0x1

    .line 821
    const-string v1, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPendingScreenOnEvenThoughProximityPositiveLocked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_6

    .line 827
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 828
    const/4 v0, 0x1

    .line 834
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 835
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 838
    :cond_4
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v1, :cond_5

    .line 839
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 840
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 843
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v2

    return v1

    .line 829
    :cond_6
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 831
    const/4 v0, 0x1

    goto :goto_0

    .line 844
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setActualDisplayState(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "realDisplayState"    # I

    .prologue
    .line 2817
    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 2819
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2820
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    .prologue
    .line 1702
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 1703
    return-void
.end method
