.class Lcom/android/server/wm/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field mCurrentX:F

.field mCurrentY:F

.field mData:Landroid/content/ClipData;

.field mDataDescription:Landroid/content/ClipDescription;

.field mDisplay:Landroid/view/Display;

.field final mDragAnimator:Lcom/android/server/wm/DragStateAnimator;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field mDragInProgress:Z

.field mDragResult:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mDropped:Z

.field mFlags:I

.field mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

.field mLastX:F

.field mLastY:F

.field mLocalWin:Landroid/os/IBinder;

.field mNotifiedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mSourceWindow:Lcom/android/server/wm/WindowState;

.field mSpec:Landroid/view/MagnificationSpec;

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field mTargetWindow:Lcom/android/server/wm/WindowState;

.field mThumbOffsetX:F

.field mThumbOffsetY:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRegion:Landroid/graphics/Region;

.field mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "localWin"    # Landroid/os/IBinder;

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDropped:Z

    .line 108
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mTmpRect:Landroid/graphics/Rect;

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 118
    iput-object p2, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 119
    iput-object p3, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 120
    iput p4, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 121
    iput-object p5, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Lcom/android/server/wm/DragStateAnimator;

    invoke-direct {v0, p0}, Lcom/android/server/wm/DragStateAnimator;-><init>(Lcom/android/server/wm/DragState;)V

    iput-object v0, p0, Lcom/android/server/wm/DragState;->mDragAnimator:Lcom/android/server/wm/DragStateAnimator;

    .line 130
    return-void
.end method

.method private getTouchedWinAtPointLw(FF)Lcom/android/server/wm/WindowState;
    .locals 1
    .param p1, "xf"    # F
    .param p2, "yf"    # F

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v0

    return-object v0
.end method

.method private getTouchedWinAtPointLw(FFZ)Lcom/android/server/wm/WindowState;
    .locals 12
    .param p1, "xf"    # F
    .param p2, "yf"    # F
    .param p3, "exceptInternal"    # Z

    .prologue
    .line 563
    const/4 v5, 0x0

    .line 564
    .local v5, "touchedWin":Lcom/android/server/wm/WindowState;
    float-to-int v8, p1

    .line 565
    .local v8, "x":I
    float-to-int v9, p2

    .line 567
    .local v9, "y":I
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 568
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    if-nez v7, :cond_0

    .line 569
    const/4 v10, 0x0

    .line 649
    :goto_0
    return-object v10

    .line 571
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 572
    .local v0, "N":I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 573
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 574
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 575
    .local v2, "flags":I
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 576
    .local v6, "type":I
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v10

    if-nez v10, :cond_2

    .line 572
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 580
    :cond_2
    and-int/lit8 v10, v2, 0x10

    if-nez v10, :cond_1

    .line 586
    if-eqz p3, :cond_3

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v11, -0x80000000

    and-int/2addr v10, v11

    if-nez v10, :cond_1

    .line 610
    :cond_3
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v10, v10, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v10, v10, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    if-gt v8, v10, :cond_4

    if-ltz v8, :cond_4

    iget-object v10, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v10, v10, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    if-gt v9, v10, :cond_4

    if-ltz v9, :cond_4

    .line 612
    const/16 v10, 0x8cf

    if-eq v6, v10, :cond_1

    const/16 v10, 0x8ca

    if-eq v6, v10, :cond_1

    .line 618
    :cond_4
    const/16 v10, 0x8cc

    if-ne v6, v10, :cond_6

    .line 619
    move-object v5, v1

    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v2    # "flags":I
    .end local v6    # "type":I
    :cond_5
    :goto_2
    move-object v10, v5

    .line 649
    goto :goto_0

    .line 625
    .restart local v1    # "child":Lcom/android/server/wm/WindowState;
    .restart local v2    # "flags":I
    .restart local v6    # "type":I
    :cond_6
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 627
    and-int/lit8 v4, v2, 0x28

    .line 632
    .local v4, "touchFlags":I
    iget-object v10, p0, Lcom/android/server/wm/DragState;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v10, v8, v9}, Landroid/graphics/Region;->contains(II)Z

    move-result v10

    if-nez v10, :cond_7

    if-nez v4, :cond_1

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v10, :cond_1

    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v10, v10, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v10}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v10

    if-nez v10, :cond_1

    .line 636
    :cond_7
    move-object v5, v1

    .line 637
    goto :goto_2
.end method

.method private static obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .locals 7
    .param p0, "win"    # Lcom/android/server/wm/WindowState;
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "localState"    # Ljava/lang/Object;
    .param p5, "description"    # Landroid/content/ClipDescription;
    .param p6, "data"    # Landroid/content/ClipData;
    .param p7, "result"    # Z

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v1, p2, v0

    .line 656
    .local v1, "winX":F
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v2, p3, v0

    .line 657
    .local v2, "winY":F
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 658
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v0

    .line 659
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, v0

    :cond_0
    move v0, p1

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    .line 661
    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method private sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V
    .locals 11
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "touchX"    # F
    .param p3, "touchY"    # F
    .param p4, "desc"    # Landroid/content/ClipDescription;

    .prologue
    const/4 v4, 0x0

    .line 274
    iget v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 276
    .local v10, "winBinder":Landroid/os/IBinder;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    if-eq v10, v0, :cond_1

    .line 300
    .end local v10    # "winBinder":Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isPotentialDragTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    const/4 v1, 0x1

    const/4 v7, 0x0

    move-object v0, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    move-object v6, v4

    invoke-static/range {v0 .. v7}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 288
    .local v9, "event":Landroid/view/DragEvent;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_0

    .line 296
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 291
    :catch_0
    move-exception v8

    .line 292
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-start window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-eq v0, v1, :cond_0

    .line 296
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    goto :goto_0

    .line 295
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v1, v2, :cond_2

    .line 296
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    :cond_2
    throw v0
.end method


# virtual methods
.method broadcastDragEndedLw()V
    .locals 12

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 325
    iget-boolean v6, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v9

    .line 327
    .local v9, "evt":Landroid/view/DragEvent;
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 330
    .local v11, "ws":Lcom/android/server/wm/WindowState;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, v11, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, v1, :cond_0

    .line 332
    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/server/wm/DragState;->mDragResult:Z

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v8

    .line 334
    .local v8, "ev":Landroid/view/DragEvent;
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v8}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 339
    .end local v8    # "ev":Landroid/view/DragEvent;
    :catch_0
    move-exception v7

    .line 340
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to drag-end window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, v9}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 343
    .end local v11    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 345
    invoke-virtual {v9}, Landroid/view/DragEvent;->recycle()V

    .line 346
    return-void
.end method

.method broadcastDragStartedLw(FF)V
    .locals 5
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 245
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    .line 246
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 247
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    .line 253
    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    move-result-object v2

    .line 254
    .local v2, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 256
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 257
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 260
    .restart local v2    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1
    return-void
.end method

.method endDragLw()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->broadcastDragEndedLw()V

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->unregister()V

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragAnimator:Lcom/android/server/wm/DragStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/DragStateAnimator;->applyAnimationLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mDragAnimator:Lcom/android/server/wm/DragStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/DragStateAnimator;->scheduleAnimationLocked()V

    .line 366
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->reset()V

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    goto :goto_0
.end method

.method getDragLayerLw()I
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v1, 0x7e0

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method notifyDropLw(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DragState;->notifyDropLw(FFZ)Z

    move-result v0

    return v0
.end method

.method notifyDropLw(FFZ)Z
    .locals 21
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "exceptInternal"    # Z

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/wm/DragState;->mDropped:Z

    if-eqz v3, :cond_1

    .line 464
    const-string v3, "WindowManager"

    const-string/jumbo v4, "notifyDropLw: skipped redundant drop event processing..."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v3, 0x1

    .line 552
    :cond_0
    :goto_0
    return v3

    .line 468
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/DragState;->mDropped:Z

    .line 471
    invoke-direct/range {p0 .. p3}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 472
    .local v2, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_2

    .line 475
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 476
    const/4 v3, 0x1

    goto :goto_0

    .line 481
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v3

    if-nez v3, :cond_4

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v3

    if-nez v3, :cond_4

    .line 486
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x1f

    move/from16 v0, p1

    float-to-int v5, v0

    move/from16 v0, p2

    float-to-int v6, v0

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 496
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    .line 497
    .local v16, "myPid":I
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 498
    .local v19, "token":Landroid/os/IBinder;
    const/4 v3, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v13

    .line 502
    .local v13, "evt":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSourceWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_6

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSourceWindow:Lcom/android/server/wm/WindowState;

    iget v3, v3, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .line 504
    .local v17, "sourceUserId":I
    const/16 v3, 0x64

    move/from16 v0, v17

    if-lt v0, v3, :cond_6

    const/16 v3, 0xc8

    move/from16 v0, v17

    if-gt v0, v3, :cond_6

    .line 505
    iget v3, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 507
    .local v18, "targetUserId":I
    const/16 v3, 0x64

    move/from16 v0, v18

    if-lt v0, v3, :cond_5

    const/16 v3, 0xc8

    move/from16 v0, v18

    if-le v0, v3, :cond_6

    .line 508
    :cond_5
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_DROP sourceUserId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and targetUserId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v3, "WindowManager"

    const-string v4, "Blocking ACTION_DROP in target window. It\'s knox protection..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 517
    .end local v17    # "sourceUserId":I
    .end local v18    # "targetUserId":I
    :cond_6
    :try_start_0
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v13}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v3, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_7

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v3, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-gtz v3, :cond_7

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_9

    .line 523
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(Landroid/view/Display;)Lcom/android/server/wm/WindowList;

    move-result-object v20

    .line 525
    .local v20, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v20, :cond_9

    .line 526
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v10

    .line 527
    .local v10, "N":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v10, :cond_9

    .line 528
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 529
    .local v11, "child":Lcom/android/server/wm/WindowState;
    if-eqz v11, :cond_8

    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_8

    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8cf

    if-ne v3, v4, :cond_8

    .line 531
    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, v13}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 527
    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 540
    .end local v10    # "N":I
    .end local v11    # "child":Lcom/android/server/wm/WindowState;
    .end local v14    # "i":I
    .end local v20    # "windows":Lcom/android/server/wm/WindowList;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x15

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x15

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 542
    .local v15, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v15, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_a

    .line 548
    invoke-virtual {v13}, Landroid/view/DragEvent;->recycle()V

    .line 551
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 552
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 543
    .end local v15    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v12

    .line 544
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t send drop notification to win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    const/4 v3, 0x1

    .line 547
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_0

    .line 548
    invoke-virtual {v13}, Landroid/view/DragEvent;->recycle()V

    goto/16 :goto_0

    .line 547
    .end local v12    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v4, v4, Lcom/android/server/wm/Session;->mPid:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_b

    .line 548
    invoke-virtual {v13}, Landroid/view/DragEvent;->recycle()V

    :cond_b
    throw v3
.end method

.method notifyMoveLw(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DragState;->notifyMoveLw(FFZ)V

    .line 371
    return-void
.end method

.method notifyMoveLw(FFZ)V
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "exceptInternal"    # Z

    .prologue
    .line 375
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    .line 380
    .local v12, "myPid":I
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 383
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 384
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v2, p1, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    add-float/2addr v2, v3

    float-to-int v15, v2

    .line 385
    .local v15, "xPos":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v2, p2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 387
    .local v16, "yPos":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 395
    .end local v15    # "xPos":I
    .end local v16    # "yPos":I
    :goto_0
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/DragState;->mLastX:F

    .line 396
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/DragState;->mLastY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 409
    invoke-direct/range {p0 .. p3}, Lcom/android/server/wm/DragState;->getTouchedWinAtPointLw(FFZ)Lcom/android/server/wm/WindowState;

    move-result-object v14

    .line 410
    .local v14, "touchedWin":Lcom/android/server/wm/WindowState;
    if-nez v14, :cond_1

    .line 451
    :goto_1
    return-void

    .line 389
    .end local v14    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    sub-float v3, p1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    sub-float v4, p2, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v2

    .line 414
    .restart local v14    # "touchedWin":Lcom/android/server/wm/WindowState;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/DragState;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 415
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 416
    .local v13, "touchedBinder":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    if-eq v13, v2, :cond_2

    .line 419
    const/4 v14, 0x0

    .line 424
    .end local v13    # "touchedBinder":Landroid/os/IBinder;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eq v14, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_3

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v11

    .line 431
    .local v11, "evt":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v11}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v12, v2, :cond_3

    .line 433
    invoke-virtual {v11}, Landroid/view/DragEvent;->recycle()V

    .line 436
    .end local v11    # "evt":Landroid/view/DragEvent;
    :cond_3
    if-eqz v14, :cond_4

    .line 440
    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v14

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-static/range {v2 .. v9}, Lcom/android/server/wm/DragState;->obtainDragEvent(Lcom/android/server/wm/WindowState;IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v11

    .line 442
    .restart local v11    # "evt":Landroid/view/DragEvent;
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2, v11}, Landroid/view/IWindow;->dispatchDragEvent(Landroid/view/DragEvent;)V

    .line 443
    iget-object v2, v14, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    if-eq v12, v2, :cond_4

    .line 444
    invoke-virtual {v11}, Landroid/view/DragEvent;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 450
    .end local v11    # "evt":Landroid/view/DragEvent;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wm/DragState;->mTargetWindow:Lcom/android/server/wm/WindowState;

    goto/16 :goto_1

    .line 447
    :catch_0
    move-exception v10

    .line 448
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "can\'t send drag notification to windows"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method register(Landroid/view/Display;)V
    .locals 12
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    const-wide v10, 0x12a05f200L

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 149
    iput-object p1, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    .line 151
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v2, :cond_0

    .line 152
    const-string v2, "WindowManager"

    const-string v3, "Duplicate register of drag input channel"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 154
    :cond_0
    const-string/jumbo v2, "drag"

    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 155
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 156
    aget-object v2, v0, v7

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 157
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 158
    new-instance v2, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 161
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v8}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string/jumbo v3, "drag"

    iput-object v3, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 163
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 166
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-direct {v2, v3, v8, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 168
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string/jumbo v3, "drag"

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 169
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 170
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p0}, Lcom/android/server/wm/DragState;->getDragLayerLw()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 171
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 172
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e0

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 173
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v10, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 177
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v7, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 178
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 179
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 180
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 181
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 182
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 183
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 186
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, v2, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 189
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 190
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v6, v2, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 191
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 192
    .local v1, "p":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 194
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 197
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_1

    .line 198
    const-string v2, "WindowManager"

    const-string v3, "Pausing rotation during drag"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/DragState;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/DragState;->mSpec:Landroid/view/MagnificationSpec;

    goto/16 :goto_0
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mFlags:I

    .line 138
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mLocalWin:Landroid/os/IBinder;

    .line 139
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 140
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    iput v0, p0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 142
    iput-object v1, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    .line 143
    return-void
.end method

.method sendDragStartedIfNeededLw(Lcom/android/server/wm/WindowState;)V
    .locals 5
    .param p1, "newWin"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 307
    iget-boolean v2, p0, Lcom/android/server/wm/DragState;->mDragInProgress:Z

    if-eqz v2, :cond_1

    .line 309
    iget-object v2, p0, Lcom/android/server/wm/DragState;->mNotifiedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 310
    .local v1, "ws":Lcom/android/server/wm/WindowState;
    if-ne v1, p1, :cond_0

    .line 319
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ws":Lcom/android/server/wm/WindowState;
    :cond_1
    :goto_0
    return-void

    .line 317
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget v2, p0, Lcom/android/server/wm/DragState;->mCurrentX:F

    iget v3, p0, Lcom/android/server/wm/DragState;->mCurrentY:F

    iget-object v4, p0, Lcom/android/server/wm/DragState;->mDataDescription:Landroid/content/ClipDescription;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/wm/DragState;->sendDragStartedLw(Lcom/android/server/wm/WindowState;FFLandroid/content/ClipDescription;)V

    goto :goto_0
.end method

.method unregister()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_0

    .line 213
    const-string v0, "WindowManager"

    const-string v1, "Unregister of nonexistent drag input channel"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->dispose()V

    .line 217
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mInputEventReceiver:Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 220
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mClientChannel:Landroid/view/InputChannel;

    .line 221
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mServerChannel:Landroid/view/InputChannel;

    .line 223
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 224
    iput-object v2, p0, Lcom/android/server/wm/DragState;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 227
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_1

    .line 228
    const-string v0, "WindowManager"

    const-string v1, "Resuming rotation after drag"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    goto :goto_0
.end method
