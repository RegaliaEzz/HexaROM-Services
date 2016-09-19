.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/samsung/android/cover/ICoverManager$Stub;
.source "CoverManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverManagerService$CoverShapeThread;,
        Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;
    }
.end annotation


# static fields
.field static final COVER_ABSENT:I = -0x1

.field static final COVER_ATTACH:I = 0x1

.field static final COVER_CLOSED:I = 0x0

.field static final COVER_DETACH:I = 0x0

.field static final COVER_OPEN:I = 0x1

.field private static final DEBUG:Z = true

.field static final MOBILE_KEYBOARD_KOR:I = 0x9

.field static final MOBILE_KEYBOARD_US:I = 0xa

.field private static final SAFE_DEBUG:Z = true

.field private static final SERVICE_VERSION:I = 0x1050000

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static final TRANSMIT_POWER_DEFAULT:I = 0x0

.field private static final TRANSMIT_POWER_HALLIC_LED:I = 0x4000

.field private static final TRANSMIT_POWER_HALLIC_REST:I = 0x1000


# instance fields
.field private mAnimationStartCallback:Ljava/lang/Runnable;

.field private mCalledByTestModule:Z

.field private mContext:Landroid/content/Context;

.field private final mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

.field private final mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

.field private final mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

.field private mCoverState:Lcom/samsung/android/cover/CoverState;

.field private final mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

.field private final mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

.field private final mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private mLedCoverController:Lcom/android/server/cover/LedCoverController;

.field private mNeedBackOffRequest:Z

.field private mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

.field private mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

.field private final mStateNotifier:Lcom/android/server/cover/StateNotifier;

.field private mSystemReady:Z

.field private final mThread:Landroid/os/HandlerThread;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/cover/ICoverManager$Stub;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    .line 105
    new-instance v0, Lcom/android/server/cover/CoverManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$1;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mAnimationStartCallback:Ljava/lang/Runnable;

    .line 114
    new-instance v0, Lcom/android/server/cover/CoverManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/cover/CoverManagerService$2;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 132
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 135
    iput-object p3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 136
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    .line 138
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 141
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cover"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    .line 142
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 143
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;-><init>(Lcom/android/server/cover/CoverManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    .line 144
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v1, Lcom/android/server/cover/CoverManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverManagerService$3;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 153
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    .line 154
    new-instance v0, Lcom/android/server/cover/CoverVerifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverVerifier;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    .line 155
    new-instance v0, Lcom/android/server/cover/StateNotifier;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/StateNotifier;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    .line 156
    new-instance v0, Lcom/android/server/cover/CoverDisabler;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverDisabler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    .line 157
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    .line 158
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    .line 159
    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    .line 160
    invoke-static {}, Lcom/android/server/cover/CoverManagerWhiteLists;->getInstance()Lcom/android/server/cover/CoverManagerWhiteLists;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    .line 161
    new-instance v0, Lcom/android/server/cover/CoverHideAnimator;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/CoverHideAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    .line 162
    new-instance v0, Lcom/android/server/cover/CoverTestModeUtils;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mOnCoverTestModeCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    invoke-direct {v0, v1, v2}, Lcom/android/server/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/CoverManagerService;)Lcom/samsung/android/cover/CoverState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/CoverManagerService;)Lcom/android/server/cover/StateNotifier;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/cover/CoverManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/CoverManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    return p1
.end method

.method private checkNeedThread([BII)Z
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 810
    const-string v1, "CoverManager"

    const-string v2, "checkNeedThread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    mul-int v1, p2, p3

    if-ge v0, v1, :cond_1

    .line 813
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 816
    :goto_1
    return v1

    .line 812
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 816
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getCoverState(Z)Lcom/samsung/android/cover/CoverState;
    .locals 4
    .param p1, "needCheckUid"    # Z

    .prologue
    .line 638
    if-eqz p1, :cond_0

    .line 639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    const-string v0, "CoverManager"

    const-string/jumbo v1, "getCoverState : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const/4 v0, 0x0

    .line 647
    :goto_0
    return-object v0

    .line 646
    :cond_0
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 647
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit v1

    goto :goto_0

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isThemeCover(Ljava/lang/String;)Z
    .locals 3
    .param p1, "coverUri"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 530
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 531
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_0

    .line 532
    const-string v0, "CoverManager"

    const-string/jumbo v1, "isThemeCover : it is theme cover"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v0, 0x1

    .line 536
    :cond_0
    return v0
.end method

.method private needToBoost()Z
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    .line 273
    .local v0, "needToBoost":Z
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 278
    :pswitch_1
    const/4 v0, 0x1

    .line 279
    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private readTouchChannelCount()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 773
    const/4 v0, 0x0

    .line 774
    .local v0, "point":Landroid/graphics/Point;
    const-string/jumbo v3, "get_x_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v1

    .line 775
    .local v1, "x":I
    const-string/jumbo v3, "get_y_num"

    invoke-static {v3}, Lcom/android/server/cover/CoverManagerUtils;->getTouchChannelCount(Ljava/lang/String;)I

    move-result v2

    .line 780
    .local v2, "y":I
    if-le v1, v2, :cond_0

    .line 781
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 785
    .restart local v0    # "point":Landroid/graphics/Point;
    :goto_0
    return-object v0

    .line 783
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    .end local v0    # "point":Landroid/graphics/Point;
    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .restart local v0    # "point":Landroid/graphics/Point;
    goto :goto_0
.end method

.method private registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .param p4, "needCheckUid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    if-eqz p4, :cond_0

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    const-string v0, "CoverManager"

    const-string/jumbo v1, "registerListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V

    goto :goto_0
.end method

.method private sendBackoffRequest(IZ)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 353
    const-string v3, "CoverManager"

    const-string/jumbo v4, "sendBackoffRequest"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string/jumbo v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 355
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 356
    const-string v3, "CoverManager"

    const-string v4, "Can\'t get telephony service, skip backoff()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-void

    .line 360
    :cond_0
    const-string/jumbo v3, "ril.backoffstate"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 362
    .local v0, "backoffState":I
    if-eqz p2, :cond_1

    .line 363
    or-int/2addr v0, p1

    .line 369
    :goto_1
    :try_start_0
    invoke-interface {v2, v0}, Lcom/android/internal/telephony/ITelephony;->setTransmitPower(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v1

    .line 371
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CoverManager"

    const-string v4, "Remove exception is occurred during setTransmitPower"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    xor-int/lit8 v3, p1, -0x1

    and-int/2addr v0, v3

    goto :goto_1
.end method

.method private sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 7
    .param p1, "isBoot"    # Z
    .param p2, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 584
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v0

    .line 585
    .local v0, "coverAttached":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 589
    .local v1, "coverSwitchState":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    .line 591
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-nez v4, :cond_2

    .line 593
    const-string v2, "CoverManager"

    const-string/jumbo v3, "sendCoverAttachStateLocked : CoverState is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :goto_1
    return-void

    .end local v1    # "coverSwitchState":Z
    :cond_0
    move v1, v3

    .line 585
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 599
    .restart local v1    # "coverSwitchState":Z
    :cond_2
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isMobileKeyboardFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 601
    :cond_3
    const/4 v1, 0x1

    .line 602
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 605
    :cond_4
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_6

    .line 606
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 607
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    if-nez v4, :cond_5

    .line 608
    new-instance v4, Lcom/android/server/cover/NfcLedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/cover/NfcLedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    .line 610
    :cond_5
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/cover/NfcLedCoverController;->updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 619
    :cond_6
    :goto_2
    if-eqz v0, :cond_a

    .line 620
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    .line 622
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v4}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v4

    if-nez v4, :cond_7

    .line 623
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 625
    :cond_7
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    .line 632
    :goto_3
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverAttachStateLocked : coverAttached = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coverSwitchState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 612
    :cond_8
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-nez v4, :cond_9

    .line 613
    new-instance v4, Lcom/android/server/cover/LedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Lcom/android/server/cover/LedCoverController;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    .line 615
    :cond_9
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v4, v0, v5}, Lcom/android/server/cover/LedCoverController;->updateLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_2

    .line 627
    :cond_a
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    .line 628
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/cover/StateNotifier;->updateCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;Z)V

    goto :goto_3
.end method

.method private sendCoverSwitchStateLocked(ZZ)Z
    .locals 2
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 376
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZZZ)Z

    move-result v0

    return v0
.end method

.method private sendCoverSwitchStateLocked(ZZZZ)Z
    .locals 5
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "force"    # Z
    .param p4, "playHideAnimation"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 381
    if-nez p3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v3

    if-ne p1, v3, :cond_0

    .line 383
    const-string v2, "CoverManager"

    const-string/jumbo v3, "updateCoverSwitchState : Returning switch state - it is same"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_0
    return v1

    .line 388
    :cond_0
    if-nez p3, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/StateNotifier;->checkSystemFeatureForCoverType(Lcom/samsung/android/cover/CoverState;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 390
    const-string v2, "CoverManager"

    const-string/jumbo v3, "updateCoverSwitchState : Returning switch state - device does not support this type"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchStateLocked(Z)V

    .line 397
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverHideAnimator;->cancelHideAnimation()V

    .line 399
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-ne v1, v2, :cond_3

    .line 401
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 403
    .local v0, "isScreenOn":Z
    if-ne v0, v2, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverHideAnimator:Lcom/android/server/cover/CoverHideAnimator;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mAnimationStartCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverHideAnimator;->playCoverHideAnimation(Ljava/lang/Runnable;)V

    .line 406
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v3, Lcom/android/server/cover/CoverManagerService$5;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerService$5;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 434
    .end local v0    # "isScreenOn":Z
    :goto_1
    const-string v1, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendCoverSwitchStateLocked : switchState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v4, v4, Lcom/samsung/android/cover/CoverState;->switchState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", color = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->color:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", widthPixel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", heightPixel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v4, v4, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 440
    goto/16 :goto_0

    .line 413
    .restart local v0    # "isScreenOn":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/StateNotifier;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    .line 414
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 415
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    goto :goto_1

    .line 417
    .end local v0    # "isScreenOn":Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v1, v1, Lcom/samsung/android/cover/CoverState;->type:I

    if-nez v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 419
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 420
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/cover/StateNotifier;->updatePowerStateLocked(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_1

    .line 422
    :cond_4
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;)V

    .line 423
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1, v3, p2}, Lcom/android/server/cover/StateNotifier;->updateCoverSwitchStateLocked(Lcom/samsung/android/cover/CoverState;Z)V

    .line 425
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v3, Lcom/android/server/cover/CoverManagerService$6;

    invoke-direct {v3, p0}, Lcom/android/server/cover/CoverManagerService$6;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1
.end method

.method private sendTouchRegion([BII)V
    .locals 3
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 789
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    if-nez p1, :cond_0

    .line 792
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : coverShape is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_0
    return-void

    .line 796
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 797
    :cond_1
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : width is 0 or height is 0."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 801
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->checkNeedThread([BII)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 802
    new-instance v0, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;-><init>(Lcom/android/server/cover/CoverManagerService;[BII)V

    .line 803
    .local v0, "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    invoke-virtual {v0}, Lcom/android/server/cover/CoverManagerService$CoverShapeThread;->start()V

    goto :goto_0

    .line 805
    .end local v0    # "coverShapeThread":Lcom/android/server/cover/CoverManagerService$CoverShapeThread;
    :cond_3
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setCoverShape : we don\'t need to start thread because there is no valid value."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterCallback(Landroid/os/IBinder;Z)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "needCheckUid"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    if-eqz p2, :cond_0

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const-string v0, "CoverManager"

    const-string/jumbo v1, "unregisterCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_0
.end method

.method private updateCoverAttachState(ZZ)V
    .locals 1
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 561
    return-void
.end method

.method private updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V
    .locals 4
    .param p1, "attach"    # Z
    .param p2, "isBoot"    # Z
    .param p3, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 564
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 566
    :try_start_0
    const-string v0, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverAttachState : attach="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isBoot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    if-nez p2, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverAttachedLocked(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    invoke-direct {p0, p2, p3}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    .line 580
    :goto_0
    monitor-exit v1

    .line 581
    return-void

    .line 577
    :cond_1
    const-string v0, "CoverManager"

    const-string/jumbo v2, "updateCoverVerfiedState : Returning attach state - it is same"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateCoverSwitchState(ZZ)V
    .locals 8
    .param p1, "switchState"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 287
    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v4

    .line 289
    :try_start_0
    const-string v5, "CoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCoverSwitchState : switchState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isBoot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-nez p2, :cond_1

    if-eq p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->needToBoost()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 294
    :cond_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/CoverManagerUtils;->performCPUBoostCover(Landroid/content/Context;)V

    .line 297
    :cond_1
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v5}, Lcom/android/server/cover/CoverVerifier;->isCoverVerified()Z

    move-result v0

    .line 300
    .local v0, "isDetected":Z
    const-string v5, "CoverManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SmartCover]updateCoverSwitchState : switchState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isBoot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDetected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v0    # "isDetected":Z
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v5}, Lcom/android/server/cover/CoverVerifier;->isCoverAttached()Z

    move-result v5

    if-nez v5, :cond_6

    .line 314
    const-string v5, "CoverManager"

    const-string/jumbo v6, "updateCoverSwitchState : Returning switch state - cover is not attached"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v5, v2}, Landroid/os/PowerManager;->updateCoverState(Z)V

    .line 317
    monitor-exit v4

    .line 350
    :goto_2
    return-void

    .line 303
    :cond_3
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/cover/Feature;->isSupportDetectCover()Z

    move-result v5

    if-nez v5, :cond_2

    .line 304
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v5}, Lcom/android/server/cover/CoverVerifier;->onUpdateCoverVerifiedLocked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 305
    const/4 v5, 0x0

    invoke-direct {p0, p2, v5}, Lcom/android/server/cover/CoverManagerService;->sendCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 307
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    iget-object v6, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/cover/CoverVerifier;->updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    :cond_5
    move v2, v3

    .line 316
    goto :goto_1

    .line 320
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)Z

    move-result v1

    .line 322
    .local v1, "isSwitchStateUpdated":Z
    if-ne p1, v2, :cond_7

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v3, :cond_7

    if-eqz v1, :cond_7

    .line 323
    const-string v3, "CoverManager"

    const-string v5, "cover opened wake up"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v5, 0x6

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/PowerManager;->wakeUp(JI)V

    .line 327
    :cond_7
    if-nez p1, :cond_8

    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    if-ne v3, v2, :cond_8

    .line 328
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v2, :cond_9

    .line 329
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 349
    :cond_8
    :goto_3
    :pswitch_0
    monitor-exit v4

    goto :goto_2

    .line 335
    :pswitch_1
    const/16 v2, 0x1000

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendBackoffRequest(IZ)V

    .line 336
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    goto :goto_3

    .line 339
    :pswitch_2
    const/16 v2, 0x4000

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/server/cover/CoverManagerService;->sendBackoffRequest(IZ)V

    .line 340
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mNeedBackOffRequest:Z

    goto :goto_3

    .line 346
    :cond_9
    const-string v2, "CoverManager"

    const-string v3, "CoverState is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateCoverSwitchStateLocked(Z)V
    .locals 1
    .param p1, "switchState"    # Z

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cover/CoverState;->setSwitchState(Z)V

    .line 700
    return-void
.end method


# virtual methods
.method public disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    .locals 7
    .param p1, "disable"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 714
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 715
    const-string v2, "CoverManager"

    const-string/jumbo v3, "getCoverState : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 721
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v3}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    .line 722
    .local v1, "disabled":Z
    if-eqz v1, :cond_3

    .line 725
    .local v0, "coverSwitchState":Z
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v3

    .line 726
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->sendCoverSwitchStateLocked(ZZ)Z

    .line 727
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 722
    .end local v0    # "coverSwitchState":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v2

    goto :goto_1
.end method

.method public disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1041
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    const-string v0, "CoverManager"

    const-string/jumbo v1, "disableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/4 v0, 0x0

    .line 1049
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/StateNotifier;->disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :goto_0
    return-void

    .line 1077
    :cond_0
    const-string v0, "COVER MANAGER SERVICE (dumpsys cover)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    const-string v0, " Current Cover state"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-enter v1

    .line 1081
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverVerifier:Lcom/android/server/cover/CoverVerifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverVerifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1084
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/Feature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/StateNotifier;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverDisabler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/LedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    if-eqz v0, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/NfcLedCoverController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverTestModeUtils:Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/CoverTestModeUtils;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 1084
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1056
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1057
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1060
    const-string v0, "CoverManager"

    const-string/jumbo v1, "enableLcdOffByCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 v0, 0x0

    .line 1064
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/StateNotifier;->enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z

    move-result v0

    goto :goto_0
.end method

.method getCoverAttachStateFromInputManager()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 678
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x1a

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 680
    .local v1, "sw":I
    if-lez v1, :cond_1

    .line 681
    const/4 v2, 0x1

    .line 689
    .end local v1    # "sw":I
    :cond_0
    :goto_0
    return v2

    .line 682
    .restart local v1    # "sw":I
    :cond_1
    if-nez v1, :cond_0

    .line 683
    const/4 v2, 0x0

    goto :goto_0

    .line 687
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CoverManager"

    const-string/jumbo v4, "getSwitchStateOfCoveAttach(). Can\'t get cover attach state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/cover/CoverManagerService;->getCoverState(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    return-object v0
.end method

.method public getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
    .locals 4

    .prologue
    .line 941
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/cover/CoverManagerService;->getCoverState(Z)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 947
    :goto_0
    return-object v1

    .line 945
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "getCoverStateForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCoverStateForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getCoverSwitchStateFromInputManager()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 657
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v4, -0x1

    const/16 v5, -0x100

    const/16 v6, 0x15

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/input/InputManagerService;->getSwitchState(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 659
    .local v1, "sw":I
    if-lez v1, :cond_1

    .line 660
    const/4 v2, 0x1

    .line 668
    .end local v1    # "sw":I
    :cond_0
    :goto_0
    return v2

    .line 661
    .restart local v1    # "sw":I
    :cond_1
    if-nez v1, :cond_0

    .line 662
    const/4 v2, 0x0

    goto :goto_0

    .line 666
    .end local v1    # "sw":I
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CoverManager"

    const-string/jumbo v4, "getSwitchStateOfCover(). Can\'t get cover state!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 695
    const/high16 v0, 0x1050000

    return v0
.end method

.method public isCoverManagerDisabled()Z
    .locals 2

    .prologue
    .line 704
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 705
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    return v0
.end method

.method public notifyCoverAttachStateChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 447
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverAttachStateChanged : Returning!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    if-nez v0, :cond_1

    .line 454
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverAttachStateChanged : Returning!! Now is the test mode."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 458
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 460
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 461
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_3

    .line 467
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    goto :goto_0

    .line 469
    :cond_3
    invoke-direct {p0, p3, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    goto :goto_0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .locals 2
    .param p1, "whenNanos"    # J
    .param p3, "switchState"    # Z

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 243
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : Returning!! not system ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 249
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v0}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const-string v0, "CoverManager"

    const-string/jumbo v1, "notifyCoverSwitchStateChanged : Returning! Cover manager disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_2
    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    const-string v0, "CoverManager"

    const-string v1, "Block cover event because it is Factory app running."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    goto :goto_0
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .locals 14
    .param p1, "whenNanos"    # J
    .param p3, "attach"    # Z
    .param p4, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 475
    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    if-nez v3, :cond_1

    .line 477
    const-string v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : Returning!! not system ready yet!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    if-nez v3, :cond_2

    .line 484
    const-string v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : Returning!! Now is the test mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 488
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/cover/CoverManagerService;->mCalledByTestModule:Z

    .line 490
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 491
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 495
    :cond_3
    const-string v3, "CoverManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifySmartCoverAttachStateChanged : attach = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v2, 0x0

    .line 499
    .local v2, "smartCoverState":Lcom/samsung/android/cover/CoverState;
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_6

    if-eqz p4, :cond_4

    if-eqz p4, :cond_6

    move-object/from16 v0, p4

    iget v3, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_6

    .line 504
    :cond_4
    const-string v12, "1com.samsung.android.sdk.cover.hellocover"

    .line 505
    .local v12, "appUri":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v9, v3, [B

    fill-array-data v9, :array_0

    .line 506
    .local v9, "appData":[B
    const-string v13, "##########"

    .line 507
    .local v13, "serialNumber":Ljava/lang/String;
    new-instance v2, Lcom/samsung/android/cover/CoverState;

    .end local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "1com.samsung.android.sdk.cover.hellocover"

    const-string v10, "##########"

    const/4 v11, 0x0

    move/from16 v6, p3

    invoke-direct/range {v2 .. v11}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V

    .line 510
    .restart local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    const-string v3, "CoverManager"

    const-string/jumbo v4, "notifySmartCoverAttachStateChanged : make smartCovrerState for test"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v3, 0x0

    move/from16 v0, p3

    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    .line 517
    .end local v9    # "appData":[B
    .end local v12    # "appUri":Ljava/lang/String;
    .end local v13    # "serialNumber":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v3, v3, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v4, 0xff

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v3, v3, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/cover/CoverManagerService;->isThemeCover(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v3, :cond_7

    .line 521
    new-instance v3, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    goto/16 :goto_0

    .line 507
    .end local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    .restart local v9    # "appData":[B
    .restart local v12    # "appUri":Ljava/lang/String;
    .restart local v13    # "serialNumber":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 514
    .end local v9    # "appData":[B
    .end local v12    # "appUri":Ljava/lang/String;
    .end local v13    # "serialNumber":Ljava/lang/String;
    .restart local v2    # "smartCoverState":Lcom/samsung/android/cover/CoverState;
    :cond_6
    const/4 v3, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZLcom/samsung/android/cover/CoverState;)V

    goto :goto_2

    .line 523
    :cond_7
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v4, v4, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Lcom/android/server/cover/SmartCoverAppController;->smartCoverAttachStateChanged(ZLjava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-object v4, v4, Lcom/samsung/android/cover/CoverState;->smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/cover/SmartCoverAppController;->getSmartCoverPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    goto/16 :goto_0

    .line 505
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method public onCoverAppCovered(Z)I
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 762
    const-string v0, "CoverManager"

    const-string/jumbo v1, "onCoverAppCovered!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 766
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mStateNotifier:Lcom/android/server/cover/StateNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/StateNotifier;->onCoverAppCovered(Z)I

    move-result v0

    return v0
.end method

.method public readTouchChannelCountForExternal()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 952
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    invoke-direct {p0}, Lcom/android/server/cover/CoverManagerService;->readTouchChannelCount()Landroid/graphics/Point;

    move-result-object v1

    .line 958
    :goto_0
    return-object v1

    .line 956
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "readTouchChannelCountForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readTouchChannelCountForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 211
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 212
    return-void
.end method

.method public registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 975
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 976
    return-void
.end method

.method public registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    .locals 4
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 919
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 920
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/server/cover/CoverManagerService;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;IZ)V

    .line 926
    :goto_0
    return-void

    .line 923
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "registerListenerCallbackForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListenerCallbackForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 992
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 996
    const-string v0, "CoverManager"

    const-string/jumbo v1, "registerNfcTouchListenerCallback : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/cover/NfcLedCoverController;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public sendDataToCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    const-string v0, "CoverManager"

    const-string/jumbo v1, "sendDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/LedCoverController;->sendDataToLedCover(I[B)Z

    goto :goto_0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1025
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    const-string v0, "CoverManager"

    const-string/jumbo v1, "sendStateDataToCover : caller is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    .line 747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 748
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mLedCoverController:Lcom/android/server/cover/LedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/LedCoverController;->sendPowerKeyToCover()V

    .line 754
    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    if-eqz v0, :cond_2

    .line 755
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    invoke-virtual {v0}, Lcom/android/server/cover/NfcLedCoverController;->sendPowerKeyToCover()V

    .line 757
    :cond_2
    return-void
.end method

.method public sendTouchRegionForExternal([BII)V
    .locals 4
    .param p1, "coverShape"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 963
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/cover/CoverManagerService;->sendTouchRegion([BII)V

    .line 970
    :goto_0
    return-void

    .line 967
    :cond_0
    const-string v1, "CoverManager"

    const-string/jumbo v2, "sendTouchRegionForExternal : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string v1, "CoverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTouchRegionForExternal : callerPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCoverPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string v0, "CoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCoverPackage : package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is not SYSTEM_PROCESS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/cover/Feature;->isSupportSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget v0, v0, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    if-nez v0, :cond_2

    .line 551
    new-instance v0, Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/cover/SmartCoverAppController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    .line 557
    :cond_1
    :goto_0
    return-void

    .line 553
    :cond_2
    iput-object p1, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    .line 554
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mSmartCoverAppController:Lcom/android/server/cover/SmartCoverAppController;

    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverState:Lcom/samsung/android/cover/CoverState;

    iget-boolean v1, v1, Lcom/samsung/android/cover/CoverState;->attached:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/server/cover/SmartCoverAppController;->startCoverService(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 168
    const-string v1, "CoverManager"

    const-string/jumbo v4, "systemReady!!"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-boolean v2, p0, Lcom/android/server/cover/CoverManagerService;->mSystemReady:Z

    .line 172
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mHandler:Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;

    new-instance v2, Lcom/android/server/cover/CoverManagerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/cover/CoverManagerService$4;-><init>(Lcom/android/server/cover/CoverManagerService;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/cover/CoverManagerService$CoverManagerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverAttachStateFromInputManager()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverAttachState(ZZ)V

    .line 184
    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerService;->getCoverSwitchStateFromInputManager()I

    move-result v1

    if-nez v1, :cond_3

    move v0, v3

    .line 185
    .local v0, "coverSwitchState":Z
    :goto_2
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverDisabler:Lcom/android/server/cover/CoverDisabler;

    invoke-virtual {v1}, Lcom/android/server/cover/CoverDisabler;->isCoverManagerDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const/4 v0, 0x1

    .line 189
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/cover/CoverManagerService;->updateCoverSwitchState(ZZ)V

    goto :goto_0

    .end local v0    # "coverSwitchState":Z
    :cond_2
    move v1, v3

    .line 181
    goto :goto_1

    :cond_3
    move v0, v2

    .line 184
    goto :goto_2
.end method

.method public unregisterCallback(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 980
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/cover/CoverManagerService;->unregisterCallback(Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public unregisterCallbackForExternal(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 930
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "callerPackage":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 932
    invoke-direct {p0, p1, v1}, Lcom/android/server/cover/CoverManagerService;->unregisterCallback(Landroid/os/IBinder;Z)Z

    move-result v1

    .line 936
    :goto_0
    return v1

    .line 934
    :cond_0
    const-string v2, "CoverManager"

    const-string/jumbo v3, "unregisterCallbackForExternal : caller is invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v2, "CoverManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterCallbackForExternal : callerPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/CoverManagerService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1009
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerWhiteLists:Lcom/android/server/cover/CoverManagerWhiteLists;

    iget-object v2, p0, Lcom/android/server/cover/CoverManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/cover/CoverManagerWhiteLists;->isAllowedToUse(Landroid/content/Context;II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1012
    const-string v1, "CoverManager"

    const-string/jumbo v2, "unregisterNfcTouchListenerCallback : caller is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_0
    :goto_0
    return v0

    .line 1016
    :cond_1
    iget-object v1, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    if-eqz v1, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mNfcLedCoverController:Lcom/android/server/cover/NfcLedCoverController;

    invoke-virtual {v0, p1}, Lcom/android/server/cover/NfcLedCoverController;->unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v0

    goto :goto_0
.end method
