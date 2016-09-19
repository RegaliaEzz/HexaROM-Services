.class public Lcom/android/server/smartclip/SmartClipView$PointerState;
.super Ljava/lang/Object;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SmartClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private final ESTIMATE_TRACE_DEFAULT_SIZE:I

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput v1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->ESTIMATE_TRACE_DEFAULT_SIZE:I

    .line 214
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    .line 215
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    .line 218
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 222
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/smartclip/SmartClipView$PointerState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/smartclip/SmartClipView$PointerState;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;
    .param p1, "x1"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mToolType:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 212
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView$PointerState;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    return-object v0
.end method


# virtual methods
.method public addTrace(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    array-length v2, v3

    .line 230
    .local v2, "traceCapacity":I
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    if-ne v3, v2, :cond_0

    .line 231
    mul-int/lit8 v2, v2, 0x2

    .line 232
    new-array v0, v2, [F

    .line 233
    .local v0, "newTraceX":[F
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 234
    iput-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    .line 236
    new-array v1, v2, [F

    .line 237
    .local v1, "newTraceY":[F
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 238
    iput-object v1, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    .line 241
    .end local v0    # "newTraceX":[F
    .end local v1    # "newTraceY":[F
    :cond_0
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    aput p1, v3, v4

    .line 242
    iget-object v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    iget v4, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    aput p2, v3, v4

    .line 243
    iget v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    .line 244
    return-void
.end method

.method public clearTrace()V
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    .line 226
    return-void
.end method

.method public getTraceCount()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I

    return v0
.end method

.method public getTraceX(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getTraceY(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F

    aget v0, v0, p1

    return v0
.end method
