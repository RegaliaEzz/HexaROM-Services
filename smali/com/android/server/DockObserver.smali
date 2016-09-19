.class final Lcom/android/server/DockObserver;
.super Lcom/android/server/SystemService;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DockObserver$BinderService;
    }
.end annotation


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I = 0x0

.field private static final SILENT_REBOOT_PATH:Ljava/lang/String; = "/efs/sec_efs/auto_reboot/silence_LCDoff.txt"

.field private static final TAG:Ljava/lang/String; = "DockObserver"

.field private static mTone:Landroid/media/Ringtone;


# instance fields
.field private final VIBRATION_DURATION:I

.field private mActualDockState:I

.field private final mAllowTheaterModeWakeFromDock:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mObserver:Landroid/os/UEventObserver;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mReportedDockState:I

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mUpdatesStopped:Z

.field private mVRManagerService:Lcom/android/internal/app/IVRManagerService;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 94
    iput v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 96
    iput v1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 97
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 100
    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 107
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    .line 394
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 406
    new-instance v0, Lcom/android/server/DockObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$2;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    .line 127
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 128
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DockObserver"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    .line 132
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 134
    iget-object v0, p0, Lcom/android/server/DockObserver;->mObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DockObserver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/DockObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/DockObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DockObserver;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/DockObserver;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    return v0
.end method

.method private declared-synchronized getVRManagerService()Lcom/android/internal/app/IVRManagerService;
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    .line 115
    const-string/jumbo v0, "vr"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "DockObserver"

    const-string/jumbo v1, "warning: no VR_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mVRManagerService:Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleDockStateChange()V
    .locals 11

    .prologue
    const/16 v10, 0x67

    const/16 v9, 0x69

    .line 230
    iget-object v6, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 231
    :try_start_0
    const-string v5, "DockObserver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dock state changed from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 234
    .local v3, "previousDockState":I
    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    iput v5, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 237
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v5, "device_provisioned"

    const/4 v7, 0x0

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 241
    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq v5, v10, :cond_0

    if-eq v3, v10, :cond_0

    .line 242
    const-string v5, "DockObserver"

    const-string v7, "Device not provisioned, skipping dock broadcast"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    monitor-exit v6

    .line 392
    :goto_0
    return-void

    .line 251
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 253
    const-string v5, "android.intent.extra.DOCK_STATE"

    iget v7, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const-string v5, "com.sec.intent.extra.SMART_DOCK_STATE"

    iget v7, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    const-string v5, "android.intent.extra.SMART_DOCK_STATE"

    iget v7, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 263
    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-ne v5, v9, :cond_2

    .line 264
    const-string v5, "DockObserver"

    const-string v7, "HMT is connected"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/android/server/DockObserver;->getVRManagerService()Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 268
    .local v4, "vm":Lcom/android/internal/app/IVRManagerService;
    if-eqz v4, :cond_1

    .line 269
    const/4 v5, 0x1

    :try_start_1
    invoke-interface {v4, v5}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 391
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "previousDockState":I
    .end local v4    # "vm":Lcom/android/internal/app/IVRManagerService;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 272
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "previousDockState":I
    .restart local v4    # "vm":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "DockObserver"

    const-string v7, "RemoteException notifyDeviceEventChanged: "

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "vm":Lcom/android/internal/app/IVRManagerService;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 391
    monitor-exit v6

    goto :goto_0

    .line 275
    :cond_2
    if-ne v3, v9, :cond_3

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-nez v5, :cond_3

    .line 277
    const-string v5, "DockObserver"

    const-string v7, "HMT is disconnected"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/server/DockObserver;->getVRManagerService()Lcom/android/internal/app/IVRManagerService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 281
    .restart local v4    # "vm":Lcom/android/internal/app/IVRManagerService;
    if-eqz v4, :cond_1

    .line 282
    const/4 v5, 0x2

    :try_start_4
    invoke-interface {v4, v5}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 283
    :try_start_5
    monitor-exit v6

    goto :goto_0

    .line 285
    :catch_1
    move-exception v1

    .line 286
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v5, "DockObserver"

    const-string v7, "RemoteException notifyDeviceEventChanged : "

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 288
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "vm":Lcom/android/internal/app/IVRManagerService;
    :cond_3
    if-ne v3, v9, :cond_1

    iget v5, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    const/16 v7, 0x6a

    if-ne v5, v7, :cond_1

    .line 290
    const-string v5, "DockObserver"

    const-string v7, "HMT is abnormal"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0}, Lcom/android/server/DockObserver;->getVRManagerService()Lcom/android/internal/app/IVRManagerService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 294
    .restart local v4    # "vm":Lcom/android/internal/app/IVRManagerService;
    if-eqz v4, :cond_1

    .line 295
    const/4 v5, 0x4

    :try_start_6
    invoke-interface {v4, v5}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 296
    :try_start_7
    monitor-exit v6

    goto/16 :goto_0

    .line 298
    :catch_2
    move-exception v1

    .line 299
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v5, "DockObserver"

    const-string v7, "RemoteException notifyDeviceEventChanged : "

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method private init()V
    .locals 7

    .prologue
    .line 157
    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 159
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    .line 160
    .local v0, "buffer":[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    .local v2, "file":Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 163
    .local v3, "len":I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/DockObserver;->setActualDockStateLocked(I)V

    .line 164
    iget v4, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    .end local v3    # "len":I
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    return-void

    .line 166
    .restart local v0    # "buffer":[C
    .restart local v2    # "file":Ljava/io/FileReader;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 168
    .end local v0    # "buffer":[C
    .end local v2    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_5
    const-string v4, "DockObserver"

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 170
    :catch_1
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v4, "DockObserver"

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private setActualDockStateLocked(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x1

    .line 177
    iput p1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 180
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0xb

    if-gt v0, v1, :cond_0

    .line 181
    const-string v0, "DockObserver"

    const-string v1, "Adjusting dock state value for compatibility"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    add-int/lit8 v0, v0, 0x5e

    iput v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 186
    :cond_0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 187
    iput v2, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 188
    iput v2, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    .line 195
    :goto_0
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-nez v0, :cond_4

    .line 196
    :cond_1
    const-string/jumbo v0, "sys.dockstate"

    iget v1, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    if-ne v0, v3, :cond_4

    .line 206
    :cond_2
    :goto_1
    return-void

    .line 190
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    goto :goto_0

    .line 203
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mUpdatesStopped:Z

    if-nez v0, :cond_2

    .line 204
    iget v0, p0, Lcom/android/server/DockObserver;->mActualDockState:I

    invoke-direct {p0, v0}, Lcom/android/server/DockObserver;->setDockStateLocked(I)V

    goto :goto_1
.end method

.method private setDockStateLocked(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    .line 209
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eq p1, v0, :cond_2

    .line 210
    iput p1, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 211
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v0, :cond_2

    .line 213
    iget-boolean v0, p0, Lcom/android/server/DockObserver;->mAllowTheaterModeWakeFromDock:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/DockObserver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v1, "android.server:DOCK"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 222
    :cond_2
    return-void
.end method

.method private updateLocked()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 226
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 227
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 144
    const/16 v0, 0x226

    if-ne p1, v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 149
    iget v0, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 152
    :cond_0
    monitor-exit v1

    .line 154
    :cond_1
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 139
    const-string v0, "DockObserver"

    new-instance v1, Lcom/android/server/DockObserver$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DockObserver;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 140
    return-void
.end method
