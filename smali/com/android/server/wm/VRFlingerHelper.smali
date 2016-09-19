.class public Lcom/android/server/wm/VRFlingerHelper;
.super Ljava/lang/Object;
.source "VRFlingerHelper.java"


# static fields
.field public static final FEATURE_VRFLINGER:Z = true

.field private static mInstance:Lcom/android/server/wm/VRFlingerHelper;

.field private static mService:Lcom/android/server/am/ActivityManagerService;


# instance fields
.field private mAnimationScales:[F

.field private mGpuMaxHelper:Landroid/os/DVFSHelper;

.field private mGpuMinHelper:Landroid/os/DVFSHelper;

.field private mLauncherPackageName:Ljava/lang/String;

.field mSkipVRAppList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 48
    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    .line 37
    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 38
    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    .line 40
    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mLauncherPackageName:Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Lcom/android/server/wm/VRFlingerHelper;->fillVRSkipList()V

    .line 45
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 46
    return-void
.end method

.method private fillVRSkipList()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/android/server/wm/VRFlingerHelper;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/wm/VRFlingerHelper;

    invoke-direct {v0}, Lcom/android/server/wm/VRFlingerHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    .line 54
    :cond_0
    sget-object v0, Lcom/android/server/wm/VRFlingerHelper;->mInstance:Lcom/android/server/wm/VRFlingerHelper;

    return-object v0
.end method


# virtual methods
.method public getLancherPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mLauncherPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isVRFlingerMode()Z
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "isVRFlingerMode":Z
    sget-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-nez v1, :cond_0

    const-string v1, "activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    sput-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 90
    :cond_0
    sget-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v1, :cond_1

    .line 91
    sget-object v1, Lcom/android/server/wm/VRFlingerHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isVRFlingerMode()Z

    move-result v0

    .line 93
    :cond_1
    return v0
.end method

.method public releaseGPUMhz()V
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_1

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    return-void

    .line 166
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public restoreAnimationScales(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mAnimationScales:[F

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimationScales([F)V

    .line 85
    return-void
.end method

.method public setAnimationScales(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getAnimationScales()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/VRFlingerHelper;->mAnimationScales:[F

    .line 79
    const/4 v1, 0x3

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .line 80
    .local v0, "zeroAnimScales":[F
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->setAnimationScales([F)V

    .line 81
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public setMaxGPUlevel(Landroid/content/Context;I)V
    .locals 10
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "freq"    # I

    .prologue
    .line 124
    const/4 v6, 0x0

    .line 125
    .local v6, "gpuTableSize":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 129
    .local v8, "ident":J
    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "VR_GPU_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    .line 136
    .local v7, "maxIdx":I
    if-le p2, v7, :cond_2

    .line 137
    const/4 v6, 0x0

    .line 141
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v7    # "maxIdx":I
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    return-void

    .line 139
    .restart local v7    # "maxIdx":I
    :cond_2
    sub-int v6, v7, p2

    goto :goto_0

    .line 147
    .end local v7    # "maxIdx":I
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setMinGPUlevel(Landroid/content/Context;I)V
    .locals 10
    .param p1, "cntxt"    # Landroid/content/Context;
    .param p2, "freq"    # I

    .prologue
    .line 98
    const/4 v6, 0x0

    .line 99
    .local v6, "gpuTableSize":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 103
    .local v8, "ident":J
    const/4 v0, -0x1

    if-le p2, v0, :cond_1

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "VR_GPU_MIN"

    const/16 v3, 0x10

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v7, v0, -0x1

    .line 108
    .local v7, "maxIdx":I
    if-le p2, v7, :cond_2

    .line 109
    const/4 v6, 0x0

    .line 113
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 115
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mGpuMinHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    .end local v7    # "maxIdx":I
    :cond_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    return-void

    .line 111
    .restart local v7    # "maxIdx":I
    :cond_2
    sub-int v6, v7, p2

    goto :goto_0

    .line 119
    .end local v7    # "maxIdx":I
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setVRFlingerLauncher(Ljava/lang/String;)V
    .locals 0
    .param p1, "_package"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/server/wm/VRFlingerHelper;->mLauncherPackageName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public skipPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/VRFlingerHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
