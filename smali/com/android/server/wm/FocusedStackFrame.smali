.class Lcom/android/server/wm/FocusedStackFrame;
.super Ljava/lang/Object;
.source "FocusedStackFrame.java"


# static fields
.field private static final ALPHA:F = 0.3f

.field private static final DEBUG:Z = false

.field private static final DEBUG_STACK_FRAME:Z = true

.field private static final MULTIWINDOW_ALPHA:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "FocusedStackFrame"

.field public static final THEME_APPLY:Ljava/lang/String; = "com.samsung.android.theme.themecenter.THEME_APPLY"

.field private static final THICKNESS:I = 0x2


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayId:I

.field private final mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

.field private final mFocusedFrameOutShadowSize:I

.field private mForceReDraw:Z

.field private final mInnerPaint:Landroid/graphics/Paint;

.field private mIsVisible:Z

.field private final mLastBounds:Landroid/graphics/Rect;

.field private mLayer:I

.field private final mLineColor:I

.field final mLock:Ljava/lang/Object;

.field private final mOuterPaint:Landroid/graphics/Paint;

.field private final mScreenSize:Landroid/graphics/Rect;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mSurfaceSize:Landroid/graphics/Rect;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Landroid/view/Display;Landroid/view/SurfaceSession;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 9
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "session"    # Landroid/view/SurfaceSession;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 67
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    .line 68
    iput-boolean v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 76
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    .line 77
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mInnerPaint:Landroid/graphics/Paint;

    .line 78
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mOuterPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    .line 80
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    .line 82
    iput-boolean v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mIsVisible:Z

    .line 85
    new-instance v1, Lcom/android/server/wm/FocusedStackFrame$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FocusedStackFrame$1;-><init>(Lcom/android/server/wm/FocusedStackFrame;)V

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    const/4 v7, 0x0

    .line 102
    .local v7, "ctrl":Landroid/view/SurfaceControl;
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v1, :cond_1

    .line 103
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .local v0, "ctrl":Landroid/view/SurfaceControl;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Display;->getLayerStack()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 112
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 119
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_1
    iput-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 125
    iput-object p4, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 126
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    .line 127
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    .line 129
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106018c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLineColor:I

    .line 131
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10805d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    .line 133
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10502c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    .line 137
    invoke-static {p3}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportOpenTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 139
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    .end local v8    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void

    .line 106
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :cond_1
    :try_start_2
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "FocusedStackFrame"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x3

    const/4 v6, 0x4

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_0

    .line 120
    .end local v0    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v7    # "ctrl":Landroid/view/SurfaceControl;
    :catch_0
    move-exception v1

    move-object v0, v7

    .end local v7    # "ctrl":Landroid/view/SurfaceControl;
    .restart local v0    # "ctrl":Landroid/view/SurfaceControl;
    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/wm/FocusedStackFrame;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/FocusedStackFrame;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    return-object v0
.end method

.method private draw()V
    .locals 6

    .prologue
    .line 159
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    :cond_0
    const/4 v1, 0x0

    .line 169
    .local v1, "c":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 171
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 177
    :goto_0
    if-nez v1, :cond_1

    .line 179
    :try_start_1
    monitor-exit v4

    .line 214
    :goto_1
    return-void

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "FocusedStackFrame"

    const-string v5, "Unable to lock canvas"

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 191
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 174
    :catch_1
    move-exception v2

    .line 175
    .local v2, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    const-string v3, "FocusedStackFrame"

    const-string v5, "Unable to lock canvas"

    invoke-static {v3, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 182
    .end local v2    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_1
    const/4 v3, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 185
    .local v0, "adjustbounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 186
    iget v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mThickness:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/FocusedStackFrame;->adjustBounds(Landroid/graphics/Rect;I)V

    .line 187
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 188
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 189
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameImage:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 213
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private positionSurface(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionSurface: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 363
    return-void

    .line 360
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private setupSurface(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 223
    if-eqz p1, :cond_1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_1
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    .line 232
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 235
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public adjustBounds(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "thick"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v5, 0x3f000000    # 0.5f

    .line 303
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-eq v3, v4, :cond_0

    .line 304
    iget v3, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, p2, 0x2

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 306
    :cond_0
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eq v3, v4, :cond_1

    .line 307
    iget v3, p1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v4, p2, 0x2

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 309
    :cond_1
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-eq v3, v4, :cond_2

    .line 310
    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, p2

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 312
    :cond_2
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-eq v3, v4, :cond_3

    .line 313
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, p2

    div-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 318
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 319
    .local v1, "spec":Landroid/view/MagnificationSpec;
    if-eqz v1, :cond_4

    iget v3, v1, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 320
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 321
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 322
    .local v0, "h":I
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, p1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 323
    iget v3, v1, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 324
    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v2

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 325
    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    int-to-float v4, v0

    iget v5, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 330
    .end local v0    # "h":I
    .end local v2    # "w":I
    :cond_4
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 331
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 332
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 333
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/server/wm/FocusedStackFrame;->mFocusedFrameOutShadowSize:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 334
    return-void
.end method

.method clear()V
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 293
    :goto_0
    if-nez v0, :cond_0

    .line 294
    :try_start_1
    monitor-exit v2

    .line 300
    :goto_1
    return-void

    .line 296
    :cond_0
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 298
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 299
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 291
    :catch_0
    move-exception v1

    goto :goto_0

    .line 290
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 275
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBounds: bounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    return-void
.end method

.method public setForceReDraw(Z)V
    .locals 0
    .param p1, "isUnFocusedRectResized"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    .line 367
    return-void
.end method

.method setLayer(I)V
    .locals 2
    .param p1, "layer"    # I

    .prologue
    .line 265
    iget v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    if-ne v0, p1, :cond_0

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_0
    iput p1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mLayer:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    goto :goto_0
.end method

.method public setScreenSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "screenSize"    # Landroid/graphics/Rect;
    .param p2, "surfaceSize"    # Landroid/graphics/Rect;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 338
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenSize: mSurfaceSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " surfaceSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FocusedStackFrame;->positionSurface(Landroid/graphics/Rect;)V

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 344
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_STACK:Z

    if-eqz v0, :cond_2

    const-string v0, "FocusedStackFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenSize: mScreenSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " screenSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/FocusedStackFrame;->mScreenSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/server/wm/FocusedStackFrame;->clear()V

    .line 349
    :cond_3
    return-void
.end method

.method setVisibility(Lcom/android/server/wm/TaskStack;)V
    .locals 4
    .param p1, "stack"    # Lcom/android/server/wm/TaskStack;

    .prologue
    const/4 v3, 0x1

    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v3}, Lcom/android/server/wm/TaskStack;->isFloatingStack(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    .line 260
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    .line 252
    .local v0, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    iget-object v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/FocusedStackFrame;->mLastBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/FocusedStackFrame;->mForceReDraw:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wm/FocusedStackFrame;->draw()V

    .line 257
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/wm/FocusedStackFrame;->setupSurface(Z)V

    goto :goto_0
.end method
