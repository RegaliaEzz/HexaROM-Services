.class public Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;
.super Ljava/lang/Object;
.source "CocktailBarWakeUpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
    }
.end annotation


# static fields
.field private static final COCKTAILBAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

.field private busMinFreqBooster:Landroid/os/DVFSHelper;

.field private cpuCoreBooster:Landroid/os/DVFSHelper;

.field private cpuFreq:I

.field private cpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private gpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCocktaiBarWakeUpState:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private supportedBUSFreqTable:[I

.field private supportedCPUCoreTable:[I

.field private supportedGPUFreqTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    .line 52
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

    .line 59
    iput-object p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    .line 61
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 62
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mTm:Landroid/telephony/TelephonyManager;

    .line 63
    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->prepareBooster()V

    .line 64
    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setupWakeup()V

    .line 65
    return-void
.end method

.method private applyBooster(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 169
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyBooster cpuFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    if-ltz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 185
    :cond_3
    return-void
.end method

.method private isAllowedWakeUpCocktailBar()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 133
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 135
    sget-object v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowedWakeUpCocktailBar : false due to provision"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v2, :cond_2

    .line 139
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 141
    :cond_2
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 142
    sget-object v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowedWakeUpCocktailBar : CarrierLockPlus"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_3
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 146
    sget-object v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowedWakeUpCocktailBar : lock task mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_4
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_5

    .line 150
    sget-object v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowedWakeUpCocktailBar: Call State is not idle"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    :cond_5
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 160
    :cond_6
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "edge_information_stream"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    .line 165
    goto :goto_0

    .line 155
    :cond_8
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 156
    sget-object v1, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAllowedWakeUpCocktailBar : false due to emergency mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private prepareBooster()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 68
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0xc

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 71
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const v1, 0x124f80

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    .line 72
    iget v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    if-lez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 76
    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0xe

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    .line 78
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    .line 79
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 83
    :cond_1
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0x10

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 85
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    .line 86
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 90
    :cond_2
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    const/16 v3, 0x13

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    .line 92
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    .line 93
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    if-eqz v0, :cond_3

    .line 94
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 96
    :cond_3
    return-void
.end method

.method private setupWakeup()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "edge_information_stream"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 101
    .local v0, "isInformationStreamOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 103
    .end local v0    # "isInformationStreamOn":Z
    :cond_0
    return-void

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getWakeUpState()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    return v0
.end method

.method public setWakeUpState(Z)V
    .locals 3
    .param p1, "wakeUpOn"    # Z

    .prologue
    .line 124
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWakeUpState : wakeUpOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    .line 126
    return-void
.end method

.method public wakeupCocktailBar(ZII)V
    .locals 5
    .param p1, "wakeUpOn"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 106
    sget-object v2, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wakeupCocktailBar : wakeUpOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 109
    .local v0, "identity":J
    if-eqz p1, :cond_1

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->isAllowedWakeUpCocktailBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/16 v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->applyBooster(I)V

    .line 112
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    return-void

    .line 115
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
