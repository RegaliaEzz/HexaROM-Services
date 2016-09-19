.class Lcom/android/server/accessibility/SamsungTouchExplorer;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$1;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;
    }
.end annotation


# static fields
.field private static final ACTION_DOWN_DELAY_TIMEOUT:I = 0x32

.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final GESTURE_DETECTION_VELOCITY_DIP:I = 0x3e8

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungTouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final MULTI_FINGER_TAP_SLOP_MULTIPLIER:F = 1.1f

.field private static final MULTI_FINGER_TAP_TIME_OFFSET:I = 0x82

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_ONE_FINGER_GESTURE_DETECTING:I = 0x5

.field private static final STATE_THREE_FINGER_GESTURE_DETECTING:I = 0x7

.field private static final STATE_TOUCH_EXPLORING:I = 0x1

.field private static final STATE_TWO_FINGER_GESTURE_DETECTING:I = 0x6

.field private static final THREE_FINGER_TAP_TIME_OFFSET:I = 0xa0

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private isLongPressPerformed:Z

.field private isMovedThresholdDistance:Z

.field private isThreeTapMovementON:Z

.field private mActionDownDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

.field private mActionDownLock:Z

.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

.field private final mDoubleTapSlop:I

.field private final mDoubleTapTimeout:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

.field private mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

.field private mPreviousX:F

.field private mPreviousY:F

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

.field private final mScaledGestureDetectionVelocity:I

.field private final mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private mStartX:F

.field private mStartY:F

.field private final mStatusBarHeight:F

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeBuffers:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field

.field private mTapAndHoldInProgression:Z

.field private final mTapTimeout:I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchExplorationInProgress:Z

.field private final mTouchSlop:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private waitingForNextPointer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-array v2, v6, [Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    .line 126
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    .line 135
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    .line 190
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 215
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    .line 218
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    .line 244
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 256
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempRect:Landroid/graphics/Rect;

    .line 259
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    .line 274
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 286
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    .line 301
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    .line 304
    iput-boolean v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    .line 312
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 314
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->getStatusBarHeight()F

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStatusBarHeight:F

    .line 315
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    .line 316
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 317
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I

    .line 318
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    .line 319
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I

    .line 320
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    .line 321
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    .line 322
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    .line 323
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    .line 324
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    .line 325
    const v2, 0x1100002

    invoke-static {p1, v2}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    .line 326
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    .line 327
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    .line 328
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v2}, Landroid/gesture/GestureLibrary;->load()Z

    .line 329
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    .line 330
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    .line 331
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    const/16 v3, 0x400

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    .line 334
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    const/high16 v3, 0x200000

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    .line 337
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    .line 338
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 339
    .local v0, "density":F
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    .line 341
    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledGestureDetectionVelocity:I

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 343
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_0
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

    invoke-direct {v2, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

    .line 346
    new-instance v2, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-direct {v2, p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$1;)V

    iput-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    .line 347
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/graphics/Point;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/AccessibilityManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    return p1
.end method

.method static synthetic access$3000(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/server/accessibility/SamsungTouchExplorer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/server/accessibility/SamsungTouchExplorer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;
    .param p1, "x1"    # Z

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapTimeout:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/accessibility/SamsungTouchExplorer;

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapTimeout:I

    return v0
.end method

.method private arePointerMovedEnough(I)Z
    .locals 12
    .param p1, "pointerCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 1281
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 1282
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 1283
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v7, v3, Landroid/gesture/GesturePoint;->x:F

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v3, v3, Landroid/gesture/GesturePoint;->x:F

    sub-float v0, v7, v3

    .line 1285
    .local v0, "deltaX":F
    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v7, v3, Landroid/gesture/GesturePoint;->y:F

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gesture/GesturePoint;

    iget v3, v3, Landroid/gesture/GesturePoint;->y:F

    sub-float v1, v7, v3

    .line 1287
    .local v1, "deltaY":F
    float-to-double v8, v0

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 1288
    .local v4, "moveDelta":D
    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    int-to-float v3, v3

    const v7, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v7

    float-to-double v8, v3

    cmpg-double v3, v4, v8

    if-gtz v3, :cond_1

    move v3, v6

    .line 1295
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v4    # "moveDelta":D
    :goto_1
    return v3

    :cond_0
    move v3, v6

    .line 1292
    goto :goto_1

    .line 1281
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    .restart local v4    # "moveDelta":D
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1295
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    .end local v4    # "moveDelta":D
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 363
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 388
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 389
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 390
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 391
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 392
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 393
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 395
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->clear()V

    .line 396
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->clear()V

    .line 398
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->clear()V

    .line 401
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    .line 402
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    .line 403
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    .line 404
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 405
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0}, Lcom/android/server/accessibility/EventStreamTransformation;->clear()V

    .line 408
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    .line 409
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 410
    return-void

    .line 366
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_0

    .line 369
    :pswitch_2
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 371
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 375
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 379
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 383
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 384
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    goto :goto_0

    .line 363
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private clearMultiGestureStrokes()V
    .locals 2

    .prologue
    .line 3170
    const/4 v0, 0x0

    .local v0, "strokeBufferId":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 3171
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3170
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3173
    :cond_0
    return-void
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 6
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 2279
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    .line 2280
    .local v0, "lastExploreEvent":Landroid/view/MotionEvent;
    if-eqz v0, :cond_3

    .line 2281
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 2282
    .local v1, "lastExplorePointerIndex":I
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 2283
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 2292
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->isTopActivityCalenders()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2321
    .end local v1    # "lastExplorePointerIndex":I
    :cond_0
    :goto_0
    return v2

    .line 2304
    .restart local v1    # "lastExplorePointerIndex":I
    :cond_1
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->isLastExploreWindowIsSIPType(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 2309
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 2311
    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 2312
    goto :goto_0

    .line 2318
    .end local v1    # "lastExplorePointerIndex":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    .line 2319
    goto :goto_0

    .line 2321
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private computeInjectionAction(II)I
    .locals 3
    .param p1, "actionMasked"    # I
    .param p2, "pointerIndex"    # I

    .prologue
    const/4 v1, 0x1

    .line 1678
    sparse-switch p1, :sswitch_data_0

    .line 1701
    .end local p1    # "actionMasked":I
    :goto_0
    return p1

    .line 1681
    .restart local p1    # "actionMasked":I
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 1683
    .local v0, "injectedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    const/4 p1, 0x0

    goto :goto_0

    .line 1686
    :cond_0
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x5

    goto :goto_0

    .line 1691
    .end local v0    # "injectedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 1693
    .restart local v0    # "injectedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v2

    if-ne v2, v1, :cond_1

    move p1, v1

    .line 1694
    goto :goto_0

    .line 1696
    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 p1, v1, 0x6

    goto :goto_0

    .line 1678
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 2331
    packed-switch p0, :pswitch_data_0

    .line 2345
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2333
    :pswitch_1
    const-string v0, "STATE_TOUCH_EXPLORING"

    .line 2343
    :goto_0
    return-object v0

    .line 2335
    :pswitch_2
    const-string v0, "STATE_DRAGGING"

    goto :goto_0

    .line 2337
    :pswitch_3
    const-string v0, "STATE_DELEGATING"

    goto :goto_0

    .line 2339
    :pswitch_4
    const-string v0, "STATE_ONE_FINGER_GESTURE_DETECTING"

    goto :goto_0

    .line 2341
    :pswitch_5
    const-string v0, "STATE_TWO_FINGER_GESTURE_DETECTING"

    goto :goto_0

    .line 2343
    :pswitch_6
    const-string v0, "STATE_THREE_FINGER_GESTURE_DETECTING"

    goto :goto_0

    .line 2331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getStatusBarHeight()F
    .locals 5

    .prologue
    .line 2244
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "status_bar_height"

    const-string/jumbo v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2245
    .local v0, "resourceId":I
    if-lez v0, :cond_0

    .line 2246
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 2248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/high16 v5, 0x200000

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 970
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1008
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1011
    :goto_0
    return-void

    .line 973
    :pswitch_1
    const-string v0, "SamsungTouchExplorer"

    const-string v1, "Delegating state can only be reached if there is at least one pointer down!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 975
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 976
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 977
    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 982
    :pswitch_2
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_1

    .line 984
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isOffsetRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    .line 989
    :cond_0
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    .line 990
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    .line 991
    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    .line 995
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 998
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 999
    invoke-direct {p0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1001
    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 1004
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 873
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    shl-int v11, v14, v15

    .line 874
    .local v11, "pointerIdBits":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    .line 961
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 878
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 879
    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 880
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 881
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 886
    :pswitch_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 887
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 888
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 890
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 893
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    packed-switch v14, :pswitch_data_1

    .line 927
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 929
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 932
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 898
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 899
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 900
    .local v8, "firstPtrX":F
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 901
    .local v9, "firstPtrY":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    .line 902
    .local v12, "secondPtrX":F
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    .line 904
    .local v13, "secondPtrY":F
    sub-float v4, v8, v12

    .line 905
    .local v4, "deltaX":F
    sub-float v5, v9, v13

    .line 906
    .local v5, "deltaY":F
    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    .line 908
    .local v6, "distance":D
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v14, v14

    cmpl-double v14, v6, v14

    if-lez v14, :cond_2

    .line 909
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 913
    :cond_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 918
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "distance":D
    .end local v8    # "firstPtrX":F
    .end local v9    # "firstPtrY":F
    .end local v12    # "secondPtrX":F
    .end local v13    # "secondPtrY":F
    :cond_3
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 920
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 923
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 937
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 938
    .local v10, "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_0

    .line 939
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 941
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 945
    .end local v10    # "pointerId":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 947
    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 949
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    .line 950
    .restart local v10    # "pointerId":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_4

    .line 951
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 953
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 955
    :cond_4
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 958
    .end local v10    # "pointerId":I
    :pswitch_7
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    .line 893
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1299
    if-nez p1, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 1303
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1304
    .local v7, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1305
    .local v8, "y":F
    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousX:F

    .line 1306
    iput v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousY:F

    .line 1307
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1310
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1311
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1312
    .restart local v8    # "y":F
    iget v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousX:F

    sub-float v9, v7, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1313
    .local v1, "dX":F
    iget v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1314
    .local v2, "dY":F
    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v1, v9

    if-gez v9, :cond_2

    const/high16 v9, 0x40400000    # 3.0f

    cmpl-float v9, v2, v9

    if-ltz v9, :cond_0

    .line 1315
    :cond_2
    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousX:F

    .line 1316
    iput v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPreviousY:F

    .line 1317
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1321
    .end local v1    # "dX":F
    .end local v2    # "dY":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1323
    const/high16 v9, 0x80000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1325
    const/high16 v9, 0x200000

    invoke-direct {p0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 1328
    .restart local v7    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 1329
    .restart local v8    # "y":F
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v10, v7, v8, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1331
    new-instance v3, Landroid/gesture/Gesture;

    invoke-direct {v3}, Landroid/gesture/Gesture;-><init>()V

    .line 1332
    .local v3, "gesture":Landroid/gesture/Gesture;
    new-instance v9, Landroid/gesture/GestureStroke;

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v3, v9}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 1334
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v9, v3}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1335
    .local v6, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1336
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 1337
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v10, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    cmpl-double v9, v10, v12

    if-ltz v9, :cond_3

    .line 1343
    :try_start_0
    iget-object v9, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1344
    .local v4, "gestureId":I
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v4    # "gestureId":I
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1352
    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1353
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1345
    .restart local v0    # "bestPrediction":Landroid/gesture/Prediction;
    :catch_0
    move-exception v5

    .line 1346
    .local v5, "nfe":Ljava/lang/NumberFormatException;
    const-string v9, "SamsungTouchExplorer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Non numeric gesture id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1356
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v3    # "gesture":Landroid/gesture/Gesture;
    .end local v5    # "nfe":Ljava/lang/NumberFormatException;
    .end local v6    # "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_3
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 1301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1020
    if-nez p1, :cond_1

    .line 1153
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1023
    .local v3, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1087
    :pswitch_1
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_UP x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v7}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1090
    const/high16 v7, 0x80000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1092
    const/high16 v7, 0x200000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1095
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1096
    .local v4, "pointerId":I
    const/4 v7, 0x3

    if-lt v4, v7, :cond_b

    .line 1100
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1101
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1102
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1103
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 1025
    .end local v4    # "pointerId":I
    :pswitch_2
    const/4 v7, 0x3

    if-ne v3, v7, :cond_3

    .line 1026
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_POINTER_DOWN x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 1028
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1029
    .restart local v4    # "pointerId":I
    const/4 v7, 0x3

    if-lt v4, v7, :cond_2

    .line 1033
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1034
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1035
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1036
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 1039
    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v4

    new-instance v8, Landroid/gesture/GesturePoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v8, v9, v10, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1027
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1041
    .end local v2    # "i":I
    .end local v4    # "pointerId":I
    :cond_3
    const/4 v7, 0x3

    if-le v3, v7, :cond_0

    .line 1044
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1045
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1046
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1051
    :pswitch_3
    const/4 v7, 0x3

    if-ge v3, v7, :cond_5

    .line 1052
    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    if-eqz v7, :cond_4

    .line 1053
    const/high16 v7, 0x4000000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1054
    :cond_4
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    goto/16 :goto_0

    .line 1057
    :cond_5
    const/4 v7, 0x3

    if-ne v3, v7, :cond_7

    .line 1058
    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    if-nez v7, :cond_6

    .line 1059
    const/high16 v7, 0x2000000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1060
    :cond_6
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    .line 1063
    :cond_7
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_MOVE x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_8

    const/4 v7, 0x3

    if-ne v3, v7, :cond_8

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    if-eqz v7, :cond_8

    .line 1067
    const/high16 v7, 0x4000000

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1068
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isThreeTapMovementON:Z

    .line 1070
    :cond_8
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v3, :cond_a

    .line 1071
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1072
    .restart local v4    # "pointerId":I
    const/4 v7, 0x3

    if-lt v4, v7, :cond_9

    .line 1076
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1077
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1078
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1079
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1082
    :cond_9
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v4

    new-instance v8, Landroid/gesture/GesturePoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v8, v9, v10, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1070
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1084
    .end local v4    # "pointerId":I
    :cond_a
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "TouchExplorer - ACTION_POINTER_UP x3"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1106
    .end local v2    # "i":I
    .restart local v4    # "pointerId":I
    :cond_b
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v7, v7, v4

    new-instance v8, Landroid/gesture/GesturePoint;

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-direct {v8, v9, v10, v12, v13}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Lcom/android/server/accessibility/SamsungTouchExplorer;->arePointerMovedEnough(I)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1111
    const-string v7, "SamsungTouchExplorer"

    const-string v8, "Three finger gesture detection - NOT MOVED ENOUGH"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1114
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1115
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1119
    :cond_c
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 1120
    .local v0, "firstGesture":Landroid/gesture/Gesture;
    new-instance v5, Landroid/gesture/Gesture;

    invoke-direct {v5}, Landroid/gesture/Gesture;-><init>()V

    .line 1121
    .local v5, "secondGesture":Landroid/gesture/Gesture;
    new-instance v6, Landroid/gesture/Gesture;

    invoke-direct {v6}, Landroid/gesture/Gesture;-><init>()V

    .line 1125
    .local v6, "thirdGesture":Landroid/gesture/Gesture;
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_d

    .line 1126
    new-instance v7, Landroid/gesture/GestureStroke;

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 1128
    :cond_d
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 1129
    new-instance v7, Landroid/gesture/GestureStroke;

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v7}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 1131
    :cond_e
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_f

    .line 1132
    new-instance v7, Landroid/gesture/GestureStroke;

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-direct {v7, v8}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 1136
    :cond_f
    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I

    move-result v1

    .line 1137
    .local v1, "gestureId":I
    if-lez v1, :cond_10

    .line 1138
    const-string v7, "SamsungTouchExplorer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear Multi Finger Tap Detector, gesture detected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 1143
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 1147
    :cond_10
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1148
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1149
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v7}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1150
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1023
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v18, v0

    .line 502
    .local v18, "receivedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    if-eqz p2, :cond_0

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 505
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->onMotionEvent(Landroid/view/MotionEvent;I)V

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v22

    packed-switch v22, :pswitch_data_0

    .line 864
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 509
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    .line 510
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    .line 511
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 517
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 518
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 529
    const/high16 v22, 0x100000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 542
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    .line 552
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$DoubleTapDetector;->firstTapDetected()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 554
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->post(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 558
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v22, v0

    if-nez v22, :cond_1

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 562
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v11

    .line 563
    .local v11, "pointerId":I
    const/16 v22, 0x1

    shl-int v14, v22, v11

    .line 564
    .local v14, "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto/16 :goto_0

    .line 568
    .end local v11    # "pointerId":I
    .end local v14    # "pointerIdBits":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 576
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 583
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 585
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 586
    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 593
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 595
    const/high16 v22, 0x40000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 599
    :pswitch_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v11

    .line 600
    .restart local v11    # "pointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 601
    .local v15, "pointerIndex":I
    const/16 v22, 0x1

    shl-int v14, v22, v11

    .line 602
    .restart local v14    # "pointerIdBits":I
    const/16 v16, 0x0

    .line 603
    .local v16, "rawEventX":F
    const/16 v17, 0x0

    .line 605
    .local v17, "rawEventY":F
    if-eqz p2, :cond_7

    .line 606
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 607
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 614
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v22

    packed-switch v22, :pswitch_data_1

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 829
    :goto_1
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 609
    :catch_0
    move-exception v6

    .line 610
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v22, "SamsungTouchExplorer"

    const-string v23, "action cancled by -1 pointerIndex"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 618
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    .line 632
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    sub-float v4, v22, v16

    .line 634
    .local v4, "deltaX":F
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    sub-float v5, v22, v17

    .line 636
    .local v5, "deltaY":F
    float-to-double v0, v4

    move-wide/from16 v22, v0

    float-to-double v0, v5

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    .line 638
    .local v12, "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v12, v22

    if-lez v22, :cond_1

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    const/16 v23, 0x3e8

    invoke-virtual/range {v22 .. v23}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v23

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 646
    .local v10, "maxAbsVelocity":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledGestureDetectionVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v22, v10, v22

    if-lez v22, :cond_8

    .line 649
    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    .line 657
    const/high16 v22, 0x40000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 662
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 665
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 673
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v10    # "maxAbsVelocity":F
    .end local v12    # "moveDelta":D
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->access$600(Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 674
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    sub-float v4, v22, v16

    .line 677
    .restart local v4    # "deltaX":F
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    sub-float v5, v22, v17

    .line 680
    .restart local v5    # "deltaY":F
    float-to-double v0, v4

    move-wide/from16 v22, v0

    float-to-double v0, v5

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    .line 682
    .restart local v12    # "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v12, v22

    if-lez v22, :cond_a

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 686
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v12    # "moveDelta":D
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 687
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    .line 688
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    .line 696
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 727
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 733
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 734
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    .line 737
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 738
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->waitingForNextPointer:Z

    .line 739
    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "start waiting for action down delayed"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStatusBarHeight:F

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gtz v22, :cond_10

    .line 742
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 753
    :cond_c
    :goto_3
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 754
    .local v9, "firstPointerId":I
    const/16 v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 755
    .local v21, "secondPointerId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    sub-float v7, v22, v23

    .line 758
    .local v7, "firstDeltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    sub-float v8, v22, v23

    .line 762
    .local v8, "firstDeltaY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v23

    sub-float v19, v22, v23

    .line 765
    .local v19, "secondDeltaX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    const/16 v23, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v23

    sub-float v20, v22, v23

    .line 768
    .local v20, "secondDeltaY":F
    float-to-double v0, v7

    move-wide/from16 v22, v0

    float-to-double v0, v8

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v22

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    .line 771
    .restart local v12    # "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpl-double v22, v12, v22

    if-ltz v22, :cond_d

    .line 772
    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "user moved more then the doubleTapSlop"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    .line 775
    :cond_d
    const-string v22, "SamsungTouchExplorer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "mActionDownLock: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownLock:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 779
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/AccessibilityManagerService;->recognizeTwoFingerGestures()Z

    move-result v22

    if-nez v22, :cond_11

    .line 781
    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "switching to STATE_DRAGGING"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 785
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    .line 786
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 788
    const/16 v22, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 810
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 703
    .end local v7    # "firstDeltaX":F
    .end local v8    # "firstDeltaY":F
    .end local v9    # "firstPointerId":I
    .end local v12    # "moveDelta":D
    .end local v19    # "secondDeltaX":F
    .end local v20    # "secondDeltaY":F
    .end local v21    # "secondPointerId":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 704
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 710
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v22

    sub-float v4, v22, v16

    .line 712
    .restart local v4    # "deltaX":F
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v22

    sub-float v5, v22, v17

    .line 714
    .restart local v5    # "deltaY":F
    float-to-double v0, v4

    move-wide/from16 v22, v0

    float-to-double v0, v5

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    .line 715
    .restart local v12    # "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    cmpg-double v22, v12, v22

    if-ltz v22, :cond_1

    .line 720
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_2

    .line 744
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v12    # "moveDelta":D
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mActionDownDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ActionDownDelayed;

    move-object/from16 v23, v0

    const-wide/16 v24, 0x32

    invoke-virtual/range {v22 .. v25}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 746
    :catch_1
    move-exception v6

    .line 747
    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    const-string v22, "SamsungTouchExplorer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 790
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v7    # "firstDeltaX":F
    .restart local v8    # "firstDeltaY":F
    .restart local v9    # "firstPointerId":I
    .restart local v12    # "moveDelta":D
    .restart local v19    # "secondDeltaX":F
    .restart local v20    # "secondDeltaY":F
    .restart local v21    # "secondPointerId":I
    :catch_2
    move-exception v6

    .line 791
    .restart local v6    # "e":Ljava/lang/IllegalArgumentException;
    const-string v22, "SamsungTouchExplorer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 794
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_11
    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "switching to STATE_TWO_FINGER_GESTURE_DETECTING"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 797
    const/high16 v22, 0x40000

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    goto/16 :goto_4

    .line 801
    :cond_12
    const-string v22, "SamsungTouchExplorer"

    const-string/jumbo v23, "switching to STATE_DELEGATING"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTapAndHoldInProgression:Z

    move/from16 v22, v0

    if-nez v22, :cond_e

    .line 805
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_4

    .line 822
    .end local v7    # "firstDeltaX":F
    .end local v8    # "firstDeltaY":F
    .end local v9    # "firstPointerId":I
    .end local v12    # "moveDelta":D
    .end local v19    # "secondDeltaX":F
    .end local v20    # "secondDeltaY":F
    .end local v21    # "secondPointerId":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 825
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_1

    .line 836
    .end local v11    # "pointerId":I
    .end local v14    # "pointerIdBits":I
    .end local v15    # "pointerIndex":I
    .end local v16    # "rawEventX":F
    .end local v17    # "rawEventY":F
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 840
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 841
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    .line 842
    .restart local v11    # "pointerId":I
    const/16 v22, 0x1

    shl-int v14, v22, v11

    .line 844
    .restart local v14    # "pointerIdBits":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mPerformLongPressDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$PerformLongPressDelayed;->cancel()V

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->clear()V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v22, v0

    # invokes: Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->isPending()Z
    invoke-static/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->access$500(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    .line 855
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v22

    if-nez v22, :cond_1

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto/16 :goto_0

    .line 852
    :cond_14
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_5

    .line 861
    .end local v11    # "pointerId":I
    .end local v14    # "pointerIdBits":I
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 614
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1161
    if-nez p1, :cond_1

    .line 1273
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1164
    .local v3, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1166
    :pswitch_1
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_DOWN x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1168
    .local v4, "pointerId":I
    const/4 v6, 0x3

    if-lt v4, v6, :cond_2

    .line 1172
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1173
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1174
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 1177
    :cond_2
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    new-instance v7, Landroid/gesture/GesturePoint;

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1180
    .end local v4    # "pointerId":I
    :pswitch_2
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_POINTER_DOWN x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    const/4 v6, 0x2

    if-le v3, v6, :cond_0

    .line 1184
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1185
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1186
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 1191
    :pswitch_3
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_MOVE x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :pswitch_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 1195
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1196
    .restart local v4    # "pointerId":I
    const/4 v6, 0x3

    if-lt v4, v6, :cond_3

    .line 1200
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1201
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1202
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1203
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    .line 1206
    :cond_3
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    new-instance v7, Landroid/gesture/GesturePoint;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1208
    .end local v4    # "pointerId":I
    :cond_4
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_POINTER_UP x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1211
    .end local v2    # "i":I
    :pswitch_5
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "TouchExplorer - ACTION_UP x2"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    .line 1214
    const/high16 v6, 0x80000

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1216
    const/high16 v6, 0x200000

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1219
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1220
    .restart local v4    # "pointerId":I
    const/4 v6, 0x3

    if-lt v4, v6, :cond_5

    .line 1224
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1225
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1226
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1227
    const/4 v6, 0x4

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1230
    :cond_5
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    aget-object v6, v6, v4

    new-instance v7, Landroid/gesture/GesturePoint;

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/server/accessibility/SamsungTouchExplorer;->arePointerMovedEnough(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1235
    const-string v6, "SamsungTouchExplorer"

    const-string v7, "Two finger gesture detection - NOT MOVED ENOUGH"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1238
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1239
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1243
    :cond_6
    new-instance v0, Landroid/gesture/Gesture;

    invoke-direct {v0}, Landroid/gesture/Gesture;-><init>()V

    .line 1244
    .local v0, "firstGesture":Landroid/gesture/Gesture;
    new-instance v5, Landroid/gesture/Gesture;

    invoke-direct {v5}, Landroid/gesture/Gesture;-><init>()V

    .line 1248
    .local v5, "secondGesture":Landroid/gesture/Gesture;
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1249
    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 1251
    :cond_7
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    .line 1252
    new-instance v6, Landroid/gesture/GestureStroke;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffers:[Ljava/util/ArrayList;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-direct {v6, v7}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    .line 1256
    :cond_8
    invoke-direct {p0, v0, v5}, Lcom/android/server/accessibility/SamsungTouchExplorer;->recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I

    move-result v1

    .line 1257
    .local v1, "gestureId":I
    if-lez v1, :cond_9

    .line 1258
    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clear Multi Finger Tap Detector, gesture detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    .line 1263
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->clear()V

    .line 1267
    :cond_9
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1268
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clearMultiGestureStrokes()V

    .line 1269
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v6}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    .line 1270
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_0

    .line 1164
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method private isAtHomeActivity()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1613
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1615
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    iget-object v5, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1618
    .local v3, "mPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1621
    .local v4, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1623
    .local v0, "componentInfo":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3, v7}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 1627
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_0

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    return v5

    :cond_0
    move v5, v7

    goto :goto_0
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2259
    iget-object v10, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    .line 2261
    .local v10, "receivedTracker":Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 2262
    .local v4, "firstPtrX":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2263
    .local v5, "firstPtrY":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2264
    .local v6, "secondPtrX":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 2266
    .local v7, "secondPtrY":F
    invoke-virtual {v10, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    .line 2267
    .local v0, "firstPtrDownX":F
    invoke-virtual {v10, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    .line 2268
    .local v1, "firstPtrDownY":F
    invoke-virtual {v10, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    .line 2269
    .local v2, "secondPtrDownX":F
    invoke-virtual {v10, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    .line 2272
    .local v3, "secondPtrDownY":F
    iget v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStatusBarHeight:F

    const v9, 0x3f067b80

    invoke-static/range {v0 .. v9}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private isOffsetRequired(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1568
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1604
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 1571
    :pswitch_1
    iput-boolean v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    .line 1572
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartX:F

    .line 1573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartY:F

    goto :goto_0

    .line 1578
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    if-nez v7, :cond_1

    .line 1579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartX:F

    sub-float v1, v7, v8

    .line 1580
    .local v1, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mStartY:F

    sub-float v2, v7, v8

    .line 1581
    .local v2, "deltaY":F
    float-to-double v8, v1

    float-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    .line 1582
    .local v4, "distanceMoved":D
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-double v8, v7

    cmpl-double v7, v4, v8

    if-lez v7, :cond_1

    .line 1584
    iput-boolean v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    .line 1589
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v4    # "distanceMoved":D
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isAtHomeActivity()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    if-eqz v7, :cond_0

    move v3, v6

    .line 1590
    goto :goto_0

    .line 1598
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isAtHomeActivity()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isLongPressPerformed:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->isMovedThresholdDistance:Z

    if-eqz v7, :cond_0

    move v3, v6

    .line 1600
    goto :goto_0

    .line 1568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I

    .prologue
    .line 1643
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1662
    .end local p1    # "event":Landroid/view/MotionEvent;
    :goto_0
    return-object p1

    .line 1646
    .restart local p1    # "event":Landroid/view/MotionEvent;
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v21

    .line 1647
    .local v21, "remappedIndex":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 1648
    .local v20, "pointerCount":I
    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    .line 1649
    .local v8, "props":[Landroid/view/MotionEvent$PointerProperties;
    invoke-static/range {v20 .. v20}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1650
    .local v9, "coords":[Landroid/view/MotionEvent$PointerCoords;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 1651
    aget-object v2, v8, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1652
    aget-object v2, v9, v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1653
    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 1654
    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1655
    aget-object v2, v9, v19

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1650
    :cond_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 1658
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sec_touchscreen2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v12, 0x1

    .line 1662
    .local v12, "mDisplayId":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    goto/16 :goto_0

    .line 1658
    .end local v12    # "mDisplayId":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2
.end method

.method private recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I
    .locals 12
    .param p1, "firstGesture"    # Landroid/gesture/Gesture;
    .param p2, "secondGesture"    # Landroid/gesture/Gesture;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v5, 0x0

    .line 3022
    const/4 v1, 0x0

    .line 3023
    .local v1, "firstGestureId":I
    const/4 v4, 0x0

    .line 3025
    .local v4, "secondGestureId":I
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v6, p1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3026
    .local v3, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3027
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 3028
    .local v0, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_0

    .line 3030
    :try_start_0
    iget-object v6, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3037
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v6, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3038
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3039
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    .line 3040
    .restart local v0    # "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_1

    .line 3042
    :try_start_1
    iget-object v6, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 3048
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    :cond_1
    :goto_1
    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "recognizeGesture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    if-ne v1, v4, :cond_2

    .line 3051
    packed-switch v1, :pswitch_data_0

    .line 3071
    :cond_2
    :goto_2
    return v5

    .line 3031
    .restart local v0    # "bestPrediction":Landroid/gesture/Prediction;
    :catch_0
    move-exception v2

    .line 3032
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non numeric gesture id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3043
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 3044
    .restart local v2    # "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "SamsungTouchExplorer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non numeric gesture id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3053
    .end local v0    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    :pswitch_0
    const/16 v5, 0x11

    goto :goto_2

    .line 3055
    :pswitch_1
    const/16 v5, 0x12

    goto :goto_2

    .line 3057
    :pswitch_2
    const/16 v5, 0x13

    goto :goto_2

    .line 3059
    :pswitch_3
    const/16 v5, 0x14

    goto :goto_2

    .line 3061
    :pswitch_4
    const/16 v5, 0x15

    goto :goto_2

    .line 3063
    :pswitch_5
    const/16 v5, 0x16

    goto :goto_2

    .line 3065
    :pswitch_6
    const/16 v5, 0x17

    goto :goto_2

    .line 3067
    :pswitch_7
    const/16 v5, 0x18

    goto :goto_2

    .line 3051
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private recognizeGesture(Landroid/gesture/Gesture;Landroid/gesture/Gesture;Landroid/gesture/Gesture;)I
    .locals 16
    .param p1, "firstGesture"    # Landroid/gesture/Gesture;
    .param p2, "secondGesture"    # Landroid/gesture/Gesture;
    .param p3, "thirdGesture"    # Landroid/gesture/Gesture;

    .prologue
    .line 3080
    const/4 v7, 0x0

    .line 3081
    .local v7, "firstGestureId":I
    const/4 v10, 0x0

    .line 3082
    .local v10, "secondGestureId":I
    const/4 v11, 0x0

    .line 3084
    .local v11, "thirdGestureId":I
    const/4 v6, 0x0

    .line 3085
    .local v6, "finalGestureId":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v9

    .line 3086
    .local v9, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 3087
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Prediction;

    .line 3088
    .local v2, "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v12, v2, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_0

    .line 3090
    :try_start_0
    iget-object v12, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3097
    .end local v2    # "bestPrediction":Landroid/gesture/Prediction;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v9

    .line 3098
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 3099
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Prediction;

    .line 3100
    .restart local v2    # "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v12, v2, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_1

    .line 3102
    :try_start_1
    iget-object v12, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 3109
    .end local v2    # "bestPrediction":Landroid/gesture/Prediction;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v9

    .line 3110
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    .line 3111
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Prediction;

    .line 3112
    .restart local v2    # "bestPrediction":Landroid/gesture/Prediction;
    iget-wide v12, v2, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    cmpl-double v12, v12, v14

    if-ltz v12, :cond_2

    .line 3114
    :try_start_2
    iget-object v12, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v11

    .line 3121
    .end local v2    # "bestPrediction":Landroid/gesture/Prediction;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 3122
    .local v3, "compareFirstSecond":Z
    const/4 v4, 0x0

    .line 3123
    .local v4, "compareSecondThird":Z
    const/4 v5, 0x0

    .line 3125
    .local v5, "compareThirdFirst":Z
    if-eqz v7, :cond_3

    if-ne v7, v10, :cond_3

    .line 3126
    const/4 v3, 0x1

    .line 3127
    move v6, v7

    .line 3129
    :cond_3
    if-eqz v10, :cond_4

    if-ne v10, v11, :cond_4

    .line 3130
    const/4 v4, 0x1

    .line 3131
    move v6, v10

    .line 3133
    :cond_4
    if-eqz v11, :cond_5

    if-ne v11, v7, :cond_5

    .line 3134
    const/4 v5, 0x1

    .line 3135
    move v6, v11

    .line 3138
    :cond_5
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    if-eqz v5, :cond_7

    .line 3139
    :cond_6
    packed-switch v6, :pswitch_data_0

    .line 3156
    const/4 v12, 0x0

    .line 3159
    :goto_3
    return v12

    .line 3091
    .end local v3    # "compareFirstSecond":Z
    .end local v4    # "compareSecondThird":Z
    .end local v5    # "compareThirdFirst":Z
    .restart local v2    # "bestPrediction":Landroid/gesture/Prediction;
    :catch_0
    move-exception v8

    .line 3092
    .local v8, "nfe":Ljava/lang/NumberFormatException;
    const-string v12, "SamsungTouchExplorer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non numeric gesture id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3103
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v8

    .line 3104
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const-string v12, "SamsungTouchExplorer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non numeric gesture id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3115
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v8

    .line 3116
    .restart local v8    # "nfe":Ljava/lang/NumberFormatException;
    const-string v12, "SamsungTouchExplorer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Non numeric gesture id:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3141
    .end local v2    # "bestPrediction":Landroid/gesture/Prediction;
    .end local v8    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v3    # "compareFirstSecond":Z
    .restart local v4    # "compareSecondThird":Z
    .restart local v5    # "compareThirdFirst":Z
    :pswitch_0
    const/16 v12, 0x19

    goto :goto_3

    .line 3143
    :pswitch_1
    const/16 v12, 0x1a

    goto :goto_3

    .line 3145
    :pswitch_2
    const/16 v12, 0x1b

    goto :goto_3

    .line 3147
    :pswitch_3
    const/16 v12, 0x1c

    goto :goto_3

    .line 3149
    :pswitch_4
    const/16 v12, 0x1d

    goto :goto_3

    .line 3151
    :pswitch_5
    const/16 v12, 0x1e

    goto :goto_3

    .line 3153
    :pswitch_6
    const/16 v12, 0x1f

    goto :goto_3

    .line 3155
    :pswitch_7
    const/16 v12, 0x20

    goto :goto_3

    .line 3159
    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    .line 3139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 1367
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 1368
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1369
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 1370
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 1371
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1372
    sparse-switch p1, :sswitch_data_0

    .line 1381
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    :goto_0
    return-void

    .line 1374
    .restart local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :sswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 1377
    :sswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    .line 1372
    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 4
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .param p3, "targetAccessibilityFocus"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1473
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1474
    .local v0, "pointerId":I
    shl-int v1, v3, v0

    .line 1475
    .local v1, "pointerIdBits":I
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 1476
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1477
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    .line 1478
    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1479
    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 1391
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 1394
    .local v2, "injectedPointers":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 1395
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1396
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1397
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1399
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1400
    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    .line 1401
    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 1402
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1396
    .end local v0    # "action":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1405
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    .prologue
    const/16 v3, 0xa

    .line 1414
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1415
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 1416
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 1417
    .local v1, "pointerIdBits":I
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1418
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    .line 1420
    :cond_0
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1422
    .end local v1    # "pointerIdBits":I
    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 22
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "action"    # I
    .param p3, "pointerIdBits"    # I
    .param p4, "policyFlags"    # I

    .prologue
    .line 1491
    invoke-virtual/range {p1 .. p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1493
    const/16 v19, 0x0

    .line 1494
    .local v19, "event":Landroid/view/MotionEvent;
    const/4 v2, -0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 1495
    move-object/from16 v19, p1

    .line 1499
    :goto_0
    if-nez p2, :cond_2

    .line 1500
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 1511
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v2, :cond_0

    .line 1513
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v3, v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v19

    .line 1522
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v9, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 1523
    .local v9, "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    new-array v8, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 1524
    .local v8, "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_3

    .line 1525
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v9, v20

    .line 1526
    aget-object v2, v9, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1527
    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v8, v20

    .line 1528
    aget-object v2, v8, v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1524
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 1497
    .end local v8    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v9    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v20    # "i":I
    :cond_1
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v19

    goto :goto_0

    .line 1502
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1

    .line 1530
    .restart local v8    # "pointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    .restart local v9    # "pointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    .restart local v20    # "i":I
    :cond_3
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sec_touchscreen2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v12, 0x1

    .line 1534
    .local v12, "mDisplayId":I
    :goto_3
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v13

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v14

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v15

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getSource()I

    move-result v17

    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->getFlags()I

    move-result v18

    invoke-static/range {v2 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    .line 1539
    .local v21, "mEvent":Landroid/view/MotionEvent;
    const/high16 v2, 0x40000000    # 2.0f

    or-int p4, p4, v2

    .line 1540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_4

    .line 1544
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    move/from16 v1, p4

    invoke-interface {v2, v0, v3, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 1547
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 1549
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_5

    .line 1550
    invoke-virtual/range {v19 .. v19}, Landroid/view/MotionEvent;->recycle()V

    .line 1552
    :cond_5
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    if-eq v0, v1, :cond_6

    .line 1553
    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    .line 1555
    :cond_6
    return-void

    .line 1530
    .end local v12    # "mDisplayId":I
    .end local v21    # "mEvent":Landroid/view/MotionEvent;
    :cond_7
    const/4 v12, 0x0

    goto :goto_3
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 4
    .param p1, "policyFlags"    # I

    .prologue
    .line 1431
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1432
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 1433
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    .line 1434
    .local v1, "pointerIdBits":I
    const-string v2, "SamsungTouchExplorer"

    const-string/jumbo v3, "sendTouchExplorationGestureStartAndHoverEnterIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 1436
    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    .line 1438
    .end local v1    # "pointerIdBits":I
    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8
    .param p1, "prototype"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x1

    .line 1448
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    .line 1449
    .local v2, "injectedTracked":Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;
    const/4 v5, 0x0

    .line 1450
    .local v5, "pointerIdBits":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    .line 1451
    .local v3, "pointerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1452
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1454
    .local v4, "pointerId":I
    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1451
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1457
    :cond_0
    shl-int v6, v7, v4

    or-int/2addr v5, v6

    .line 1458
    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    .line 1459
    .local v0, "action":I
    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    .line 1461
    .end local v0    # "action":I
    .end local v4    # "pointerId":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 352
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    .line 353
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    .line 356
    :cond_0
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/16 v2, 0x100

    .line 452
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 456
    .local v0, "eventType":I
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v2, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 459
    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 466
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    .line 467
    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    .line 472
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 486
    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 489
    :cond_2
    return-void

    .line 475
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$400(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 476
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    # getter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$400(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 477
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;
    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->access$402(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 479
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 483
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    .line 472
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 360
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 424
    if-eqz p2, :cond_0

    .line 425
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerTapDetector:Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$MultiFingerTapDetector;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 427
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 447
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 449
    :goto_0
    return-void

    .line 432
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 435
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 438
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateOneFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 441
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTwoFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 444
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateThreeFingerGestureDetecting(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 415
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2624
    const-string v0, "SamsungTouchExplorer"

    return-object v0
.end method
