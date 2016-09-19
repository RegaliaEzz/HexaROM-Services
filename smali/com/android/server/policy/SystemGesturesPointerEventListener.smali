.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$1;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_COCKTAIL:I = 0x4

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_LEFT_CENTER_LEFT:I = 0x65

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_RIGHT_CENTER_RIGHT:I = 0x64

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private enableCocktailBar:Z

.field private final mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

.field private mCanStartEasyOneHand:Z

.field private mCocktailExtent:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mDebugFireable:Z

.field private final mDisplayId:I

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mFirstDownTime:J

.field private mFirstDownX:I

.field private mFirstDownY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mIwm:Landroid/view/IWindowManager;

.field private mLastFlingTime:J

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

.field private mOverscroller:Landroid/widget/OverScroller;

.field private mStartFromLeft:Z

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x20

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 91
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    .line 92
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    .line 93
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 121
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 122
    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 123
    const-string v1, "context"

    invoke-static {v1, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 125
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 130
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v1, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 141
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 142
    .local v0, "density":F
    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCurrentRotation:I

    .line 143
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCocktailExtent:I

    .line 147
    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDisplayId:I

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    .param p3, "displayId"    # I

    .prologue
    const/16 v2, 0x20

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    .line 91
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    .line 92
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    .line 93
    new-array v1, v2, [J

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    .line 153
    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    .line 154
    const-string v1, "callbacks"

    invoke-static {v1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    .line 155
    const-string v1, "context"

    invoke-static {v1, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 157
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    .line 162
    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportStyleTransition(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-direct {v1, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 174
    .local v0, "density":F
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCurrentRotation:I

    .line 175
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCocktailExtent:I

    .line 178
    iput p3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDisplayId:I

    .line 179
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    return-object v0
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 345
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 346
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    .line 349
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 351
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 352
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 356
    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    return-object p1
.end method

.method private detectEasyOneHandGesture(Landroid/view/MotionEvent;)I
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x3

    .line 514
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v4, v9, 0x3

    .line 516
    .local v4, "triggerDistance":I
    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    move v9, v10

    :goto_0
    div-int v3, v11, v9

    .line 517
    .local v3, "startPosX":I
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v11

    if-eqz v11, :cond_1

    :goto_1
    div-int v2, v9, v10

    .line 518
    .local v2, "endPosX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    float-to-int v5, v9

    .line 519
    .local v5, "upX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v8, v9

    .line 522
    .local v8, "upY":I
    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "detectEasyOneHandGesture() isRunning="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mStartFromLeft="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MoveDistanceX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    iget v12, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", MoveDistanceY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxY:I

    iget v12, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mFirstDownX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mFirstDownY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMaxX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMinX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upX-DownX="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v11, v5, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", upY-DownY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v11, v8, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    iget v10, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v9, v10

    if-le v9, v4, :cond_3

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    iget v10, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxY:I

    iget v11, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinY:I

    sub-int/2addr v10, v11

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ltz v9, :cond_3

    .line 532
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    sub-int v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 533
    .local v0, "diffX":I
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    sub-int v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 534
    .local v1, "diffY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 536
    .local v6, "upTime":J
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/lit8 v9, v9, 0x4

    if-ge v0, v9, :cond_3

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    div-int/lit8 v9, v9, 0x8

    if-ge v1, v9, :cond_3

    iget-wide v10, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x1f4

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    .line 537
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    if-ge v9, v3, :cond_2

    if-ge v5, v2, :cond_2

    .line 538
    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "detectEasyOneHandGesture() success left. t1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v9, 0x65

    .line 549
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    .end local v6    # "upTime":J
    :goto_2
    return v9

    .line 516
    .end local v2    # "endPosX":I
    .end local v3    # "startPosX":I
    .end local v5    # "upX":I
    .end local v8    # "upY":I
    :cond_0
    const/4 v9, 0x5

    goto/16 :goto_0

    .line 517
    .restart local v3    # "startPosX":I
    :cond_1
    const/4 v10, 0x4

    goto/16 :goto_1

    .line 541
    .restart local v0    # "diffX":I
    .restart local v1    # "diffY":I
    .restart local v2    # "endPosX":I
    .restart local v5    # "upX":I
    .restart local v6    # "upTime":J
    .restart local v8    # "upY":I
    :cond_2
    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v10, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v10, v3

    if-le v9, v10, :cond_3

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    sub-int/2addr v9, v2

    if-le v5, v9, :cond_3

    .line 542
    const-string v9, "SystemGestures"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "detectEasyOneHandGesture() success right. t1="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownTime:J

    sub-long v12, v6, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v9, 0x64

    goto :goto_2

    .line 549
    .end local v0    # "diffX":I
    .end local v1    # "diffY":I
    .end local v6    # "upTime":J
    :cond_3
    const/4 v9, -0x1

    goto :goto_2
.end method

.method private detectSwipe(IJFF)I
    .locals 10
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const-wide/16 v8, 0x1f4

    .line 397
    iget-object v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    aget v2, v5, p1

    .line 398
    .local v2, "fromX":F
    iget-object v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    aget v3, v5, p1

    .line 399
    .local v3, "fromY":F
    iget-object v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v6, v5, p1

    sub-long v0, p2, v6

    .line 404
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    .line 412
    .local v4, "swipeStartThreshold":I
    int-to-float v5, v4

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p5, v5

    if-lez v5, :cond_0

    cmp-long v5, v0, v8

    if-gez v5, :cond_0

    .line 427
    const/4 v5, 0x1

    .line 479
    :goto_0
    return v5

    .line 430
    :cond_0
    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v3, v5

    cmpg-float v5, p5, v5

    if-gez v5, :cond_1

    cmp-long v5, v0, v8

    if-gez v5, :cond_1

    .line 445
    const/4 v5, 0x2

    goto :goto_0

    .line 448
    :cond_1
    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    iget v5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    cmpg-float v5, p4, v5

    if-gez v5, :cond_2

    cmp-long v5, v0, v8

    if-gez v5, :cond_2

    .line 463
    const/4 v5, 0x3

    goto :goto_0

    .line 479
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 20
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 373
    .local v15, "historySize":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v17

    .line 374
    .local v17, "pointerCount":I
    const/16 v16, 0x0

    .local v16, "p":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 375
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 376
    .local v18, "pointerId":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v3

    .line 377
    .local v3, "i":I
    const/4 v2, -0x1

    if-eq v3, v2, :cond_3

    .line 378
    const/4 v14, 0x0

    .local v14, "h":I
    :goto_1
    if-ge v14, v15, :cond_2

    .line 379
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v4

    .line 380
    .local v4, "time":J
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v6

    .line 381
    .local v6, "x":F
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v7

    .local v7, "y":F
    move-object/from16 v2, p0

    .line 382
    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 383
    .local v19, "swipe":I
    if-eqz v19, :cond_1

    .line 393
    .end local v3    # "i":I
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v14    # "h":I
    .end local v18    # "pointerId":I
    .end local v19    # "swipe":I
    :cond_0
    :goto_2
    return v19

    .line 378
    .restart local v3    # "i":I
    .restart local v4    # "time":J
    .restart local v6    # "x":F
    .restart local v7    # "y":F
    .restart local v14    # "h":I
    .restart local v18    # "pointerId":I
    .restart local v19    # "swipe":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 387
    .end local v4    # "time":J
    .end local v6    # "x":F
    .end local v7    # "y":F
    .end local v19    # "swipe":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v19

    .line 388
    .restart local v19    # "swipe":I
    if-nez v19, :cond_0

    .line 374
    .end local v14    # "h":I
    .end local v19    # "swipe":I
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 393
    .end local v3    # "i":I
    .end local v18    # "pointerId":I
    :cond_4
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private findIndex(I)I
    .locals 4
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 359
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 368
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 359
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_2

    if-ne p1, v1, :cond_3

    :cond_2
    move v0, v1

    .line 365
    goto :goto_1

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 368
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 556
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mIwm:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private updateCocktailBarInfo()V
    .locals 1

    .prologue
    .line 563
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCurrentRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 564
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 197
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v6, :cond_0

    .line 198
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 210
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;

    invoke-virtual {v6, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 216
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 220
    :pswitch_1
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->getEasyOneHandPkgVersion(Landroid/content/Context;)I

    move-result v6

    if-ge v6, v10, :cond_6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    if-eq v6, v9, :cond_6

    .line 224
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->isEasyOneHandRunning()Z

    move-result v0

    .line 225
    .local v0, "eohRunning":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    .line 227
    if-eqz v0, :cond_7

    .line 229
    .local v4, "sideMargin":I
    :goto_1
    if-nez v0, :cond_3

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    div-int/lit8 v9, v9, 0x3

    if-le v6, v9, :cond_3

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    if-lt v6, v9, :cond_4

    :cond_3
    if-eqz v0, :cond_6

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    mul-int/lit8 v9, v9, 0x2

    div-int/lit8 v9, v9, 0x3

    if-ge v6, v9, :cond_6

    :cond_4
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v4

    if-lt v6, v9, :cond_5

    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget v10, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v10, v4

    sub-int/2addr v9, v10

    if-le v6, v9, :cond_6

    .line 231
    :cond_5
    iput-boolean v7, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    .line 232
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    .line 233
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownY:I

    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxY:I

    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinY:I

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownTime:J

    .line 235
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mFirstDownX:I

    iget v9, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    div-int/2addr v9, v4

    if-ge v6, v9, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mStartFromLeft:Z

    .line 246
    .end local v0    # "eohRunning":Z
    .end local v4    # "sideMargin":I
    :cond_6
    iput-boolean v7, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 247
    iput-boolean v7, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 248
    iput v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    .line 249
    invoke-direct {p0, p1, v8}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 250
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    goto/16 :goto_0

    .line 227
    .restart local v0    # "eohRunning":Z
    :cond_7
    const/16 v4, 0x8

    goto :goto_1

    .restart local v4    # "sideMargin":I
    :cond_8
    move v6, v8

    .line 235
    goto :goto_2

    .line 260
    .end local v0    # "eohRunning":Z
    .end local v4    # "sideMargin":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 261
    iget-boolean v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v6, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v9, 0x5

    if-ge v6, v9, :cond_9

    :goto_3
    iput-boolean v7, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 263
    iget-boolean v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez v6, :cond_1

    .line 265
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto/16 :goto_0

    :cond_9
    move v7, v8

    .line 262
    goto :goto_3

    .line 272
    :pswitch_3
    iget-boolean v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v6, :cond_c

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v2, v6

    .line 274
    .local v2, "pointX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v3, v6

    .line 276
    .local v3, "pointY":I
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    if-le v6, v2, :cond_e

    move v6, v2

    :goto_4
    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    .line 277
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    if-le v6, v2, :cond_a

    iget v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    .end local v2    # "pointX":I
    :cond_a
    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxX:I

    .line 278
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinY:I

    if-le v6, v3, :cond_f

    move v6, v3

    :goto_5
    iput v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinY:I

    .line 279
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxY:I

    if-le v6, v3, :cond_b

    iget v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxY:I

    .end local v3    # "pointY":I
    :cond_b
    iput v3, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMaxY:I

    .line 284
    :cond_c
    iget-boolean v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v6, :cond_1

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v5

    .line 286
    .local v5, "swipe":I
    if-nez v5, :cond_d

    move v8, v7

    :cond_d
    iput-boolean v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 287
    if-ne v5, v7, :cond_10

    .line 294
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    goto/16 :goto_0

    .line 276
    .end local v5    # "swipe":I
    .restart local v2    # "pointX":I
    .restart local v3    # "pointY":I
    :cond_e
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinX:I

    goto :goto_4

    .line 278
    .end local v2    # "pointX":I
    :cond_f
    iget v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMinY:I

    goto :goto_5

    .line 296
    .end local v3    # "pointY":I
    .restart local v5    # "swipe":I
    :cond_10
    if-ne v5, v9, :cond_11

    .line 298
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    goto/16 :goto_0

    .line 299
    :cond_11
    if-ne v5, v10, :cond_12

    .line 301
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    goto/16 :goto_0

    .line 304
    :cond_12
    if-ne v5, v4, :cond_1

    goto/16 :goto_0

    .line 321
    .end local v5    # "swipe":I
    :pswitch_4
    iget-boolean v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    if-eqz v6, :cond_13

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectEasyOneHandGesture(Landroid/view/MotionEvent;)I

    move-result v1

    .line 323
    .local v1, "gesture":I
    const/16 v6, 0x65

    if-ne v1, v6, :cond_14

    .line 325
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeLeftCenterLeft()V

    .line 331
    .end local v1    # "gesture":I
    :cond_13
    :goto_6
    iput-boolean v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCanStartEasyOneHand:Z

    .line 335
    iput-boolean v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    .line 336
    iput-boolean v8, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    .line 337
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    goto/16 :goto_0

    .line 326
    .restart local v1    # "gesture":I
    :cond_14
    const/16 v6, 0x64

    if-ne v1, v6, :cond_13

    .line 328
    iget-object v6, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeRightCenterRight()V

    goto :goto_6

    .line 216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public systemReady()V
    .locals 5

    .prologue
    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V

    invoke-direct {v1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 192
    new-instance v1, Landroid/widget/OverScroller;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    .line 193
    return-void
.end method
